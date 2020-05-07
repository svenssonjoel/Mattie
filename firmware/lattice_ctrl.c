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

#include "lattice_ctrl.h"

void lattice_ctrl_init(void) {

  palSetPadMode(RESET_GPIO, RESET_PIN,
		PAL_MODE_OUTPUT_PUSHPULL |
		PAL_STM32_OSPEED_HIGHEST);

  palWritePad(RESET_GPIO, RESET_PIN, 0);

  palSetPadMode(DONE_GPIO, DONE_PIN,
		PAL_MODE_INPUT |
		PAL_STM32_OSPEED_HIGHEST);

  // TODO: Figure out how to configure pins for SPI
  // PLACEHOLDER
  palSetPadMode(SPI_SS_GPIO, SPI_SS_PIN,
		PAL_MODE_OUTPUT_PUSHPULL |
		PAL_STM32_OSPEED_HIGHEST);
  palSetPadMode(SPI_SCK_GPIO, SPI_SCK_PIN,
		PAL_MODE_OUTPUT_PUSHPULL |
		PAL_STM32_OSPEED_HIGHEST);
  palSetPadMode(SPI_MISO_GPIO, SPI_MISO_PIN,
		PAL_MODE_INPUT |
		PAL_STM32_OSPEED_HIGHEST);
  palSetPadMode(SPI_MOSI_GPIO, SPI_MOSI_PIN,
		PAL_MODE_OUTPUT_PUSHPULL |
		PAL_STM32_OSPEED_HIGHEST);

}
