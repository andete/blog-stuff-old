/*

  (c) 2013 Joost Yervante Damad <joost@damad.be>
  buffer serial device
  based on Arduino SoftwareSerial

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

#ifndef BufferSerial_h
#define BufferSerial_h

#include <inttypes.h>
#include <Stream.h>

class BufferSerial : public Stream
{
private:
   uint8_t * _buffer;
   const uint16_t _len;
   bool _buffer_overflow;
   uint16_t _pos;

public:
  // public methods
  BufferSerial(uint8_t *buffer, const uint16_t len);
  ~BufferSerial() {}

  operator const uint8_t *() const { return _buffer; }
  operator const char *() const { return (const char*)_buffer; }

  const uint16_t current_length() const { return _pos; }
 
  void begin(long speed) {}
  bool listen() { return true; }
  void end() {}
  bool isListening() { return true; }
  bool overflow() { bool ret = _buffer_overflow; _buffer_overflow = false; return ret; }
  int peek() { return -1; }

  virtual size_t write(uint8_t byte);
  virtual int read() { return -1; }
  virtual int available() { return -1; }
  virtual void flush();
  
  using Print::write;
};

#endif
