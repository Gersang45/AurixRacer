	.file	"vl53l1_api_calibration.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.VL53L1_run_offset_calibration,"ax",@progbits
	.align 1
	.global	VL53L1_run_offset_calibration
	.type	VL53L1_run_offset_calibration, @function
VL53L1_run_offset_calibration:
.LFB1:
	.file 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_calibration.c"
	.loc 1 294 0
.LVL0:
	.loc 1 347 0
	mov	%d2, 4
	.loc 1 294 0
	sub.a	%SP, 160
.LCFI0:
.LVL1:
	.loc 1 345 0
	mov	%d15, 1
	.loc 1 347 0
	st.b	[%SP] 23, %d2
	.loc 1 349 0
	mov	%d2, 5
	.loc 1 294 0
	st.w	[%SP] 8, %d4
	st.a	[%SP] 12, %a5
	.loc 1 349 0
	st.b	[%SP] 24, %d2
	.loc 1 356 0
	ld.bu	%d2, [%a4] 340
	st.b	[%SP] 25, %d2
	.loc 1 357 0
	ld.bu	%d2, [%a4] 341
	st.b	[%SP] 26, %d2
	.loc 1 358 0
	ld.bu	%d2, [%a4] 342
	st.b	[%SP] 27, %d2
	.loc 1 363 0
	ld.bu	%d2, [%a4] 3
	.loc 1 345 0
	st.b	[%SP] 22, %d15
	.loc 1 294 0
	mov.aa	%a15, %a4
	.loc 1 333 0
	ld.hu	%d10, [%a4] 404
.LVL2:
	.loc 1 363 0
	jeq	%d2, 3, .L44
	.loc 1 373 0
	mov	%d15, 0
	st.h	[%a4] 86, %d15
	.loc 1 374 0
	st.h	[%a4] 88, %d15
	.loc 1 375 0
	mov	%d15, 3
.L44:
	st.b	[%a15] 561, %d15
	.loc 1 381 0
	mov	%d15, 0
	.loc 1 386 0
	ld.w	%d3, [%SP] 8
	st.h	[%a15] 556, %d3
	.loc 1 381 0
	st.h	[%a15] 84, %d15
	.loc 1 385 0
	mov	%d15, 3
	.loc 1 386 0
	mov	%d2, 0
	.loc 1 391 0
	mov	%d3, 0
	.loc 1 385 0
	st.b	[%a15] 560, %d15
	.loc 1 393 0
	mov	%d15, 0
.LVL3:
.L5:
	.loc 1 391 0 discriminator 3
	mul	%d4, %d2, 28
	.loc 1 396 0 discriminator 3
	add	%d2, 1
.LVL4:
	mul	%d5, %d2, 28
	.loc 1 391 0 discriminator 3
	addsc.a	%a2, %a15, %d4, 0
	st.b	[%a2] 564, %d3
	.loc 1 392 0 discriminator 3
	st.b	[%a2] 568, %d3
	.loc 1 393 0 discriminator 3
	st.w	[%a2] 572, %d15
	.loc 1 394 0 discriminator 3
	st.w	[%a2] 576, %d15
	.loc 1 395 0 discriminator 3
	st.w	[%a2] 580, %d15
	.loc 1 396 0 discriminator 3
	addsc.a	%a2, %a15, %d5, 0
	st.w	[%a2] 556, %d15
.LVL5:
	.loc 1 388 0 discriminator 3
	jne	%d2, 3, .L5
.LVL6:
	.loc 1 388 0 is_stmt 0
	mov	%d11, 0
	mov	%d2, 0
.LVL7:
	.loc 1 408 0 is_stmt 1
	mov	%d14, 100
.LVL8:
.L16:
	and	%d15, %d11, 255
	.loc 1 403 0
	lea	%a3, [%SP] 22
	mul	%d12, %d15, 28
	addsc.a	%a2, %a3, %d15, 0
	and	%d13, %d11, 255
.LVL9:
	ld.bu	%d4, [%a2]0
	addsc.a	%a2, %a15, %d12, 0
	st.b	[%a2] 564, %d4
	.loc 1 407 0
	jz	%d2, .L46
	.loc 1 420 0
	st.h	[%a15] 404, %d10
.LVL10:
.L29:
	.loc 1 474 0
	add	%d5, %d15, 1
	mov.d	%d4, %a15
	madd	%d5, %d4, %d5, 28
	.loc 1 467 0
	addsc.a	%a12, %a15, %d12, 0
	.loc 1 388 0
	mov	%d8, 0
	.loc 1 474 0
	mov.a	%a2, %d5
	.loc 1 467 0
	mov.d	%d3, %a12
	addi	%d9, %d3, 568
	.loc 1 468 0
	lea	%a13, [%a12] 572
	.loc 1 474 0
	lea	%a14, [%a2] 556
.L12:
.LVL11:
	.loc 1 436 0
	jz	%d2, .L47
.LVL12:
.L8:
	.loc 1 462 0
	ld.bu	%d3, [%SP] 30
	jlt.u	%d3, 2, .L11
.LVL13:
.L28:
	.loc 1 464 0
	ld.bu	%d3, [%SP] 94
	ne	%d3, %d3, 9
	jz	%d3, .L48
.L9:
	.loc 1 490 0
	jz	%d2, .L49
.L11:
.LVL14:
	.loc 1 432 0 discriminator 2
	lea	%a2, [%SP] 25
	addsc.a	%a3, %a2, %d15, 0
	addi	%d3, %d8, 1
	and	%d5, %d3, 255
	mov	%d8, %d3
.LVL15:
	ld.bu	%d3, [%a3]0
.LVL16:
	add	%d3, 2
	jge	%d3, %d5, .L12
	.loc 1 512 0
	jz	%d2, .L50
.LVL17:
.L14:
	.loc 1 521 0
	addsc.a	%a2, %a15, %d12, 0
	ld.bu	%d3, [%a2] 568
	jz	%d3, .L15
	.loc 1 523 0
	ld.w	%d5, [%a2] 572
	sh	%d6, %d3, -1
	add	%d6, %d5
	.loc 1 524 0
	div.u	%e6, %d6, %d3
	.loc 1 526 0
	mov	%d0, %d3
	sh	%d0, -1
	.loc 1 524 0
	mov	%d5, %d6
	st.w	[%a2] 572, %d6
	.loc 1 526 0
	ld.w	%d6, [%a2] 576
	.loc 1 532 0
	add	%d15, 1
	.loc 1 526 0
	add	%d6, %d0
	.loc 1 527 0
	div.u	%e0, %d6, %d3
	.loc 1 529 0
	ld.w	%d6, [%a2] 580
	.loc 1 541 0
	extr.u	%d5, %d5, 0, 16
	.loc 1 527 0
	st.w	[%a2] 576, %d0
	.loc 1 529 0
	mov	%d0, %d3
	sh	%d0, -1
	add	%d6, %d0
	.loc 1 530 0
	div.u	%e0, %d6, %d3
	.loc 1 532 0
	mul	%d3, %d15, 28
	.loc 1 530 0
	st.w	[%a2] 580, %d0
	.loc 1 532 0
	addsc.a	%a3, %a15, %d3, 0
	ld.bu	%d0, [%a2] 568
	ld.w	%d15, [%a3] 556
	sh	%d0, -1
	add	%d15, %d0
	.loc 1 533 0
	ld.bu	%d0, [%a2] 568
	.loc 1 536 0
	ld.w	%d3, [%SP] 8
	.loc 1 533 0
	div	%e0, %d15, %d0
	.loc 1 536 0
	sub	%d15, %d3, %d0
	.loc 1 533 0
	st.w	[%a3] 556, %d0
	.loc 1 536 0
	st.w	[%a2] 588, %d15
	.loc 1 539 0
	ld.bu	%d15, [%a2] 564
	.loc 1 541 0
	eq	%d15, %d15, 1
	cmov	%d10, %d15, %d5
.L15:
.LVL18:
	addi	%d3, %d13, 1
	.loc 1 399 0 discriminator 2
	ld.bu	%d15, [%a15] 561
	and	%d3, %d3, 255
	add	%d11, 1
	jlt.u	%d3, %d15, .L16
	.loc 1 548 0
	ld.bu	%d3, [%a15] 3
	jne	%d3, 3, .L42
	.loc 1 553 0
	ld.hu	%d3, [%a15] 588
	ld.h	%d4, [%a15] 86
	add	%d4, %d3
	st.h	[%a15] 86, %d4
	.loc 1 555 0
	ld.h	%d4, [%a15] 88
	add	%d3, %d4
	st.h	[%a15] 88, %d3
	.loc 1 586 0
	jz	%d2, .L51
.LVL19:
.L20:
	.loc 1 596 0 discriminator 1
	jz	%d15, .L21
	.loc 1 596 0 is_stmt 0
	mov	%d3, 0
	mov	%d4, 0
	.loc 1 619 0 is_stmt 1
	mov	%d1, 1280
	.loc 1 624 0
	mov	%d0, -34
	.loc 1 611 0
	lea	%a4, [%a15] 580
.LVL20:
.L27:
	.loc 1 600 0
	jnz	%d2, .L22
	.loc 1 602 0
	st.b	[%a15] 559, %d4
	.loc 1 604 0
	mul	%d4, %d3, 28
	lea	%a2, [%SP] 25
	addsc.a	%a3, %a15, %d4, 0
	ld.bu	%d7, [%a3] 568
	addsc.a	%a3, %a2, %d3, 0
	ld.bu	%d5, [%a3]0
	.loc 1 605 0
	ge.u	%d5, %d7, %d5
	sel	%d2, %d5, %d2, -31
.LVL21:
	.loc 1 611 0
	jnz	%d3, .L24
	.loc 1 611 0 is_stmt 0 discriminator 1
	ld.w	%d5, [%a4]0
	.loc 1 613 0 is_stmt 1 discriminator 1
	mov	%d6, 2049
	lt.u	%d5, %d5, %d6
	sel	%d2, %d5, %d2, -32
.LVL22:
.L24:
	.loc 1 615 0
	addsc.a	%a2, %a15, %d4, 0
	.loc 1 617 0
	mov	%d5, 6401
	.loc 1 615 0
	ld.w	%d4, [%a2] 576
	.loc 1 617 0
	lt.u	%d4, %d4, %d5
	sel	%d2, %d4, %d2, -33
.LVL23:
	.loc 1 619 0
	ld.hu	%d4, [%a2] 566
	.loc 1 624 0
	sel	%d5, %d4, %d0, -25
	lt.u	%d4, %d4, %d1
	sel	%d2, %d4, %d5, %d2
.LVL24:
	.loc 1 627 0
	sel	%d2, %d7, %d2, -24
.LVL25:
.L22:
	add	%d3, 1
.LVL26:
	.loc 1 596 0 discriminator 2
	and	%d4, %d3, 255
	jlt.u	%d4, %d15, .L27
.LVL27:
.L21:
	.loc 1 636 0
	ld.a	%a2, [%SP] 12
	.loc 1 635 0
	st.b	[%a15] 558, %d2
	.loc 1 636 0
	st.b	[%a2]0, %d2
	ret
.LVL28:
.L48:
	.loc 1 467 0
	mov.a	%a3, %d9
	.loc 1 468 0
	ld.w	%d4, [%a13]0
	.loc 1 467 0
	ld.bu	%d3, [%a3]0
	.loc 1 470 0
	ld.w	%d5, [%a12] 576
	.loc 1 467 0
	add	%d3, 1
	.loc 1 472 0
	ld.w	%d6, [%a12] 580
	.loc 1 467 0
	st.b	[%a3]0, %d3
	.loc 1 469 0
	ld.hu	%d3, [%SP] 48
	.loc 1 468 0
	add	%d3, %d4
	.loc 1 474 0
	ld.w	%d4, [%a14]0
	.loc 1 468 0
	st.w	[%a13]0, %d3
	.loc 1 471 0
	ld.hu	%d3, [%SP] 76
	.loc 1 470 0
	add	%d3, %d5
	st.w	[%a12] 576, %d3
	.loc 1 473 0
	ld.hu	%d3, [%SP] 88
	.loc 1 472 0
	add	%d3, %d6
	st.w	[%a12] 580, %d3
	.loc 1 475 0
	ld.h	%d3, [%SP] 92
	.loc 1 474 0
	add	%d3, %d4
	st.w	[%a14]0, %d3
	.loc 1 477 0
	ld.bu	%d3, [%a15] 398
	st.b	[%a12] 565, %d3
	.loc 1 479 0
	ld.h	%d3, [%a15] 404
	st.h	[%a12] 566, %d3
	.loc 1 490 0
	jnz	%d2, .L11
.L49:
	.loc 1 491 0
	mov.aa	%a4, %a15
	call	VL53L1_wait_for_firmware_ready
.LVL29:
	.loc 1 503 0
	jnz	%d2, .L11
	.loc 1 504 0
	mov.aa	%a4, %a15
	mov	%d4, 32
	call	VL53L1_clear_interrupt_and_enable_next_range
.LVL30:
	j	.L11
.LVL31:
.L47:
	.loc 1 437 0
	mov.aa	%a4, %a15
	call	VL53L1_wait_for_range_completion
.LVL32:
	.loc 1 446 0
	jnz	%d2, .L8
	.loc 1 447 0
	mov.aa	%a4, %a15
	mov	%d4, 2
	lea	%a5, [%SP] 28
.LVL33:
	call	VL53L1_get_device_results
.LVL34:
	.loc 1 462 0
	ld.bu	%d3, [%SP] 30
	jge.u	%d3, 2, .L28
	j	.L9
.LVL35:
.L46:
	.loc 1 408 0
	ld.w	%d2, [%a15] 332
	ld.hu	%d5, [%a15] 324
	ld.w	%d6, [%a15] 328
	ld.w	%d7, [%a15] 336
	st.w	[%SP]0, %d2
	st.w	[%SP] 4, %d14
	mov.aa	%a4, %a15
	call	VL53L1_set_preset_mode
.LVL36:
	.loc 1 420 0
	st.h	[%a15] 404, %d10
	.loc 1 425 0
	jnz	%d2, .L29
	.loc 1 426 0
	mov.aa	%a4, %a15
	mov	%d4, 32
	mov	%d5, 5
	call	VL53L1_init_and_start_range
.LVL37:
	j	.L29
.LVL38:
.L50:
	.loc 1 513 0
	mov.aa	%a4, %a15
	call	VL53L1_stop_range
.LVL39:
	.loc 1 517 0
	jnz	%d2, .L14
	.loc 1 518 0
	mov.aa	%a4, %a15
	mov	%d4, 1000
	call	VL53L1_WaitUs
.LVL40:
	j	.L14
.LVL41:
.L42:
	.loc 1 562 0
	ld.w	%d3, [%a15] 616
	st.h	[%a15] 86, %d3
	.loc 1 564 0
	ld.w	%d3, [%a15] 644
	st.h	[%a15] 88, %d3
	.loc 1 565 0
	mov	%d3, 0
	st.h	[%a15] 84, %d3
	.loc 1 571 0
	ld.w	%d3, [%a15] 600
	st.h	[%a15] 148, %d3
	.loc 1 573 0
	ld.w	%d3, [%a15] 628
	st.h	[%a15] 150, %d3
	.loc 1 576 0
	ld.w	%d3, [%a15] 604
	st.h	[%a15] 152, %d3
	.loc 1 578 0
	ld.w	%d3, [%a15] 632
	st.h	[%a15] 154, %d3
	.loc 1 586 0
	jnz	%d2, .L20
.L51:
	.loc 1 587 0
	mov.aa	%a4, %a15
	lea	%a5, [%a15] 66
	call	VL53L1_set_customer_nvm_managed
.LVL42:
	ld.bu	%d15, [%a15] 561
	j	.L20
.LFE1:
	.size	VL53L1_run_offset_calibration, .-VL53L1_run_offset_calibration
.section .text.VL53L1_run_device_test,"ax",@progbits
	.align 1
	.global	VL53L1_run_device_test
	.type	VL53L1_run_device_test, @function
VL53L1_run_device_test:
.LFB3:
	.loc 1 782 0
.LVL43:
	.loc 1 791 0
	mov	%d2, 0
	.loc 1 782 0
	sub.a	%SP, 8
.LCFI1:
	.loc 1 791 0
	lea	%a5, [%SP] 8
	.loc 1 782 0
	mov	%d15, %d4
	.loc 1 791 0
	st.b	[+%a5]-3, %d2
	.loc 1 800 0
	mov	%d4, 48
.LVL44:
	.loc 1 782 0
	mov.aa	%a15, %a4
