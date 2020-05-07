
#include "led.h"

#include "hal.h"
#include "hal_pal.h"

void led_write(int num, int state) {
  switch (num) {
  case LED_RED:
    palWritePad(GPIOB, LED_RED_PIN, state);
    break;

  case LED_GREEN:
    palWritePad(GPIOB, LED_GREEN_PIN, state);
    break;

  case LED_YELLOW:
    palWritePad(GPIOB, LED_YELLOW_PIN, state);
    break;

  default:
    break;
  }
}

void led_init(void) {
  palSetPadMode(GPIOB, LED_RED_PIN,
		PAL_MODE_OUTPUT_PUSHPULL |
		PAL_STM32_OSPEED_HIGHEST);
  palSetPadMode(GPIOB, LED_GREEN_PIN,
		PAL_MODE_OUTPUT_PUSHPULL |
		PAL_STM32_OSPEED_HIGHEST);
  palSetPadMode(GPIOB, LED_YELLOW_PIN,
		PAL_MODE_OUTPUT_PUSHPULL |
		PAL_STM32_OSPEED_HIGHEST);

  led_write(LED_RED, 0);
  led_write(LED_GREEN, 0);
  led_write(LED_YELLOW, 0);
}
