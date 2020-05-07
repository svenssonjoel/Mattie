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

#ifndef _LATTICE_DCDC_H_
#define _LATTICE_DCDC_H_

#include "hal.h"

#define REG1V2_ON_GPIO GPIOB
#define REG1V2_ON_PIN  11

#define REG1V2_PWRGD_GPIO GPIOB
#define REG1V2_PWRGD_PIN  12

void lattice_dcdc_init(void);

bool lattice_dcdc_pwrgd(void);
void lattice_dcdc_on(bool on);


#endif 
