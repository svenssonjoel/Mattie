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
  SPI_CR1_CPHA | SPI_CR1_CPOL | SPI_CR1_MSTR | SPI_CR1_BR_2  
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


  volatile SPI_TypeDef *spi3 = SPI3;

  /*CR1 - !< SPI control register 1 (not used in I2S mode),      Address offset: 0x00 */
  /*CR2 - !< SPI control register 2,                             Address offset: 0x04 */
  /*SR - !< SPI status register,                                Address offset: 0x08 */
  /*DR - !< SPI data register,                                  Address offset: 0x0C */
  /*CRCPR - !< SPI CRC polynomial register (not used in I2S mode), Address offset: 0x10 */
  /*RXCRCR - !< SPI RX CRC register (not used in I2S mode),         Address offset: 0x14 */
  /*TXCRCR - !< SPI TX CRC register (not used in I2S mode),         Address offset: 0x18 */
  /*!< SPI_I2S configuration register,                     Address offset: 0x1C */
  /*!< SPI_I2S prescaler register,                         Address offset: 0x20 */
  
  //spi3.CR1 = SPI_CR1_CPHA | SPI_CR1_CPOL | SPI_CR1_MSTR | SPI_CR1_BR_2;        
  //spi3.CR2 = 0;          
  //spi3.SR = 0;         
  //spi3.DR = 0;          
  //spi3.CRCPR = 0x07; /*reset*/      
  //spi3.RXCRCR = 0;     
  //spi3.TXCRCR = 0;      
  //spi3.I2SCFGR = 0;    
  //spi3.I2SPR = 0;      
  

  // set enable bit. Is this all that is needed to enable?
  //spi3.CR1 |= SPI_CR1_SPE;

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
