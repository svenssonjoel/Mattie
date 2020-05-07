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

#include "lattice_dcdc.h"

void lattice_dcdc_init(void) {

  palSetPadMode(REG1V2_ON_GPIO, REG1V2_ON_PIN,
		PAL_MODE_OUTPUT_PUSHPULL |
		PAL_STM32_OSPEED_HIGHEST);

  palWritePad(REG1V2_ON_GPIO, REG1V2_ON_PIN, 0);

  palSetPadMode(REG1V2_PWRGD_GPIO, REG1V2_PWRGD_PIN,
		PAL_MODE_INPUT |
		PAL_STM32_OSPEED_HIGHEST);
}


bool lattice_dcdc_pwrgd(void) {

  if (palReadPad(REG1V2_PWRGD_GPIO, REG1V2_PWRGD_PIN))
    return true;
  return false;
}

void lattice_dcdc_on(bool on) {

  if (on) { 
    palWritePad(REG1V2_ON_GPIO, REG1V2_ON_PIN, 1);
  } else {
    palWritePad(REG1V2_ON_GPIO, REG1V2_ON_PIN, 0);
  }
}
