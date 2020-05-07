/*
    Copyright 2020 Joel Svensson	svenssonjoel@yahoo.se

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#include "lattice_data.h"

void lattice_data_direction(data_channel c, bool output) {

  ioportid_t id;
  ioportmask_t mask; 
  
  switch(c) {
  case D0:
    id = D0_GPIO;
    mask = 0xFF;
    break;
  case D1:
    id = D1_GPIO;
    mask = 0xFF;
    break;
  case A0:
    id = A0_GPIO;
    mask = 0x7;
    break;
  case A1:
    id = A1_GPIO;
    mask = 0x7;
    break;
  default:
    return;
  }
  
  if (output) { 
    palSetGroupMode(id, mask, 0,
		    PAL_MODE_OUTPUT_PUSHPULL |
		    PAL_STM32_OSPEED_HIGHEST);
    palWriteGroup(id, mask, 0, 0); 
  } else {
    palSetGroupMode(id, mask, 0,
		    PAL_MODE_INPUT |
		    PAL_STM32_OSPEED_HIGHEST); 
  }
  
}
