/* -*- Mode: C; tab-width: 2; indent-tabs-mode: nil -*- */
// (c) 2013 Joost Yervante Damad <joost@damad.be>
// License: GPL

#include <JeeLib.h>
#include <Wire.h>
#include <Adafruit_TSL2561.h>

#define LED_PWM 5
#define RELAY_RESET 8
#define RELAY_SET 9

#define LUX_ADDR 0x39

static Adafruit_TSL2561 lux(LUX_ADDR, 1);

static void reset_relay() {
  digitalWrite(RELAY_RESET, HIGH);
  delay(500);
  digitalWrite(RELAY_RESET, LOW);
}

static void set_relay() {
  digitalWrite(RELAY_SET, HIGH);
  delay(500);
  digitalWrite(RELAY_SET, LOW);
}

static inline bool rf_available() {
  return (rf12_recvDone() && rf12_crc == 0 && rf12_len >= 1);
}
static inline void rf_ack() {
  rf12_sendStart(RF12_ACK_REPLY, 0, 0);
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
  rf12_initialize(1, RF12_868MHZ, 100);

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

void loop() {
  static uint8_t lc = 0;
  if (rf_available()) {
    const uint8_t cmd = rf12_data[0];
    switch (cmd) {
      case 0: rf_ack(); set_relay(); break;
      case 1: rf_ack(); reset_relay(); break;
      case 2: analogWrite(LED_PWM, rf12_data[1]); rf_ack(); break;
    } 
  }
  delay(100);
  ++lc;
  if (lc % 16 == 0) {
    uint16_t broadband, ir;
    lux.getLuminosity(&broadband, &ir);
    Serial.print(broadband); Serial.print(' ');
    Serial.print(ir); Serial.print(' ');
    const float light = lux.calculateLux(broadband, ir);
    /* Display the results (light is measured in lux) */
    Serial.print(light); Serial.println(" lux");
  }
}
