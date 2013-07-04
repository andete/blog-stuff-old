/* -*- Mode: C; tab-width: 2; indent-tabs-mode: nil -*- */
// (c) 2013 Joost Yervante Damad <joost@damad.be>
// License: GPL

#include <JeeLib.h>
#include <Wire.h>

#define RF_GROUP 100
#define RF_ID 3

// PD3
#define FAN_PULSE 3
// PD5
#define FAN_PWM 5

// ADC7
#define TEMP_PIN A7

// ADC is 5.0/1024 volt per adc step
// ad8495 is 5mV/C
static const float reference_voltage = 5.0;
static const float adc_factor = (reference_voltage/1024)/(5E-3);

static inline bool rf_available() {
  return (rf12_recvDone() && rf12_crc == 0 && rf12_len >= 1);
}
static inline void rf_ack() {
  rf12_sendStart(RF12_ACK_REPLY, 0, 0);
  rf12_sendWait(1);
}

volatile uint16_t pulse_count = 0;
static void pulse_interrupt() {
    ++pulse_count;
  }

static int8_t temperature = 0;
static uint8_t pwm_setting = 128;

static inline void send_data() {
  static uint8_t data[4];
  data[0] = temperature;
  data[1] = pulse_count / 256;
  data[2] = pulse_count % 256;
  data[3] = pwm_setting;
  rf12_sendStart(RF12_ACK_REPLY, data, 4);
  rf12_sendWait(1);
  Serial.println("[send_data]");
}

static inline void set_pwm() {
 pwm_setting = rf12_data[1];
 analogWrite(FAN_PWM, pwm_setting);
 rf_ack();
  Serial.println("[set_pwm]");
}

void setup() {
  // Serial
  Serial.begin(9600);
  Serial.println("Hello.");

  // RF
  rf12_initialize(RF_ID, RF12_868MHZ, RF_GROUP);

  // PWM
  pinMode(FAN_PWM, OUTPUT);
  analogWrite(FAN_PWM, pwm_setting);

  // fan pulse
  attachInterrupt(1, pulse_interrupt, FALLING);

  // set ADC reference to internal 1.1V reference
  // internal ref is +- 0.1V
  // 5V Vreg is +-0.025V, so using the internal reference is far worse
  // analogReference(INTERNAL);
}


void loop() {
  static uint8_t lc = 0;
  if (rf_available()) {
    const uint8_t cmd = rf12_data[0];
    switch (cmd) {
      case 1: send_data(); break;
      case 2: set_pwm(); break;
    } 
  }
  delay(100);
  ++lc;
  if (lc % 16 == 0) {
     // take temperature, check fan pulse
     const float raw_temp = analogRead(TEMP_PIN); // steps
     temperature = raw_temp * adc_factor;
     Serial.print(temperature); Serial.print(" "); Serial.println(pulse_count);
  }
}