.LVL45:
	.loc 1 800 0
	call	VL53L1_RdByte
.LVL46:
	.loc 1 806 0
	jnz	%d2, .L55
	.loc 1 807 0
	ld.bu	%d2, [%SP] 5
.LVL47:
	st.b	[%a15] 368, %d2
	.loc 1 813 0
	mov.aa	%a4, %a15
	mov	%d4, %d15
	call	VL53L1_start_test
.LVL48:
	.loc 1 820 0
	jnz	%d2, .L55
	.loc 1 821 0
	mov.aa	%a4, %a15
	call	VL53L1_wait_for_test_completion
.LVL49:
	.loc 1 826 0
	jnz	%d2, .L55
	.loc 1 827 0
	mov.aa	%a4, %a15
	mov	%d4, 137
	lea	%a5, [%SP] 6
	mov	%d5, 2
	call	VL53L1_ReadMulti
.LVL50:
	.loc 1 834 0
	jnz	%d2, .L55
	.loc 1 835 0
	ld.bu	%d15, [%SP] 6
	.loc 1 836 0
	ld.bu	%d2, [%SP] 7
.LVL51:
	.loc 1 841 0
	and	%d15, %d15, 31
	.loc 1 836 0
	st.b	[%a15] 464, %d2
	.loc 1 857 0
	mov.aa	%a4, %a15
	.loc 1 841 0
	st.b	[%a15] 463, %d15
	.loc 1 857 0
	call	VL53L1_clear_interrupt
.LVL52:
	.loc 1 866 0
	jnz	%d2, .L57
	.loc 1 867 0
	mov.aa	%a4, %a15
	mov	%d4, 0
	j	VL53L1_start_test
.LVL53:
.L55:
	.loc 1 841 0
	ld.bu	%d15, [%a15] 463
	and	%d15, %d15, 31
	st.b	[%a15] 463, %d15
.LVL54:
.L57:
	.loc 1 875 0
	ret
.LFE3:
	.size	VL53L1_run_device_test, .-VL53L1_run_device_test
.section .text.VL53L1_run_ref_spad_char,"ax",@progbits
	.align 1
	.global	VL53L1_run_ref_spad_char
	.type	VL53L1_run_ref_spad_char, @function
VL53L1_run_ref_spad_char:
.LFB0:
	.loc 1 107 0
.LVL55:
	sub.a	%SP, 16
.LCFI2:
	.loc 1 107 0
	mov.aa	%a15, %a4
.LVL56:
	mov.aa	%a12, %a5
	.loc 1 126 0
	call	VL53L1_enable_powerforce
.LVL57:
	.loc 1 132 0
	jz	%d2, .L70
.LVL58:
.L65:
	.loc 1 265 0
	st.b	[%a12]0, %d2
	.loc 1 288 0
	ret
.L70:
	.loc 1 133 0
	ld.hu	%d15, [%a15] 282
	st.w	[%SP]0, %d15
	ld.bu	%d4, [%a15] 273
	ld.hu	%d15, [%a15] 350
	ld.hu	%d6, [%a15] 280
	ld.hu	%d7, [%a15] 284
	ld.w	%d5, [%a15] 276
	st.w	[%SP] 4, %d15
	mov.aa	%a4, %a15
	call	VL53L1_set_ref_spad_char_config
.LVL59:
	.loc 1 147 0
	jnz	%d2, .L65
	.loc 1 148 0
	ld.bu	%d4, [%a15] 272
	mov.aa	%a4, %a15
	call	VL53L1_run_device_test
.LVL60:
	.loc 1 156 0
	jnz	%d2, .L65
	.loc 1 157 0
	mov.aa	%a4, %a15
	mov	%d4, 217
	lea	%a5, [%SP] 10
	mov	%d5, 2
	call	VL53L1_ReadMulti
.LVL61:
	.loc 1 164 0
	jnz	%d2, .L65
	.loc 1 165 0
	ld.bu	%d15, [%SP] 10
	st.b	[%a15] 687, %d15
	.loc 1 167 0
	ld.bu	%d15, [%SP] 11
	st.b	[%a15] 688, %d15
	.loc 1 176 0
	mov.aa	%a4, %a15
	mov	%d4, 20
	lea	%a5, [%SP] 10
	mov	%d5, 2
	call	VL53L1_WriteMulti
.LVL62:
	.loc 1 183 0
	jnz	%d2, .L65
	.loc 1 184 0
	ld.bu	%d15, [%SP] 10
	st.b	[%a15] 73, %d15
	.loc 1 186 0
	ld.bu	%d15, [%SP] 11
	st.b	[%a15] 74, %d15
	.loc 1 199 0
	mov.aa	%a4, %a15
	mov	%d4, 172
	lea	%a5, [%SP] 10
	mov	%d5, 6
	call	VL53L1_ReadMulti
.LVL63:
	.loc 1 211 0
	jnz	%d2, .L65
	.loc 1 212 0
	mov.aa	%a4, %a15
	mov	%d4, 13
	lea	%a5, [%SP] 10
	mov	%d5, 6
	call	VL53L1_WriteMulti
.LVL64:
	.loc 1 219 0
	jnz	%d2, .L65
	.loc 1 220 0
	ld.bu	%d15, [%SP] 10
	st.b	[%a15] 66, %d15
	.loc 1 222 0
	ld.bu	%d15, [%SP] 11
	st.b	[%a15] 67, %d15
	.loc 1 224 0
	ld.bu	%d15, [%SP] 12
	st.b	[%a15] 68, %d15
	.loc 1 226 0
	ld.bu	%d15, [%SP] 13
	st.b	[%a15] 69, %d15
	.loc 1 228 0
	ld.bu	%d15, [%SP] 14
	st.b	[%a15] 70, %d15
	.loc 1 230 0
	ld.bu	%d15, [%SP] 15
	st.b	[%a15] 71, %d15
	.loc 1 245 0
	ld.bu	%d15, [%a15] 463
	eq	%d3, %d15, 15
	jnz	%d3, .L66
	eq	%d3, %d15, 16
	eq	%d15, %d15, 14
	.loc 1 248 0
	seln	%d2, %d15, %d2, -28
.LVL65:
	.loc 1 245 0
	jz	%d3, .L65
.LVL66:
	.loc 1 256 0
	mov	%d2, -30
.LVL67:
	.loc 1 265 0
	st.b	[%a12]0, %d2
	.loc 1 288 0
	ret
.L66:
.LVL68:
	.loc 1 252 0
	mov	%d2, -29
.LVL69:
	.loc 1 265 0
	st.b	[%a12]0, %d2
	.loc 1 288 0
	ret
.LFE0:
	.size	VL53L1_run_ref_spad_char, .-VL53L1_run_ref_spad_char
.section .text.VL53L1_run_spad_rate_map,"ax",@progbits
	.align 1
	.global	VL53L1_run_spad_rate_map
	.type	VL53L1_run_spad_rate_map, @function
VL53L1_run_spad_rate_map:
.LFB2:
	.loc 1 693 0
.LVL70:
	.loc 1 693 0
	mov.aa	%a15, %a4
.LVL71:
	mov	%d15, %d4
	mov	%e8, %d5, %d6
	mov.aa	%a12, %a5
	.loc 1 710 0
	call	VL53L1_enable_powerforce
.LVL72:
	.loc 1 716 0
	jz	%d2, .L77
.LVL73:
.L73:
	.loc 1 746 0
	jeq	%d15, 6, .L78
.LVL74:
.L74:
	.loc 1 749 0
	mov	%d15, 15
	st.b	[%a12] 518, %d15
	.loc 1 753 0
	jz	%d2, .L79
.L76:
.LVL75:
	.loc 1 774 0
	ret
.L77:
	.loc 1 719 0
	ld.hu	%d4, [%a15] 350
	.loc 1 717 0
	st.b	[%a15] 288, %d9
	.loc 1 718 0
	st.w	[%a15] 292, %d8
	.loc 1 719 0
	mov.aa	%a4, %a15
	lea	%a5, [%a15] 288
	call	VL53L1_set_ssc_config
.LVL76:
	.loc 1 730 0
	jnz	%d2, .L73
	.loc 1 731 0
	mov.aa	%a4, %a15
	mov	%d4, %d15
	call	VL53L1_run_device_test
.LVL77:
	.loc 1 740 0
	jnz	%d2, .L73
	.loc 1 741 0
	mov.aa	%a4, %a15
	mov.aa	%a5, %a12
	call	VL53L1_get_spad_rate_data
.LVL78:
	.loc 1 746 0
	jne	%d15, 6, .L74
.LVL79:
.L78:
	.loc 1 747 0
	mov	%d15, 7
	st.b	[%a12] 518, %d15
	.loc 1 753 0
	jnz	%d2, .L76
.L79:
	.loc 1 754 0
	mov.aa	%a4, %a15
	j	VL53L1_disable_powerforce
.LVL80:
.LFE2:
	.size	VL53L1_run_spad_rate_map, .-VL53L1_run_spad_rate_map
.section .debug_frame,"",@progbits
.Lframe0:
	.uaword	.LECIE0-.LSCIE0
