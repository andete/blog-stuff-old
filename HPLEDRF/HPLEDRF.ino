/* -*- Mode: C; tab-width: 2; indent-tabs-mode: nil -*- */

// (C) 2013 Joost Yervante Damad <joost@damad.be>
// parts are inspired by the jeelabs website examples

#include <Ports.h>
#include <JeeLib.h>

// TODO:
// - shutdown lamp if fan pulse count drops below 30
// - increase fan speed when temperature > threshold
// - shut down lamp if temperature > threshold
// - ramping pwm changes
// - hysteresis ?
// - initial relay state

// features:
// - measure fan pulse 
// - measure lux
// - measure temperature
// - indicator LED
// - control fan via PWM
// - control LED via PWM

//
// Ports & Plugs
//
static PortI2C bus1(1);
static LuxPlug lux_plug(bus1, 0x39);
static Port fan_port(2);
static Port temperature_port(3);
static Port relay_port(4);

namespace led_pwm {
  static const byte PIN = 9;
  static byte setting = 35;
  static uint8_t auto_mode = 0;
  static uint8_t auto_mode_calculated_pwm = 0;

  static inline void setup() {
    pinMode(PIN, OUTPUT);
    analogWrite(PIN, setting);
  }

  static inline void handle_auto_mode(const uint16_t lux, bool log) {
    // auto mode uses lamp mode setting as maximum
    // led auto_mode value sets the lux threshold point where
    // the lamp will be turned on with minimal dimming
    const uint16_t slux = sqrt(lux);
    const uint16_t start = auto_mode;
    const uint16_t full = min(0, start - 30);
    long r = map(slux, full, start, setting, 0);
    if (r < 0) { r = 0; }
    if (r > setting) { r = setting; }
    auto_mode_calculated_pwm = r;
    analogWrite(PIN, auto_mode_calculated_pwm);
    if (log) {
      Serial.print("A "); Serial.print(slux); Serial.print(" "); Serial.print(full); Serial.print(" ");
      Serial.print(start); Serial.print(" "); Serial.println(auto_mode_calculated_pwm);
    }
  }
}

namespace fan {
  static byte pwm_setting = 35;
  volatile uint16_t pulse_count = 0;
  static uint16_t pulse_count_save = 0;
  static uint8_t pulse_per_second = 10;

  void pulse_interrupt() {
    ++pulse_count;
  }

  static inline void setup() {
    fan_port.mode(OUTPUT);
    fan_port.anaWrite(pwm_setting);
    attachInterrupt(1, pulse_interrupt, FALLING);
  }

  static inline void update_pulse_per_second() {
    const uint16_t l = pulse_count;
    pulse_per_second = l - pulse_count_save;
    pulse_count_save = l;
  }
}

namespace temperature {
  static int8_t value = 0;

  static inline void setup() {
    temperature_port.mode(OUTPUT);
    temperature_port.digiWrite(1); // Beep.
    delay(500);
    temperature_port.digiWrite(0);
  }

  static inline void handle() {
    const int t = temperature_port.anaRead();
    value = map(t, 0, 1023, 0, 330); // 10 mV/C
  }
}

namespace lux {
  static uint16_t value = 0;

  static inline void setup() {
    lux_plug.begin();
  }

  static inline void handle() {
    lux_plug.getData();
    value = lux_plug.calcLux();
  }
}

namespace indicator {
  static const byte PIN = 8;

  static inline void led (bool on) {
    digitalWrite(PIN, on ? 0 : 1);
  }

  static inline void setup() {
    pinMode(PIN, OUTPUT);
    for (int i = 0; i < 10; ++i) {
      led(true);
      delay(100);
      led(false);
      delay(100);
    }
  }
}

namespace relay {
  static inline void setup() {
    relay_port.mode(OUTPUT);
    relay_port.mode2(OUTPUT);
  }

  static inline void on() {
    relay_port.digiWrite(HIGH);
    delay(250);
    relay_port.digiWrite(LOW);
  }

  static inline void off() {
    relay_port.digiWrite2(HIGH);
    delay(250);
    relay_port.digiWrite2(LOW);
  }
}

namespace rf {
  static inline void setup() {
    // this is node 1 in net group 100 on the 868 MHz band
    rf12_initialize(1, RF12_868MHZ, 100);
  }
}

//
// SETUP
//
void setup () {
  Serial.begin(9600);

  indicator::setup();
  rf::setup();
  lux::setup();
  temperature::setup();
  fan::setup();
  led_pwm::setup();
}

static uint8_t counter = 0;
#define DATA_MSG_SIZE 10
static uint8_t data_msg[DATA_MSG_SIZE];

static void do_measurements() {
  indicator::led(true);

  lux::handle();
  Serial.print(lux::value); Serial.print(" ");

  temperature::handle();
  Serial.println(temperature::value);

  data_msg[0] = counter;
  memcpy(data_msg+1, &lux::value, 2);
  data_msg[3] = temperature::value;
  data_msg[4] = fan::pulse_per_second;
  data_msg[5] = led_pwm::setting;
  data_msg[6] = fan::pwm_setting;
  data_msg[7] = 0; // TODO led_relay_setting;
  data_msg[8] = led_pwm::auto_mode;
  data_msg[9] = led_pwm::auto_mode_calculated_pwm;

  indicator::led(false);
}

static void query_data() {
  rf12_sendStart(RF12_ACK_REPLY, data_msg, DATA_MSG_SIZE);
  rf12_sendWait(1);
  // increment the counter (it'll wrap from 255 to 0)
  ++counter;
}

static void beep() {
  rf12_sendStart(RF12_ACK_REPLY, 0, 0);
  rf12_sendWait(1);
  temperature_port.digiWrite(1);
  delay(100);
  temperature_port.digiWrite(0);
}

static void lamp_mode(const uint8_t mode) {
  // TODO led_relay_setting = mode > 0;
  // TODO actual relay triggering
  //if (mode > 0) {
    led_pwm::setting = mode;
    analogWrite(led_pwm::PIN, led_pwm::setting);
  //}
}

static void auto_mode(const uint8_t mode) {
  led_pwm::auto_mode = mode;
  // TODO actual auto mode handling
}

void loop () {
  static int8_t loop_count = 0;

  // handle received message
  if (rf12_recvDone() && rf12_crc == 0 && rf12_len >= 1) {

    indicator::led(true);

    switch (rf12_data[0]) {
    case 0:
      query_data();
      break;
    case 1: // beep
      beep();
      break;
    case 2:
      lamp_mode(rf12_data[1]);
      break;
    case 3:
      auto_mode(rf12_data[1]);
      break;
    }
    indicator::led(false);
    return;
  }

  ++loop_count;
  // do measurements every second
  if (loop_count % 20 == 0) { 
    fan::update_pulse_per_second();
    do_measurements(); 
    loop_count = 0;
  }
  if (led_pwm::auto_mode > 0) {
    led_pwm::handle_auto_mode(lux::value, loop_count % 20 == 0);
  }
  delay(50);
}
