/* -*- Mode: C; tab-width: 2; indent-tabs-mode: nil -*- */

// (C) 2013 Joost Yervante Damad <joost@damad.be>
// parts are inspired by the jeelabs website examples

#include <Ports.h>
#include <JeeLib.h>

#include <avr/wdt.h>

// TODO:
// - ramping pwm changes
// - hysteresis ?
// - fan still needed ?
// - 3.3V PWM signal only dims up to 33% ;)
// - relay takes lot of current when switching causing CPU to brownout at times => introduce storage cap on relay board

// features:
// - measure fan pulse for fan pulse per second
// - measure lux
// - measure temperature
// - indicator LED
// - control fan via PWM
// - control LED via PWM
// - switch LED driver power via relay

// settings
// #define NO_BEEP

//
// Ports & Plugs
//
static PortI2C bus1(1);
static LuxPlug lux_plug(bus1, 0x39);
static Port fan_port(2);
static Port temperature_port(3);
static Port relay_port(4);

//
// global state
//
static uint8_t counter = 0;
#define DATA_MSG_SIZE 11
static uint8_t data_msg[DATA_MSG_SIZE];

namespace led_pwm {
  static const byte PIN = 9;
  static byte setting = 35;
  static bool auto_mode = false;
  static uint8_t auto_setting = 0;
  static uint8_t auto_calculated_pwm = 0;

  static inline void setup() {
    pinMode(PIN, OUTPUT);
    // change PWM frequency to 31250/64 ~= 488Hz
    // TODO: verify if this is actually needed; I'm guessing it isn't
    const uint8_t mode = 0x03;
    TCCR1B = (TCCR1B & 0b11111000) | mode;
    analogWrite(PIN, setting);
  }

  static inline void set_dim(const uint8_t dim) {
    setting = dim;
    analogWrite(PIN, setting);
  }

  static inline void set_auto(const uint8_t dim) {
    auto_setting = dim;
  }

  static inline void auto_on() {
    auto_mode = true;
  }

  static inline void auto_off() {
    auto_mode = false;
  }

  static inline void handle_auto(const uint16_t lux, bool log) {
    if (!auto_mode) { return; }
    // auto mode uses lamp mode setting as maximum
    // led auto_mode value sets the lux threshold point where
    // the lamp will be turned on with minimal dimming
    const uint16_t slux = sqrt(lux);
    const uint16_t start = auto_setting;
    const uint16_t full = min(0, start - 30);
    long r = map(slux, full, start, setting, 0);
    if (r < 0) { r = 0; }
    if (r > setting) { r = setting; }
    auto_calculated_pwm = r;
    analogWrite(PIN, auto_calculated_pwm);
    if (log) {
      Serial.print("A "); Serial.print(slux); Serial.print(" "); Serial.print(full); Serial.print(" ");
      Serial.print(start); Serial.print(" "); Serial.println(auto_calculated_pwm);
    }
  }
}

namespace fan {
  namespace pwm {
    static const uint8_t off = 0;
    static const uint8_t normal = 35;
    static const uint8_t high = 100;
    static const uint8_t very_high = 150;
    static const uint8_t almost_full = 200;
    static const uint8_t full = 255;
  }

  static uint8_t pwm_setting = 0;
  volatile uint16_t pulse_count = 0;
  static uint16_t pulse_count_save = 0;
  static uint8_t pulse_per_second_prev = 30;
  static uint8_t pulse_per_second = 30;

  void pulse_interrupt() {
    ++pulse_count;
  }

  static inline void set(uint8_t value, const char *str) {
    Serial.print(F("[fan] ")); Serial.println(str);
    pwm_setting = value;
    fan_port.digiWrite2(HIGH);
    fan_port.anaWrite(pwm_setting);
  }

  static inline void setup() {
    fan_port.mode(OUTPUT);
    fan_port.mode2(OUTPUT);
    attachInterrupt(1, pulse_interrupt, FALLING);
    set(pwm::normal, "normal");
  }

  static inline void update_pulse_per_second() {
    const uint16_t l = pulse_count;
    pulse_per_second_prev = pulse_per_second;
    pulse_per_second = l - pulse_count_save;
    pulse_count_save = l;
  }

  static inline bool pulse_ok() {
    return pulse_per_second_prev >= 20 && pulse_per_second >= 20;
  }
}

namespace temperature {
  static int8_t prev_value = 0;
  static int8_t value = 0;

  static inline void beep(const int16_t len = 100) {
#ifndef NO_BEEP
    temperature_port.digiWrite(1);
    delay(len);
    temperature_port.digiWrite(0);
#else
    Serial.println(F("[BEEP!]"));
#endif
  }

  static inline void setup() {
    temperature_port.mode(OUTPUT);
    beep(500);
  }

  static inline void handle() {
    const int16_t t = temperature_port.anaRead();
    prev_value = value;
    value = map(t, 0, 1023, 0, 330); // 10 mV/C
  }
  
  static bool greater_then(const uint8_t c) {
    return value > c && prev_value > c;
  }

  static inline bool safe() {
    return value < 40 && prev_value < 40;
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

  static inline void on() {
    digitalWrite(PIN, LOW);
  }
  static inline void off() {
    digitalWrite(PIN, HIGH);
  }

  static inline void setup() {
    pinMode(PIN, OUTPUT);
    for (int8_t i = 0; i < 10; ++i) {
      on();
      delay(100);
      off();
      delay(100);
    }
  }
}

namespace relay {

  static bool value = false;

  static inline void off() {
    relay_port.digiWrite(1);
    delay(1000);
    relay_port.digiWrite(LOW);
    value = false;
  }