.LSCIE0:
	.uaword	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 1
	.uleb128 0x1b
	.byte	0xc
	.uleb128 0x1a
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.uaword	.LEFDE0-.LASFDE0
.LASFDE0:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.byte	0x4
	.uaword	.LCFI0-.LFB1
	.byte	0xe
	.uleb128 0xa0
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.byte	0x4
	.uaword	.LCFI1-.LFB3
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.byte	0x4
	.uaword	.LCFI2-.LFB0
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdint.h"
	.file 3 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_types.h"
	.file 4 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_device.h"
	.file 5 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_error_codes.h"
	.file 6 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
	.file 7 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h"
	.file 8 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_def.h"
	.file 9 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_platform_user_data.h"
	.file 10 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_wait.h"
	.file 11 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_core.h"
	.file 12 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_platform.h"
	.file 13 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
	.file 14 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x4ea6
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_calibration.c"
	.string	"D:\\\\MinKyu_AurixRacer\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"int8_t"
	.byte	0x2
	.byte	0x29
	.uaword	0x1af
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.string	"uint8_t"
	.byte	0x2
	.byte	0x2a
	.uaword	0x1cd
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.string	"int16_t"
	.byte	0x2
	.byte	0x35
	.uaword	0x1ed
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.string	"uint16_t"
	.byte	0x2
	.byte	0x36
	.uaword	0x20a
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.string	"int32_t"
	.byte	0x2
	.byte	0x4f
	.uaword	0x22f
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.string	"uint32_t"
	.byte	0x2
	.byte	0x50
	.uaword	0x24b
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x2
	.string	"FixPoint1616_t"
	.byte	0x3
	.byte	0x93
	.uaword	0x23b
	.uleb128 0x2
	.string	"VL53L1_DeviceState"
	.byte	0x4
	.byte	0x65
	.uaword	0x1be
	.uleb128 0x2
	.string	"VL53L1_DevicePresetModes"
	.byte	0x4
	.byte	0x7d
	.uaword	0x1be
	.uleb128 0x2
	.string	"VL53L1_DeviceMeasurementModes"
	.byte	0x4
	.byte	0x96
	.uaword	0x1be
	.uleb128 0x2
	.string	"VL53L1_OffsetCalibrationMode"
	.byte	0x4
	.byte	0xa5
	.uaword	0x1be
	.uleb128 0x2
	.string	"VL53L1_OffsetCorrectionMode"
	.byte	0x4
	.byte	0xb6
	.uaword	0x1be
	.uleb128 0x2
	.string	"VL53L1_DeviceError"
	.byte	0x4
	.byte	0xfe
	.uaword	0x1be
	.uleb128 0x4
	.string	"VL53L1_DeviceConfigLevel"
	.byte	0x4
	.uahalf	0x14c
	.uaword	0x1be
	.uleb128 0x4
	.string	"VL53L1_DeviceResultsLevel"
	.byte	0x4
	.uahalf	0x171
	.uaword	0x1be
	.uleb128 0x4
	.string	"VL53L1_DeviceTestMode"
	.byte	0x4
	.uahalf	0x187
	.uaword	0x1be
	.uleb128 0x4
	.string	"VL53L1_DeviceSscArray"
	.byte	0x4
	.uahalf	0x1b2
	.uaword	0x1be
	.uleb128 0x4
	.string	"VL53L1_GPIO_Interrupt_Mode"
	.byte	0x4
	.uahalf	0x21c
	.uaword	0x1be
	.uleb128 0x2
	.string	"VL53L1_Error"
	.byte	0x5
	.byte	0x59
	.uaword	0x1a1
	.uleb128 0x5
	.byte	0xc
	.byte	0x6
	.byte	0x80
	.uaword	0x5b0
	.uleb128 0x6
	.string	"i2c_slave__device_address"
	.byte	0x6
	.byte	0x81
	.uaword	0x1be
	.byte	0
	.uleb128 0x6
	.string	"ana_config__vhv_ref_sel_vddpix"
	.byte	0x6
	.byte	0x8b
	.uaword	0x1be
	.byte	0x1
	.uleb128 0x6
	.string	"ana_config__vhv_ref_sel_vquench"
	.byte	0x6
	.byte	0x95
	.uaword	0x1be
	.byte	0x2
	.uleb128 0x6
	.string	"ana_config__reg_avdd1v2_sel"
	.byte	0x6
	.byte	0x9f
	.uaword	0x1be
	.byte	0x3
	.uleb128 0x6
	.string	"ana_config__fast_osc__trim"
	.byte	0x6
	.byte	0xa9
	.uaword	0x1be
	.byte	0x4
	.uleb128 0x6
	.string	"osc_measured__fast_osc__frequency"
	.byte	0x6
	.byte	0xb3
	.uaword	0x1fa
	.byte	0x6
	.uleb128 0x6
	.string	"vhv_config__timeout_macrop_loop_bound"
	.byte	0x6
	.byte	0xbd
	.uaword	0x1be
	.byte	0x8
	.uleb128 0x6
	.string	"vhv_config__count_thresh"
	.byte	0x6
	.byte	0xc8
	.uaword	0x1be
	.byte	0x9
	.uleb128 0x6
	.string	"vhv_config__offset"
	.byte	0x6
	.byte	0xd2
	.uaword	0x1be
	.byte	0xa
	.uleb128 0x6
	.string	"vhv_config__init"
	.byte	0x6
	.byte	0xdc
	.uaword	0x1be
	.byte	0xb
	.byte	0
	.uleb128 0x2
	.string	"VL53L1_static_nvm_managed_t"
	.byte	0x6
	.byte	0xe7
	.uaword	0x442
	.uleb128 0x5
	.byte	0x18
	.byte	0x6
	.byte	0xf3
	.uaword	0x825
	.uleb128 0x6
	.string	"global_config__spad_enables_ref_0"
	.byte	0x6
	.byte	0xf4
	.uaword	0x1be
	.byte	0
	.uleb128 0x6
	.string	"global_config__spad_enables_ref_1"
	.byte	0x6
	.byte	0xfe
	.uaword	0x1be
	.byte	0x1
	.uleb128 0x7
	.string	"global_config__spad_enables_ref_2"
	.byte	0x6
	.uahalf	0x108
	.uaword	0x1be
	.byte	0x2
	.uleb128 0x7
	.string	"global_config__spad_enables_ref_3"
	.byte	0x6
	.uahalf	0x112
	.uaword	0x1be
	.byte	0x3
	.uleb128 0x7
	.string	"global_config__spad_enables_ref_4"
	.byte	0x6
	.uahalf	0x11c
	.uaword	0x1be
	.byte	0x4
	.uleb128 0x7
	.string	"global_config__spad_enables_ref_5"
	.byte	0x6
	.uahalf	0x126
	.uaword	0x1be
	.byte	0x5
	.uleb128 0x7
	.string	"global_config__ref_en_start_select"
	.byte	0x6
	.uahalf	0x130
	.uaword	0x1be
	.byte	0x6
	.uleb128 0x7
	.string	"ref_spad_man__num_requested_ref_spads"
	.byte	0x6
	.uahalf	0x13a
	.uaword	0x1be
	.byte	0x7
	.uleb128 0x7
	.string	"ref_spad_man__ref_location"
	.byte	0x6
	.uahalf	0x144
	.uaword	0x1be
	.byte	0x8
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x14e
	.uaword	0x1fa
	.byte	0xa
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x158
	.uaword	0x1de
	.byte	0xc
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x162
	.uaword	0x1de
	.byte	0xe
	.uleb128 0x7
	.string	"ref_spad_char__total_rate_target_mcps"
	.byte	0x6
	.uahalf	0x16c
	.uaword	0x1fa
	.byte	0x10
	.uleb128 0x7
	.string	"algo__part_to_part_range_offset_mm"
	.byte	0x6
	.uahalf	0x176
	.uaword	0x1de
	.byte	0x12
	.uleb128 0x7
	.string	"mm_config__inner_offset_mm"
	.byte	0x6
	.uahalf	0x180
	.uaword	0x1de
	.byte	0x14
	.uleb128 0x7
	.string	"mm_config__outer_offset_mm"
	.byte	0x6
	.uahalf	0x18a
	.uaword	0x1de
	.byte	0x16
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_customer_nvm_managed_t"
	.byte	0x6
	.uahalf	0x194
	.uaword	0x5d3
	.uleb128 0x9
	.byte	0x20
	.byte	0x6
	.uahalf	0x1a0
	.uaword	0xc83
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x1a1
	.uaword	0x1fa
	.byte	0
	.uleb128 0x7
	.string	"debug__ctrl"
	.byte	0x6
	.uahalf	0x1ab
	.uaword	0x1be
	.byte	0x2
	.uleb128 0x7
	.string	"test_mode__ctrl"
	.byte	0x6
	.uahalf	0x1b5
	.uaword	0x1be
	.byte	0x3
	.uleb128 0x7
	.string	"clk_gating__ctrl"
	.byte	0x6
	.uahalf	0x1bf
	.uaword	0x1be
	.byte	0x4
	.uleb128 0x7
	.string	"nvm_bist__ctrl"
	.byte	0x6
	.uahalf	0x1cc
	.uaword	0x1be
	.byte	0x5
	.uleb128 0x7
	.string	"nvm_bist__num_nvm_words"
	.byte	0x6
	.uahalf	0x1d7
	.uaword	0x1be
	.byte	0x6
	.uleb128 0x7
	.string	"nvm_bist__start_address"
	.byte	0x6
	.uahalf	0x1e1
	.uaword	0x1be
	.byte	0x7
	.uleb128 0x7
	.string	"host_if__status"
	.byte	0x6
	.uahalf	0x1eb
	.uaword	0x1be
	.byte	0x8
	.uleb128 0x7
	.string	"pad_i2c_hv__config"
	.byte	0x6
	.uahalf	0x1f5
	.uaword	0x1be
	.byte	0x9
	.uleb128 0x7
	.string	"pad_i2c_hv__extsup_config"
	.byte	0x6
	.uahalf	0x204
	.uaword	0x1be
	.byte	0xa
	.uleb128 0x7
	.string	"gpio_hv_pad__ctrl"
	.byte	0x6
	.uahalf	0x20e
	.uaword	0x1be
	.byte	0xb
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x6
	.uahalf	0x219
	.uaword	0x1be
	.byte	0xc
	.uleb128 0x7
	.string	"gpio__tio_hv_status"
	.byte	0x6
	.uahalf	0x224
	.uaword	0x1be
	.byte	0xd
	.uleb128 0x7
	.string	"gpio__fio_hv_status"
	.byte	0x6
	.uahalf	0x22f
	.uaword	0x1be
	.byte	0xe
	.uleb128 0x7
	.string	"ana_config__spad_sel_pswidth"
	.byte	0x6
	.uahalf	0x239
	.uaword	0x1be
	.byte	0xf
	.uleb128 0x7
	.string	"ana_config__vcsel_pulse_width_offset"
	.byte	0x6
	.uahalf	0x243
	.uaword	0x1be
	.byte	0x10
	.uleb128 0x7
	.string	"ana_config__fast_osc__config_ctrl"
	.byte	0x6
	.uahalf	0x24d
	.uaword	0x1be
	.byte	0x11
	.uleb128 0x7
	.string	"sigma_estimator__effective_pulse_width_ns"
	.byte	0x6
	.uahalf	0x257
	.uaword	0x1be
	.byte	0x12
	.uleb128 0x7
	.string	"sigma_estimator__effective_ambient_width_ns"
	.byte	0x6
	.uahalf	0x261
	.uaword	0x1be
	.byte	0x13
	.uleb128 0x7
	.string	"sigma_estimator__sigma_ref_mm"
	.byte	0x6
	.uahalf	0x26b
	.uaword	0x1be
	.byte	0x14
	.uleb128 0x7
	.string	"algo__crosstalk_compensation_valid_height_mm"
	.byte	0x6
	.uahalf	0x275
	.uaword	0x1be
	.byte	0x15
	.uleb128 0x7
	.string	"spare_host_config__static_config_spare_0"
	.byte	0x6
	.uahalf	0x27f
	.uaword	0x1be
	.byte	0x16
	.uleb128 0x7
	.string	"spare_host_config__static_config_spare_1"
	.byte	0x6
	.uahalf	0x289
	.uaword	0x1be
	.byte	0x17
	.uleb128 0x7
	.string	"algo__range_ignore_threshold_mcps"
	.byte	0x6
	.uahalf	0x293
	.uaword	0x1fa
	.byte	0x18
	.uleb128 0x7
	.string	"algo__range_ignore_valid_height_mm"
	.byte	0x6
	.uahalf	0x29d
	.uaword	0x1be
	.byte	0x1a
	.uleb128 0x7
	.string	"algo__range_min_clip"
	.byte	0x6
	.uahalf	0x2a7
	.uaword	0x1be
	.byte	0x1b
	.uleb128 0x7
	.string	"algo__consistency_check__tolerance"
	.byte	0x6
	.uahalf	0x2b2
	.uaword	0x1be
	.byte	0x1c
	.uleb128 0x7
	.string	"spare_host_config__static_config_spare_2"
	.byte	0x6
	.uahalf	0x2bc
	.uaword	0x1be
	.byte	0x1d
	.uleb128 0x7
	.string	"sd_config__reset_stages_msb"
	.byte	0x6
	.uahalf	0x2c6
	.uaword	0x1be
	.byte	0x1e
	.uleb128 0x7
	.string	"sd_config__reset_stages_lsb"
	.byte	0x6
	.uahalf	0x2d0
	.uaword	0x1be
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_static_config_t"
	.byte	0x6
	.uahalf	0x2db
	.uaword	0x84b
	.uleb128 0x9
	.byte	0x16
	.byte	0x6
	.uahalf	0x2e7
	.uaword	0xef6
	.uleb128 0x7
	.string	"gph_config__stream_count_update_value"
	.byte	0x6
	.uahalf	0x2e8
	.uaword	0x1be
	.byte	0
	.uleb128 0x7
	.string	"global_config__stream_divider"
	.byte	0x6
	.uahalf	0x2f2
	.uaword	0x1be
	.byte	0x1
	.uleb128 0x7
	.string	"system__interrupt_config_gpio"
	.byte	0x6
	.uahalf	0x2fc
	.uaword	0x1be
	.byte	0x2
	.uleb128 0x7
	.string	"cal_config__vcsel_start"
	.byte	0x6
	.uahalf	0x30b
	.uaword	0x1be
	.byte	0x3
	.uleb128 0x7
	.string	"cal_config__repeat_rate"
	.byte	0x6
	.uahalf	0x315
	.uaword	0x1fa
	.byte	0x4
	.uleb128 0x7
	.string	"global_config__vcsel_width"
	.byte	0x6
	.uahalf	0x31f
	.uaword	0x1be
	.byte	0x6
	.uleb128 0x7
	.string	"phasecal_config__timeout_macrop"
	.byte	0x6
	.uahalf	0x329
	.uaword	0x1be
	.byte	0x7
	.uleb128 0x7
	.string	"phasecal_config__target"
	.byte	0x6
	.uahalf	0x333
	.uaword	0x1be
	.byte	0x8
	.uleb128 0x7
	.string	"phasecal_config__override"
	.byte	0x6
	.uahalf	0x33d
	.uaword	0x1be
	.byte	0x9
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x347
	.uaword	0x1be
	.byte	0xa
	.uleb128 0x7
	.string	"system__thresh_rate_high"
	.byte	0x6
	.uahalf	0x352
	.uaword	0x1fa
	.byte	0xc
	.uleb128 0x7
	.string	"system__thresh_rate_low"
	.byte	0x6
	.uahalf	0x35c
	.uaword	0x1fa
	.byte	0xe
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0x6
	.uahalf	0x366
	.uaword	0x1fa
	.byte	0x10
	.uleb128 0x7
	.string	"dss_config__manual_block_select"
	.byte	0x6
	.uahalf	0x370
	.uaword	0x1be
	.byte	0x12
	.uleb128 0x7
	.string	"dss_config__aperture_attenuation"
	.byte	0x6
	.uahalf	0x37a
	.uaword	0x1be
	.byte	0x13
	.uleb128 0x7
	.string	"dss_config__max_spads_limit"
	.byte	0x6
	.uahalf	0x384
	.uaword	0x1be
	.byte	0x14
	.uleb128 0x7
	.string	"dss_config__min_spads_limit"
	.byte	0x6
	.uahalf	0x38e
	.uaword	0x1be
	.byte	0x15
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_general_config_t"
	.byte	0x6
	.uahalf	0x398
	.uaword	0xca2
	.uleb128 0x9
	.byte	0x18
	.byte	0x6
	.uahalf	0x3a4
	.uaword	0x11ac
	.uleb128 0x7
	.string	"mm_config__timeout_macrop_a_hi"
	.byte	0x6
	.uahalf	0x3a5
	.uaword	0x1be
	.byte	0
	.uleb128 0x7
	.string	"mm_config__timeout_macrop_a_lo"
	.byte	0x6
	.uahalf	0x3af
	.uaword	0x1be
	.byte	0x1
	.uleb128 0x7
	.string	"mm_config__timeout_macrop_b_hi"
	.byte	0x6
	.uahalf	0x3b9
	.uaword	0x1be
	.byte	0x2
	.uleb128 0x7
	.string	"mm_config__timeout_macrop_b_lo"
	.byte	0x6
	.uahalf	0x3c3
	.uaword	0x1be
	.byte	0x3
	.uleb128 0x7
	.string	"range_config__timeout_macrop_a_hi"
	.byte	0x6
	.uahalf	0x3cd
	.uaword	0x1be
	.byte	0x4
	.uleb128 0x7
	.string	"range_config__timeout_macrop_a_lo"
	.byte	0x6
	.uahalf	0x3d7
	.uaword	0x1be
	.byte	0x5
	.uleb128 0x7
	.string	"range_config__vcsel_period_a"
	.byte	0x6
	.uahalf	0x3e1
	.uaword	0x1be
	.byte	0x6
	.uleb128 0x7
	.string	"range_config__timeout_macrop_b_hi"
	.byte	0x6
	.uahalf	0x3eb
	.uaword	0x1be
	.byte	0x7
	.uleb128 0x7
	.string	"range_config__timeout_macrop_b_lo"
	.byte	0x6
	.uahalf	0x3f5
	.uaword	0x1be
	.byte	0x8
	.uleb128 0x7
	.string	"range_config__vcsel_period_b"
	.byte	0x6
	.uahalf	0x3ff
	.uaword	0x1be
	.byte	0x9
	.uleb128 0x7
	.string	"range_config__sigma_thresh"
	.byte	0x6
	.uahalf	0x409
	.uaword	0x1fa
	.byte	0xa
	.uleb128 0x7
	.string	"range_config__min_count_rate_rtn_limit_mcps"
	.byte	0x6
	.uahalf	0x413
	.uaword	0x1fa
	.byte	0xc
	.uleb128 0x7
	.string	"range_config__valid_phase_low"
	.byte	0x6
	.uahalf	0x41d
	.uaword	0x1be
	.byte	0xe
	.uleb128 0x7
	.string	"range_config__valid_phase_high"
	.byte	0x6
	.uahalf	0x427
	.uaword	0x1be
	.byte	0xf
	.uleb128 0x7
	.string	"system__intermeasurement_period"
	.byte	0x6
	.uahalf	0x431
	.uaword	0x23b
	.byte	0x10
	.uleb128 0x7
	.string	"system__fractional_enable"
	.byte	0x6
	.uahalf	0x43b
	.uaword	0x1be
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_timing_config_t"
	.byte	0x6
	.uahalf	0x445
	.uaword	0xf16
	.uleb128 0x9
	.byte	0x14
	.byte	0x6
	.uahalf	0x451
	.uaword	0x141e
	.uleb128 0x7
	.string	"system__grouped_parameter_hold_0"
	.byte	0x6
	.uahalf	0x452
	.uaword	0x1be
	.byte	0
	.uleb128 0x7
	.string	"system__thresh_high"
	.byte	0x6
	.uahalf	0x45d
	.uaword	0x1fa
	.byte	0x2
	.uleb128 0x7
	.string	"system__thresh_low"
	.byte	0x6
	.uahalf	0x467
	.uaword	0x1fa
	.byte	0x4
	.uleb128 0x7
	.string	"system__enable_xtalk_per_quadrant"
	.byte	0x6
	.uahalf	0x471
	.uaword	0x1be
	.byte	0x6
	.uleb128 0x7
	.string	"system__seed_config"
	.byte	0x6
	.uahalf	0x47b
	.uaword	0x1be
	.byte	0x7
	.uleb128 0x7
	.string	"sd_config__woi_sd0"
	.byte	0x6
	.uahalf	0x486
	.uaword	0x1be
	.byte	0x8
	.uleb128 0x7
	.string	"sd_config__woi_sd1"
	.byte	0x6
	.uahalf	0x490
	.uaword	0x1be
	.byte	0x9
	.uleb128 0x7
	.string	"sd_config__initial_phase_sd0"
	.byte	0x6
	.uahalf	0x49a
	.uaword	0x1be
	.byte	0xa
	.uleb128 0x7
	.string	"sd_config__initial_phase_sd1"
	.byte	0x6
	.uahalf	0x4a4
	.uaword	0x1be
	.byte	0xb
	.uleb128 0x7
	.string	"system__grouped_parameter_hold_1"
	.byte	0x6
	.uahalf	0x4ae
	.uaword	0x1be
	.byte	0xc
	.uleb128 0x7
	.string	"sd_config__first_order_select"
	.byte	0x6
	.uahalf	0x4b9
	.uaword	0x1be
	.byte	0xd
	.uleb128 0x7
	.string	"sd_config__quantifier"
	.byte	0x6
	.uahalf	0x4c4
	.uaword	0x1be
	.byte	0xe
	.uleb128 0x7
	.string	"roi_config__user_roi_centre_spad"
	.byte	0x6
	.uahalf	0x4ce
	.uaword	0x1be
	.byte	0xf
	.uleb128 0x7
	.string	"roi_config__user_roi_requested_global_xy_size"
	.byte	0x6
	.uahalf	0x4d8
	.uaword	0x1be
	.byte	0x10
	.uleb128 0x7
	.string	"system__sequence_config"
	.byte	0x6
	.uahalf	0x4e2
	.uaword	0x1be
	.byte	0x11
	.uleb128 0x7
	.string	"system__grouped_parameter_hold"
	.byte	0x6
	.uahalf	0x4f3
	.uaword	0x1be
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_dynamic_config_t"
	.byte	0x6
	.uahalf	0x4fe
	.uaword	0x11cb
	.uleb128 0x9
	.byte	0x6
	.byte	0x6
	.uahalf	0x50a
	.uaword	0x14ed
	.uleb128 0x7
	.string	"power_management__go1_power_force"
	.byte	0x6
	.uahalf	0x50b
	.uaword	0x1be
	.byte	0
	.uleb128 0x7
	.string	"system__stream_count_ctrl"
	.byte	0x6
	.uahalf	0x515
	.uaword	0x1be
	.byte	0x1
	.uleb128 0x7
	.string	"firmware__enable"
	.byte	0x6
	.uahalf	0x51f
	.uaword	0x1be
	.byte	0x2
	.uleb128 0x7
	.string	"system__interrupt_clear"
	.byte	0x6
	.uahalf	0x529
	.uaword	0x1be
	.byte	0x3
	.uleb128 0x7
	.string	"system__mode_start"
	.byte	0x6
	.uahalf	0x534
	.uaword	0x1be
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_system_control_t"
	.byte	0x6
	.uahalf	0x543
	.uaword	0x143e
	.uleb128 0x9
	.byte	0x2c
	.byte	0x6
	.uahalf	0x54f
	.uaword	0x18fc
	.uleb128 0x7
	.string	"result__interrupt_status"
	.byte	0x6
	.uahalf	0x550
	.uaword	0x1be
	.byte	0
	.uleb128 0x7
	.string	"result__range_status"
	.byte	0x6
	.uahalf	0x55c
	.uaword	0x1be
	.byte	0x1
	.uleb128 0x7
	.string	"result__report_status"
	.byte	0x6
	.uahalf	0x569
	.uaword	0x1be
	.byte	0x2
	.uleb128 0x7
	.string	"result__stream_count"
	.byte	0x6
	.uahalf	0x573
	.uaword	0x1be
	.byte	0x3
	.uleb128 0x7
	.string	"result__dss_actual_effective_spads_sd0"
	.byte	0x6
	.uahalf	0x57d
	.uaword	0x1fa
	.byte	0x4
	.uleb128 0x7
	.string	"result__peak_signal_count_rate_mcps_sd0"
	.byte	0x6
	.uahalf	0x587
	.uaword	0x1fa
	.byte	0x6
	.uleb128 0x7
	.string	"result__ambient_count_rate_mcps_sd0"
	.byte	0x6
	.uahalf	0x591
	.uaword	0x1fa
	.byte	0x8
	.uleb128 0x7
	.string	"result__sigma_sd0"
	.byte	0x6
	.uahalf	0x59b
	.uaword	0x1fa
	.byte	0xa
	.uleb128 0x7
	.string	"result__phase_sd0"
	.byte	0x6
	.uahalf	0x5a5
	.uaword	0x1fa
	.byte	0xc
	.uleb128 0x7
	.string	"result__final_crosstalk_corrected_range_mm_sd0"
	.byte	0x6
	.uahalf	0x5af
	.uaword	0x1fa
	.byte	0xe
	.uleb128 0x7
	.string	"result__peak_signal_count_rate_crosstalk_corrected_mcps_sd0"
	.byte	0x6
	.uahalf	0x5b9
	.uaword	0x1fa
	.byte	0x10
	.uleb128 0x7
	.string	"result__mm_inner_actual_effective_spads_sd0"
	.byte	0x6
	.uahalf	0x5c3
	.uaword	0x1fa
	.byte	0x12
	.uleb128 0x7
	.string	"result__mm_outer_actual_effective_spads_sd0"
	.byte	0x6
	.uahalf	0x5cd
	.uaword	0x1fa
	.byte	0x14
	.uleb128 0x7
	.string	"result__avg_signal_count_rate_mcps_sd0"
	.byte	0x6
	.uahalf	0x5d7
	.uaword	0x1fa
	.byte	0x16
	.uleb128 0x7
	.string	"result__dss_actual_effective_spads_sd1"
	.byte	0x6
	.uahalf	0x5e1
	.uaword	0x1fa
	.byte	0x18
	.uleb128 0x7
	.string	"result__peak_signal_count_rate_mcps_sd1"
	.byte	0x6
	.uahalf	0x5eb
	.uaword	0x1fa
	.byte	0x1a
	.uleb128 0x7
	.string	"result__ambient_count_rate_mcps_sd1"
	.byte	0x6
	.uahalf	0x5f5
	.uaword	0x1fa
	.byte	0x1c
	.uleb128 0x7
	.string	"result__sigma_sd1"
	.byte	0x6
	.uahalf	0x5ff
	.uaword	0x1fa
	.byte	0x1e
	.uleb128 0x7
	.string	"result__phase_sd1"
	.byte	0x6
	.uahalf	0x609
	.uaword	0x1fa
	.byte	0x20
	.uleb128 0x7
	.string	"result__final_crosstalk_corrected_range_mm_sd1"
	.byte	0x6
	.uahalf	0x613
	.uaword	0x1fa
	.byte	0x22
	.uleb128 0x7
	.string	"result__spare_0_sd1"
	.byte	0x6
	.uahalf	0x61d
	.uaword	0x1fa
	.byte	0x24
	.uleb128 0x7
	.string	"result__spare_1_sd1"
	.byte	0x6
	.uahalf	0x627
	.uaword	0x1fa
	.byte	0x26
	.uleb128 0x7
	.string	"result__spare_2_sd1"
	.byte	0x6
	.uahalf	0x631
	.uaword	0x1fa
	.byte	0x28
	.uleb128 0x7
	.string	"result__spare_3_sd1"
	.byte	0x6
	.uahalf	0x63b
	.uaword	0x1be
	.byte	0x2a
	.uleb128 0x7
	.string	"result__thresh_info"
	.byte	0x6
	.uahalf	0x645
	.uaword	0x1be
	.byte	0x2b
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_system_results_t"
	.byte	0x6
	.uahalf	0x650
	.uaword	0x150d
	.uleb128 0x9
	.byte	0x24
	.byte	0x6
	.uahalf	0x65c
	.uaword	0x1abe
	.uleb128 0x7
	.string	"result_core__ambient_window_events_sd0"
	.byte	0x6
	.uahalf	0x65d
	.uaword	0x23b
	.byte	0
	.uleb128 0x7
	.string	"result_core__ranging_total_events_sd0"
	.byte	0x6
	.uahalf	0x667
	.uaword	0x23b
	.byte	0x4
	.uleb128 0x7
	.string	"result_core__signal_total_events_sd0"
	.byte	0x6
	.uahalf	0x671
	.uaword	0x220
	.byte	0x8
	.uleb128 0x7
	.string	"result_core__total_periods_elapsed_sd0"
	.byte	0x6
	.uahalf	0x67b
	.uaword	0x23b
	.byte	0xc
	.uleb128 0x7
	.string	"result_core__ambient_window_events_sd1"
	.byte	0x6
	.uahalf	0x685
	.uaword	0x23b
	.byte	0x10
	.uleb128 0x7
	.string	"result_core__ranging_total_events_sd1"
	.byte	0x6
	.uahalf	0x68f
	.uaword	0x23b
	.byte	0x14
	.uleb128 0x7
	.string	"result_core__signal_total_events_sd1"
	.byte	0x6
	.uahalf	0x699
	.uaword	0x220
	.byte	0x18
	.uleb128 0x7
	.string	"result_core__total_periods_elapsed_sd1"
	.byte	0x6
	.uahalf	0x6a3
	.uaword	0x23b
	.byte	0x1c
	.uleb128 0x7
	.string	"result_core__spare_0"
	.byte	0x6
	.uahalf	0x6ad
	.uaword	0x1be
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_core_results_t"
	.byte	0x6
	.uahalf	0x6b7
	.uaword	0x191c
	.uleb128 0x9
	.byte	0x38
	.byte	0x6
	.uahalf	0x6c3
	.uaword	0x2111
	.uleb128 0x7
	.string	"phasecal_result__reference_phase"
	.byte	0x6
	.uahalf	0x6c4
	.uaword	0x1fa
	.byte	0
	.uleb128 0x7
	.string	"phasecal_result__vcsel_start"
	.byte	0x6
	.uahalf	0x6ce
	.uaword	0x1be
	.byte	0x2
	.uleb128 0x7
	.string	"ref_spad_char_result__num_actual_ref_spads"
	.byte	0x6
	.uahalf	0x6d8
	.uaword	0x1be
	.byte	0x3
	.uleb128 0x7
	.string	"ref_spad_char_result__ref_location"
	.byte	0x6
	.uahalf	0x6e2
	.uaword	0x1be
	.byte	0x4
	.uleb128 0x7
	.string	"vhv_result__coldboot_status"
	.byte	0x6
	.uahalf	0x6ec
	.uaword	0x1be
	.byte	0x5
	.uleb128 0x7
	.string	"vhv_result__search_result"
	.byte	0x6
	.uahalf	0x6f6
	.uaword	0x1be
	.byte	0x6
	.uleb128 0x7
	.string	"vhv_result__latest_setting"
	.byte	0x6
	.uahalf	0x700
	.uaword	0x1be
	.byte	0x7
	.uleb128 0x7
	.string	"result__osc_calibrate_val"
	.byte	0x6
	.uahalf	0x70a
	.uaword	0x1fa
	.byte	0x8
	.uleb128 0x7
	.string	"ana_config__powerdown_go1"
	.byte	0x6
	.uahalf	0x714
	.uaword	0x1be
	.byte	0xa
	.uleb128 0x7
	.string	"ana_config__ref_bg_ctrl"
	.byte	0x6
	.uahalf	0x71f
	.uaword	0x1be
	.byte	0xb
	.uleb128 0x7
	.string	"ana_config__regdvdd1v2_ctrl"
	.byte	0x6
	.uahalf	0x72a
	.uaword	0x1be
	.byte	0xc
	.uleb128 0x7
	.string	"ana_config__osc_slow_ctrl"
	.byte	0x6
	.uahalf	0x736
	.uaword	0x1be
	.byte	0xd
	.uleb128 0x7
	.string	"test_mode__status"
	.byte	0x6
	.uahalf	0x742
	.uaword	0x1be
	.byte	0xe
	.uleb128 0x7
	.string	"firmware__system_status"
	.byte	0x6
	.uahalf	0x74c
	.uaword	0x1be
	.byte	0xf
	.uleb128 0x7
	.string	"firmware__mode_status"
	.byte	0x6
	.uahalf	0x757
	.uaword	0x1be
	.byte	0x10
	.uleb128 0x7
	.string	"firmware__secondary_mode_status"
	.byte	0x6
	.uahalf	0x761
	.uaword	0x1be
	.byte	0x11
	.uleb128 0x7
	.string	"firmware__cal_repeat_rate_counter"
	.byte	0x6
	.uahalf	0x76b
	.uaword	0x1fa
	.byte	0x12
	.uleb128 0x7
	.string	"gph__system__thresh_high"
	.byte	0x6
	.uahalf	0x775
	.uaword	0x1fa
	.byte	0x14
	.uleb128 0x7
	.string	"gph__system__thresh_low"
	.byte	0x6
	.uahalf	0x77f
	.uaword	0x1fa
	.byte	0x16
	.uleb128 0x7
	.string	"gph__system__enable_xtalk_per_quadrant"
	.byte	0x6
	.uahalf	0x789
	.uaword	0x1be
	.byte	0x18
	.uleb128 0x7
	.string	"gph__spare_0"
	.byte	0x6
	.uahalf	0x793
	.uaword	0x1be
	.byte	0x19
	.uleb128 0x7
	.string	"gph__sd_config__woi_sd0"
	.byte	0x6
	.uahalf	0x79f
	.uaword	0x1be
	.byte	0x1a
	.uleb128 0x7
	.string	"gph__sd_config__woi_sd1"
	.byte	0x6
	.uahalf	0x7a9
	.uaword	0x1be
	.byte	0x1b
	.uleb128 0x7
	.string	"gph__sd_config__initial_phase_sd0"
	.byte	0x6
	.uahalf	0x7b3
	.uaword	0x1be
	.byte	0x1c
	.uleb128 0x7
	.string	"gph__sd_config__initial_phase_sd1"
	.byte	0x6
	.uahalf	0x7bd
	.uaword	0x1be
	.byte	0x1d
	.uleb128 0x7
	.string	"gph__sd_config__first_order_select"
	.byte	0x6
	.uahalf	0x7c7
	.uaword	0x1be
	.byte	0x1e
	.uleb128 0x7
	.string	"gph__sd_config__quantifier"
	.byte	0x6
	.uahalf	0x7d2
	.uaword	0x1be
	.byte	0x1f
	.uleb128 0x7
	.string	"gph__roi_config__user_roi_centre_spad"
	.byte	0x6
	.uahalf	0x7dc
	.uaword	0x1be
	.byte	0x20
	.uleb128 0x7
	.string	"gph__roi_config__user_roi_requested_global_xy_size"
	.byte	0x6
	.uahalf	0x7e6
	.uaword	0x1be
	.byte	0x21
	.uleb128 0x7
	.string	"gph__system__sequence_config"
	.byte	0x6
	.uahalf	0x7f0
	.uaword	0x1be
	.byte	0x22
	.uleb128 0x7
	.string	"gph__gph_id"
	.byte	0x6
	.uahalf	0x801
	.uaword	0x1be
	.byte	0x23
	.uleb128 0x7
	.string	"system__interrupt_set"
	.byte	0x6
	.uahalf	0x80b
	.uaword	0x1be
	.byte	0x24
	.uleb128 0x7
	.string	"interrupt_manager__enables"
	.byte	0x6
	.uahalf	0x816
	.uaword	0x1be
	.byte	0x25
	.uleb128 0x7
	.string	"interrupt_manager__clear"
	.byte	0x6
	.uahalf	0x824
	.uaword	0x1be
	.byte	0x26
	.uleb128 0x7
	.string	"interrupt_manager__status"
	.byte	0x6
	.uahalf	0x832
	.uaword	0x1be
	.byte	0x27
	.uleb128 0x7
	.string	"mcu_to_host_bank__wr_access_en"
	.byte	0x6
	.uahalf	0x840
	.uaword	0x1be
	.byte	0x28
	.uleb128 0x7
	.string	"power_management__go1_reset_status"
	.byte	0x6
	.uahalf	0x84a
	.uaword	0x1be
	.byte	0x29
	.uleb128 0x7
	.string	"pad_startup_mode__value_ro"
	.byte	0x6
	.uahalf	0x854
	.uaword	0x1be
	.byte	0x2a
	.uleb128 0x7
	.string	"pad_startup_mode__value_ctrl"
	.byte	0x6
	.uahalf	0x85f
	.uaword	0x1be
	.byte	0x2b
	.uleb128 0x7
	.string	"pll_period_us"
	.byte	0x6
	.uahalf	0x86c
	.uaword	0x23b
	.byte	0x2c
	.uleb128 0x7
	.string	"interrupt_scheduler__data_out"
	.byte	0x6
	.uahalf	0x876
	.uaword	0x23b
	.byte	0x30
	.uleb128 0x7
	.string	"nvm_bist__complete"
	.byte	0x6
	.uahalf	0x880
	.uaword	0x1be
	.byte	0x34
	.uleb128 0x7
	.string	"nvm_bist__status"
	.byte	0x6
	.uahalf	0x88a
	.uaword	0x1be
	.byte	0x35
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_debug_results_t"
	.byte	0x6
	.uahalf	0x894
	.uaword	0x1adc
	.uleb128 0x9
	.byte	0x32
	.byte	0x6
	.uahalf	0x8a0
	.uaword	0x28e2
	.uleb128 0x7
	.string	"identification__model_id"
	.byte	0x6
	.uahalf	0x8a1
	.uaword	0x1be
	.byte	0
	.uleb128 0x7
	.string	"identification__module_type"
	.byte	0x6
	.uahalf	0x8ab
	.uaword	0x1be
	.byte	0x1
	.uleb128 0x7
	.string	"identification__revision_id"
	.byte	0x6
	.uahalf	0x8b5
	.uaword	0x1be
	.byte	0x2
	.uleb128 0x7
	.string	"identification__module_id"
	.byte	0x6
	.uahalf	0x8c0
	.uaword	0x1fa
	.byte	0x4
	.uleb128 0x7
	.string	"ana_config__fast_osc__trim_max"
	.byte	0x6
	.uahalf	0x8ca
	.uaword	0x1be
	.byte	0x6
	.uleb128 0x7
	.string	"ana_config__fast_osc__freq_set"
	.byte	0x6
	.uahalf	0x8d4
	.uaword	0x1be
	.byte	0x7
	.uleb128 0x7
	.string	"ana_config__vcsel_trim"
	.byte	0x6
	.uahalf	0x8de
	.uaword	0x1be
	.byte	0x8
	.uleb128 0x7
	.string	"ana_config__vcsel_selion"
	.byte	0x6
	.uahalf	0x8e8
	.uaword	0x1be
	.byte	0x9
	.uleb128 0x7
	.string	"ana_config__vcsel_selion_max"
	.byte	0x6
	.uahalf	0x8f2
	.uaword	0x1be
	.byte	0xa
	.uleb128 0x7
	.string	"protected_laser_safety__lock_bit"
	.byte	0x6
	.uahalf	0x8fc
	.uaword	0x1be
	.byte	0xb
	.uleb128 0x7
	.string	"laser_safety__key"
	.byte	0x6
	.uahalf	0x906
	.uaword	0x1be
	.byte	0xc
	.uleb128 0x7
	.string	"laser_safety__key_ro"
	.byte	0x6
	.uahalf	0x910
	.uaword	0x1be
	.byte	0xd
	.uleb128 0x7
	.string	"laser_safety__clip"
	.byte	0x6
	.uahalf	0x91a
	.uaword	0x1be
	.byte	0xe
	.uleb128 0x7
	.string	"laser_safety__mult"
	.byte	0x6
	.uahalf	0x924
	.uaword	0x1be
	.byte	0xf
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_0"
	.byte	0x6
	.uahalf	0x92e
	.uaword	0x1be
	.byte	0x10
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_1"
	.byte	0x6
	.uahalf	0x938
	.uaword	0x1be
	.byte	0x11
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_2"
	.byte	0x6
	.uahalf	0x942
	.uaword	0x1be
	.byte	0x12
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_3"
	.byte	0x6
	.uahalf	0x94c
	.uaword	0x1be
	.byte	0x13
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_4"
	.byte	0x6
	.uahalf	0x956
	.uaword	0x1be
	.byte	0x14
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_5"
	.byte	0x6
	.uahalf	0x960
	.uaword	0x1be
	.byte	0x15
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_6"
	.byte	0x6
	.uahalf	0x96a
	.uaword	0x1be
	.byte	0x16
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_7"
	.byte	0x6
	.uahalf	0x974
	.uaword	0x1be
	.byte	0x17
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_8"
	.byte	0x6
	.uahalf	0x97e
	.uaword	0x1be
	.byte	0x18
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_9"
	.byte	0x6
	.uahalf	0x988
	.uaword	0x1be
	.byte	0x19
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_10"
	.byte	0x6
	.uahalf	0x992
	.uaword	0x1be
	.byte	0x1a
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_11"
	.byte	0x6
	.uahalf	0x99c
	.uaword	0x1be
	.byte	0x1b
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_12"
	.byte	0x6
	.uahalf	0x9a6
	.uaword	0x1be
	.byte	0x1c
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_13"
	.byte	0x6
	.uahalf	0x9b0
	.uaword	0x1be
	.byte	0x1d
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_14"
	.byte	0x6
	.uahalf	0x9ba
	.uaword	0x1be
	.byte	0x1e
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_15"
	.byte	0x6
	.uahalf	0x9c4
	.uaword	0x1be
	.byte	0x1f
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_16"
	.byte	0x6
	.uahalf	0x9ce
	.uaword	0x1be
	.byte	0x20
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_17"
	.byte	0x6
	.uahalf	0x9d8
	.uaword	0x1be
	.byte	0x21
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_18"
	.byte	0x6
	.uahalf	0x9e2
	.uaword	0x1be
	.byte	0x22
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_19"
	.byte	0x6
	.uahalf	0x9ec
	.uaword	0x1be
	.byte	0x23
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_20"
	.byte	0x6
	.uahalf	0x9f6
	.uaword	0x1be
	.byte	0x24
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_21"
	.byte	0x6
	.uahalf	0xa00
	.uaword	0x1be
	.byte	0x25
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_22"
	.byte	0x6
	.uahalf	0xa0a
	.uaword	0x1be
	.byte	0x26
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_23"
	.byte	0x6
	.uahalf	0xa14
	.uaword	0x1be
	.byte	0x27
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_24"
	.byte	0x6
	.uahalf	0xa1e
	.uaword	0x1be
	.byte	0x28
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_25"
	.byte	0x6
	.uahalf	0xa28
	.uaword	0x1be
	.byte	0x29
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_26"
	.byte	0x6
	.uahalf	0xa32
	.uaword	0x1be
	.byte	0x2a
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_27"
	.byte	0x6
	.uahalf	0xa3c
	.uaword	0x1be
	.byte	0x2b
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_28"
	.byte	0x6
	.uahalf	0xa46
	.uaword	0x1be
	.byte	0x2c
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_29"
	.byte	0x6
	.uahalf	0xa50
	.uaword	0x1be
	.byte	0x2d
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_30"
	.byte	0x6
	.uahalf	0xa5a
	.uaword	0x1be
	.byte	0x2e
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_31"
	.byte	0x6
	.uahalf	0xa64
	.uaword	0x1be
	.byte	0x2f
	.uleb128 0x7
	.string	"roi_config__mode_roi_centre_spad"
	.byte	0x6
	.uahalf	0xa6e
	.uaword	0x1be
	.byte	0x30
	.uleb128 0x7
	.string	"roi_config__mode_roi_xy_size"
	.byte	0x6
	.uahalf	0xa78
	.uaword	0x1be
	.byte	0x31
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_nvm_copy_data_t"
	.byte	0x6
	.uahalf	0xa82
	.uaword	0x2130
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.byte	0x9d
	.uaword	0x2951
	.uleb128 0x6
	.string	"ll_revision"
	.byte	0x7
	.byte	0x9e
	.uaword	0x23b
	.byte	0
	.uleb128 0x6
	.string	"ll_major"
	.byte	0x7
	.byte	0x9f
	.uaword	0x1be
	.byte	0x4
	.uleb128 0x6
	.string	"ll_minor"
	.byte	0x7
	.byte	0xa0
	.uaword	0x1be
	.byte	0x5
	.uleb128 0x6
	.string	"ll_build"
	.byte	0x7
	.byte	0xa1
	.uaword	0x1be
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.string	"VL53L1_ll_version_t"
	.byte	0x7
	.byte	0xa2
	.uaword	0x2901
	.uleb128 0x5
	.byte	0x10
	.byte	0x7
	.byte	0xa8
	.uaword	0x29fc
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.byte	0xaa
	.uaword	0x1be
	.byte	0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.byte	0xab
	.uaword	0x1be
	.byte	0x1
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.byte	0xac
	.uaword	0x23b
	.byte	0x4
	.uleb128 0x6
	.string	"target_count_rate_mcps"
	.byte	0x7
	.byte	0xad
	.uaword	0x1fa
	.byte	0x8
	.uleb128 0x6
	.string	"min_count_rate_limit_mcps"
	.byte	0x7
	.byte	0xaf
	.uaword	0x1fa
	.byte	0xa
	.uleb128 0x6
	.string	"max_count_rate_limit_mcps"
	.byte	0x7
	.byte	0xb1
	.uaword	0x1fa
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.string	"VL53L1_refspadchar_config_t"
	.byte	0x7
	.byte	0xb4
	.uaword	0x296c
	.uleb128 0x5
	.byte	0xc
	.byte	0x7
	.byte	0xbb
	.uaword	0x2a8c
	.uleb128 0xa
	.uaword	.LASF10
	.byte	0x7
	.byte	0xbd
	.uaword	0x3ed
	.byte	0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.byte	0xc1
	.uaword	0x1be
	.byte	0x1
	.uleb128 0x6
	.string	"vcsel_start"
	.byte	0x7
	.byte	0xc3
	.uaword	0x1be
	.byte	0x2
	.uleb128 0x6
	.string	"vcsel_width"
	.byte	0x7
	.byte	0xc5
	.uaword	0x1be
	.byte	0x3
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.byte	0xc7
	.uaword	0x23b
	.byte	0x4
	.uleb128 0x6
	.string	"rate_limit_mcps"
	.byte	0x7
	.byte	0xc9
	.uaword	0x1fa
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.string	"VL53L1_ssc_config_t"
	.byte	0x7
	.byte	0xce
	.uaword	0x2a1f
	.uleb128 0x5
	.byte	0x18
	.byte	0x7
	.byte	0xd4
	.uaword	0x2c4c
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.byte	0xd7
	.uaword	0x23b
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x7
	.byte	0xd9
	.uaword	0x1de
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x7
	.byte	0xdb
	.uaword	0x1de
	.byte	0x6
	.uleb128 0x6
	.string	"nvm_default__crosstalk_compensation_plane_offset_kcps"
	.byte	0x7
	.byte	0xdd
	.uaword	0x23b
	.byte	0x8
	.uleb128 0x6
	.string	"nvm_default__crosstalk_compensation_x_plane_gradient_kcps"
	.byte	0x7
	.byte	0xdf
	.uaword	0x1de
	.byte	0xc
	.uleb128 0x6
	.string	"nvm_default__crosstalk_compensation_y_plane_gradient_kcps"
	.byte	0x7
	.byte	0xe1
	.uaword	0x1de
	.byte	0xe
	.uleb128 0x6
	.string	"global_crosstalk_compensation_enable"
	.byte	0x7
	.byte	0xe3
	.uaword	0x1be
	.byte	0x10
	.uleb128 0x6
	.string	"lite_mode_crosstalk_margin_kcps"
	.byte	0x7
	.byte	0xe5
	.uaword	0x1de
	.byte	0x12
	.uleb128 0x6
	.string	"crosstalk_range_ignore_threshold_mult"
	.byte	0x7
	.byte	0xeb
	.uaword	0x1be
	.byte	0x14
	.uleb128 0x6
	.string	"crosstalk_range_ignore_threshold_rate_mcps"
	.byte	0x7
	.byte	0xed
	.uaword	0x1fa
	.byte	0x16
	.byte	0
	.uleb128 0x2
	.string	"VL53L1_xtalk_config_t"
	.byte	0x7
	.byte	0xf2
	.uaword	0x2aa7
	.uleb128 0x5
	.byte	0x4c
	.byte	0x7
	.byte	0xfe
	.uaword	0x316f
	.uleb128 0x7
	.string	"tp_tuning_parm_version"
	.byte	0x7
	.uahalf	0x101
	.uaword	0x1fa
	.byte	0
	.uleb128 0x7
	.string	"tp_tuning_parm_key_table_version"
	.byte	0x7
	.uahalf	0x104
	.uaword	0x1fa
	.byte	0x2
	.uleb128 0x7
	.string	"tp_tuning_parm_lld_version"
	.byte	0x7
	.uahalf	0x108
	.uaword	0x1fa
	.byte	0x4
	.uleb128 0x7
	.string	"tp_init_phase_rtn_lite_long"
	.byte	0x7
	.uahalf	0x10c
	.uaword	0x1be
	.byte	0x6
	.uleb128 0x7
	.string	"tp_init_phase_rtn_lite_med"
	.byte	0x7
	.uahalf	0x110
	.uaword	0x1be
	.byte	0x7
	.uleb128 0x7
	.string	"tp_init_phase_rtn_lite_short"
	.byte	0x7
	.uahalf	0x114
	.uaword	0x1be
	.byte	0x8
	.uleb128 0x7
	.string	"tp_init_phase_ref_lite_long"
	.byte	0x7
	.uahalf	0x118
	.uaword	0x1be
	.byte	0x9
	.uleb128 0x7
	.string	"tp_init_phase_ref_lite_med"
	.byte	0x7
	.uahalf	0x11c
	.uaword	0x1be
	.byte	0xa
	.uleb128 0x7
	.string	"tp_init_phase_ref_lite_short"
	.byte	0x7
	.uahalf	0x120
	.uaword	0x1be
	.byte	0xb
	.uleb128 0x7
	.string	"tp_consistency_lite_phase_tolerance"
	.byte	0x7
	.uahalf	0x125
	.uaword	0x1be
	.byte	0xc
	.uleb128 0x7
	.string	"tp_phasecal_target"
	.byte	0x7
	.uahalf	0x129
	.uaword	0x1be
	.byte	0xd
	.uleb128 0x7
	.string	"tp_cal_repeat_rate"
	.byte	0x7
	.uahalf	0x12c
	.uaword	0x1fa
	.byte	0xe
	.uleb128 0x7
	.string	"tp_lite_min_clip"
	.byte	0x7
	.uahalf	0x130
	.uaword	0x1be
	.byte	0x10
	.uleb128 0x7
	.string	"tp_lite_long_sigma_thresh_mm"
	.byte	0x7
	.uahalf	0x135
	.uaword	0x1fa
	.byte	0x12
	.uleb128 0x7
	.string	"tp_lite_med_sigma_thresh_mm"
	.byte	0x7
	.uahalf	0x139
	.uaword	0x1fa
	.byte	0x14
	.uleb128 0x7
	.string	"tp_lite_short_sigma_thresh_mm"
	.byte	0x7
	.uahalf	0x13d
	.uaword	0x1fa
	.byte	0x16
	.uleb128 0x7
	.string	"tp_lite_long_min_count_rate_rtn_mcps"
	.byte	0x7
	.uahalf	0x142
	.uaword	0x1fa
	.byte	0x18
	.uleb128 0x7
	.string	"tp_lite_med_min_count_rate_rtn_mcps"
	.byte	0x7
	.uahalf	0x146
	.uaword	0x1fa
	.byte	0x1a
	.uleb128 0x7
	.string	"tp_lite_short_min_count_rate_rtn_mcps"
	.byte	0x7
	.uahalf	0x14a
	.uaword	0x1fa
	.byte	0x1c
	.uleb128 0x7
	.string	"tp_lite_sigma_est_pulse_width_ns"
	.byte	0x7
	.uahalf	0x14f
	.uaword	0x1be
	.byte	0x1e
	.uleb128 0x7
	.string	"tp_lite_sigma_est_amb_width_ns"
	.byte	0x7
	.uahalf	0x152
	.uaword	0x1be
	.byte	0x1f
	.uleb128 0x7
	.string	"tp_lite_sigma_ref_mm"
	.byte	0x7
	.uahalf	0x155
	.uaword	0x1be
	.byte	0x20
	.uleb128 0x7
	.string	"tp_lite_seed_cfg"
	.byte	0x7
	.uahalf	0x158
	.uaword	0x1be
	.byte	0x21
	.uleb128 0x7
	.string	"tp_timed_seed_cfg"
	.byte	0x7
	.uahalf	0x15b
	.uaword	0x1be
	.byte	0x22
	.uleb128 0x7
	.string	"tp_lite_quantifier"
	.byte	0x7
	.uahalf	0x15f
	.uaword	0x1be
	.byte	0x23
	.uleb128 0x7
	.string	"tp_lite_first_order_select"
	.byte	0x7
	.uahalf	0x162
	.uaword	0x1be
	.byte	0x24
	.uleb128 0x7
	.string	"tp_dss_target_lite_mcps"
	.byte	0x7
	.uahalf	0x166
	.uaword	0x1fa
	.byte	0x26
	.uleb128 0x7
	.string	"tp_dss_target_timed_mcps"
	.byte	0x7
	.uahalf	0x169
	.uaword	0x1fa
	.byte	0x28
	.uleb128 0x7
	.string	"tp_phasecal_timeout_lite_us"
	.byte	0x7
	.uahalf	0x16d
	.uaword	0x23b
	.byte	0x2c
	.uleb128 0x7
	.string	"tp_phasecal_timeout_timed_us"
	.byte	0x7
	.uahalf	0x171
	.uaword	0x23b
	.byte	0x30
	.uleb128 0x7
	.string	"tp_mm_timeout_lite_us"
	.byte	0x7
	.uahalf	0x175
	.uaword	0x23b
	.byte	0x34
	.uleb128 0x7
	.string	"tp_mm_timeout_timed_us"
	.byte	0x7
	.uahalf	0x178
	.uaword	0x23b
	.byte	0x38
	.uleb128 0x7
	.string	"tp_mm_timeout_lpa_us"
	.byte	0x7
	.uahalf	0x17b
	.uaword	0x23b
	.byte	0x3c
	.uleb128 0x7
	.string	"tp_range_timeout_lite_us"
	.byte	0x7
	.uahalf	0x17f
	.uaword	0x23b
	.byte	0x40
	.uleb128 0x7
	.string	"tp_range_timeout_timed_us"
	.byte	0x7
	.uahalf	0x182
	.uaword	0x23b
	.byte	0x44
	.uleb128 0x7
	.string	"tp_range_timeout_lpa_us"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x23b
	.byte	0x48
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_tuning_parm_storage_t"
	.byte	0x7
	.uahalf	0x189
	.uaword	0x2c69
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.uahalf	0x191
	.uaword	0x31b8
	.uleb128 0x8
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x193
	.uaword	0x1be
	.byte	0
	.uleb128 0x8
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x194
	.uaword	0x1be
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_optical_centre_t"
	.byte	0x7
	.uahalf	0x196
	.uaword	0x3194
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.uahalf	0x19d
	.uaword	0x321b
	.uleb128 0x8
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x19f
	.uaword	0x1be
	.byte	0
	.uleb128 0x8
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x1be
	.byte	0x1
	.uleb128 0x7
	.string	"width"
	.byte	0x7
	.uahalf	0x1a1
	.uaword	0x1be
	.byte	0x2
	.uleb128 0x7
	.string	"height"
	.byte	0x7
	.uahalf	0x1a2
	.uaword	0x1be
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_user_zone_t"
	.byte	0x7
	.uahalf	0x1a4
	.uaword	0x31d8
	.uleb128 0x9
	.byte	0xe
	.byte	0x7
	.uahalf	0x1ae
	.uaword	0x3342
	.uleb128 0x7
	.string	"intr_mode_distance"
	.byte	0x7
	.uahalf	0x1b1
	.uaword	0x40b
	.byte	0
	.uleb128 0x7
	.string	"intr_mode_rate"
	.byte	0x7
	.uahalf	0x1b4
	.uaword	0x40b
	.byte	0x1
	.uleb128 0x7
	.string	"intr_new_measure_ready"
	.byte	0x7
	.uahalf	0x1b9
	.uaword	0x1be
	.byte	0x2
	.uleb128 0x7
	.string	"intr_no_target"
	.byte	0x7
	.uahalf	0x1bc
	.uaword	0x1be
	.byte	0x3
	.uleb128 0x7
	.string	"intr_combined_mode"
	.byte	0x7
	.uahalf	0x1c2
	.uaword	0x1be
	.byte	0x4
	.uleb128 0x7
	.string	"threshold_distance_high"
	.byte	0x7
	.uahalf	0x1ca
	.uaword	0x1fa
	.byte	0x6
	.uleb128 0x7
	.string	"threshold_distance_low"
	.byte	0x7
	.uahalf	0x1cd
	.uaword	0x1fa
	.byte	0x8
	.uleb128 0x7
	.string	"threshold_rate_high"
	.byte	0x7
	.uahalf	0x1d0
	.uaword	0x1fa
	.byte	0xa
	.uleb128 0x7
	.string	"threshold_rate_low"
	.byte	0x7
	.uahalf	0x1d3
	.uaword	0x1fa
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_GPIO_interrupt_config_t"
	.byte	0x7
	.uahalf	0x1d5
	.uaword	0x3236
	.uleb128 0x9
	.byte	0x10
	.byte	0x7
	.uahalf	0x1e0
	.uaword	0x3489
	.uleb128 0x7
	.string	"vhv_loop_bound"
	.byte	0x7
	.uahalf	0x1e6
	.uaword	0x1be
	.byte	0
	.uleb128 0x7
	.string	"is_low_power_auto_mode"
	.byte	0x7
	.uahalf	0x1e9
	.uaword	0x1be
	.byte	0x1
	.uleb128 0x7
	.string	"low_power_auto_range_count"
	.byte	0x7
	.uahalf	0x1ed
	.uaword	0x1be
	.byte	0x2
	.uleb128 0x7
	.string	"saved_interrupt_config"
	.byte	0x7
	.uahalf	0x1f0
	.uaword	0x1be
	.byte	0x3
	.uleb128 0x7
	.string	"saved_vhv_init"
	.byte	0x7
	.uahalf	0x1f3
	.uaword	0x1be
	.byte	0x4
	.uleb128 0x7
	.string	"saved_vhv_timeout"
	.byte	0x7
	.uahalf	0x1f6
	.uaword	0x1be
	.byte	0x5
	.uleb128 0x7
	.string	"first_run_phasecal_result"
	.byte	0x7
	.uahalf	0x1f9
	.uaword	0x1be
	.byte	0x6
	.uleb128 0x7
	.string	"dss__total_rate_per_spad_mcps"
	.byte	0x7
	.uahalf	0x1fc
	.uaword	0x23b
	.byte	0x8
	.uleb128 0x7
	.string	"dss__required_spads"
	.byte	0x7
	.uahalf	0x1ff
	.uaword	0x1fa
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_low_power_auto_data_t"
	.byte	0x7
	.uahalf	0x201
	.uaword	0x3369
	.uleb128 0x9
	.byte	0x40
	.byte	0x7
	.uahalf	0x20b
	.uaword	0x36f2
	.uleb128 0x7
	.string	"range_id"
	.byte	0x7
	.uahalf	0x20f
	.uaword	0x1be
	.byte	0
	.uleb128 0x7
	.string	"time_stamp"
	.byte	0x7
	.uahalf	0x211
	.uaword	0x23b
	.byte	0x4
	.uleb128 0x7
	.string	"width"
	.byte	0x7
	.uahalf	0x214
	.uaword	0x1fa
	.byte	0x8
	.uleb128 0x7
	.string	"woi"
	.byte	0x7
	.uahalf	0x216
	.uaword	0x1be
	.byte	0xa
	.uleb128 0x7
	.string	"fast_osc_frequency"
	.byte	0x7
	.uahalf	0x219
	.uaword	0x1fa
	.byte	0xc
	.uleb128 0x7
	.string	"zero_distance_phase"
	.byte	0x7
	.uahalf	0x21b
	.uaword	0x1fa
	.byte	0xe
	.uleb128 0x7
	.string	"actual_effective_spads"
	.byte	0x7
	.uahalf	0x21d
	.uaword	0x1fa
	.byte	0x10
	.uleb128 0x7
	.string	"total_periods_elapsed"
	.byte	0x7
	.uahalf	0x220
	.uaword	0x23b
	.byte	0x14
	.uleb128 0x7
	.string	"peak_duration_us"
	.byte	0x7
	.uahalf	0x223
	.uaword	0x23b
	.byte	0x18
	.uleb128 0x7
	.string	"woi_duration_us"
	.byte	0x7
	.uahalf	0x226
	.uaword	0x23b
	.byte	0x1c
	.uleb128 0x7
	.string	"ambient_window_events"
	.byte	0x7
	.uahalf	0x22c
	.uaword	0x23b
	.byte	0x20
	.uleb128 0x7
	.string	"ranging_total_events"
	.byte	0x7
	.uahalf	0x22e
	.uaword	0x23b
	.byte	0x24
	.uleb128 0x7
	.string	"signal_total_events"
	.byte	0x7
	.uahalf	0x231
	.uaword	0x220
	.byte	0x28
	.uleb128 0x7
	.string	"peak_signal_count_rate_mcps"
	.byte	0x7
	.uahalf	0x237
	.uaword	0x1fa
	.byte	0x2c
	.uleb128 0x7
	.string	"avg_signal_count_rate_mcps"
	.byte	0x7
	.uahalf	0x239
	.uaword	0x1fa
	.byte	0x2e
	.uleb128 0x7
	.string	"ambient_count_rate_mcps"
	.byte	0x7
	.uahalf	0x23b
	.uaword	0x1fa
	.byte	0x30
	.uleb128 0x7
	.string	"total_rate_per_spad_mcps"
	.byte	0x7
	.uahalf	0x23d
	.uaword	0x1fa
	.byte	0x32
	.uleb128 0x7
	.string	"peak_rate_per_spad_kcps"
	.byte	0x7
	.uahalf	0x23f
	.uaword	0x23b
	.byte	0x34
	.uleb128 0x8
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x244
	.uaword	0x1fa
	.byte	0x38
	.uleb128 0x7
	.string	"median_phase"
	.byte	0x7
	.uahalf	0x249
	.uaword	0x1fa
	.byte	0x3a
	.uleb128 0x8
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x24e
	.uaword	0x1de
	.byte	0x3c
	.uleb128 0x7
	.string	"range_status"
	.byte	0x7
	.uahalf	0x255
	.uaword	0x1be
	.byte	0x3e
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_range_data_t"
	.byte	0x7
	.uahalf	0x257
	.uaword	0x34ae
	.uleb128 0x9
	.byte	0x84
	.byte	0x7
	.uahalf	0x260
	.uaword	0x376d
	.uleb128 0x8
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x262
	.uaword	0x2cc
	.byte	0
	.uleb128 0x8
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x264
	.uaword	0x2cc
	.byte	0x1
	.uleb128 0x7
	.string	"stream_count"
	.byte	0x7
	.uahalf	0x266
	.uaword	0x1be
	.byte	0x2
	.uleb128 0x7
	.string	"device_status"
	.byte	0x7
	.uahalf	0x269
	.uaword	0x1be
	.byte	0x3
	.uleb128 0x7
	.string	"data"
	.byte	0x7
	.uahalf	0x26c
	.uaword	0x376d
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.uaword	0x36f2
	.uaword	0x377d
	.uleb128 0xc
	.uaword	0x2a2
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_range_results_t"
	.byte	0x7
	.uahalf	0x26f
	.uaword	0x370e
	.uleb128 0x9
	.byte	0x1c
	.byte	0x7
	.uahalf	0x279
	.uaword	0x383d
	.uleb128 0x8
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x27b
	.uaword	0x1be
	.byte	0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x27d
	.uaword	0x1be
	.byte	0x1
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x27f
	.uaword	0x1fa
	.byte	0x2
	.uleb128 0x7
	.string	"no_of_samples"
	.byte	0x7
	.uahalf	0x281
	.uaword	0x1be
	.byte	0x4
	.uleb128 0x7
	.string	"effective_spads"
	.byte	0x7
	.uahalf	0x283
	.uaword	0x23b
	.byte	0x8
	.uleb128 0x8
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x285
	.uaword	0x23b
	.byte	0xc
	.uleb128 0x8
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x287
	.uaword	0x23b
	.byte	0x10
	.uleb128 0x8
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x289
	.uaword	0x220
	.byte	0x14
	.uleb128 0x7
	.string	"range_mm_offset"
	.byte	0x7
	.uahalf	0x28c
	.uaword	0x220
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_offset_range_data_t"
	.byte	0x7
	.uahalf	0x28f
	.uaword	0x379c
	.uleb128 0x9
	.byte	0x5c
	.byte	0x7
	.uahalf	0x299
	.uaword	0x38da
	.uleb128 0x8
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x29b
	.uaword	0x1de
	.byte	0
	.uleb128 0x7
	.string	"cal_status"
	.byte	0x7
	.uahalf	0x29d
	.uaword	0x42e
	.byte	0x2
	.uleb128 0x7
	.string	"cal_report"
	.byte	0x7
	.uahalf	0x29f
	.uaword	0x1be
	.byte	0x3
	.uleb128 0x7
	.string	"max_results"
	.byte	0x7
	.uahalf	0x2a1
	.uaword	0x1be
	.byte	0x4
	.uleb128 0x7
	.string	"active_results"
	.byte	0x7
	.uahalf	0x2a4
	.uaword	0x1be
	.byte	0x5
	.uleb128 0x7
	.string	"data"
	.byte	0x7
	.uahalf	0x2a6
	.uaword	0x38da
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.uaword	0x383d
	.uaword	0x38ea
	.uleb128 0xc
	.uaword	0x2a2
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_offset_range_results_t"
	.byte	0x7
	.uahalf	0x2a9
	.uaword	0x3860
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.uahalf	0x2b4
	.uaword	0x39e6
	.uleb128 0x7
	.string	"result__mm_inner_actual_effective_spads"
	.byte	0x7
	.uahalf	0x2b6
	.uaword	0x1fa
	.byte	0
	.uleb128 0x7
	.string	"result__mm_outer_actual_effective_spads"
	.byte	0x7
	.uahalf	0x2b8
	.uaword	0x1fa
	.byte	0x2
	.uleb128 0x7
	.string	"result__mm_inner_peak_signal_count_rtn_mcps"
	.byte	0x7
	.uahalf	0x2ba
	.uaword	0x1fa
	.byte	0x4
	.uleb128 0x7
	.string	"result__mm_outer_peak_signal_count_rtn_mcps"
	.byte	0x7
	.uahalf	0x2bc
	.uaword	0x1fa
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_additional_offset_cal_data_t"
	.byte	0x7
	.uahalf	0x2bf
	.uaword	0x3910
	.uleb128 0x9
	.byte	0x3a
	.byte	0x7
	.uahalf	0x2ca
	.uaword	0x3a6a
	.uleb128 0x8
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x2cc
	.uaword	0x1de
	.byte	0
	.uleb128 0x7
	.string	"max_samples"
	.byte	0x7
	.uahalf	0x2ce
	.uaword	0x1fa
	.byte	0x2
	.uleb128 0x7
	.string	"width"
	.byte	0x7
	.uahalf	0x2d0
	.uaword	0x1fa
	.byte	0x4
	.uleb128 0x7
	.string	"height"
	.byte	0x7
	.uahalf	0x2d2
	.uaword	0x1fa
	.byte	0x6
	.uleb128 0x8
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x2d4
	.uaword	0x3a6a
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.uaword	0x1fa
	.uaword	0x3a7a
	.uleb128 0xc
	.uaword	0x2a2
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_cal_peak_rate_map_t"
	.byte	0x7
	.uahalf	0x2d7
	.uaword	0x3a12
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.uahalf	0x2e1
	.uaword	0x3acd
	.uleb128 0x7
	.string	"standard_ranging_gain_factor"
	.byte	0x7
	.uahalf	0x2e3
	.uaword	0x1fa
	.byte	0
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_gain_calibration_data_t"
	.byte	0x7
	.uahalf	0x2e6
	.uaword	0x3a9d
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.uahalf	0x2f0
	.uaword	0x3ba7
	.uleb128 0x8
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x2f2
	.uaword	0x2cc
	.byte	0
	.uleb128 0x7
	.string	"cfg_stream_count"
	.byte	0x7
	.uahalf	0x2f4
	.uaword	0x1be
	.byte	0x1
	.uleb128 0x7
	.string	"cfg_gph_id"
	.byte	0x7
	.uahalf	0x2f7
	.uaword	0x1be
	.byte	0x2
	.uleb128 0x7
	.string	"cfg_timing_status"
	.byte	0x7
	.uahalf	0x2f9
	.uaword	0x1be
	.byte	0x3
	.uleb128 0x8
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x2fc
	.uaword	0x2cc
	.byte	0x4
	.uleb128 0x7
	.string	"rd_stream_count"
	.byte	0x7
	.uahalf	0x2fe
	.uaword	0x1be
	.byte	0x5
	.uleb128 0x7
	.string	"rd_gph_id"
	.byte	0x7
	.uahalf	0x300
	.uaword	0x1be
	.byte	0x6
	.uleb128 0x7
	.string	"rd_timing_status"
	.byte	0x7
	.uahalf	0x302
	.uaword	0x1be
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_ll_driver_state_t"
	.byte	0x7
	.uahalf	0x305
	.uaword	0x3af4
	.uleb128 0x9
	.byte	0x14
	.byte	0x7
	.uahalf	0x30a
	.uaword	0x3c5a
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x30c
	.uaword	0x1fa
	.byte	0
	.uleb128 0x8
	.uaword	.LASF20
	.byte	0x7
	.uahalf	0x30f
	.uaword	0x23b
	.byte	0x4
	.uleb128 0x8
	.uaword	.LASF21
	.byte	0x7
	.uahalf	0x312
	.uaword	0x23b
	.byte	0x8
	.uleb128 0x8
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x315
	.uaword	0x23b
	.byte	0xc
	.uleb128 0x7
	.string	"pre_num_of_samples"
	.byte	0x7
	.uahalf	0x319
	.uaword	0x1be
	.byte	0x10
	.uleb128 0x7
	.string	"mm1_num_of_samples"
	.byte	0x7
	.uahalf	0x31c
	.uaword	0x1be
	.byte	0x11
	.uleb128 0x7
	.string	"mm2_num_of_samples"
	.byte	0x7
	.uahalf	0x31f
	.uaword	0x1be
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_offsetcal_config_t"
	.byte	0x7
	.uahalf	0x323
	.uaword	0x3bc8
	.uleb128 0xd
	.uahalf	0x2f4
	.byte	0x7
	.uahalf	0x32e
	.uaword	0x3fdf
	.uleb128 0x7
	.string	"wait_method"
	.byte	0x7
	.uahalf	0x330
	.uaword	0x1be
	.byte	0
	.uleb128 0x8
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x332
	.uaword	0x2e6
	.byte	0x1
	.uleb128 0x8
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x334
	.uaword	0x306
	.byte	0x2
	.uleb128 0x7
	.string	"offset_calibration_mode"
	.byte	0x7
	.uahalf	0x336
	.uaword	0x32b
	.byte	0x3
	.uleb128 0x7
	.string	"offset_correction_mode"
	.byte	0x7
	.uahalf	0x338
	.uaword	0x34f
	.byte	0x4
	.uleb128 0x8
	.uaword	.LASF20
	.byte	0x7
	.uahalf	0x33a
	.uaword	0x23b
	.byte	0x8
	.uleb128 0x8
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x33c
	.uaword	0x23b
	.byte	0xc
	.uleb128 0x8
	.uaword	.LASF21
	.byte	0x7
	.uahalf	0x33e
	.uaword	0x23b
	.byte	0x10
	.uleb128 0x7
	.string	"inter_measurement_period_ms"
	.byte	0x7
	.uahalf	0x340
	.uaword	0x23b
	.byte	0x14
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x342
	.uaword	0x1fa
	.byte	0x18
	.uleb128 0x7
	.string	"fw_ready_poll_duration_ms"
	.byte	0x7
	.uahalf	0x345
	.uaword	0x23b
	.byte	0x1c
	.uleb128 0x7
	.string	"fw_ready"
	.byte	0x7
	.uahalf	0x347
	.uaword	0x1be
	.byte	0x20
	.uleb128 0x7
	.string	"debug_mode"
	.byte	0x7
	.uahalf	0x349
	.uaword	0x1be
	.byte	0x21
	.uleb128 0x7
	.string	"version"
	.byte	0x7
	.uahalf	0x34d
	.uaword	0x2951
	.byte	0x24
	.uleb128 0x7
	.string	"ll_state"
	.byte	0x7
	.uahalf	0x350
	.uaword	0x3ba7
	.byte	0x2c
	.uleb128 0x7
	.string	"gpio_interrupt_config"
	.byte	0x7
	.uahalf	0x353
	.uaword	0x3342
	.byte	0x34
	.uleb128 0x7
	.string	"customer"
	.byte	0x7
	.uahalf	0x356
	.uaword	0x825
	.byte	0x42
	.uleb128 0x7
	.string	"cal_peak_rate_map"
	.byte	0x7
	.uahalf	0x357
	.uaword	0x3a7a
	.byte	0x5a
	.uleb128 0x7
	.string	"add_off_cal_data"
	.byte	0x7
	.uahalf	0x358
	.uaword	0x39e6
	.byte	0x94
	.uleb128 0x7
	.string	"gain_cal"
	.byte	0x7
	.uahalf	0x359
	.uaword	0x3acd
	.byte	0x9c
	.uleb128 0x7
	.string	"mm_roi"
	.byte	0x7
	.uahalf	0x35a
	.uaword	0x321b
	.byte	0x9e
	.uleb128 0x7
	.string	"optical_centre"
	.byte	0x7
	.uahalf	0x35b
	.uaword	0x31b8
	.byte	0xa2
	.uleb128 0x7
	.string	"tuning_parms"
	.byte	0x7
	.uahalf	0x35e
	.uaword	0x316f
	.byte	0xa4
	.uleb128 0x7
	.string	"rtn_good_spads"
	.byte	0x7
	.uahalf	0x361
	.uaword	0x3fdf
	.byte	0xf0
	.uleb128 0xe
	.string	"refspadchar"
	.byte	0x7
	.uahalf	0x364
	.uaword	0x29fc
	.uahalf	0x110
	.uleb128 0xe
	.string	"ssc_cfg"
	.byte	0x7
	.uahalf	0x365
	.uaword	0x2a8c
	.uahalf	0x120
	.uleb128 0xe
	.string	"xtalk_cfg"
	.byte	0x7
	.uahalf	0x366
	.uaword	0x2c4c
	.uahalf	0x12c
	.uleb128 0xe
	.string	"offsetcal_cfg"
	.byte	0x7
	.uahalf	0x367
	.uaword	0x3c5a
	.uahalf	0x144
	.uleb128 0xe
	.string	"stat_nvm"
	.byte	0x7
	.uahalf	0x36a
	.uaword	0x5b0
	.uahalf	0x158
	.uleb128 0xe
	.string	"stat_cfg"
	.byte	0x7
	.uahalf	0x36b
	.uaword	0xc83
	.uahalf	0x164
	.uleb128 0xe
	.string	"gen_cfg"
	.byte	0x7
	.uahalf	0x36c
	.uaword	0xef6
	.uahalf	0x184
	.uleb128 0xe
	.string	"tim_cfg"
	.byte	0x7
	.uahalf	0x36d
	.uaword	0x11ac
	.uahalf	0x19c
	.uleb128 0xe
	.string	"dyn_cfg"
	.byte	0x7
	.uahalf	0x36e
	.uaword	0x141e
	.uahalf	0x1b4
	.uleb128 0xe
	.string	"sys_ctrl"
	.byte	0x7
	.uahalf	0x36f
	.uaword	0x14ed
	.uahalf	0x1c8
	.uleb128 0xe
	.string	"sys_results"
	.byte	0x7
	.uahalf	0x370
	.uaword	0x18fc
	.uahalf	0x1ce
	.uleb128 0xe
	.string	"nvm_copy_data"
	.byte	0x7
	.uahalf	0x371
	.uaword	0x28e2
	.uahalf	0x1fa
	.uleb128 0xe
	.string	"offset_results"
	.byte	0x7
	.uahalf	0x374
	.uaword	0x38ea
	.uahalf	0x22c
	.uleb128 0xe
	.string	"core_results"
	.byte	0x7
	.uahalf	0x377
	.uaword	0x1abe
	.uahalf	0x288
	.uleb128 0xe
	.string	"dbg_results"
	.byte	0x7
	.uahalf	0x378
	.uaword	0x2111
	.uahalf	0x2ac
	.uleb128 0xe
	.string	"low_power_auto_data"
	.byte	0x7
	.uahalf	0x37c
	.uaword	0x3489
	.uahalf	0x2e4
	.byte	0
	.uleb128 0xb
	.uaword	0x1be
	.uaword	0x3fef
	.uleb128 0xc
	.uaword	0x2a2
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_LLDriverData_t"
	.byte	0x7
	.uahalf	0x388
	.uaword	0x3c7c
	.uleb128 0x9
	.byte	0x84
	.byte	0x7
	.uahalf	0x392
	.uaword	0x4024
	.uleb128 0x8
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x395
	.uaword	0x377d
	.byte	0
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_LLDriverResults_t"
	.byte	0x7
	.uahalf	0x397
	.uaword	0x400d
	.uleb128 0xd
	.uahalf	0x208
	.byte	0x7
	.uahalf	0x3fb
	.uaword	0x40d3
	.uleb128 0x7
	.string	"spad_type"
	.byte	0x7
	.uahalf	0x3fd
	.uaword	0x1be
	.byte	0
	.uleb128 0x7
	.string	"buffer_size"
	.byte	0x7
	.uahalf	0x3ff
	.uaword	0x1fa
	.byte	0x2
	.uleb128 0x7
	.string	"rate_data"
	.byte	0x7
	.uahalf	0x401
	.uaword	0x40d3
	.byte	0x4
	.uleb128 0xe
	.string	"no_of_values"
	.byte	0x7
	.uahalf	0x403
	.uaword	0x1fa
	.uahalf	0x204
	.uleb128 0xe
	.string	"fractional_bits"
	.byte	0x7
	.uahalf	0x405
	.uaword	0x1be
	.uahalf	0x206
	.uleb128 0xe
	.string	"error_status"
	.byte	0x7
	.uahalf	0x407
	.uaword	0x1be
	.uahalf	0x207
	.byte	0
	.uleb128 0xb
	.uaword	0x1fa
	.uaword	0x40e3
	.uleb128 0xc
	.uaword	0x2a2
	.byte	0xff
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_spad_rate_data_t"
	.byte	0x7
	.uahalf	0x40a
	.uaword	0x4045
	.uleb128 0x2
	.string	"VL53L1_PresetModes"
	.byte	0x8
	.byte	0x88
	.uaword	0x1be
	.uleb128 0x2
	.string	"VL53L1_DistanceModes"
	.byte	0x8
	.byte	0x96
	.uaword	0x1be
	.uleb128 0x9
	.byte	0x1c
	.byte	0x8
	.uahalf	0x11e
	.uaword	0x423d
	.uleb128 0x7
	.string	"PresetMode"
	.byte	0x8
	.uahalf	0x11f
	.uaword	0x4103
	.byte	0
	.uleb128 0x7
	.string	"DistanceMode"
	.byte	0x8
	.uahalf	0x121
	.uaword	0x411d
	.byte	0x1
	.uleb128 0x7
	.string	"InternalDistanceMode"
	.byte	0x8
	.uahalf	0x123
	.uaword	0x411d
	.byte	0x2
	.uleb128 0x7
	.string	"NewDistanceMode"
	.byte	0x8
	.uahalf	0x127
	.uaword	0x411d
	.byte	0x3
	.uleb128 0x7
	.string	"MeasurementTimingBudgetMicroSeconds"
	.byte	0x8
	.uahalf	0x12b
	.uaword	0x23b
	.byte	0x4
	.uleb128 0x7
	.string	"LimitChecksEnable"
	.byte	0x8
	.uahalf	0x12d
	.uaword	0x423d
	.byte	0x8
	.uleb128 0x7
	.string	"LimitChecksStatus"
	.byte	0x8
	.uahalf	0x12f
	.uaword	0x423d
	.byte	0xa
	.uleb128 0x7
	.string	"LimitChecksValue"
	.byte	0x8
	.uahalf	0x133
	.uaword	0x424d
	.byte	0xc
	.uleb128 0x7
	.string	"LimitChecksCurrent"
	.byte	0x8
	.uahalf	0x135
	.uaword	0x424d
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.uaword	0x1be
	.uaword	0x424d
	.uleb128 0xc
	.uaword	0x2a2
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.uaword	0x2b6
	.uaword	0x425d
	.uleb128 0xc
	.uaword	0x2a2
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_DeviceParameters_t"
	.byte	0x8
	.uahalf	0x139
	.uaword	0x4139
	.uleb128 0x4
	.string	"VL53L1_State"
	.byte	0x8
	.uahalf	0x141
	.uaword	0x1be
	.uleb128 0xd
	.uahalf	0x398
	.byte	0x8
	.uahalf	0x222
	.uaword	0x42f2
	.uleb128 0x7
	.string	"LLData"
	.byte	0x8
	.uahalf	0x223
	.uaword	0x3fef
	.byte	0
	.uleb128 0xe
	.string	"llresults"
	.byte	0x8
	.uahalf	0x226
	.uaword	0x4024
	.uahalf	0x2f4
	.uleb128 0xe
	.string	"PalState"
	.byte	0x8
	.uahalf	0x229
	.uaword	0x427f
	.uahalf	0x378
	.uleb128 0xe
	.string	"CurrentParameters"
	.byte	0x8
	.uahalf	0x22a
	.uaword	0x425d
	.uahalf	0x37c
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_DevData_t"
	.byte	0x8
	.uahalf	0x22d
	.uaword	0x4294
	.uleb128 0x5
	.byte	0x4
	.byte	0x9
	.byte	0x4a
	.uaword	0x4322
	.uleb128 0x6
	.string	"dummy"
	.byte	0x9
	.byte	0x4b
	.uaword	0x23b
	.byte	0
	.byte	0
	.uleb128 0x2
	.string	"I2C_HandleTypeDef"
	.byte	0x9
	.byte	0x4c
	.uaword	0x430b
	.uleb128 0xf
	.uahalf	0x3a4
	.byte	0x9
	.byte	0x4e
	.uaword	0x43cf
	.uleb128 0x6
	.string	"Data"
	.byte	0x9
	.byte	0x50
	.uaword	0x42f2
	.byte	0
	.uleb128 0x10
	.string	"I2cDevAddr"
	.byte	0x9
	.byte	0x52
	.uaword	0x1be
	.uahalf	0x398
	.uleb128 0x10
	.string	"comms_type"
	.byte	0x9
	.byte	0x53
	.uaword	0x1be
	.uahalf	0x399
	.uleb128 0x10
	.string	"comms_speed_khz"
	.byte	0x9
	.byte	0x54
	.uaword	0x1fa
	.uahalf	0x39a
	.uleb128 0x10
	.string	"new_data_ready_poll_duration_ms"
	.byte	0x9
	.byte	0x55
	.uaword	0x23b
	.uahalf	0x39c
	.uleb128 0x10
	.string	"I2cHandle"
	.byte	0x9
	.byte	0x56
	.uaword	0x43cf
	.uahalf	0x3a0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x4322
	.uleb128 0x2
	.string	"VL53L1_Dev_t"
	.byte	0x9
	.byte	0x58
	.uaword	0x433b
	.uleb128 0x2
	.string	"VL53L1_DEV"
	.byte	0x9
	.byte	0x5a
	.uaword	0x43fb
	.uleb128 0x11
	.byte	0x4
	.uaword	0x43d5
	.uleb128 0x12
	.byte	0x1
	.string	"VL53L1_run_offset_calibration"
	.byte	0x1
	.uahalf	0x122
	.byte	0x1
	.uaword	0x42e
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x464a
	.uleb128 0x13
	.string	"Dev"
	.byte	0x1
	.uahalf	0x123
	.uaword	0x43e9
	.uaword	.LLST0
	.uleb128 0x14
	.uaword	.LASF19
	.byte	0x1
	.uahalf	0x124
	.uaword	0x1de
	.uaword	.LLST1
	.uleb128 0x14
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x125
	.uaword	0x464a
	.uaword	.LLST2
	.uleb128 0x15
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x13e
	.uaword	0x42e
	.uaword	.LLST3
	.uleb128 0x16
	.string	"pdev"
	.byte	0x1
	.uahalf	0x13f
	.uaword	0x4650
	.uaword	.LLST0
	.uleb128 0x17
	.string	"device_preset_modes"
	.byte	0x1
	.uahalf	0x142
	.uaword	0x4656
	.byte	0x3
	.byte	0x91
	.sleb128 -138
	.uleb128 0x18
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x144
	.uaword	0x377d
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x16
	.string	"prange_results"
	.byte	0x1
	.uahalf	0x145
	.uaword	0x4666
	.uaword	.LLST5
	.uleb128 0x16
	.string	"prange_data"
	.byte	0x1
	.uahalf	0x146
	.uaword	0x466c
	.uaword	.LLST6
	.uleb128 0x16
	.string	"poffset"
	.byte	0x1
	.uahalf	0x147
	.uaword	0x4672
	.uaword	.LLST7
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.uahalf	0x149
	.uaword	0x1be
	.uaword	.LLST8
	.uleb128 0x16
	.string	"m"
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x1be
	.uaword	.LLST9
	.uleb128 0x19
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x14b
	.uaword	0x1be
	.byte	0x20
	.uleb128 0x16
	.string	"manual_effective_spads"
	.byte	0x1
	.uahalf	0x14d
	.uaword	0x1fa
	.uaword	.LLST10
	.uleb128 0x17
	.string	"num_of_samples"
	.byte	0x1
	.uahalf	0x150
	.uaword	0x4678
	.byte	0x3
	.byte	0x91
	.sleb128 -135
	.uleb128 0x1a
	.uaword	.LVL29
	.uaword	0x4a6d
	.uaword	0x457b
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL30
	.uaword	0x4aa0
	.uaword	0x4595
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL32
	.uaword	0x4ae7
	.uaword	0x45a9
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL34
	.uaword	0x4b1c
	.uaword	0x45c9
	.uleb128 0x1b
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL36
	.uaword	0x4b55
	.uaword	0x45e4
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1b
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL37
	.uaword	0x4b9f
	.uaword	0x4603
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x35
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL39
	.uaword	0x4bda
	.uaword	0x4617
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL40
	.uaword	0x4c01
	.uaword	0x4632
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x3e8
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL42
	.uaword	0x4c28
	.uleb128 0x1b
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x8f
	.sleb128 66
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x42e
	.uleb128 0x11
	.byte	0x4
	.uaword	0x3fef
	.uleb128 0xb
	.uaword	0x2e6
	.uaword	0x4666
	.uleb128 0xc
	.uaword	0x2a2
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x377d
	.uleb128 0x11
	.byte	0x4
	.uaword	0x36f2
	.uleb128 0x11
	.byte	0x4
	.uaword	0x383d
	.uleb128 0xb
	.uaword	0x1be
	.uaword	0x4688
	.uleb128 0xc
	.uaword	0x2a2
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"VL53L1_run_device_test"
	.byte	0x1
	.uahalf	0x30b
	.byte	0x1
	.uaword	0x42e
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x47b5
	.uleb128 0x13
	.string	"Dev"
	.byte	0x1
	.uahalf	0x30c
	.uaword	0x43e9
	.uaword	.LLST11
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x30d
	.uaword	0x3cf
	.uaword	.LLST12
	.uleb128 0x15
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x313
	.uaword	0x42e
	.uaword	.LLST13
	.uleb128 0x16
	.string	"pdev"
	.byte	0x1
	.uahalf	0x314
	.uaword	0x4650
	.uaword	.LLST14
	.uleb128 0x18
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x316
	.uaword	0x423d
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0x18
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x317
	.uaword	0x1be
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x1a
	.uaword	.LVL46
	.uaword	0x4c67
	.uaword	0x4737
	.uleb128 0x1b
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -3
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL48
	.uaword	0x4c99
	.uaword	0x4751
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL49
	.uaword	0x4cc5
	.uaword	0x4765
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL50
	.uaword	0x4cf9
	.uaword	0x478a
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x1b
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x89
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL52
	.uaword	0x4d2d
	.uaword	0x479e
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL53
	.byte	0x1
	.uaword	0x4c99
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"VL53L1_run_ref_spad_char"
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.uaword	0x42e
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x491b
	.uleb128 0x1f
	.string	"Dev"
	.byte	0x1
	.byte	0x69
	.uaword	0x43e9
	.uaword	.LLST15
	.uleb128 0x20
	.uaword	.LASF25
	.byte	0x1
	.byte	0x6a
	.uaword	0x464a
	.uaword	.LLST16
	.uleb128 0x21
	.uaword	.LASF26
	.byte	0x1
	.byte	0x70
	.uaword	0x42e
	.uaword	.LLST17
	.uleb128 0x22
	.string	"pdev"
	.byte	0x1
	.byte	0x71
	.uaword	0x4650
	.uaword	.LLST18
	.uleb128 0x23
	.uaword	.LASF27
	.byte	0x1
	.byte	0x73
	.uaword	0x491b
	.byte	0x2
	.byte	0x91
	.sleb128 -6
	.uleb128 0x22
	.string	"prefspadchar"
	.byte	0x1
	.byte	0x75
	.uaword	0x492b
	.uaword	.LLST19
	.uleb128 0x1a
	.uaword	.LVL57
	.uaword	0x4d59
	.uaword	0x485d
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL59
	.uaword	0x4d87
	.uaword	0x4878
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1b
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL60
	.uaword	0x4688
	.uaword	0x488c
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL61
	.uaword	0x4cf9
	.uaword	0x48b1
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x1b
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -6
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xd9
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL62
	.uaword	0x4dda
	.uaword	0x48d5
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x1b
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -6
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x44
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL63
	.uaword	0x4cf9
	.uaword	0x48fa
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x36
	.uleb128 0x1b
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -6
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xac
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL64
	.uaword	0x4dda
	.uleb128 0x1b
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x36
	.uleb128 0x1b
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -6
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.uaword	0x1be
	.uaword	0x492b
	.uleb128 0xc
	.uaword	0x2a2
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x29fc
	.uleb128 0x12
	.byte	0x1
	.string	"VL53L1_run_spad_rate_map"
	.byte	0x1
	.uahalf	0x2af
	.byte	0x1
	.uaword	0x42e
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4a67
	.uleb128 0x13
	.string	"Dev"
	.byte	0x1
	.uahalf	0x2b0
	.uaword	0x43e9
	.uaword	.LLST20
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x2b1
	.uaword	0x3cf
	.uaword	.LLST21
	.uleb128 0x14
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x2b2
	.uaword	0x3ed
	.uaword	.LLST22
	.uleb128 0x13
	.string	"ssc_config_timeout_us"
	.byte	0x1
	.uahalf	0x2b3
	.uaword	0x23b
	.uaword	.LLST23
	.uleb128 0x13
	.string	"pspad_rate_data"
	.byte	0x1
	.uahalf	0x2b4
	.uaword	0x4a67
	.uaword	.LLST24
	.uleb128 0x15
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x2bb
	.uaword	0x42e
	.uaword	.LLST25
	.uleb128 0x16
	.string	"pdev"
	.byte	0x1
	.uahalf	0x2bd
	.uaword	0x4650
	.uaword	.LLST26
	.uleb128 0x1a
	.uaword	.LVL72
	.uaword	0x4d59
	.uaword	0x4a06
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL76
	.uaword	0x4e0f
	.uaword	0x4a21
	.uleb128 0x1b
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x8f
	.sleb128 288
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL77
	.uaword	0x4688
	.uaword	0x4a3b
	.uleb128 0x1b
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.uaword	.LVL78
	.uaword	0x4e4a
	.uaword	0x4a55
	.uleb128 0x1b
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL80
	.byte	0x1
	.uaword	0x4e7e
	.uleb128 0x1b
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x40e3
	.uleb128 0x24
	.byte	0x1
	.string	"VL53L1_wait_for_firmware_ready"
	.byte	0xa
	.byte	0x6c
	.byte	0x1
	.uaword	0x42e
	.byte	0x1
	.uaword	0x4aa0
	.uleb128 0x25
	.uaword	0x43e9
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"VL53L1_clear_interrupt_and_enable_next_range"
	.byte	0xb
	.uahalf	0x309
	.byte	0x1
	.uaword	0x42e
	.byte	0x1
	.uaword	0x4ae7
	.uleb128 0x25
	.uaword	0x43e9
	.uleb128 0x25
	.uaword	0x1be
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"VL53L1_wait_for_range_completion"
	.byte	0xa
	.byte	0x7b
	.byte	0x1
	.uaword	0x42e
	.byte	0x1
	.uaword	0x4b1c
	.uleb128 0x25
	.uaword	0x43e9
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"VL53L1_get_device_results"
	.byte	0xb
	.uahalf	0x2ea
	.byte	0x1
	.uaword	0x42e
	.byte	0x1
	.uaword	0x4b55
	.uleb128 0x25
	.uaword	0x43e9
	.uleb128 0x25
	.uaword	0x3ad
	.uleb128 0x25
	.uaword	0x4666
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"VL53L1_set_preset_mode"
	.byte	0xb
	.uahalf	0x224
	.byte	0x1
	.uaword	0x42e
	.byte	0x1
	.uaword	0x4b9f
	.uleb128 0x25
	.uaword	0x43e9
	.uleb128 0x25
	.uaword	0x2e6
	.uleb128 0x25
	.uaword	0x1fa
	.uleb128 0x25
	.uaword	0x23b
	.uleb128 0x25
	.uaword	0x23b
	.uleb128 0x25
	.uaword	0x23b
	.uleb128 0x25
	.uaword	0x23b
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"VL53L1_init_and_start_range"
	.byte	0xb
	.uahalf	0x29f
	.byte	0x1
	.uaword	0x42e
	.byte	0x1
	.uaword	0x4bda
	.uleb128 0x25
	.uaword	0x43e9
	.uleb128 0x25
	.uaword	0x1be
	.uleb128 0x25
	.uaword	0x38c
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"VL53L1_stop_range"
	.byte	0xb
	.uahalf	0x2af
	.byte	0x1
	.uaword	0x42e
	.byte	0x1
	.uaword	0x4c01
	.uleb128 0x25
	.uaword	0x43e9
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"VL53L1_WaitUs"
	.byte	0xc
	.byte	0x82
	.byte	0x1
	.uaword	0x42e
	.byte	0x1
	.uaword	0x4c28
	.uleb128 0x25
	.uaword	0x43fb
	.uleb128 0x25
	.uaword	0x220
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"VL53L1_set_customer_nvm_managed"
	.byte	0xd
	.byte	0xc6
	.byte	0x1
	.uaword	0x42e
	.byte	0x1
	.uaword	0x4c61
	.uleb128 0x25
	.uaword	0x43e9
	.uleb128 0x25
	.uaword	0x4c61
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x825
	.uleb128 0x24
	.byte	0x1
	.string	"VL53L1_RdByte"
	.byte	0xc
	.byte	0x73
	.byte	0x1
	.uaword	0x42e
	.byte	0x1
	.uaword	0x4c93
	.uleb128 0x25
	.uaword	0x43fb
	.uleb128 0x25
	.uaword	0x1fa
	.uleb128 0x25
	.uaword	0x4c93
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x1be
	.uleb128 0x26
	.byte	0x1
	.string	"VL53L1_start_test"
	.byte	0xe
	.uahalf	0x152
	.byte	0x1
	.uaword	0x42e
	.byte	0x1
	.uaword	0x4cc5
	.uleb128 0x25
	.uaword	0x43e9
	.uleb128 0x25
	.uaword	0x1be
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"VL53L1_wait_for_test_completion"
	.byte	0xa
	.byte	0x8a
	.byte	0x1
	.uaword	0x42e
	.byte	0x1
	.uaword	0x4cf9
	.uleb128 0x25
	.uaword	0x43e9
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"VL53L1_ReadMulti"
	.byte	0xc
	.byte	0x5e
	.byte	0x1
	.uaword	0x42e
	.byte	0x1
	.uaword	0x4d2d
	.uleb128 0x25
	.uaword	0x43fb
	.uleb128 0x25
	.uaword	0x1fa
	.uleb128 0x25
	.uaword	0x4c93
	.uleb128 0x25
	.uaword	0x23b
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"VL53L1_clear_interrupt"
	.byte	0xe
	.uahalf	0x1c5
	.byte	0x1
	.uaword	0x42e
	.byte	0x1
	.uaword	0x4d59
	.uleb128 0x25
	.uaword	0x43e9
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"VL53L1_enable_powerforce"
	.byte	0xe
	.uahalf	0x1a7
	.byte	0x1
	.uaword	0x42e
	.byte	0x1
	.uaword	0x4d87
	.uleb128 0x25
	.uaword	0x43e9
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"VL53L1_set_ref_spad_char_config"
	.byte	0xe
	.uahalf	0x387
	.byte	0x1
	.uaword	0x42e
	.byte	0x1
	.uaword	0x4dda
	.uleb128 0x25
	.uaword	0x43e9
	.uleb128 0x25
	.uaword	0x1be
	.uleb128 0x25
	.uaword	0x23b
	.uleb128 0x25
	.uaword	0x1fa
	.uleb128 0x25
	.uaword	0x1fa
	.uleb128 0x25
	.uaword	0x1fa
	.uleb128 0x25
	.uaword	0x1fa
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"VL53L1_WriteMulti"
	.byte	0xc
	.byte	0x58
	.byte	0x1
	.uaword	0x42e
	.byte	0x1
	.uaword	0x4e0f
	.uleb128 0x25
	.uaword	0x43fb
	.uleb128 0x25
	.uaword	0x1fa
	.uleb128 0x25
	.uaword	0x4c93
	.uleb128 0x25
	.uaword	0x23b
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"VL53L1_set_ssc_config"
	.byte	0xe
	.uahalf	0x3b7
	.byte	0x1
	.uaword	0x42e
	.byte	0x1
	.uaword	0x4e44
	.uleb128 0x25
	.uaword	0x43e9
	.uleb128 0x25
	.uaword	0x4e44
	.uleb128 0x25
	.uaword	0x1fa
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x2a8c
	.uleb128 0x26
	.byte	0x1
	.string	"VL53L1_get_spad_rate_data"
	.byte	0xe
	.uahalf	0x3d8
	.byte	0x1
	.uaword	0x42e
	.byte	0x1
	.uaword	0x4e7e
	.uleb128 0x25
	.uaword	0x43e9
	.uleb128 0x25
	.uaword	0x4a67
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"VL53L1_disable_powerforce"
	.byte	0xe
	.uahalf	0x1b7
	.byte	0x1
	.uaword	0x42e
	.byte	0x1
	.uleb128 0x25
	.uaword	0x43e9
	.byte	0
	.byte	0
