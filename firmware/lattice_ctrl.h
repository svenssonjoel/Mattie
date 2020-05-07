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

#ifndef _LATTICE_CTRL_H_
#define _LATTICE_CTRL_H_

#include "hal.h"
#include "ch.h"

#define RESET_GPIO GPIOB
#define RESET_PIN  6

#define DONE_GPIO GPIOB
#define DONE_PIN  7

#define SPI_SS_GPIO   GPIOA 
#define SPI_SS_PIN    15
#define SPI_SCK_GPIO  GPIOB 
#define SPI_SCK_PIN   3 
#define SPI_MISO_GPIO GPIOB
#define SPI_MISO_PIN  4 
#define SPI_MOSI_GPIO GPIOB
#define SPI_MOSI_PIN  5


/* Initialize the controll interface to the FPGA (SPI + RESET + DONE) */ 
void lattice_ctrl_init(void); 

/* RESET the FPGA */
bool lattice_ctrl_reset(void);

#endif
