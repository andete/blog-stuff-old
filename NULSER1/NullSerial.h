/*

Dummy serial device for easily disabling a (software) serial debug interface

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

*/

#ifndef NullSerial_h
#define NullSerial_h

#include <inttypes.h>
#include <Stream.h>

/******************************************************************************
* Definitions
******************************************************************************/

class NullSerial : public Stream
{
private:

public:
  // public methods
  NullSerial() {}
  ~NullSerial() {}
  void begin(long speed) {}
  bool listen() { return true; }
  void end() {}
  bool isListening() { return true; }
  bool overflow() { return false; }
  int peek() { return -1; }

  virtual size_t write(uint8_t byte) { return 0; }
  virtual int read() { return -1; }
  virtual int available() { return 0; }
  virtual void flush() {}
  
  size_t write(const char *str) { return 0; }
  size_t write(const uint8_t *buffer, size_t size) { return 0; }
    
  size_t print(const __FlashStringHelper *) { return 0; }
  size_t print(const String &) { return 0; }
  size_t print(const char[]) { return 0; }
  size_t print(char) { return 0; }
  size_t print(unsigned char, int = DEC) { return 0; }
  size_t print(int, int = DEC) { return 0; }
  size_t print(unsigned int, int = DEC) { return 0; }
  size_t print(long, int = DEC) { return 0; }
  size_t print(unsigned long, int = DEC) { return 0; }
  size_t print(double, int = 2) { return 0; }
  size_t print(const Printable&) { return 0; }

  size_t println(const __FlashStringHelper *) { return 0; }
  size_t println(const String &s) { return 0; }
  size_t println(const char[]) { return 0; }
  size_t println(char) { return 0; }
  size_t println(unsigned char, int = DEC) { return 0; }
  size_t println(int, int = DEC) { return 0; }
  size_t println(unsigned int, int = DEC) { return 0; }
  size_t println(long, int = DEC) { return 0; }
  size_t println(unsigned long, int = DEC) { return 0; }
  size_t println(double, int = 2) { return 0; }
  size_t println(const Printable&) { return 0; }
  size_t println(void) { return 0; }

  // public only for easy access by interrupt handlers
  static inline void handle_interrupt();
};

#endif