.section .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL8
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3
	.uaword	.LFE1
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL8
	.uaword	.LFE1
	.uahalf	0x3
	.byte	0x91
	.sleb128 -148
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL14
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL29
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL30
	.uaword	.LVL32-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL32
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL37
	.uaword	.LVL39-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL39
	.uaword	.LVL40-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL40
	.uaword	.LVL42-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL42
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL1
	.uaword	.LVL33
	.uahalf	0x4
	.byte	0x91
	.sleb128 -132
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL34-1
	.uaword	.LFE1
	.uahalf	0x4
	.byte	0x91
	.sleb128 -132
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL1
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL31
	.uahalf	0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LFE1
	.uahalf	0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x4c
	.byte	0x1e
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x234
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL7
	.uahalf	0xb
	.byte	0x72
	.sleb128 -1
	.byte	0x4c
	.byte	0x1e
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x234
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x4c
	.byte	0x1e
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x234
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL38
	.uahalf	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x4c
	.byte	0x1e
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x234
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL1
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x3
	.byte	0x73
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x78
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LFE1
	.uahalf	0x3
	.byte	0x78
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x3
	.byte	0x7d
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x3
	.byte	0x73
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL41
	.uaword	.LFE1
	.uahalf	0x3
	.byte	0x7d
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x3
	.byte	0x84
	.sleb128 404
	.uaword	.LVL3
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL18
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL35
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL41
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL43
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL46-1
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL44
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL43
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL48
	.uaword	.LVL49-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL49
	.uaword	.LVL50-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL52
	.uaword	.LVL53-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL45
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL46-1
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL55
	.uaword	.LVL57-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL57-1
	.uaword	.LFE0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL55
	.uaword	.LVL57-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL57-1
	.uaword	.LFE0
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL55
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL59
	.uaword	.LVL60-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL60
	.uaword	.LVL61-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL61
	.uaword	.LVL62-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL62
	.uaword	.LVL63-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL63
	.uaword	.LVL64-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x3
	.byte	0x9
	.byte	0xe2
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x3
	.byte	0x9
	.byte	0xe3
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LFE0
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL56
	.uaword	.LVL57-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL57-1
	.uaword	.LFE0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL56
	.uaword	.LVL57-1
	.uahalf	0x4
	.byte	0x84
	.sleb128 272
	.byte	0x9f
	.uaword	.LVL57-1
	.uaword	.LFE0
	.uahalf	0x4
	.byte	0x8f
	.sleb128 272
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL70
	.uaword	.LVL72-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL72-1
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL70
	.uaword	.LVL72-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL72-1
	.uaword	.LFE2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL70
	.uaword	.LVL72-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL72-1
	.uaword	.LFE2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL70
	.uaword	.LVL72-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL72-1
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL70
	.uaword	.LVL72-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL72-1
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL70
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL75
	.uaword	.LVL76-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL76
	.uaword	.LVL77-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL77
	.uaword	.LVL78-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL71
	.uaword	.LVL72-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL72-1
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x34
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF20:
	.string	"phasecal_config_timeout_us"
