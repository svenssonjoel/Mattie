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

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>
#include <math.h>

#include "ch.h"
#include "hal.h"
#include "usbcfg.h"
#include "chprintf.h"

#include "led.h"
#include "lattice_data.h"
#include "lattice_ctrl.h"
#include "lattice_dcdc.h"


int main(void) {

  halInit();
  chSysInit();

  lattice_dcdc_init();
  lattice_ctrl_init();

  lattice_data_direction(D0,false);
  lattice_data_direction(D1,false);
  lattice_data_direction(A0,false);
  lattice_data_direction(A1,false);
  
  led_init();

  sduObjectInit(&SDU1);
  sduStart(&SDU1, &serusbcfg);
  
  /*
   * Activates the USB driver and then the USB bus pull-up on D+.
   * Note, a delay is inserted in order to not have to disconnect the cable
   * after a reset.
   */
  
  usbDisconnectBus(serusbcfg.usbp);
  chThdSleepMilliseconds(1500);
  usbStart(serusbcfg.usbp, &usbcfg);
  usbConnectBus(serusbcfg.usbp);
  chThdSleepMilliseconds(500);

  led_write(LED_RED, 1);
  chThdSleepMilliseconds(500);
  led_write(LED_YELLOW, 1);
  chThdSleepMilliseconds(500);
  led_write(LED_RED, 0);
  led_write(LED_GREEN, 1);
  chThdSleepMilliseconds(500);
  led_write(LED_YELLOW, 0);


  lattice_dcdc_on(true);

  led_write(LED_YELLOW, 1); 
  while (!lattice_dcdc_pwrgd()) {
    chThdSleepMilliseconds(1);
  }

  chThdSleepMilliseconds(500);
  led_write(LED_YELLOW, 0);
  
  if (!lattice_ctrl_reset()) {
    led_write(LED_RED,1);
  } else {
    for (int i = 0; i < 5; i ++) {
      led_write(LED_YELLOW, 1);
      chThdSleepMilliseconds(100);
      led_write(LED_YELLOW, 0);
      chThdSleepMilliseconds(100);
    }
  }
  
  
  /*
   *  Main thread activity...
   */
  while (true) {
    
    chprintf((BaseSequentialStream *)&SDU1,"Hello world\r\n");

    chThdSleepMilliseconds(500);
  }

}
