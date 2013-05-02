/* -*- Mode: C; tab-width: 2; indent-tabs-mode: nil -*- */

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

//
// LED PWM
//
static const byte LED_PWM_PIN = 9;
static byte led_pwm_setting = 35;
static bool led_relay_setting = true; // TODO
static uint8_t led_auto_mode = 0;
static uint8_t led_auto_mode_calculated_pwm = 0;

//
// FAN PWM
//
static byte fan_pwm_setting = 35;
volatile uint16_t fan_pulse_count = 0;
static uint16_t fan_pulse_count_save = 0;
static uint8_t fan_pulse_per_second = 10;

void fan_pulse_interrupt() {
  ++fan_pulse_count;
}

// temperature, lux
static int8_t temperature = 0;
static uint16_t lux;

// message counter
static uint8_t counter = 0;

// query data message
#define DATA_MSG_SIZE 10
static uint8_t data_msg[DATA_MSG_SIZE];

// indicator LED
static const byte INDICATOR_LED = 8;

static inline void led (bool on) {
  digitalWrite(INDICATOR_LED, on ? 0 : 1); // inverted logic
}

//
// SETUP
//
void setup () {
  Serial.begin(9600);
  pinMode(INDICATOR_LED, OUTPUT);
  for (int i = 0; i < 10; ++i) {
    led(true);
    delay(100);
    led(false);
    delay(100);
  }

  // this is node 1 in net group 100 on the 868 MHz band
  rf12_initialize(1, RF12_868MHZ, 100);

  lux_plug.begin();

  temperature_port.mode(OUTPUT);
  temperature_port.digiWrite(1); // Beep.
  delay(1000);
  temperature_port.digiWrite(0);

  fan_port.mode(OUTPUT);
  fan_port.anaWrite(fan_pwm_setting);

  pinMode(LED_PWM_PIN, OUTPUT);
  analogWrite(LED_PWM_PIN, led_pwm_setting);

  attachInterrupt(1, fan_pulse_interrupt, FALLING);
}

 
static void do_measurements() {
  led(true);

  lux_plug.getData();
  lux = lux_plug.calcLux();
  Serial.print(lux); Serial.print(" ");

  const int t = temperature_port.anaRead();
  temperature = map(t, 0, 1023, 0, 330); // 10 mV/C
  Serial.println(temperature);

  data_msg[0] = counter;
  memcpy(data_msg+1, &lux, 2);
  data_msg[3] = temperature;
  data_msg[4] = fan_pulse_per_second;
  data_msg[5] = led_pwm_setting;
  data_msg[6] = fan_pwm_setting;
  data_msg[7] = led_relay_setting;
  data_msg[8] = led_auto_mode;
  data_msg[9] = led_auto_mode_calculated_pwm;

  led(false);
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
  led_relay_setting = mode > 0;
  // TODO actual relay triggering
  //if (mode > 0) {
    led_pwm_setting = mode;
    analogWrite(LED_PWM_PIN, led_pwm_setting);
  //}
}

static void auto_mode(const uint8_t mode) {
  led_auto_mode = mode;
  // TODO actual auto mode handling
}

void loop () {
  static int8_t loop_count = 0;

  // handle received message
  if (rf12_recvDone() && rf12_crc == 0 && rf12_len >= 1) {

    led(true);

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
    led(false);
    return;
  }

  ++loop_count;
  // do measurements every second
  if (loop_count % 20 == 0) { 
    const uint16_t l = fan_pulse_count;
    fan_pulse_per_second = l - fan_pulse_count_save;
    fan_pulse_count_save = l;
    do_measurements(); 
    loop_count = 0;
  }
  // auto_mode handling
  if (led_relay_setting && led_auto_mode > 0) {
    // auto mode uses lamp mode setting as maximum
    // led auto_mode value sets the lux threshold point where
    // the lamp will be turned on with minimal dimming
    const uint16_t slux = sqrt(lux);
    const uint16_t start = led_auto_mode;// map(led_auto_mode, 0, 255, 0, 65535);
    const uint16_t full = min(0, start - 30);
    long r = map(slux, full, start, led_pwm_setting, 0);
    if (r < 0) { r = 0; }
    if (r > led_pwm_setting) { r = led_pwm_setting; }
    led_auto_mode_calculated_pwm = r;
    if (loop_count % 20 == 0) { 
      Serial.print("A "); Serial.print(slux); Serial.print(" "); Serial.print(full); Serial.print(" ");
      Serial.print(start); Serial.print(" "); Serial.println(led_auto_mode_calculated_pwm);
    }
    analogWrite(LED_PWM_PIN, led_auto_mode_calculated_pwm);
  }
  delay(50);
}
