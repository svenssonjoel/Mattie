#!/bin/sh
openocd -f board/stm32f4discovery.cfg -c "reset_config trst_only combined" -c "program build/MATTIE_FIRMWARE.elf verify reset exit"
