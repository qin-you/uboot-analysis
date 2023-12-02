.global led2_on			/* global func, other files can access */
led2_on:
	ldr r11, =0xE0200284	/* GPIO DR addr */
	ldr r12, [r11]		/* read DR to r12 */
	bic r12, r12, #(1<<1)	/* r12 = r12 & ~2 , set the pin low */
	str r12, [r11]		/* write back */
	
	mov pc, lr		/* return to caller */