.LASF21:
	.string	"range_config_timeout_us"
.LASF12:
	.string	"y_centre"
.LASF8:
	.string	"vcsel_period"
.LASF13:
	.string	"sigma_mm"
.LASF9:
	.string	"timeout_us"
.LASF26:
	.string	"status"
.LASF15:
	.string	"cfg_device_state"
.LASF18:
	.string	"peak_rate_mcps"
.LASF24:
	.string	"range_results"
.LASF27:
	.string	"comms_buffer"
.LASF3:
	.string	"dss_config__target_total_rate_mcps"
.LASF17:
	.string	"preset_mode"
.LASF2:
	.string	"algo__crosstalk_compensation_y_plane_gradient_kcps"
.LASF14:
	.string	"median_range_mm"
.LASF5:
	.string	"dss_config__roi_mode_control"
.LASF10:
	.string	"array_select"
.LASF0:
	.string	"algo__crosstalk_compensation_plane_offset_kcps"
.LASF23:
	.string	"measurement_mode"
.LASF4:
	.string	"gpio_hv_mux__ctrl"
.LASF11:
	.string	"x_centre"
.LASF19:
	.string	"cal_distance_mm"
.LASF25:
	.string	"pcal_status"
.LASF22:
	.string	"mm_config_timeout_us"
