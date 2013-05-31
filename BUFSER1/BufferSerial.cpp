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

#include "BufferSerial.h"

BufferSerial::BufferSerial(uint8_t *buffer, const uint16_t len)
:_buffer(buffer),_len(len), _buffer_overflow(len>0), _pos(0)
{
  memset(_buffer, 0, _len);
}

size_t BufferSerial::write(uint8_t byte) {
  if (_pos >= _len) {
    _buffer_overflow = true;
    return 0;
  }
  _buffer[_pos] = byte;
  ++_pos;
  return 1;
}

void BufferSerial::flush() {
  memset(_buffer, 0, _len);
  _pos = 0;
}
