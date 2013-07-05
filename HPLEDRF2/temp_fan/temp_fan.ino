/* -*- Mode: C; tab-width: 2; indent-tabs-mode: nil -*- */
// (c) 2013 Joost Yervante Damad <joost@damad.be>
// License: GPL

#include <JeeLib.h>
#include <Wire.h>

#include "../relay_pwm/settings.h"

#define RF_ID TEMP_FAN_RF_ID

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

static inline void rf_ack(const uint8_t cmd, const uint8_t reply_address) {
  static uint8_t data[3];
  data[0] = RF_ID;
  data[1] = reply_address;
  data[2] = cmd;
  rf12_sendStart(RF12_ACK_REPLY, data, sizeof data);
  rf12_sendWait(1);
}

volatile uint16_t pulse_count = 0;
static void pulse_interrupt() {
    ++pulse_count;
  }

static int8_t temperature = 0;
static uint8_t pwm_setting = 128;


static inline void send_data(const uint8_t reply_address) {
  static uint8_t data[6];
  data[0] = RF_ID;
  data[1] = reply_address;
  data[2] = CMD_TEMP_FAN_Q;
  data[2] = temperature;
  data[3] = pulse_count / 256;
  data[4] = pulse_count % 256;
  data[5] = pwm_setting;
  rf12_sendStart(0, data, sizeof data);
  rf12_sendWait(1);
  Serial.println("[send_data]");
}

static inline void set_pwm(const uint8_t reply_address, const uint8_t val) {
  pwm_setting = val;
  analogWrite(FAN_PWM, pwm_setting);
  rf_ack(CMD_SET_FAN_PWM, reply_address);
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
    const uint8_t source = rf12_data[0];
    const uint8_t target = rf12_data[1];
    if (target == RF_ID) {
      const uint8_t cmd = rf12_data[2];
      switch (cmd) {
        case CMD_TEMP_FAN_Q: send_data(source); break;
        case CMD_SET_FAN_PWM: set_pwm(source, rf12_data[3]); break;
      }
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
