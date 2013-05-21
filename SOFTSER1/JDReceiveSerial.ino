/* -*- Mode: C; tab-width: 2; indent-tabs-mode: nil -*- */

/* (c) 2012 Joost Yervante Damad <joost@damad.be> */
/* License: GPL3+ */

#include "JDReceiveSerial.h"

extern "C" {
  #include <string.h>
  #include <avr/wdt.h>
  #include <util/atomic.h>
}

static inline uint8_t bytediff(uint8_t high, uint8_t low) {
  if (high > low) { return high - low; }
  return ((uint8_t)(256 - (int)low)) + high;
}

static inline uint16_t uint16diff(uint16_t high, uint16_t low) {
  if (high > low) { return high - low; }
  return (~low) + high;
}

static inline stamp_t stampdiff(stamp_t high, stamp_t low) {
  if (high > low) { return high - low; }
  return (~low) + high;
}

/*
static inline unsigned long uldiff(unsigned long high, unsigned long low) {
  if (high > low) { return high - low; }
  return 24294967296l low + high;
}
*/

#define SSRX 2
#define SSTX 3 // we're only doing RX for now


typedef struct {
  bool rise;
  stamp_t timestamp;
} bitchange;

static bitchange bitchanges[32] = { { 0,0 } };
static int datapos = 31;
static int freepos = 0;

static volatile uint8_t * receivePortRegister = 0;
static uint8_t receiveBitMask = 0;

void setup()
{
  receivePortRegister = portInputRegister(digitalPinToPort(SSRX));
  receiveBitMask = digitalPinToBitMask(SSRX);
  Serial.begin(115200);
  pinMode(SSRX, INPUT);
  // enable Group Pin Change Interrupt in Pin Change Interrupt Control Register
  *digitalPinToPCICR(SSRX) |= _BV(digitalPinToPCICRbit(SSRX));
  // enable our pin in the Pin Change Mask Register
  *digitalPinToPCMSK(SSRX) |= _BV(digitalPinToPCMSKbit(SSRX));
}

/* 1 192 0 14 1 23 0 30 1 38 0 46 1 54 0 62 1 70 0 78 */
/* S 116 D 124 D 132 D 140 D 148 D 156 D 164 D 172 D 180 E 2 U */ 
/* D 235 E 55 U S 64 D 71 D 79 D 87 D 95 D 103 D 111 D 119 */ 

static bool want_start = true;
static int bit_count = 0;
static uint8_t recv_byte = 0;
static stamp_t prev_ts = 0;
static unsigned int start_delay = 0;

static void clear()
{
  ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
    datapos = 31;
  }
  freepos = 0;
}


void loop()
{
  if ((datapos + 1)%32 != freepos) {
    // first get data out of array
    const bool rise = bitchanges[datapos].rise;
    const stamp_t timestamp = bitchanges[datapos].timestamp;
    // only then update datapos to avoid getting overwritten data
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
      datapos = (datapos + 1) & 31;
    }
    // Serial.print(timestamp); Serial.print(' '); Serial.println(rise?'1':'0');
    if (want_start) {
      if (!rise) {
        if (start_delay > 0) {
          const stamp_t d = stampdiff(timestamp, prev_ts);
          if (d < start_delay) {
            // to soon, skip
          } else {
            want_start = false;
            bit_count = 0;
            recv_byte = 0;
            start_delay = 0;
            //Serial.print('T');
          }
        } else {
          // \/ we actually receive what could be a start bit
          want_start = false;
          bit_count = 0;
          recv_byte = 0;
          //Serial.print('S');
        }
      } else {
        //Serial.print('Q');
        // /\ probably a stop bit; just discard and wait for next start
      }
    } else {
      // we are receiving a byte
      const stamp_t d = stampdiff(timestamp, prev_ts);
      // Serial.println(d);
      if (d > 80) {
        // if it takes to long to get a bit, the byte has ended
        if (!rise) {
          // \/ we find what is possibly a new start bit
          // this means we need to fill the remaining bits with
          // /\ meaning a 1
          const int num_bits_remaining = 8 - bit_count;
          // Serial.print("+"); Serial.print(num_bits_remaining); Serial.print('-');
          for (int i = 0; i  < num_bits_remaining; ++i) {
            recv_byte >>= 1;
            recv_byte += 128;
          }
          Serial.print('$');
          Serial.println((int)recv_byte, HEX);
          want_start = false;
          bit_count = 0;
          recv_byte = 0;
        } else {
          // /\ we're out of sync, restart
          //Serial.println('*');
          bit_count = 0;
          want_start = true;
          start_delay = 80;
        }
      } else {
        // new edge within the same byte
        // if the edge comes after double the expected time or more
        // we've skipped a bunch of bit of the previous value
        const int8_t prev_num_bits = ((d+1) / 8) - 1;
        // Serial.print("+"); Serial.print(prev_num_bits); Serial.print('-');
        // push previous bits
        for (int8_t i = 0; i < prev_num_bits; ++i) {
          recv_byte >>= 1;
          recv_byte += rise ? 0 : 128; // inverse of what we're going to now
          // Serial.print(rise ? 'O' : '|');
          ++bit_count;
        }
        // push current bit
        if (bit_count < 8) {
          // Serial.print(rise ? '1' : '0');
          recv_byte >>= 1;
          recv_byte += rise ? 128 : 0;
          ++bit_count;
        }
        if (bit_count >= 8) {
          // we reached the end of the byte
          Serial.print('#'); 
          Serial.println((int)recv_byte, HEX);
          want_start = true;
        }
      }
    }
    prev_ts = timestamp;
  }
}

extern unsigned long timer0_overflow_count;

static inline stamp_t mytimer() {
  const stamp_t ov = (timer0_overflow_count & 16777215l) << 8;
#if defined(TCNT0)
  const uint8_t t = TCNT0;
#elif defined(TCNT0L)
  const uint8_t t = TCNT0L;
#else
#error TIMER 0 not defined
#endif
  return ov+t;
}

inline void handle_interrupt()
{
  // if our change buffer is full, just drop
  if (datapos == freepos) { return; }
  const uint8_t pin_data = *receivePortRegister & receiveBitMask;
  bitchanges[freepos].rise = pin_data > 0;
  bitchanges[freepos].timestamp = mytimer();
  freepos = (freepos + 1) & 31;
}

#if defined(PCINT0_vect)
ISR(PCINT0_vect)
{
  handle_interrupt();
}
#endif

#if defined(PCINT1_vect)
ISR(PCINT1_vect)
{
  handle_interrupt();
}
#endif

#if defined(PCINT2_vect)
ISR(PCINT2_vect)
{
  handle_interrupt();
}
#endif

#if defined(PCINT3_vect)
ISR(PCINT3_vect)
{
  handle_interrupt();
}
#endif
