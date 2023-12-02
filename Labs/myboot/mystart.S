b reset
b reset
b reset
b reset
b reset
b reset
b reset
b reset


reset:
        bl      gpio_out
        bl      led2_on
        mov     r0, r1
        mov     r0, r1
        mov     r0, r1
        mov     r0, r1
        mov     r0, r1

1:
        b 1b            /* loop   b 1   backward(not f:forward) */



gpio_out:
	ldr r11, =0xE0200280	/* gpioJ GDIR Reg addr in mainboard */
	ldr r12, =0x00001111	/* set output mode */
	str r12, [r11]		/* write back to GPIOJ GDIR Reg */

	ldr r11, =0xE0200284	/* GPIOJ data Reg addr */
	ldr r12, =0xF		/* set high */
	str r12, [r11]

	mov pc, lr		/* return */



