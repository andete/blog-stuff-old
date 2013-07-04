/* -*- Mode: C; tab-width: 2; indent-tabs-mode: nil -*- */
// (c) 2013 Joost Yervante Damad <joost@damad.be>
// License: GPL

#include <JeeLib.h>
#include <Wire.h>

// PD3
#define FAN_PULSE 3
// PD5
#define FAN_PWM 5

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


void setup() {
  // Serial
  Serial.begin(9600);
  Serial.println("Hello.");

  // RF
  rf12_initialize(1, RF12_868MHZ, 100);

  // PWM
  pinMode(FAN_PWM, OUTPUT);
  analogWrite(FAN_PWM, 128);

  // fan pulse
  attachInterrupt(1, pulse_interrupt, FALLING);
}

void loop() {
  static uint8_t lc = 0;
  if (rf_available()) {
    const uint8_t cmd = rf12_data[0];
    switch (cmd) {
      case 2: analogWrite(FAN_PWM, rf12_data[1]); rf_ack(); break;
    } 
  }
  delay(100);
  ++lc;
  if (lc % 16 == 0) {
     // take temperature, check fan pulse
  }
}