.LASF6:
	.string	"dss_config__manual_effective_spads_select"
.LASF7:
	.string	"device_test_mode"
.LASF1:
	.string	"algo__crosstalk_compensation_x_plane_gradient_kcps"
.LASF16:
	.string	"rd_device_state"
	.extern	VL53L1_disable_powerforce,STT_FUNC,0
	.extern	VL53L1_get_spad_rate_data,STT_FUNC,0
	.extern	VL53L1_set_ssc_config,STT_FUNC,0
	.extern	VL53L1_WriteMulti,STT_FUNC,0
	.extern	VL53L1_set_ref_spad_char_config,STT_FUNC,0
	.extern	VL53L1_enable_powerforce,STT_FUNC,0
	.extern	VL53L1_clear_interrupt,STT_FUNC,0
	.extern	VL53L1_ReadMulti,STT_FUNC,0
	.extern	VL53L1_wait_for_test_completion,STT_FUNC,0
	.extern	VL53L1_start_test,STT_FUNC,0
	.extern	VL53L1_RdByte,STT_FUNC,0
	.extern	VL53L1_set_customer_nvm_managed,STT_FUNC,0
	.extern	VL53L1_WaitUs,STT_FUNC,0
	.extern	VL53L1_stop_range,STT_FUNC,0
	.extern	VL53L1_init_and_start_range,STT_FUNC,0
	.extern	VL53L1_set_preset_mode,STT_FUNC,0
	.extern	VL53L1_get_device_results,STT_FUNC,0
	.extern	VL53L1_wait_for_range_completion,STT_FUNC,0
	.extern	VL53L1_clear_interrupt_and_enable_next_range,STT_FUNC,0
	.extern	VL53L1_wait_for_firmware_ready,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
