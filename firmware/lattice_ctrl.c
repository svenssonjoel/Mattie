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

const SPIConfig spicfg = {
  false,
  NULL,
  GPIOA,
  15,
  0,
  /* TODO: Figure out what these really mean! */ 
  SPI_CR1_BR | SPI_CR1_DFF, /* SPI_CR2_DS_2 | SPI_CR2_DS_1 | SPI_CR2_DS_0 */ 
};



void lattice_ctrl_init(void) {

  palSetPadMode(RESET_GPIO, RESET_PIN,
		PAL_MODE_OUTPUT_PUSHPULL |
		PAL_STM32_OSPEED_HIGHEST);

  palWritePad(RESET_GPIO, RESET_PIN, 1);

  palSetPadMode(DONE_GPIO, DONE_PIN,
		PAL_MODE_INPUT |
		PAL_STM32_OSPEED_HIGHEST);

  palSetPadMode(SPI_SCK_GPIO, SPI_SCK_PIN,
		PAL_MODE_ALTERNATE(5) | PAL_STM32_OSPEED_HIGHEST); 
  palSetPadMode(SPI_MISO_GPIO, SPI_MISO_PIN,
		PAL_MODE_ALTERNATE(5) | PAL_STM32_OSPEED_HIGHEST);  
  palSetPadMode(SPI_MOSI_GPIO, SPI_MOSI_PIN,
		PAL_MODE_ALTERNATE(5) | PAL_STM32_OSPEED_HIGHEST);  
  palSetPadMode(SPI_SS_GPIO, SPI_SS_PIN,
              PAL_MODE_OUTPUT_PUSHPULL | PAL_STM32_OSPEED_HIGHEST);
  // TODO: a bit unsure about the pin we call SS. Does it correspond to what is called CS in various Chibios + spi tutorials


  spiStart(&SPID3, &spicfg);

  
}


bool lattice_ctrl_reset(void) {

  int timeout = 100;
  palWritePad(RESET_GPIO, RESET_PIN, 0);
  palWritePad(SPI_SS_GPIO, SPI_SS_PIN, 0);
  chThdSleepMilliseconds(1);
  palWritePad(RESET_GPIO, RESET_PIN, 1);

  while (palReadPad(DONE_GPIO, DONE_PIN)) {
    if( timeout-- == 0) {
      return false;
    }
  }

  return true;  
} 