  static inline void on() {
    relay_port.digiWrite2(1);
    delay(1000);
    relay_port.digiWrite2(LOW);
    value = true;
  }

  static inline void setup() {
    relay_port.mode(OUTPUT);
    relay_port.digiWrite(LOW);
    relay_port.mode2(OUTPUT);
    relay_port.digiWrite2(LOW);
    off();
  }
}

namespace rf {
  static inline void setup() {
    // this is node 1 in net group 100 on the 868 MHz band
    rf12_initialize(1, RF12_868MHZ, 100);
  }

  static inline bool available() {
    return (rf12_recvDone() && rf12_crc == 0 && rf12_len >= 1);
  }

  static inline uint8_t command() {
    return rf12_data[0];
  }

  static inline void ack() {
    rf12_sendStart(RF12_ACK_REPLY, 0, 0);
    rf12_sendWait(1);
  }
}

namespace commands {
  static inline void on() {
    rf::ack();
    relay::on();
  }

  static inline void off() {
    rf::ack();
    relay::off();
  }

  static inline void dim_value() {
    const uint8_t d = rf12_data[1];
    const uint8_t l = rf12_len;
    rf::ack();
    if (l >= 2) {
      led_pwm::set_dim(d);
      if (d > 200) {
        temperature::beep();
      }
    }
  }

  static inline void auto_on() {
    rf::ack();
    led_pwm::auto_on();
  }

  static inline void auto_off() {
    rf::ack();
    led_pwm::auto_off();
  }

  static inline void auto_value() {
    const uint8_t d = rf12_data[1];
    const uint8_t l = rf12_len;
    rf::ack();
    if (l >= 2) {
      led_pwm::set_auto(d);
    }
  }

  static inline void beep() {
    rf::ack();
    temperature::beep();
  }

  static inline void query_data() {
    rf12_sendStart(RF12_ACK_REPLY, data_msg, DATA_MSG_SIZE);
    rf12_sendWait(1);
    ++counter;
  }

  static inline void reset() {
    wdt_enable(WDTO_15MS);
    for(;;) { } // infinite loop, will reset in 15ms
  }

  static inline void handle() {
    indicator::on();
    // Serial.println(rf::command());
    switch (rf::command()) {
      // standard commands
      case 0: on(); break;
      case 1: off(); break;
      case 2: dim_value(); break;
      case 3: auto_on(); break;
      case 4: auto_off(); break;
      case 5: auto_value(); break;
      case 10: query_data(); break;
      case 11: beep(); break;
      // testing commands
      case 50: reset(); break;
    }
    indicator::off();
  }
}

static inline void take_measurements() {
  indicator::on();
  fan::update_pulse_per_second();
  lux::handle();
  temperature::handle();

  data_msg[0] = counter;
  data_msg[1] = relay::value;
  data_msg[2] = led_pwm::auto_mode;
  data_msg[3] = temperature::value;
  data_msg[4] = fan::pulse_per_second;
  data_msg[5] = led_pwm::setting;
  data_msg[6] = led_pwm::auto_setting;
  data_msg[7] = led_pwm::auto_calculated_pwm;
  data_msg[8] = fan::pwm_setting;
  memcpy(data_msg+9, &lux::value, 2);

  Serial.print("lux:"); Serial.print(lux::value); Serial.print(" temp:");
  Serial.println(temperature::value);
  indicator::off();
}

static inline void safety_checks() {

  if (temperature::greater_then(95)) {
    Serial.println(F("Danger, shutting down!"));
    relay::off();
    return;
  }

  if (temperature::greater_then(90)) {
    temperature::beep();
    Serial.println(F("Very high temperature, fan full blast!"));
    fan::set(fan::pwm::full, "full");
    if (led_pwm::setting > 200) {
      led_pwm::set_dim(200);
    }
  }
  
  else if (temperature::greater_then(85)) {
    Serial.println(F("High temperature, fan high!"));
    fan::set(fan::pwm::almost_full, "almost full");
  }

  else if (temperature::greater_then(80)) {
    Serial.println(F("Warn temperature, fan harder!"));
    fan::set(fan::pwm::high, "high");
  }
  
  else {
    fan::set(fan::pwm::normal, "normal");
  }

  if (!relay::value) {
    if (temperature::safe()) {
      fan::set(fan::pwm::off, "off");
    } else {
      fan::set(fan::pwm::normal, "normal");
    }
  }

  if (fan::pwm_setting > 0 && !fan::pulse_ok()) {
    Serial.println(F("fan pulse not found, shutting off!"));
    relay::off();
    return;
  }

}

void setup () {
  Serial.begin(9600);

  indicator::setup();
  rf::setup();
  lux::setup();
  temperature::setup();
  fan::setup();
  led_pwm::setup();
  relay::setup();
}

void loop () {
  static int8_t loop_count = 0;

  if (rf::available()) {
    commands::handle();
    return;
  }

  ++loop_count;

  // take measurements every second
  if (loop_count % 20 == 0) { 

    take_measurements(); 
    led_pwm::handle_auto(lux::value, loop_count % 20 == 0);
    loop_count = 0;
    safety_checks();

  }
  delay(50);
}

/* make sure the watchdog gets disabled immediately on boot */
uint8_t mcusr_mirror __attribute__ ((section (".noinit")));

void get_mcusr(void)         \
    __attribute__((naked))                      \
    __attribute__((section(".init3")));
void get_mcusr(void)
{
    mcusr_mirror = MCUSR;
    MCUSR = 0;
    wdt_disable();
}
