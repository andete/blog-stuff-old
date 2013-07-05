/* -*- Mode: C; tab-width: 2; indent-tabs-mode: nil -*- */
// (c) 2013 Joost Yervante Damad <joost@damad.be>
// License: GPL

#include <JeeLib.h>
#include <Wire.h>
#include <Adafruit_TSL2561.h>

#include "settings.h"

#define RF_ID LED_PWM_RF_ID

#define LED_PWM 5
#define RELAY_RESET 8
#define RELAY_SET 9

#define LUX_ADDR 0x39

static Adafruit_TSL2561 lux(LUX_ADDR, 1);

static void reset_relay() {
  Serial.println("Disable LED.");
  digitalWrite(RELAY_RESET, HIGH);
  delay(500);
  digitalWrite(RELAY_RESET, LOW);
}

static void set_relay() {
  Serial.println("Enable LED.");
  digitalWrite(RELAY_SET, HIGH);
  delay(500);
  digitalWrite(RELAY_SET, LOW);
}

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

void setup() {
  // Serial
  Serial.begin(9600);
  Serial.println("Hello.");

  // setup relay
  pinMode(RELAY_RESET, OUTPUT);
  digitalWrite(RELAY_RESET, LOW);
  pinMode(RELAY_SET, OUTPUT);
  digitalWrite(RELAY_SET, LOW);
  reset_relay();

  // RF
  rf12_initialize(RF_ID, RF12_868MHZ, RF_GROUP);

  // PWM
  pinMode(LED_PWM, OUTPUT);
  analogWrite(LED_PWM, 40);

  // LUX
  if (lux.begin()) {
    //lux.enableAutoGain(true);
    lux.setGain(TSL2561_GAIN_1X);
    lux.setIntegrationTime(TSL2561_INTEGRATIONTIME_13MS);
  } else {
    Serial.println("Lux init failure.");
  }

}

static float light = 0.0;
static uint8_t temperature = -1;
static int32_t prev_pulse_count = -1;
static int32_t pulse_count = 0;
static uint8_t fan_pwm_setting = 128;
static uint64_t fan_pwm_msg_lc = 0;

static void get_lux() {
  uint16_t broadband, ir;
  lux.getLuminosity(&broadband, &ir);
  //Serial.print(broadband); Serial.print(' ');
  //Serial.print(ir); Serial.print(' ');
  light = lux.calculateLux(broadband, ir);
  Serial.print(light); Serial.println(" lux");
}

static uint64_t lc = 0;

static void safety_checks() {
  if (lc - fan_pwm_msg_lc > 20) {
    Serial.println("did not hear from fan! shutdown LED.");
    reset_relay();
  }
  if (prev_pulse_count == pulse_count) {
    Serial.println("no fan pulse detected! shutdown LED.");
    reset_relay();
  }
  if (temperature > 90) {
    Serial.println("Temperature threshold (90C) exceeded. shutdown LED.");
    reset_relay();
  }
}

void loop() {
  if (rf_available()) {
    const uint8_t source = rf12_data[0];
    const uint8_t target = rf12_data[1];
    if (target == RF_ID || target == 0) {
    const uint8_t cmd = rf12_data[2];
    Serial.print((int)source); Serial.print("-> ["); 
    Serial.print((int)cmd); Serial.print("] ");
    switch (cmd) {
      case CMD_SET_RELAY: 
        rf_ack(cmd, source);
        set_relay();
        break;
      case CMD_RESET_RELAY: 
        rf_ack(cmd, source);
        reset_relay();
        break;
      case CMD_SET_LED_PWM:
        rf_ack(cmd, source);
        analogWrite(LED_PWM, rf12_data[3]); 
        break;
      case CMD_TEMP_FAN_Q:
        temperature = rf12_data[3];
        prev_pulse_count = pulse_count;
        pulse_count = ((int32_t)rf12_data[4])*256 + rf12_data[5];
        fan_pwm_setting = rf12_data[6];
        fan_pwm_msg_lc = lc; // expect a msg about every 20 lc's
        Serial.print("temp_fan: "); Serial.print(temperature); Serial.print(" "); Serial.print(pulse_count); Serial.print(" "); Serial.println(fan_pwm_setting);
        break;
    }}
  }
  delay(100);
  ++lc;
  if (lc % 16 == 0) {
    get_lux();
    safety_checks();
  }
}
