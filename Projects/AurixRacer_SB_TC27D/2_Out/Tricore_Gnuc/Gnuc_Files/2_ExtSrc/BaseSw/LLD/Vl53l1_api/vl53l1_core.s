	.file	"vl53l1_core.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.VL53L1_encode_timeout.part.0,"ax",@progbits
	.align 1
	.type	VL53L1_encode_timeout.part.0, @function
VL53L1_encode_timeout.part.0:
.LFB57:
	.file 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c"
	.loc 1 1232 0
.LVL0:
	.loc 1 1243 0
	add	%d4, -1
.LVL1:
	.loc 1 1245 0
	andn	%d15, %d4, ~(-256)
	mov	%d3, 0
	jz	%d15, .L2
	mov	%d15, 0
.LVL2:
.L3:
	.loc 1 1246 0
	sh	%d4, -1
.LVL3:
	add	%d15, 1
.LVL4:
	.loc 1 1245 0
	andn	%d2, %d4, ~(-256)
	extr.u	%d3, %d15, 0, 16
.LVL5:
	jnz	%d2, .L3
	sh	%d3, %d3, 8
.LVL6:
	extr.u	%d3, %d3, 0, 16
.LVL7:
.L2:
	.loc 1 1250 0
	add	%d2, %d3, %d4
	.loc 1 1255 0
	extr.u	%d2, %d2, 0, 16
	ret
.LFE57:
	.size	VL53L1_encode_timeout.part.0, .-VL53L1_encode_timeout.part.0
.section .text.VL53L1_init_version,"ax",@progbits
	.align 1
	.global	VL53L1_init_version
	.type	VL53L1_init_version, @function
VL53L1_init_version:
.LFB0:
	.loc 1 101 0
.LVL8:
	.loc 1 108 0
	mov	%d15, 1
	st.b	[%a4] 40, %d15
	.loc 1 109 0
	mov	%d15, 2
	st.b	[%a4] 41, %d15
	.loc 1 110 0
	mov	%d15, 10
	st.b	[%a4] 42, %d15
	.loc 1 111 0
	mov	%d15, 1840
	st.w	[%a4] 36, %d15
	ret
.LFE0:
	.size	VL53L1_init_version, .-VL53L1_init_version
.section .text.VL53L1_init_ll_driver_state,"ax",@progbits
	.align 1
	.global	VL53L1_init_ll_driver_state
	.type	VL53L1_init_ll_driver_state, @function
VL53L1_init_ll_driver_state:
.LFB1:
	.loc 1 118 0
.LVL9:
	.loc 1 127 0
	mov	%d15, 0
	.loc 1 128 0
	mov	%d2, 2
	.loc 1 126 0
	st.b	[%a4] 44, %d4
	.loc 1 127 0
	st.b	[%a4] 45, %d15
	.loc 1 128 0
	st.b	[%a4] 46, %d2
	.loc 1 129 0
	st.b	[%a4] 47, %d15
	.loc 1 131 0
	st.b	[%a4] 48, %d4
	.loc 1 132 0
	st.b	[%a4] 49, %d15
	.loc 1 133 0
	st.b	[%a4] 50, %d2
	.loc 1 134 0
	st.b	[%a4] 51, %d15
	ret
.LFE1:
	.size	VL53L1_init_ll_driver_state, .-VL53L1_init_ll_driver_state
.section .text.VL53L1_update_ll_driver_rd_state,"ax",@progbits
	.align 1
	.global	VL53L1_update_ll_driver_rd_state
	.type	VL53L1_update_ll_driver_rd_state, @function
VL53L1_update_ll_driver_rd_state:
.LFB2:
	.loc 1 141 0
.LVL10:
	.loc 1 163 0
	ld.bu	%d15, [%a4] 460
	and	%d15, %d15, 240
	jz	%d15, .L24
	.loc 1 177 0
	ld.bu	%d15, [%a4] 49
	ne	%d2, %d15, 255
	jz	%d2, .L25
	.loc 1 180 0
	add	%d15, 1
	st.b	[%a4] 49, %d15
.L14:
	.loc 1 188 0
	ld.bu	%d15, [%a4] 50
	xor	%d15, %d15, 2
	st.b	[%a4] 50, %d15
	.loc 1 192 0
	ld.bu	%d15, [%a4] 48
	add	%d15, -3
	jlt.u	%d15, 6, .L26
.L15:
	.loc 1 236 0
	mov	%d15, 3
	.loc 1 239 0
	mov	%d2, 2
	.loc 1 236 0
	st.b	[%a4] 48, %d15
	.loc 1 238 0
	mov	%d15, 0
	.loc 1 239 0
	st.b	[%a4] 50, %d2
	.loc 1 253 0
	mov	%d2, 0
	.loc 1 238 0
	st.b	[%a4] 49, %d15
	.loc 1 240 0
	st.b	[%a4] 51, %d15
	.loc 1 253 0
	ret
.L24:
	.loc 1 166 0
	mov	%d2, 3
	.loc 1 167 0
	st.b	[%a4] 49, %d15
	.loc 1 169 0
	st.b	[%a4] 51, %d15
	.loc 1 166 0
	st.b	[%a4] 48, %d2
	.loc 1 168 0
	mov	%d2, 2
	st.b	[%a4] 50, %d2
	.loc 1 253 0
	mov	%d2, 0
	ret
.L26:
	.loc 1 192 0
	movh.a	%a15, hi:.L17
	lea	%a15, [%a15] lo:.L17
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L17:
	.code32
	j	.L16
	.code32
	j	.L15
	.code32
	j	.L15
	.code32
	j	.L18
	.code32
	j	.L23
	.code32
	j	.L20
.L20:
	.loc 1 227 0
	ld.bu	%d15, [%a4] 51
	xor	%d15, %d15, 1
	st.b	[%a4] 51, %d15
.L23:
	.loc 1 229 0
	mov	%d15, 8
	.loc 1 253 0
	mov	%d2, 0
	.loc 1 229 0
	st.b	[%a4] 48, %d15
	.loc 1 253 0
	ret
.L25:
	.loc 1 178 0
	mov	%d15, -128
	st.b	[%a4] 49, %d15
	j	.L14
.L18:
	.loc 1 212 0
	mov	%d15, 0
	.loc 1 253 0
	mov	%d2, 0
	.loc 1 212 0
	st.b	[%a4] 49, %d15
	.loc 1 213 0
	mov	%d15, 8
	st.b	[%a4] 48, %d15
	.loc 1 253 0
	ret
.L16:
	.loc 1 196 0
	ld.bu	%d15, [%a4] 454
	jz.t	%d15, 1, .L21
	.loc 1 198 0
	mov	%d15, 6
	st.b	[%a4] 48, %d15
.L22:
	.loc 1 205 0
	mov	%d15, 0
	.loc 1 253 0
	mov	%d2, 0
	.loc 1 205 0
	st.b	[%a4] 49, %d15
	.loc 1 206 0
	st.b	[%a4] 51, %d15
	.loc 1 253 0
	ret
.L21:
	.loc 1 201 0
	mov	%d15, 8
	st.b	[%a4] 48, %d15
	j	.L22
.LFE2:
	.size	VL53L1_update_ll_driver_rd_state, .-VL53L1_update_ll_driver_rd_state
.section .text.VL53L1_check_ll_driver_rd_state,"ax",@progbits
	.align 1
	.global	VL53L1_check_ll_driver_rd_state
	.type	VL53L1_check_ll_driver_rd_state, @function
VL53L1_check_ll_driver_rd_state:
.LFB3:
	.loc 1 258 0
.LVL11:
	.loc 1 295 0
	ld.bu	%d15, [%a4] 460
	.loc 1 284 0
	ld.bu	%d5, [%a4] 463
.LVL12:
	.loc 1 287 0
	ld.bu	%d4, [%a4] 465
.LVL13:
	.loc 1 290 0
	ld.bu	%d3, [%a4] 462
.LVL14:
	.loc 1 266 0
	mov	%d2, 0
	.loc 1 295 0
	jz.t	%d15, 5, .L28
	.loc 1 307 0
	ld.bu	%d15, [%a4] 48
	jeq	%d15, 6, .L35
	.loc 1 315 0
	ld.bu	%d15, [%a4] 49
	.loc 1 316 0
	eq	%d4, %d15, %d4
	.loc 1 290 0
	and	%d15, %d3, 32
	.loc 1 323 0
	ld.bu	%d3, [%a4] 50
.LVL15:
	cmov	%d15, %d15, 2
	.loc 1 316 0
	sel	%d2, %d4, %d2, -18
.LVL16:
	.loc 1 324 0
	eq	%d15, %d3, %d15
	sel	%d2, %d15, %d2, -19
.LVL17:
.L28:
	.loc 1 347 0
	ret
.LVL18:
.L35:
	.loc 1 310 0
	and	%d5, %d5, 31
.LVL19:
	eq	%d5, %d5, 18
	.loc 1 312 0
	sel	%d2, %d5, %d2, -17
	ret
.LFE3:
	.size	VL53L1_check_ll_driver_rd_state, .-VL53L1_check_ll_driver_rd_state
.section .text.VL53L1_update_ll_driver_cfg_state,"ax",@progbits
	.align 1
	.global	VL53L1_update_ll_driver_cfg_state
	.type	VL53L1_update_ll_driver_cfg_state, @function
VL53L1_update_ll_driver_cfg_state:
.LFB4:
	.loc 1 352 0
.LVL20:
	.loc 1 371 0
	ld.bu	%d15, [%a4] 460
	and	%d15, %d15, 240
	jz	%d15, .L46
	.loc 1 385 0
	ld.bu	%d15, [%a4] 45
	ne	%d2, %d15, 255
	jz	%d2, .L47
	.loc 1 388 0
	add	%d15, 1
	st.b	[%a4] 45, %d15
.L40:
	.loc 1 395 0
	ld.bu	%d15, [%a4] 46
	xor	%d15, %d15, 2
	st.b	[%a4] 46, %d15
	.loc 1 401 0
	ld.bu	%d15, [%a4] 44
	jeq	%d15, 3, .L42
	jne	%d15, 4, .L48
	.loc 1 413 0
	ld.bu	%d15, [%a4] 47
	.loc 1 435 0
	mov	%d2, 0
	.loc 1 413 0
	xor	%d15, %d15, 1
	st.b	[%a4] 47, %d15
	.loc 1 435 0
	ret
.L46:
	.loc 1 374 0
	mov	%d2, 3
	.loc 1 375 0
	st.b	[%a4] 45, %d15
	.loc 1 377 0
	st.b	[%a4] 47, %d15
	.loc 1 374 0
	st.b	[%a4] 44, %d2
	.loc 1 376 0
	mov	%d2, 2
	st.b	[%a4] 46, %d2
	.loc 1 435 0
	mov	%d2, 0
	ret
.L48:
	.loc 1 419 0
	mov	%d15, 3
	.loc 1 421 0
	mov	%d2, 2
	.loc 1 419 0
	st.b	[%a4] 44, %d15
	.loc 1 420 0
	mov	%d15, 0
	.loc 1 421 0
	st.b	[%a4] 46, %d2
	.loc 1 435 0
	mov	%d2, 0
	.loc 1 420 0
	st.b	[%a4] 45, %d15
	.loc 1 422 0
	st.b	[%a4] 47, %d15
	.loc 1 435 0
	ret
.L42:
	.loc 1 405 0
	ld.bu	%d15, [%a4] 47
	.loc 1 435 0
	mov	%d2, 0
	.loc 1 405 0
	xor	%d15, %d15, 1
	st.b	[%a4] 47, %d15
	.loc 1 406 0
	mov	%d15, 1
	st.b	[%a4] 45, %d15
	.loc 1 408 0
	mov	%d15, 4
	st.b	[%a4] 44, %d15
	.loc 1 435 0
	ret
.L47:
	.loc 1 386 0
	mov	%d15, -128
	st.b	[%a4] 45, %d15
	j	.L40
.LFE4:
	.size	VL53L1_update_ll_driver_cfg_state, .-VL53L1_update_ll_driver_cfg_state
.section .text.VL53L1_copy_rtn_good_spads_to_buffer,"ax",@progbits
	.align 1
	.global	VL53L1_copy_rtn_good_spads_to_buffer
	.type	VL53L1_copy_rtn_good_spads_to_buffer, @function
VL53L1_copy_rtn_good_spads_to_buffer:
.LFB5:
	.loc 1 441 0
.LVL21:
	.loc 1 446 0
	ld.bu	%d15, [%a4] 16
	st.b	[%a5]0, %d15
	.loc 1 447 0
	ld.bu	%d15, [%a4] 17
	st.b	[%a5] 1, %d15
	.loc 1 448 0
	ld.bu	%d15, [%a4] 18
	st.b	[%a5] 2, %d15
	.loc 1 449 0
	ld.bu	%d15, [%a4] 19
	st.b	[%a5] 3, %d15
	.loc 1 450 0
	ld.bu	%d15, [%a4] 20
	st.b	[%a5] 4, %d15
	.loc 1 451 0
	ld.bu	%d15, [%a4] 21
	st.b	[%a5] 5, %d15
	.loc 1 452 0
	ld.bu	%d15, [%a4] 22
	st.b	[%a5] 6, %d15
	.loc 1 453 0
	ld.bu	%d15, [%a4] 23
	st.b	[%a5] 7, %d15
	.loc 1 454 0
	ld.bu	%d15, [%a4] 24
	st.b	[%a5] 8, %d15
	.loc 1 455 0
	ld.bu	%d15, [%a4] 25
	st.b	[%a5] 9, %d15
	.loc 1 456 0
	ld.bu	%d15, [%a4] 26
	st.b	[%a5] 10, %d15
	.loc 1 457 0
	ld.bu	%d15, [%a4] 27
	st.b	[%a5] 11, %d15
	.loc 1 458 0
	ld.bu	%d15, [%a4] 28
	st.b	[%a5] 12, %d15
	.loc 1 459 0
	ld.bu	%d15, [%a4] 29
	st.b	[%a5] 13, %d15
	.loc 1 460 0
	ld.bu	%d15, [%a4] 30
	st.b	[%a5] 14, %d15
	.loc 1 461 0
	ld.bu	%d15, [%a4] 31
	st.b	[%a5] 15, %d15
	.loc 1 462 0
	ld.bu	%d15, [%a4] 32
	st.b	[%a5] 16, %d15
	.loc 1 463 0
	ld.bu	%d15, [%a4] 33
	st.b	[%a5] 17, %d15
	.loc 1 464 0
	ld.bu	%d15, [%a4] 34
	st.b	[%a5] 18, %d15
	.loc 1 465 0
	ld.bu	%d15, [%a4] 35
	st.b	[%a5] 19, %d15
	.loc 1 466 0
	ld.bu	%d15, [%a4] 36
	st.b	[%a5] 20, %d15
	.loc 1 467 0
	ld.bu	%d15, [%a4] 37
	st.b	[%a5] 21, %d15
	.loc 1 468 0
	ld.bu	%d15, [%a4] 38
	st.b	[%a5] 22, %d15
	.loc 1 469 0
	ld.bu	%d15, [%a4] 39
	st.b	[%a5] 23, %d15
	.loc 1 470 0
	ld.bu	%d15, [%a4] 40
	st.b	[%a5] 24, %d15
	.loc 1 471 0
	ld.bu	%d15, [%a4] 41
	st.b	[%a5] 25, %d15
	.loc 1 472 0
	ld.bu	%d15, [%a4] 42
	st.b	[%a5] 26, %d15
	.loc 1 473 0
	ld.bu	%d15, [%a4] 43
	st.b	[%a5] 27, %d15
	.loc 1 474 0
	ld.bu	%d15, [%a4] 44
	st.b	[%a5] 28, %d15
	.loc 1 475 0
	ld.bu	%d15, [%a4] 45
	st.b	[%a5] 29, %d15
	.loc 1 476 0
	ld.bu	%d15, [%a4] 46
	st.b	[%a5] 30, %d15
	.loc 1 477 0
	ld.bu	%d15, [%a4] 47
	st.b	[%a5] 31, %d15
	ret
.LFE5:
	.size	VL53L1_copy_rtn_good_spads_to_buffer, .-VL53L1_copy_rtn_good_spads_to_buffer
.section .text.VL53L1_init_system_results,"ax",@progbits
	.align 1
	.global	VL53L1_init_system_results
	.type	VL53L1_init_system_results, @function
VL53L1_init_system_results:
.LFB6:
	.loc 1 483 0
.LVL22:
	.loc 1 489 0
	mov	%d15, -1
	st.b	[%a4]0, %d15
	.loc 1 490 0
	st.b	[%a4] 1, %d15
	.loc 1 491 0
	st.b	[%a4] 2, %d15
	.loc 1 492 0
	st.b	[%a4] 3, %d15
	.loc 1 494 0
	mov	%d15, -1
	st.h	[%a4] 4, %d15
	.loc 1 495 0
	st.h	[%a4] 6, %d15
	.loc 1 496 0
	st.h	[%a4] 8, %d15
	.loc 1 497 0
	st.h	[%a4] 10, %d15
	.loc 1 498 0
	st.h	[%a4] 12, %d15
	.loc 1 499 0
	st.h	[%a4] 14, %d15
	.loc 1 500 0
	st.h	[%a4] 16, %d15
	.loc 1 502 0
	st.h	[%a4] 18, %d15
	.loc 1 503 0
	st.h	[%a4] 20, %d15
	.loc 1 504 0
	st.h	[%a4] 22, %d15
	.loc 1 506 0
	st.h	[%a4] 24, %d15
	.loc 1 507 0
	st.h	[%a4] 26, %d15
	.loc 1 508 0
	st.h	[%a4] 28, %d15
	.loc 1 509 0
	st.h	[%a4] 30, %d15
	.loc 1 510 0
	st.h	[%a4] 32, %d15
	.loc 1 511 0
	st.h	[%a4] 34, %d15
	.loc 1 512 0
	st.h	[%a4] 36, %d15
	.loc 1 513 0
	st.h	[%a4] 38, %d15
	.loc 1 514 0
	st.h	[%a4] 40, %d15
	.loc 1 515 0
	st.b	[%a4] 42, %d15
	ret
.LFE6:
	.size	VL53L1_init_system_results, .-VL53L1_init_system_results
.section .text.VL53L1_i2c_encode_uint16_t,"ax",@progbits
	.align 1
	.global	VL53L1_i2c_encode_uint16_t
	.type	VL53L1_i2c_encode_uint16_t, @function
VL53L1_i2c_encode_uint16_t:
.LFB7:
	.loc 1 524 0
.LVL23:
	.loc 1 535 0
	mov	%d15, 0
	addi	%d3, %d5, -1
	jz	%d5, .L51
.LVL24:
.L55:
	sub	%d2, %d3, %d15
	.loc 1 536 0 discriminator 3
	addsc.a	%a15, %a4, %d2, 0
	add	%d15, 1
.LVL25:
	.loc 1 535 0 discriminator 3
	extr.u	%d2, %d15, 0, 16
	.loc 1 536 0 discriminator 3
	st.b	[%a15]0, %d4
	.loc 1 537 0 discriminator 3
	sh	%d4, -8
.LVL26:
	.loc 1 535 0 discriminator 3
	jlt.u	%d2, %d5, .L55
.LVL27:
.L51:
	ret
.LFE7:
	.size	VL53L1_i2c_encode_uint16_t, .-VL53L1_i2c_encode_uint16_t
.section .text.VL53L1_i2c_decode_uint16_t,"ax",@progbits
	.align 1
	.global	VL53L1_i2c_decode_uint16_t
	.type	VL53L1_i2c_decode_uint16_t, @function
VL53L1_i2c_decode_uint16_t:
.LFB8:
	.loc 1 544 0
.LVL28:
	.loc 1 550 0
	mov	%d2, 0
	.loc 1 552 0
	jz	%d4, .L58
	mov.d	%d3, %a4
	add	%d4, %d3
.LVL29:
	extr.u	%d4, %d4, 0, 16
.LVL30:
.L59:
	.loc 1 553 0
	mov.a	%a15, %d3
	sh	%d2, %d2, 8
.LVL31:
	ld.bu	%d15, [%a15]0
	add	%d3, 1
.LVL32:
	or	%d2, %d15
	.loc 1 552 0
	extr.u	%d15, %d3, 0, 16
	.loc 1 553 0
	extr.u	%d2, %d2, 0, 16
.LVL33:
	.loc 1 552 0
	jne	%d15, %d4, .L59
.LVL34:
.L58:
	.loc 1 557 0
	ret
.LFE8:
	.size	VL53L1_i2c_decode_uint16_t, .-VL53L1_i2c_decode_uint16_t
.section .text.VL53L1_i2c_encode_int16_t,"ax",@progbits
	.align 1
	.global	VL53L1_i2c_encode_int16_t
	.type	VL53L1_i2c_encode_int16_t, @function
VL53L1_i2c_encode_int16_t:
.LFB9:
	.loc 1 564 0
.LVL35:
	.loc 1 575 0
	mov	%d15, 0
	addi	%d3, %d5, -1
	jz	%d5, .L63
.LVL36:
.L67:
	sub	%d2, %d3, %d15
	.loc 1 576 0 discriminator 3
	addsc.a	%a15, %a4, %d2, 0
	add	%d15, 1
.LVL37:
	.loc 1 575 0 discriminator 3
	extr.u	%d2, %d15, 0, 16
	.loc 1 576 0 discriminator 3
	st.b	[%a15]0, %d4
	.loc 1 577 0 discriminator 3
	sha	%d4, -8
.LVL38:
	.loc 1 575 0 discriminator 3
	jlt.u	%d2, %d5, .L67
.LVL39:
.L63:
	ret
.LFE9:
	.size	VL53L1_i2c_encode_int16_t, .-VL53L1_i2c_encode_int16_t
.section .text.VL53L1_i2c_decode_int16_t,"ax",@progbits
	.align 1
	.global	VL53L1_i2c_decode_int16_t
	.type	VL53L1_i2c_decode_int16_t, @function
VL53L1_i2c_decode_int16_t:
.LFB10:
	.loc 1 584 0
.LVL40:
	.loc 1 593 0
	ld.bu	%d15, [%a4]0
	extr	%d2, %d15, 7, 1
.LVL41:
	.loc 1 597 0
	jz	%d4, .L70
	mov.d	%d3, %a4
	add	%d4, %d3
.LVL42:
	extr.u	%d4, %d4, 0, 16
	j	.L71
.LVL43:
.L75:
	ld.bu	%d15, [%a4] 1
	.loc 1 598 0
	mov.a	%a4, %d3
.LVL44:
.L71:
	sh	%d2, %d2, 8
.LVL45:
	extr	%d2, %d2, 0, 16
	mov.d	%d3, %a4
	add	%d3, 1
.LVL46:
	or	%d2, %d15
.LVL47:
	.loc 1 597 0
	extr.u	%d15, %d3, 0, 16
	jne	%d15, %d4, .L75
.LVL48:
.L70:
	.loc 1 602 0
	ret
.LFE10:
	.size	VL53L1_i2c_decode_int16_t, .-VL53L1_i2c_decode_int16_t
.section .text.VL53L1_i2c_encode_uint32_t,"ax",@progbits
	.align 1
	.global	VL53L1_i2c_encode_uint32_t
	.type	VL53L1_i2c_encode_uint32_t, @function
VL53L1_i2c_encode_uint32_t:
.LFB11:
	.loc 1 608 0
.LVL49:
	.loc 1 619 0
	mov	%d15, 0
	addi	%d3, %d5, -1
	jz	%d5, .L76
.LVL50:
.L80:
	sub	%d2, %d3, %d15
	.loc 1 620 0 discriminator 3
	addsc.a	%a15, %a4, %d2, 0
	add	%d15, 1
.LVL51:
	.loc 1 619 0 discriminator 3
	extr.u	%d2, %d15, 0, 16
	.loc 1 620 0 discriminator 3
	st.b	[%a15]0, %d4
	.loc 1 621 0 discriminator 3
	sh	%d4, -8
.LVL52:
	.loc 1 619 0 discriminator 3
	jlt.u	%d2, %d5, .L80
.L76:
	ret
.LFE11:
	.size	VL53L1_i2c_encode_uint32_t, .-VL53L1_i2c_encode_uint32_t
.section .text.VL53L1_i2c_decode_uint32_t,"ax",@progbits
	.align 1
	.global	VL53L1_i2c_decode_uint32_t
	.type	VL53L1_i2c_decode_uint32_t, @function
VL53L1_i2c_decode_uint32_t:
.LFB12:
	.loc 1 628 0
.LVL53:
	.loc 1 634 0
	mov	%d2, 0
	.loc 1 636 0
	jz	%d4, .L83
	mov.d	%d3, %a4
	add	%d4, %d3
.LVL54:
	extr.u	%d4, %d4, 0, 16
.LVL55:
.L84:
	.loc 1 637 0
	mov.a	%a15, %d3
	sh	%d2, %d2, 8
.LVL56:
	ld.bu	%d15, [%a15]0
	add	%d3, 1
.LVL57:
	or	%d2, %d15
.LVL58:
	.loc 1 636 0
	extr.u	%d15, %d3, 0, 16
	jne	%d15, %d4, .L84
.LVL59:
.L83:
	.loc 1 641 0
	ret
.LFE12:
	.size	VL53L1_i2c_decode_uint32_t, .-VL53L1_i2c_decode_uint32_t
.section .text.VL53L1_i2c_decode_with_mask,"ax",@progbits
	.align 1
	.global	VL53L1_i2c_decode_with_mask
	.type	VL53L1_i2c_decode_with_mask, @function
VL53L1_i2c_decode_with_mask:
.LFB13:
	.loc 1 650 0
.LVL60:
	.loc 1 659 0
	mov	%d2, 0
	jz	%d4, .L89
	mov.d	%d2, %a4
	add	%d4, %d2
.LVL61:
	extr.u	%d4, %d4, 0, 16
	mov	%d15, 0
.LVL62:
.L90:
	.loc 1 660 0
	mov.a	%a15, %d2
	sh	%d15, %d15, 8
.LVL63:
	ld.bu	%d3, [%a15]0
	add	%d2, 1
.LVL64:
	or	%d15, %d3
.LVL65:
	.loc 1 659 0
	extr.u	%d3, %d2, 0, 16
	jne	%d3, %d4, .L90
	and	%d2, %d15, %d5
.LVL66:
.L89:
	.loc 1 666 0
	rsub	%d15, %d6, 0
	sh	%d15, %d2, %d15
	mov	%d2, %d15
.LVL67:
	.loc 1 673 0
	add	%d2, %d7
.LVL68:
	ret
.LFE13:
	.size	VL53L1_i2c_decode_with_mask, .-VL53L1_i2c_decode_with_mask
.section .text.VL53L1_i2c_encode_int32_t,"ax",@progbits
	.align 1
	.global	VL53L1_i2c_encode_int32_t
	.type	VL53L1_i2c_encode_int32_t, @function
VL53L1_i2c_encode_int32_t:
.LFB14:
	.loc 1 680 0
.LVL69:
	.loc 1 691 0
	mov	%d15, 0
	addi	%d3, %d5, -1
	jz	%d5, .L97
.LVL70:
.L101:
	sub	%d2, %d3, %d15
	.loc 1 692 0 discriminator 3
	addsc.a	%a15, %a4, %d2, 0
	add	%d15, 1
.LVL71:
	.loc 1 691 0 discriminator 3
	extr.u	%d2, %d15, 0, 16
	.loc 1 692 0 discriminator 3
	st.b	[%a15]0, %d4
	.loc 1 693 0 discriminator 3
	sha	%d4, -8
.LVL72:
	.loc 1 691 0 discriminator 3
	jlt.u	%d2, %d5, .L101
.L97:
	ret
.LFE14:
	.size	VL53L1_i2c_encode_int32_t, .-VL53L1_i2c_encode_int32_t
.section .text.VL53L1_i2c_decode_int32_t,"ax",@progbits
	.align 1
	.global	VL53L1_i2c_decode_int32_t
	.type	VL53L1_i2c_decode_int32_t, @function
VL53L1_i2c_decode_int32_t:
.LFB15:
	.loc 1 700 0
.LVL73:
	.loc 1 709 0
	ld.bu	%d15, [%a4]0
	extr	%d2, %d15, 7, 1
.LVL74:
	.loc 1 713 0
	jz	%d4, .L104
	mov.d	%d3, %a4
	add	%d4, %d3
.LVL75:
	extr.u	%d4, %d4, 0, 16
	j	.L105
.LVL76:
.L109:
	ld.bu	%d15, [%a4] 1
	.loc 1 714 0
	mov.a	%a4, %d3
.LVL77:
.L105:
	mov.d	%d3, %a4
	sh	%d2, %d2, 8
.LVL78:
	add	%d3, 1
.LVL79:
	or	%d2, %d15
.LVL80:
	.loc 1 713 0
	extr.u	%d15, %d3, 0, 16
	jne	%d15, %d4, .L109
.LVL81:
.L104:
	.loc 1 718 0
	ret
.LFE15:
	.size	VL53L1_i2c_decode_int32_t, .-VL53L1_i2c_decode_int32_t
.section .text.VL53L1_start_test,"ax",@progbits
	.align 1
	.global	VL53L1_start_test
	.type	VL53L1_start_test, @function
VL53L1_start_test:
.LFB16:
	.loc 1 725 0
.LVL82:
	.loc 1 725 0
	mov	%d5, %d4
	.loc 1 735 0
	mov	%d4, 39
.LVL83:
	j	VL53L1_WrByte
.LVL84:
.LFE16:
	.size	VL53L1_start_test, .-VL53L1_start_test
.section .text.VL53L1_set_firmware_enable_register,"ax",@progbits
	.align 1
	.global	VL53L1_set_firmware_enable_register
	.type	VL53L1_set_firmware_enable_register, @function
VL53L1_set_firmware_enable_register:
.LFB17:
	.loc 1 751 0
.LVL85:
	.loc 1 751 0
	mov	%d5, %d4
	.loc 1 759 0
	st.b	[%a4] 458, %d4
	.loc 1 761 0
	mov	%d4, 133
.LVL86:
	j	VL53L1_WrByte
.LVL87:
.LFE17:
	.size	VL53L1_set_firmware_enable_register, .-VL53L1_set_firmware_enable_register
.section .text.VL53L1_enable_firmware,"ax",@progbits
	.align 1
	.global	VL53L1_enable_firmware
	.type	VL53L1_enable_firmware, @function
VL53L1_enable_firmware:
.LFB18:
	.loc 1 771 0
.LVL88:
.LBB72:
.LBB73:
	.loc 1 759 0
	mov	%d15, 1
	.loc 1 761 0
	mov	%d4, 133
	mov	%d5, 1
	.loc 1 759 0
	st.b	[%a4] 458, %d15
	.loc 1 761 0
	j	VL53L1_WrByte
.LVL89:
.LBE73:
.LBE72:
.LFE18:
	.size	VL53L1_enable_firmware, .-VL53L1_enable_firmware
.section .text.VL53L1_disable_firmware,"ax",@progbits
	.align 1
	.global	VL53L1_disable_firmware
	.type	VL53L1_disable_firmware, @function
VL53L1_disable_firmware:
.LFB19:
	.loc 1 790 0
.LVL90:
.LBB74:
.LBB75:
	.loc 1 759 0
	mov	%d15, 0
	.loc 1 761 0
	mov	%e4, 133
	.loc 1 759 0
	st.b	[%a4] 458, %d15
	.loc 1 761 0
	j	VL53L1_WrByte
.LVL91:
.LBE75:
.LBE74:
.LFE19:
	.size	VL53L1_disable_firmware, .-VL53L1_disable_firmware
.section .text.VL53L1_set_powerforce_register,"ax",@progbits
	.align 1
	.global	VL53L1_set_powerforce_register
	.type	VL53L1_set_powerforce_register, @function
VL53L1_set_powerforce_register:
.LFB20:
	.loc 1 810 0
.LVL92:
	.loc 1 810 0
	mov	%d5, %d4
	.loc 1 818 0
	st.b	[%a4] 456, %d4
	.loc 1 820 0
	mov	%d4, 131
.LVL93:
	j	VL53L1_WrByte
.LVL94:
.LFE20:
	.size	VL53L1_set_powerforce_register, .-VL53L1_set_powerforce_register
.section .text.VL53L1_enable_powerforce,"ax",@progbits
	.align 1
	.global	VL53L1_enable_powerforce
	.type	VL53L1_enable_powerforce, @function
VL53L1_enable_powerforce:
.LFB21:
	.loc 1 831 0
.LVL95:
.LBB76:
.LBB77:
	.loc 1 818 0
	mov	%d15, 1
	.loc 1 820 0
	mov	%d4, 131
	mov	%d5, 1
	.loc 1 818 0
	st.b	[%a4] 456, %d15
	.loc 1 820 0
	j	VL53L1_WrByte
.LVL96:
.LBE77:
.LBE76:
.LFE21:
	.size	VL53L1_enable_powerforce, .-VL53L1_enable_powerforce
.section .text.VL53L1_disable_powerforce,"ax",@progbits
	.align 1
	.global	VL53L1_disable_powerforce
	.type	VL53L1_disable_powerforce, @function
VL53L1_disable_powerforce:
.LFB22:
	.loc 1 850 0
.LVL97:
.LBB78:
.LBB79:
	.loc 1 818 0
	mov	%d15, 0
	.loc 1 820 0
	mov	%e4, 131
	.loc 1 818 0
	st.b	[%a4] 456, %d15
	.loc 1 820 0
	j	VL53L1_WrByte
.LVL98:
.LBE79:
.LBE78:
.LFE22:
	.size	VL53L1_disable_powerforce, .-VL53L1_disable_powerforce
.section .text.VL53L1_clear_interrupt,"ax",@progbits
	.align 1
	.global	VL53L1_clear_interrupt
	.type	VL53L1_clear_interrupt, @function
VL53L1_clear_interrupt:
.LFB23:
	.loc 1 869 0
.LVL99:
	.loc 1 879 0
	mov	%d15, 1
	.loc 1 881 0
	mov	%d4, 134
	mov	%d5, 1
	.loc 1 879 0
	st.b	[%a4] 459, %d15
	.loc 1 881 0
	j	VL53L1_WrByte
.LVL100:
.LFE23:
	.size	VL53L1_clear_interrupt, .-VL53L1_clear_interrupt
.section .text.VL53L1_calc_macro_period_us,"ax",@progbits
	.align 1
	.global	VL53L1_calc_macro_period_us
	.type	VL53L1_calc_macro_period_us, @function
VL53L1_calc_macro_period_us:
.LFB24:
	.loc 1 924 0
.LVL101:
	.loc 1 924 0
	mov	%d8, %d5
	.loc 1 942 0
	call	VL53L1_calc_pll_period_us
.LVL102:
	.loc 1 948 0
	mov	%d4, %d8
	.loc 1 942 0
	mov	%d15, %d2
.LVL103:
	.loc 1 948 0
	call	VL53L1_decode_vcsel_period
.LVL104:
	.loc 1 962 0
	mov	%d3, 2304
	mul	%d15, %d3
.LVL105:
	.loc 1 965 0
	sh	%d15, -6
.LVL106:
	.loc 1 967 0
	mul	%d2, %d15
.LVL107:
	.loc 1 985 0
	sh	%d2, -6
.LVL108:
	ret
.LFE24:
	.size	VL53L1_calc_macro_period_us, .-VL53L1_calc_macro_period_us
.section .text.VL53L1_calc_range_ignore_threshold,"ax",@progbits
	.align 1
	.global	VL53L1_calc_range_ignore_threshold
	.type	VL53L1_calc_range_ignore_threshold, @function
VL53L1_calc_range_ignore_threshold:
.LFB25:
	.loc 1 993 0
.LVL109:
	.loc 1 1018 0
	movh	%d2, 4194
	sh	%d4, 4
.LVL110:
	addi	%d2, %d2, 19923
	mul	%e2, %d4, %d2
	sha	%d4, %d4, -31
	mov	%d0, 0
	sha	%d15, %d3, -6
	sub	%d4, %d15, %d4
.LVL111:
	.loc 1 1020 0
	jltz	%d5, .L126
.LVL112:
	mov	%d3, 0
	.loc 1 1024 0
	jltz	%d6, .L127
.LVL113:
.L121:
	.loc 1 1032 0
	add	%d6, %d0, %d3
	.loc 1 1036 0
	movh	%d2, 4194
	.loc 1 1032 0
	sh	%d5, %d6, 5
.LVL114:
	.loc 1 1036 0
	addi	%d2, %d2, 19923
	mul	%e2, %d5, %d2
	sha	%d5, %d5, -31
.LVL115:
	sha	%d3, -6
	sub	%d5, %d3, %d5
.LVL116:
	.loc 1 1040 0
	add	%d5, %d4
.LVL117:
	.loc 1 1044 0
	mul	%d7, %d5
.LVL118:
	.loc 1 1065 0
	movh	%d3, 1
	.loc 1 1046 0
	addi	%d2, %d7, 16
	ge	%d15, %d2, 0
	addi	%d7, %d7, 47
	sel	%d15, %d15, %d2, %d7
	sha	%d15, -5
.LVL119:
	.loc 1 1053 0
	extr.u	%d2, %d15, 0, 16
.LVL120:
	.loc 1 1065 0
	lt	%d15, %d15, %d3
.LVL121:
	mov.u	%d3, 65535
	cmovn	%d2, %d15, %d3
.LVL122:
	ret
.LVL123:
.L126:
	.loc 1 1021 0
	rsub	%d0, %d5, 0
	extr	%d0, %d0, 0, 16
.LVL124:
	mov	%d3, 0
	.loc 1 1024 0
	jgez	%d6, .L121
.L127:
.LVL125:
	.loc 1 1025 0
	rsub	%d6
.LVL126:
	extr	%d3, %d6, 0, 16
	j	.L121
.LFE25:
	.size	VL53L1_calc_range_ignore_threshold, .-VL53L1_calc_range_ignore_threshold
.section .text.VL53L1_calc_timeout_mclks,"ax",@progbits
	.align 1
	.global	VL53L1_calc_timeout_mclks
	.type	VL53L1_calc_timeout_mclks, @function
VL53L1_calc_timeout_mclks:
.LFB26:
	.loc 1 1071 0
.LVL127:
	.loc 1 1086 0
	sh	%d4, %d4, 12
.LVL128:
	sh	%d2, %d5, -1
	add	%d2, %d4
	.loc 1 1085 0
	div.u	%e2, %d2, %d5
	.loc 1 1092 0
	ret
.LFE26:
	.size	VL53L1_calc_timeout_mclks, .-VL53L1_calc_timeout_mclks
.section .text.VL53L1_calc_encoded_timeout,"ax",@progbits
	.align 1
	.global	VL53L1_calc_encoded_timeout
	.type	VL53L1_calc_encoded_timeout, @function
VL53L1_calc_encoded_timeout:
.LFB27:
	.loc 1 1098 0
.LVL129:
.LBB80:
.LBB81:
	.loc 1 1086 0
	sh	%d15, %d5, -1
	sh	%d4, %d4, 12
.LVL130:
	add	%d4, %d15
	.loc 1 1085 0
	div.u	%e4, %d4, %d5
.LVL131:
.LBE81:
.LBE80:
.LBB82:
.LBB83:
	.loc 1 1242 0
	jnz	%d4, .L131
.LVL132:
.LBE83:
.LBE82:
	.loc 1 1131 0
	mov	%d2, 0
	ret
.LVL133:
.L131:
.LBB85:
.LBB84:
	j	VL53L1_encode_timeout.part.0
.LVL134:
.LBE84:
.LBE85:
.LFE27:
	.size	VL53L1_calc_encoded_timeout, .-VL53L1_calc_encoded_timeout
.section .text.VL53L1_calc_timeout_us,"ax",@progbits
	.align 1
	.global	VL53L1_calc_timeout_us
	.type	VL53L1_calc_timeout_us, @function
VL53L1_calc_timeout_us:
.LFB28:
	.loc 1 1137 0
.LVL135:
	.loc 1 1153 0
	mov	%e2, 2048
	madd.u	%e4, %e2, %d4, %d5
.LVL136:
	.loc 1 1154 0
	dextr	%d2, %d5, %d4, 20
	.loc 1 1171 0
	ret
.LFE28:
	.size	VL53L1_calc_timeout_us, .-VL53L1_calc_timeout_us
.section .text.VL53L1_calc_crosstalk_plane_offset_with_margin,"ax",@progbits
	.align 1
	.global	VL53L1_calc_crosstalk_plane_offset_with_margin
	.type	VL53L1_calc_crosstalk_plane_offset_with_margin, @function
VL53L1_calc_crosstalk_plane_offset_with_margin:
.LFB29:
	.loc 1 1176 0
.LVL137:
	.loc 1 1182 0
	add	%d4, %d5
.LVL138:
	.loc 1 1200 0
	mov	%d15, -1
	max	%d2, %d4, 0
	sh	%d15, %d15, -14
	min.u	%d2, %d2, %d15
	ret
.LFE29:
	.size	VL53L1_calc_crosstalk_plane_offset_with_margin, .-VL53L1_calc_crosstalk_plane_offset_with_margin
.section .text.VL53L1_calc_decoded_timeout_us,"ax",@progbits
	.align 1
	.global	VL53L1_calc_decoded_timeout_us
	.type	VL53L1_calc_decoded_timeout_us, @function
VL53L1_calc_decoded_timeout_us:
.LFB30:
	.loc 1 1205 0
.LVL139:
.LBB86:
.LBB87:
	.loc 1 1267 0
	and	%d2, %d4, 255
	.loc 1 1268 0
	sh	%d4, -8
.LVL140:
	sh	%d2, %d2, %d4
.LBE87:
.LBE86:
.LBB89:
.LBB90:
	.loc 1 1153 0
	mov	%e6, 2048
.LBE90:
.LBE89:
.LBB92:
.LBB88:
	.loc 1 1267 0
	add	%d2, 1
.LVL141:
.LBE88:
.LBE92:
.LBB93:
.LBB91:
	.loc 1 1153 0
	madd.u	%e2, %e6, %d2, %d5
.LVL142:
	.loc 1 1154 0
	dextr	%d2, %d3, %d2, 20
.LVL143:
.LBE91:
.LBE93:
	.loc 1 1229 0
	ret
.LFE30:
	.size	VL53L1_calc_decoded_timeout_us, .-VL53L1_calc_decoded_timeout_us
.section .text.VL53L1_encode_timeout,"ax",@progbits
	.align 1
	.global	VL53L1_encode_timeout
	.type	VL53L1_encode_timeout, @function
VL53L1_encode_timeout:
.LFB31:
	.loc 1 1233 0
.LVL144:
	.loc 1 1242 0
	jz	%d4, .L136
	j	VL53L1_encode_timeout.part.0
.LVL145:
.L136:
	.loc 1 1255 0
	mov	%d2, 0
	ret
.LFE31:
	.size	VL53L1_encode_timeout, .-VL53L1_encode_timeout
.section .text.VL53L1_decode_timeout,"ax",@progbits
	.align 1
	.global	VL53L1_decode_timeout
	.type	VL53L1_decode_timeout, @function
VL53L1_decode_timeout:
.LFB32:
	.loc 1 1259 0
.LVL146:
	.loc 1 1267 0
	and	%d2, %d4, 255
	.loc 1 1268 0
	sh	%d4, -8
.LVL147:
	sh	%d2, %d2, %d4
	.loc 1 1271 0
	add	%d2, 1
	ret
.LFE32:
	.size	VL53L1_decode_timeout, .-VL53L1_decode_timeout
.section .text.VL53L1_calc_timeout_register_values,"ax",@progbits
	.align 1
	.global	VL53L1_calc_timeout_register_values
	.type	VL53L1_calc_timeout_register_values, @function
VL53L1_calc_timeout_register_values:
.LFB33:
	.loc 1 1281 0
.LVL148:
	.loc 1 1298 0
	mov	%d2, -15
	.loc 1 1297 0
	jz	%d7, .L139
	mov	%e10, %d5, %d6
	.loc 1 1301 0
	ld.bu	%d5, [%a5] 6
.LVL149:
	mov	%d12, %d4
	mov	%d4, %d7
.LVL150:
	mov.aa	%a12, %a4
	mov.aa	%a15, %a5
	mov	%d8, %d7
	call	VL53L1_calc_macro_period_us
.LVL151:
	mov	%d15, %d2
.LVL152:
.LBB94:
.LBB95:
	.loc 1 1086 0
	sh	%d9, %d2, -1
	sh	%d2, %d12, 12
.LVL153:
	add	%d2, %d9
	.loc 1 1085 0
	div.u	%e2, %d2, %d15
.LVL154:
.LBE95:
.LBE94:
.LBB96:
.LBB97:
.LBB98:
.LBB99:
	.loc 1 1086 0
	sh	%d11, %d11, 12
.LVL155:
	add	%d0, %d9, %d11
	sat.bu	%d2, %d2
.LVL156:
	.loc 1 1085 0
	div.u	%e4, %d0, %d15
.LBE99:
.LBE98:
.LBB100:
.LBB101:
	.loc 1 1242 0
	mov	%d6, 0
.LBE101:
.LBE100:
.LBE97:
.LBE96:
	.loc 1 1317 0
	st.b	[%a12] 7, %d2
.LVL157:
.LBB108:
.LBB106:
.LBB104:
.LBB102:
	.loc 1 1242 0
	mov	%d2, 0
	jnz	%d4, .L154
.LVL158:
.L140:
.LBE102:
.LBE104:
.LBE106:
.LBE108:
.LBB109:
.LBB110:
.LBB111:
.LBB112:
	.loc 1 1086 0
	sh	%d10, %d10, 12
.LVL159:
.LBE112:
.LBE111:
.LBE110:
.LBE109:
	.loc 1 1325 0
	st.b	[%a15]0, %d6
.LBB122:
.LBB119:
.LBB114:
.LBB113:
	.loc 1 1086 0
	add	%d6, %d9, %d10
	.loc 1 1085 0
	div.u	%e4, %d6, %d15
.LBE113:
.LBE114:
.LBE119:
.LBE122:
	.loc 1 1327 0
	st.b	[%a15] 1, %d2
.LVL160:
.LBB123:
.LBB120:
.LBB115:
.LBB116:
	.loc 1 1242 0
	mov	%e2, 0
	jnz	%d4, .L155
.LVL161:
.L141:
.LBE116:
.LBE115:
.LBE120:
.LBE123:
	.loc 1 1342 0
	ld.bu	%d5, [%a15] 9
	mov	%d4, %d8
	.loc 1 1336 0
	st.b	[%a15] 4, %d3
	.loc 1 1338 0
	st.b	[%a15] 5, %d2
	.loc 1 1342 0
	call	VL53L1_calc_macro_period_us
.LVL162:
.LBB124:
.LBB125:
.LBB126:
.LBB127:
	.loc 1 1086 0
	sh	%d8, %d2, -1
	add	%d4, %d8, %d11
	.loc 1 1085 0
	div.u	%e4, %d4, %d2
.LBE127:
.LBE126:
.LBE125:
.LBE124:
	.loc 1 1342 0
	mov	%d15, %d2
.LVL163:
.LBB134:
.LBB132:
.LBB128:
.LBB129:
	.loc 1 1242 0
	mov	%d7, 0
	mov	%d2, 0
.LVL164:
	jnz	%d4, .L156
.LVL165:
.L142:
.LBE129:
.LBE128:
.LBE132:
.LBE134:
.LBB135:
.LBB136:
.LBB137:
.LBB138:
	.loc 1 1086 0
	add	%d10, %d8
	.loc 1 1085 0
	div.u	%e4, %d10, %d15
.LBE138:
.LBE137:
.LBE136:
.LBE135:
	.loc 1 1355 0
	st.b	[%a15] 3, %d2
.LVL166:
	.loc 1 1353 0
	st.b	[%a15] 2, %d7
.LBB145:
.LBB143:
.LBB139:
.LBB140:
	.loc 1 1242 0
	mov	%e2, 0
	jnz	%d4, .L157
.LVL167:
.L143:
.LBE140:
.LBE139:
.LBE143:
.LBE145:
	.loc 1 1365 0
	st.b	[%a15] 8, %d2
	.loc 1 1363 0
	st.b	[%a15] 7, %d3
	.loc 1 1289 0
	mov	%d2, 0
.LVL168:
.L139:
	.loc 1 1373 0
	ret
.LVL169:
.L154:
.LBB146:
.LBB107:
.LBB105:
.LBB103:
	call	VL53L1_encode_timeout.part.0
.LVL170:
	extr.u	%d6, %d2, 8, 8
	and	%d2, %d2, 255
	j	.L140
.LVL171:
.L157:
.LBE103:
.LBE105:
.LBE107:
.LBE146:
.LBB147:
.LBB144:
.LBB142:
.LBB141:
	call	VL53L1_encode_timeout.part.0
.LVL172:
	extr.u	%d3, %d2, 8, 8
	and	%d2, %d2, 255
	j	.L143
.LVL173:
.L156:
.LBE141:
.LBE142:
.LBE144:
.LBE147:
.LBB148:
.LBB133:
.LBB131:
.LBB130:
	call	VL53L1_encode_timeout.part.0
.LVL174:
	extr.u	%d7, %d2, 8, 8
	and	%d2, %d2, 255
	j	.L142
.LVL175:
.L155:
.LBE130:
.LBE131:
.LBE133:
.LBE148:
.LBB149:
.LBB121:
.LBB118:
.LBB117:
	call	VL53L1_encode_timeout.part.0
.LVL176:
	extr.u	%d3, %d2, 8, 8
	and	%d2, %d2, 255
	j	.L141
.LBE117:
.LBE118:
.LBE121:
.LBE149:
.LFE33:
	.size	VL53L1_calc_timeout_register_values, .-VL53L1_calc_timeout_register_values
.section .text.VL53L1_encode_vcsel_period,"ax",@progbits
	.align 1
	.global	VL53L1_encode_vcsel_period
	.type	VL53L1_encode_vcsel_period, @function
VL53L1_encode_vcsel_period:
.LFB34:
	.loc 1 1377 0
.LVL177:
	.loc 1 1385 0
	sh	%d4, -1
.LVL178:
	addi	%d2, %d4, -1
	.loc 1 1388 0
	and	%d2, %d2, 255
	ret
.LFE34:
	.size	VL53L1_encode_vcsel_period, .-VL53L1_encode_vcsel_period
.section .text.VL53L1_decode_unsigned_integer,"ax",@progbits
	.align 1
	.global	VL53L1_decode_unsigned_integer
	.type	VL53L1_decode_unsigned_integer, @function
VL53L1_decode_unsigned_integer:
.LFB35:
	.loc 1 1394 0
.LVL179:
	.loc 1 1400 0
	mov	%d2, 0
	.loc 1 1402 0
	jz	%d4, .L160
	mov.aa	%a15, %a4
.LVL180:
.L161:
	.loc 1 1403 0 discriminator 3
	ld.bu	%d15, [%a15+]1
.LVL181:
	sh	%d2, %d2, 8
.LVL182:
	sub.a	%a2, %a15, %a4
	add	%d2, %d15
.LVL183:
	mov.d	%d15, %a2
	.loc 1 1402 0 discriminator 3
	and	%d15, 255
	jlt.u	%d15, %d4, .L161
.LVL184:
.L160:
	.loc 1 1407 0
	ret
.LFE35:
	.size	VL53L1_decode_unsigned_integer, .-VL53L1_decode_unsigned_integer
.section .text.VL53L1_encode_unsigned_integer,"ax",@progbits
	.align 1
	.global	VL53L1_encode_unsigned_integer
	.type	VL53L1_encode_unsigned_integer, @function
VL53L1_encode_unsigned_integer:
.LFB36:
	.loc 1 1414 0
.LVL185:
	.loc 1 1423 0
	mov	%d15, 0
	addi	%d3, %d5, -1
	jz	%d5, .L165
.LVL186:
.L169:
	sub	%d2, %d3, %d15
	.loc 1 1424 0 discriminator 3
	addsc.a	%a15, %a4, %d2, 0
	add	%d15, 1
.LVL187:
	st.b	[%a15]0, %d4
	.loc 1 1423 0 discriminator 3
	and	%d2, %d15, 255
	.loc 1 1425 0 discriminator 3
	sh	%d4, -8
.LVL188:
	.loc 1 1423 0 discriminator 3
	jlt.u	%d2, %d5, .L169
.L165:
	ret
.LFE36:
	.size	VL53L1_encode_unsigned_integer, .-VL53L1_encode_unsigned_integer
.section .text.VL53L1_spad_number_to_byte_bit_index,"ax",@progbits
	.align 1
	.global	VL53L1_spad_number_to_byte_bit_index
	.type	VL53L1_spad_number_to_byte_bit_index, @function
VL53L1_spad_number_to_byte_bit_index:
.LFB37:
	.loc 1 1435 0
.LVL189:
	.loc 1 1445 0
	sh	%d15, %d4, -3
	.loc 1 1446 0
	and	%d4, %d4, 7
.LVL190:
	.loc 1 1445 0
	st.b	[%a4]0, %d15
	.loc 1 1447 0
	mov	%d15, 1
	sh	%d15, %d15, %d4
	.loc 1 1446 0
	st.b	[%a5]0, %d4
	.loc 1 1447 0
	st.b	[%a6]0, %d15
	ret
.LFE37:
	.size	VL53L1_spad_number_to_byte_bit_index, .-VL53L1_spad_number_to_byte_bit_index
.section .text.VL53L1_encode_row_col,"ax",@progbits
	.align 1
	.global	VL53L1_encode_row_col
	.type	VL53L1_encode_row_col, @function
VL53L1_encode_row_col:
.LFB38:
	.loc 1 1456 0
.LVL191:
	.loc 1 1461 0
	jge.u	%d4, 8, .L175
	.loc 1 1464 0
	rsub	%d5, %d5, 15
.LVL192:
	madd	%d4, %d4, %d5, 8
.LVL193:
	st.b	[%a4]0, %d4
	ret
.LVL194:
.L175:
	.loc 1 1462 0
	sh	%d5, 3
.LVL195:
	addi	%d5, %d5, -113
	sub	%d4, %d5, %d4
.LVL196:
	st.b	[%a4]0, %d4
	ret
.LFE38:
	.size	VL53L1_encode_row_col, .-VL53L1_encode_row_col
.section .text.VL53L1_decode_zone_size,"ax",@progbits
	.align 1
	.global	VL53L1_decode_zone_size
	.type	VL53L1_decode_zone_size, @function
VL53L1_decode_zone_size:
.LFB39:
	.loc 1 1473 0
.LVL197:
	.loc 1 1484 0
	sh	%d15, %d4, -4
	.loc 1 1485 0
	and	%d4, %d4, 15
.LVL198:
	.loc 1 1484 0
	st.b	[%a5]0, %d15
	.loc 1 1485 0
	st.b	[%a4]0, %d4
	ret
.LFE39:
	.size	VL53L1_decode_zone_size, .-VL53L1_decode_zone_size
.section .text.VL53L1_encode_zone_size,"ax",@progbits
	.align 1
	.global	VL53L1_encode_zone_size
	.type	VL53L1_encode_zone_size, @function
VL53L1_encode_zone_size:
.LFB40:
	.loc 1 1494 0
.LVL199:
	.loc 1 1504 0
	madd	%d4, %d4, %d5, 16
.LVL200:
	st.b	[%a4]0, %d4
	ret
.LFE40:
	.size	VL53L1_encode_zone_size, .-VL53L1_encode_zone_size
.section .text.VL53L1_decode_zone_limits,"ax",@progbits
	.align 1
	.global	VL53L1_decode_zone_limits
	.type	VL53L1_decode_zone_limits, @function
VL53L1_decode_zone_limits:
.LFB41:
	.loc 1 1516 0
.LVL201:
	.loc 1 1525 0
	mov	%d2, 0
	.loc 1 1516 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 1516 0
	mov.aa	%a12, %a4
	.loc 1 1526 0
	lea	%a4, [%SP] 8
.LVL202:
	.loc 1 1516 0
	mov.aa	%a15, %a5
	.loc 1 1526 0
	st.b	[+%a4]-1, %d2
.LVL203:
	.loc 1 1532 0
	lea	%a5, [%SP] 6
.LVL204:
	.loc 1 1516 0
	mov	%d15, %d5
	mov.d	%d8, %a6
	mov.aa	%a13, %a7
	.loc 1 1525 0
	st.b	[%SP] 6, %d2
	.loc 1 1532 0
	call	VL53L1_decode_row_col
.LVL205:
.LBB150:
.LBB151:
	.loc 1 1484 0
	sh	%d4, %d15, -4
.LVL206:
	.loc 1 1485 0
	and	%d15, %d15, 15
.LVL207:
.LBE151:
.LBE150:
	.loc 1 1544 0
	add	%d3, %d15, 1
	ld.bu	%d2, [%SP] 6
	sha	%d3, -1
	sub	%d2, %d3
	max	%d2, %d2, 0
	mov.a	%a2, %d8
	st.h	[%a12]0, %d2
	add	%d2, %d15
	min	%d2, %d2, 15
	.loc 1 1552 0
	ld.bu	%d15, [%SP] 7
.LVL208:
	st.h	[%a2]0, %d2
	addi	%d2, %d4, 1
	sha	%d2, -1
	sub	%d15, %d2
	max	%d15, %d15, 0
	st.h	[%a15]0, %d15
	add	%d15, %d4
	min	%d15, %d15, 15
	st.h	[%a13]0, %d15
	ret
.LFE41:
	.size	VL53L1_decode_zone_limits, .-VL53L1_decode_zone_limits
.section .text.VL53L1_is_aperture_location,"ax",@progbits
	.align 1
	.global	VL53L1_is_aperture_location
	.type	VL53L1_is_aperture_location, @function
VL53L1_is_aperture_location:
.LFB42:
	.loc 1 1565 0
.LVL209:
	.loc 1 1572 0
	and	%d5, %d5, 3
.LVL210:
	.loc 1 1571 0
	and	%d4, %d4, 3
.LVL211:
	.loc 1 1577 0
	eq	%d15, %d5, 0
	.loc 1 1570 0
	eq	%d2, %d5, 2
	.loc 1 1577 0
	and.eq	%d15, %d4, 2
	.loc 1 1570 0
	and.eq	%d2, %d4, 0
	cmov	%d2, %d15, 1
.LVL212:
	.loc 1 1581 0
	ret
.LFE42:
	.size	VL53L1_is_aperture_location, .-VL53L1_is_aperture_location
.section .text.VL53L1_calc_mm_effective_spads,"ax",@progbits
	.align 1
	.global	VL53L1_calc_mm_effective_spads
	.type	VL53L1_calc_mm_effective_spads, @function
VL53L1_calc_mm_effective_spads:
.LFB43:
	.loc 1 1593 0
.LVL213:
	.loc 1 1603 0
	mov	%d15, 0
	.loc 1 1593 0
	sub.a	%SP, 16
.LCFI1:
	.loc 1 1593 0
	mov.aa	%a14, %a5
	mov.aa	%a12, %a6
	.loc 1 1623 0
	lea	%a5, [%SP] 2
.LVL214:
	lea	%a6, [%SP] 4
.LVL215:
	lea	%a7, [%SP] 6
	.loc 1 1593 0
	mov.aa	%a13, %a4
	.loc 1 1623 0
	mov.aa	%a4, %SP
.LVL216:
	.loc 1 1593 0
	mov	%d9, %d7
	mov	%d10, %d6
	.loc 1 1603 0
	st.h	[%SP]0, %d15
	.loc 1 1604 0
	st.h	[%SP] 2, %d15
	.loc 1 1605 0
	st.h	[%SP] 4, %d15
	.loc 1 1606 0
	st.h	[%SP] 6, %d15
	.loc 1 1608 0
	st.h	[%SP] 8, %d15
	.loc 1 1609 0
	st.h	[%SP] 10, %d15
	.loc 1 1610 0
	st.h	[%SP] 12, %d15
	.loc 1 1611 0
	st.h	[%SP] 14, %d15
.LVL217:
	.loc 1 1593 0
	ld.hu	%d8, [%SP] 16
	.loc 1 1623 0
	call	VL53L1_decode_zone_limits
.LVL218:
	.loc 1 1631 0
	mov	%e4, %d9, %d10
	lea	%a4, [%SP] 8
	lea	%a5, [%SP] 10
	lea	%a6, [%SP] 12
	lea	%a7, [%SP] 14
	call	VL53L1_decode_zone_limits
.LVL219:
	.loc 1 1649 0
	ld.h	%d2, [%SP] 10
	.loc 1 1646 0
	st.h	[%a14]0, %d15
	.loc 1 1649 0
	mov.a	%a4, %d2
.LVL220:
	.loc 1 1647 0
	st.h	[%a12]0, %d15
	.loc 1 1691 0
	ld.h	%d15, [%SP] 2
	.loc 1 1649 0
	ld.h	%d5, [%SP] 14
	.loc 1 1691 0
	ld.h	%d2, [%SP] 6
	mov.a	%a2, %d15
	.loc 1 1649 0
	mov.d	%d15, %a4
	mov.a	%a3, %d5
	ld.h	%d0, [%SP] 8
	ld.h	%d7, [%SP] 12
	.loc 1 1690 0
	ld.h	%d11, [%SP]0
	ld.h	%d13, [%SP] 4
	.loc 1 1691 0
	mov.a	%a5, %d2
	mov	%d14, 0
	.loc 1 1649 0
	jlt	%d5, %d15, .L182
.LVL221:
.L198:
	mov.d	%d12, %a4
	add	%d12, %d14
	and	%d3, %d12, 255
.LBB152:
.LBB153:
	.loc 1 1571 0
	and	%d9, %d3, 3
	.loc 1 1574 0
	eq	%d10, %d9, 0
.LBE153:
.LBE152:
	.loc 1 1650 0
	mov	%d6, 0
	mov	%d4, %d0
	rsub	%d1, %d3, -113
.LBB157:
.LBB154:
	.loc 1 1577 0
	eq	%d9, %d9, 2
	extr	%d12, %d12, 0, 16
.LBE154:
.LBE157:
	.loc 1 1650 0
	jge	%d7, %d0, .L199
	j	.L193
.LVL222:
.L203:
	.loc 1 1690 0 discriminator 1
	jlt	%d13, %d4, .L191
	.loc 1 1690 0 is_stmt 0 discriminator 2
	mov.d	%d15, %a2
	jlt	%d12, %d15, .L191
	.loc 1 1691 0 is_stmt 1
	mov.d	%d5, %a5
	jlt	%d5, %d12, .L191
	.loc 1 1692 0
	ld.h	%d15, [%a14]0
	add	%d2, %d15
.LVL223:
	st.h	[%a14]0, %d2
.LVL224:
.L189:
	add	%d6, 1
.LVL225:
	add	%d4, %d6, %d0
	.loc 1 1650 0 discriminator 2
	extr	%d15, %d4, 0, 16
	jlt	%d7, %d15, .L193
.LVL226:
.L199:
	and	%d2, %d4, 255
.LVL227:
.LBB158:
.LBB159:
	.loc 1 1464 0
	rsub	%d15, %d2, 15
	madd	%d15, %d3, %d15, 8
	and	%d15, 255
	.loc 1 1461 0
	jlt.u	%d3, 8, .L188
	.loc 1 1462 0
	madd	%d15, %d1, %d2, 8
	and	%d15, 255
.LVL228:
.L188:
.LBE159:
.LBE158:
	.loc 1 1673 0
	sh	%d5, %d15, -3
	addsc.a	%a15, %a13, %d5, 0
.LBB160:
.LBB161:
	.loc 1 1447 0
	and	%d15, %d15, 7
.LVL229:
.LBE161:
.LBE160:
	.loc 1 1673 0
	ld.bu	%d5, [%a15]0
	extr.u	%d15, %d5, %d15, 1
	jz	%d15, .L189
.LVL230:
.LBB162:
.LBB155:
	.loc 1 1572 0
	and	%d2, %d2, 3
.LVL231:
	.loc 1 1574 0
	eq	%d15, %d2, 2
	.loc 1 1577 0
	eq	%d2, %d2, 0
.LVL232:
	and	%d2, %d9
.LBE155:
.LBE162:
	.loc 1 1681 0
	mov	%d5, 256
	extr	%d4, %d4, 0, 16
.LVL233:
.LBB163:
.LBB156:
	.loc 1 1574 0
	and	%d15, %d10
.LBE156:
.LBE163:
	.loc 1 1681 0
	sel	%d2, %d2, %d8, %d5
	cmov	%d2, %d15, %d8
.LVL234:
	.loc 1 1690 0
	jge	%d4, %d11, .L203
.L191:
	.loc 1 1695 0
	ld.h	%d15, [%a12]0
	add	%d6, 1
	add	%d2, %d15
.LVL235:
	add	%d4, %d6, %d0
	.loc 1 1650 0
	extr	%d15, %d4, 0, 16
	.loc 1 1695 0
	st.h	[%a12]0, %d2
	.loc 1 1650 0
	jge	%d7, %d15, .L199
.LVL236:
.L193:
	add	%d14, 1
.LVL237:
	mov.d	%d15, %a4
	add	%d15, %d14
	.loc 1 1649 0
	extr	%d15, %d15, 0, 16
	mov.d	%d2, %a3
	jge	%d2, %d15, .L198
	ret
.LVL238:
.L182:
	ret
.LFE43:
	.size	VL53L1_calc_mm_effective_spads, .-VL53L1_calc_mm_effective_spads
.section .text.VL53L1_encode_GPIO_interrupt_config,"ax",@progbits
	.align 1
	.global	VL53L1_encode_GPIO_interrupt_config
	.type	VL53L1_encode_GPIO_interrupt_config, @function
VL53L1_encode_GPIO_interrupt_config:
.LFB44:
	.loc 1 1709 0
.LVL239:
	.loc 1 1713 0
	ld.bu	%d2, [%a4] 1
	.loc 1 1714 0
	ld.bu	%d15, [%a4] 2
	ld.bu	%d3, [%a4]0
	sh	%d15, 5
	.loc 1 1713 0
	sh	%d2, 2
	or	%d2, %d15
	.loc 1 1714 0
	or	%d15, %d2, %d3
	.loc 1 1715 0
	ld.bu	%d2, [%a4] 3
	sh	%d3, %d2, 6
	or	%d2, %d15, %d3
	.loc 1 1716 0
	ld.bu	%d15, [%a4] 4
	sh	%d15, 7
	or	%d2, %d15
.LVL240:
	.loc 1 1719 0
	and	%d2, %d2, 255
.LVL241:
	ret
.LFE44:
	.size	VL53L1_encode_GPIO_interrupt_config, .-VL53L1_encode_GPIO_interrupt_config
.section .text.VL53L1_decode_GPIO_interrupt_config,"ax",@progbits
	.align 1
	.global	VL53L1_decode_GPIO_interrupt_config
	.type	VL53L1_decode_GPIO_interrupt_config, @function
VL53L1_decode_GPIO_interrupt_config:
.LFB45:
	.loc 1 1727 0
.LVL242:
	.loc 1 1730 0
	and	%d15, %d4, 3
	.loc 1 1727 0
	mov.aa	%a2, %a4
	.loc 1 1742 0
	st.b	[%a4]0, %d15
	.loc 1 1731 0
	extr.u	%d15, %d4, 2, 2
	.loc 1 1742 0
	st.b	[%a4] 1, %d15
	.loc 1 1732 0
	extr.u	%d15, %d4, 5, 1
	.loc 1 1742 0
	st.b	[%a4] 2, %d15
	.loc 1 1733 0
	extr.u	%d15, %d4, 6, 1
	.loc 1 1734 0
	sh	%d4, -7
.LVL243:
	.loc 1 1742 0
	st.b	[%a4] 3, %d15
	mov	%d15, 0
	st.b	[%a4] 4, %d4
	st.h	[%a4] 6, %d15
	st.h	[%a4] 8, %d15
	st.h	[%a4] 10, %d15
	st.h	[%a4] 12, %d15
	.loc 1 1743 0
	ret
.LFE45:
	.size	VL53L1_decode_GPIO_interrupt_config, .-VL53L1_decode_GPIO_interrupt_config
.section .text.VL53L1_set_GPIO_distance_threshold,"ax",@progbits
	.align 1
	.global	VL53L1_set_GPIO_distance_threshold
	.type	VL53L1_set_GPIO_distance_threshold, @function
VL53L1_set_GPIO_distance_threshold:
.LFB46:
	.loc 1 1753 0
.LVL244:
	.loc 1 1760 0
	st.h	[%a4] 438, %d4
	.loc 1 1761 0
	st.h	[%a4] 440, %d5
	.loc 1 1765 0
	mov	%d2, 0
	ret
.LFE46:
	.size	VL53L1_set_GPIO_distance_threshold, .-VL53L1_set_GPIO_distance_threshold
.section .text.VL53L1_set_GPIO_rate_threshold,"ax",@progbits
	.align 1
	.global	VL53L1_set_GPIO_rate_threshold
	.type	VL53L1_set_GPIO_rate_threshold, @function
VL53L1_set_GPIO_rate_threshold:
.LFB47:
	.loc 1 1775 0
.LVL245:
	.loc 1 1782 0
	st.h	[%a4] 400, %d4
	.loc 1 1783 0
	st.h	[%a4] 402, %d5
	.loc 1 1787 0
	mov	%d2, 0
	ret
.LFE47:
	.size	VL53L1_set_GPIO_rate_threshold, .-VL53L1_set_GPIO_rate_threshold
.section .text.VL53L1_set_GPIO_thresholds_from_struct,"ax",@progbits
	.align 1
	.global	VL53L1_set_GPIO_thresholds_from_struct
	.type	VL53L1_set_GPIO_thresholds_from_struct, @function
VL53L1_set_GPIO_thresholds_from_struct:
.LFB48:
	.loc 1 1796 0
.LVL246:
	.loc 1 1801 0
	ld.hu	%d15, [%a5] 8
.LVL247:
.LBB164:
.LBB165:
	.loc 1 1760 0
	ld.h	%d2, [%a5] 6
	st.h	[%a4] 438, %d2
.LVL248:
	.loc 1 1761 0
	st.h	[%a4] 440, %d15
.LVL249:
.LBE165:
.LBE164:
.LBB166:
.LBB167:
	.loc 1 1782 0
	ld.h	%d2, [%a5] 10
.LVL250:
.LBE167:
.LBE166:
	.loc 1 1808 0
	ld.hu	%d15, [%a5] 12
.LVL251:
.LBB169:
.LBB168:
	.loc 1 1783 0
	st.h	[%a4] 402, %d15
.LVL252:
	.loc 1 1782 0
	st.h	[%a4] 400, %d2
.LBE168:
.LBE169:
	.loc 1 1816 0
	mov	%d2, 0
	ret
.LFE48:
	.size	VL53L1_set_GPIO_thresholds_from_struct, .-VL53L1_set_GPIO_thresholds_from_struct
.section .text.VL53L1_set_ref_spad_char_config,"ax",@progbits
	.align 1
	.global	VL53L1_set_ref_spad_char_config
	.type	VL53L1_set_ref_spad_char_config, @function
VL53L1_set_ref_spad_char_config:
.LFB49:
	.loc 1 1828 0
.LVL253:
	sub.a	%SP, 8
.LCFI2:
	.loc 1 1828 0
	mov	%e8, %d5, %d4
	.loc 1 1847 0
	ld.hu	%d4, [%SP] 12
.LVL254:
	mov	%d5, %d8
.LVL255:
	.loc 1 1828 0
	mov.aa	%a15, %a4
.LVL256:
	mov	%d15, %d6
	mov	%d10, %d7
	.loc 1 1847 0
	call	VL53L1_calc_macro_period_us
.LVL257:
	.loc 1 1857 0
	sh	%d3, %d2, -1
	.loc 1 1856 0
	sh	%d9, %d9, 12
.LVL258:
	.loc 1 1857 0
	add	%d9, %d3
.LVL259:
	.loc 1 1858 0
	div.u	%e2, %d9, %d2
.LVL260:
	.loc 1 1860 0
	lt.u	%d4, %d2, 256
	jnz	%d4, .L210
	.loc 1 1861 0
	mov	%d2, -1
.LVL261:
	mov	%d5, 255
	.loc 1 1866 0
	st.b	[%a15] 418, %d8
	.loc 1 1861 0
	st.b	[%a15] 395, %d2
	.loc 1 1873 0
	mov.aa	%a4, %a15
	mov	%d4, 75
	call	VL53L1_WrByte
.LVL262:
	.loc 1 1879 0
	jz	%d2, .L217
.LVL263:
.L212:
	.loc 1 1906 0
	st.h	[%a15] 82, %d15
.LVL264:
.L216:
	.loc 1 1933 0
	ret
.LVL265:
.L210:
	.loc 1 1864 0
	and	%d5, %d2, 255
	.loc 1 1866 0
	st.b	[%a15] 418, %d8
	.loc 1 1873 0
	mov.aa	%a4, %a15
	.loc 1 1863 0
	st.b	[%a15] 395, %d5
	.loc 1 1873 0
	mov	%d4, 75
	call	VL53L1_WrByte
.LVL266:
	.loc 1 1879 0
	jnz	%d2, .L212
.LVL267:
.L217:
	.loc 1 1880 0
	ld.bu	%d5, [%a15] 418
	mov.aa	%a4, %a15
	mov	%d4, 96
	call	VL53L1_WrByte
.LVL268:
	.loc 1 1891 0
	ld.bu	%d3, [%a15] 418
	st.b	[%SP] 6, %d3
	.loc 1 1892 0
	st.b	[%SP] 7, %d3
	.loc 1 1894 0
	jnz	%d2, .L212
	.loc 1 1895 0
	mov.aa	%a4, %a15
	mov	%d4, 120
	lea	%a5, [%SP] 6
	mov	%d5, 2
	call	VL53L1_WriteMulti
.LVL269:
	.loc 1 1906 0
	st.h	[%a15] 82, %d15
	.loc 1 1909 0
	jnz	%d2, .L216
	.loc 1 1910 0
	mov.aa	%a4, %a15
	mov	%d4, 28
	mov	%d5, %d15
	call	VL53L1_WrWord
.LVL270:
	.loc 1 1916 0
	jnz	%d2, .L216
	.loc 1 1917 0
	mov.aa	%a4, %a15
	mov	%d4, 100
	mov	%d5, %d10
	call	VL53L1_WrWord
.LVL271:
	.loc 1 1923 0
	jnz	%d2, .L216
	.loc 1 1924 0
	ld.hu	%d5, [%SP] 8
	mov.aa	%a4, %a15
	mov	%d4, 102
	j	VL53L1_WrWord
.LVL272:
.LFE49:
	.size	VL53L1_set_ref_spad_char_config, .-VL53L1_set_ref_spad_char_config
.section .text.VL53L1_set_ssc_config,"ax",@progbits
	.align 1
	.global	VL53L1_set_ssc_config
	.type	VL53L1_set_ssc_config, @function
VL53L1_set_ssc_config:
.LFB50:
	.loc 1 1940 0
.LVL273:
	.loc 1 1960 0
	ld.bu	%d5, [%a5] 1
	.loc 1 1940 0
	sub.a	%SP, 8
.LCFI3:
	.loc 1 1940 0
	mov.aa	%a15, %a5
	mov.aa	%a12, %a4
	.loc 1 1960 0
	call	VL53L1_calc_macro_period_us
.LVL274:
.LBB170:
.LBB171:
.LBB172:
.LBB173:
	.loc 1 1086 0
	ld.w	%d4, [%a15] 4
	sh	%d15, %d2, -1
	sh	%d4, %d4, 12
	add	%d4, %d15
	.loc 1 1085 0
	div.u	%e4, %d4, %d2
.LVL275:
.LBE173:
.LBE172:
.LBB174:
.LBB175:
	.loc 1 1238 0
	mov	%d8, 0
	.loc 1 1242 0
	jnz	%d4, .L225
.LVL276:
.L219:
.LBE175:
.LBE174:
.LBE171:
.LBE170:
	.loc 1 1976 0
	ld.bu	%d5, [%a15] 2
	mov.aa	%a4, %a12
	mov	%d4, 71
	call	VL53L1_WrByte
.LVL277:
	.loc 1 1982 0
	jz	%d2, .L226
.LVL278:
.L222:
	.loc 1 2035 0
	ret
.L226:
	.loc 1 1991 0
	sh	%d15, %d8, -8
	.loc 1 1983 0
	ld.bu	%d5, [%a15] 3
	mov.aa	%a4, %a12
	mov	%d4, 74
	call	VL53L1_WrByte
.LVL279:
	.loc 1 1991 0
	st.b	[%SP] 3, %d15
	.loc 1 1993 0
	ld.bu	%d15, [%a15] 1
	st.b	[%SP] 5, %d15
	.loc 1 1994 0
	ld.hu	%d15, [%a15] 8
	.loc 1 1992 0
	st.b	[%SP] 4, %d8
	.loc 1 1994 0
	sh	%d3, %d15, -8
	.loc 1 1995 0
	st.b	[%SP] 7, %d15
	.loc 1 1994 0
	st.b	[%SP] 6, %d3
	.loc 1 1997 0
	jnz	%d2, .L222
	.loc 1 1998 0
	mov.aa	%a4, %a12
	mov	%d4, 97
	lea	%a5, [%SP] 3
	mov	%d5, 5
	call	VL53L1_WriteMulti
.LVL280:
	.loc 1 2010 0
	ld.bu	%d15, [%a15] 1
	st.b	[%SP] 3, %d15
	.loc 1 2011 0
	st.b	[%SP] 4, %d15
	.loc 1 2013 0
	jnz	%d2, .L222
	.loc 1 2014 0
	mov.aa	%a4, %a12
	mov	%d4, 120
	lea	%a5, [%SP] 3
	mov	%d5, 2
	call	VL53L1_WriteMulti
.LVL281:
	.loc 1 2025 0
	jnz	%d2, .L222
	.loc 1 2026 0
	ld.bu	%d5, [%a15]0
	mov.aa	%a4, %a12
	mov	%d4, 41
	call	VL53L1_WrByte
.LVL282:
	.loc 1 2035 0
	ret
.LVL283:
.L225:
.LBB179:
.LBB178:
.LBB177:
.LBB176:
	call	VL53L1_encode_timeout.part.0
.LVL284:
	mov	%d8, %d2
	j	.L219
.LBE176:
.LBE177:
.LBE178:
.LBE179:
.LFE50:
	.size	VL53L1_set_ssc_config, .-VL53L1_set_ssc_config
.section .text.VL53L1_get_spad_rate_data,"ax",@progbits
	.align 1
	.global	VL53L1_get_spad_rate_data
	.type	VL53L1_get_spad_rate_data, @function
VL53L1_get_spad_rate_data:
.LFB51:
	.loc 1 2043 0
.LVL285:
.LBB180:
.LBB181:
.LBB182:
.LBB183:
	.loc 1 759 0
	mov	%d15, 0
.LBE183:
.LBE182:
.LBE181:
.LBE180:
	.loc 1 2043 0
	lea	%SP, [%SP] -512
.LCFI4:
.LVL286:
.LBB190:
.LBB188:
.LBB186:
.LBB184:
	.loc 1 761 0
	mov	%e4, 133
	.loc 1 759 0
	st.b	[%a4] 458, %d15
.LBE184:
.LBE186:
.LBE188:
.LBE190:
	.loc 1 2043 0
	mov.aa	%a13, %a4
	mov.aa	%a12, %a5
.LBB191:
.LBB189:
.LBB187:
.LBB185:
	.loc 1 761 0
	call	VL53L1_WrByte
.LVL287:
.LBE185:
.LBE187:
.LBE189:
.LBE191:
	.loc 1 2067 0
	jz	%d2, .L233
.LVL288:
.L228:
	.loc 1 2076 0
	mov.aa	%a2, %SP
	.loc 1 2077 0
	mov	%d15, 0
	lea	%a15, 255
.LVL289:
.L229:
.LBB192:
.LBB193:
	.loc 1 1403 0
	ld.bu	%d3, [%a2]0
	ld.bu	%d4, [%a2] 1
	sh	%d3, %d3, 8
	add	%d3, %d4
.LVL290:
.LBE193:
.LBE192:
	.loc 1 2078 0
	addsc.a	%a3, %a12, %d15, 1
	.loc 1 2080 0
	add.a	%a2, 2
.LVL291:
	.loc 1 2079 0
	st.h	[%a3] 4, %d3
	.loc 1 2077 0
	add	%d15, 1
.LVL292:
	loop	%a15, .L229
	.loc 1 2085 0
	mov	%d15, 256
.LVL293:
	st.h	[%a12] 2, %d15
	.loc 1 2086 0
	st.h	[%a12] 516, %d15
	.loc 1 2087 0
	mov	%d15, 15
	st.b	[%a12] 518, %d15
	.loc 1 2091 0
	jz	%d2, .L234
	.loc 1 2097 0
	ret
.L234:
.LVL294:
.LBB194:
.LBB195:
.LBB196:
.LBB197:
	.loc 1 759 0
	mov	%d15, 1
	.loc 1 761 0
	mov.aa	%a4, %a13
	mov	%d4, 133
	.loc 1 759 0
	st.b	[%a13] 458, %d15
	.loc 1 761 0
	mov	%d5, 1
	call	VL53L1_WrByte
.LVL295:
.LBE197:
.LBE196:
.LBE195:
.LBE194:
	.loc 1 2097 0
	ret
.LVL296:
.L233:
	.loc 1 2068 0
	mov.aa	%a4, %a13
	mov	%d4, 3584
	mov.aa	%a5, %SP
	mov	%d5, 512
	call	VL53L1_ReadMulti
.LVL297:
	j	.L228
.LFE51:
	.size	VL53L1_get_spad_rate_data, .-VL53L1_get_spad_rate_data
.section .text.VL53L1_low_power_auto_data_init,"ax",@progbits
	.align 1
	.global	VL53L1_low_power_auto_data_init
	.type	VL53L1_low_power_auto_data_init, @function
VL53L1_low_power_auto_data_init:
.LFB52:
	.loc 1 2105 0
.LVL298:
	.loc 1 2118 0
	mov	%d15, 3
	.loc 1 2132 0
	mov	%d2, 0
	.loc 1 2118 0
	st.b	[%a4] 740, %d15
	.loc 1 2120 0
	mov	%d15, 0
	st.b	[%a4] 741, %d15
	.loc 1 2121 0
	st.b	[%a4] 742, %d15
	.loc 1 2122 0
	st.b	[%a4] 743, %d15
	.loc 1 2123 0
	st.b	[%a4] 744, %d15
	.loc 1 2124 0
	st.b	[%a4] 745, %d15
	.loc 1 2125 0
	st.b	[%a4] 746, %d15
	.loc 1 2126 0
	mov	%d15, 0
	st.w	[%a4] 748, %d15
	.loc 1 2127 0
	st.h	[%a4] 752, %d15
	.loc 1 2132 0
	ret
.LFE52:
	.size	VL53L1_low_power_auto_data_init, .-VL53L1_low_power_auto_data_init
.section .text.VL53L1_low_power_auto_data_stop_range,"ax",@progbits
	.align 1
	.global	VL53L1_low_power_auto_data_stop_range
	.type	VL53L1_low_power_auto_data_stop_range, @function
VL53L1_low_power_auto_data_stop_range:
.LFB53:
	.loc 1 2137 0
.LVL299:
	.loc 1 2153 0
	mov	%d15, -1
	st.b	[%a4] 742, %d15
	.loc 1 2155 0
	mov	%d15, 0
	st.b	[%a4] 746, %d15
	.loc 1 2156 0
	mov	%d15, 0
	st.w	[%a4] 748, %d15
	.loc 1 2157 0
	st.h	[%a4] 752, %d15
	.loc 1 2160 0
	ld.bu	%d15, [%a4] 744
	jz	%d15, .L237
	.loc 1 2161 0
	st.b	[%a4] 355, %d15
.L237:
	.loc 1 2163 0
	ld.bu	%d15, [%a4] 745
	jz	%d15, .L238
	.loc 1 2164 0
	st.b	[%a4] 352, %d15
.L238:
	.loc 1 2168 0
	mov	%d15, 0
	.loc 1 2173 0
	mov	%d2, 0
	.loc 1 2168 0
	st.b	[%a4] 397, %d15
	.loc 1 2173 0
	ret
.LFE53:
	.size	VL53L1_low_power_auto_data_stop_range, .-VL53L1_low_power_auto_data_stop_range
.section .text.VL53L1_config_low_power_auto_mode,"ax",@progbits
	.align 1
	.global	VL53L1_config_low_power_auto_mode
	.type	VL53L1_config_low_power_auto_mode, @function
VL53L1_config_low_power_auto_mode:
.LFB54:
	.loc 1 2180 0
.LVL300:
	.loc 1 2192 0
	mov	%d15, 1
	.loc 1 2215 0
	mov	%d2, 0
	.loc 1 2192 0
	st.b	[%a6] 1, %d15
	.loc 1 2195 0
	mov	%d15, 0
	st.b	[%a6] 2, %d15
	.loc 1 2198 0
	mov	%d15, -117
	st.b	[%a5] 17, %d15
	.loc 1 2208 0
	mov	%d15, -14336
	st.h	[%a4] 16, %d15
	.loc 1 2209 0
	mov	%d15, 2
	st.b	[%a4] 10, %d15
	.loc 1 2215 0
	ret
.LFE54:
	.size	VL53L1_config_low_power_auto_mode, .-VL53L1_config_low_power_auto_mode
.section .text.VL53L1_low_power_auto_setup_manual_calibration,"ax",@progbits
	.align 1
	.global	VL53L1_low_power_auto_setup_manual_calibration
	.type	VL53L1_low_power_auto_setup_manual_calibration, @function
VL53L1_low_power_auto_setup_manual_calibration:
.LFB55:
	.loc 1 2219 0
.LVL301:
	.loc 1 2235 0
	ld.bu	%d2, [%a4] 355
	.loc 1 2234 0
	st.b	[%a4] 744, %d2
	.loc 1 2240 0
	and	%d2, %d2, 127
	.loc 1 2237 0
	ld.bu	%d15, [%a4] 352
	.loc 1 2236 0
	st.b	[%a4] 745, %d15
	.loc 1 2240 0
	st.b	[%a4] 355, %d2
	.loc 1 2242 0
	ld.bu	%d2, [%a4] 740
	and	%d15, %d15, 3
	madd	%d15, %d15, %d2, 4
	.loc 1 2255 0
	mov	%d2, 0
	.loc 1 2242 0
	st.b	[%a4] 352, %d15
	.loc 1 2246 0
	mov	%d15, 1
	st.b	[%a4] 397, %d15
	.loc 1 2248 0
	ld.bu	%d15, [%a4] 686
	.loc 1 2247 0
	st.b	[%a4] 746, %d15
	.loc 1 2249 0
	st.b	[%a4] 391, %d15
	.loc 1 2255 0
	ret
.LFE55:
	.size	VL53L1_low_power_auto_setup_manual_calibration, .-VL53L1_low_power_auto_setup_manual_calibration
.section .text.VL53L1_low_power_auto_update_DSS,"ax",@progbits
	.align 1
	.global	VL53L1_low_power_auto_update_DSS
	.type	VL53L1_low_power_auto_update_DSS, @function
VL53L1_low_power_auto_update_DSS:
.LFB56:
	.loc 1 2259 0
.LVL302:
	.loc 1 2277 0
	ld.hu	%d2, [%a4] 478
	ld.hu	%d15, [%a4] 470
	movh	%d4, 1
	add	%d15, %d2
.LVL303:
	sh	%d3, %d15, 16
	lt	%d2, %d15, %d4
	movh	%d15, 65535
.LVL304:
	sel	%d2, %d2, %d3, %d15
.LVL305:
	.loc 1 2289 0
	ld.hu	%d15, [%a4] 466
	jz	%d15, .L249
	.loc 1 2293 0
	div.u	%e2, %d2, %d15
.LVL306:
	.loc 1 2301 0
	ld.hu	%d4, [%a4] 356
.LVL307:
	.loc 1 2296 0
	st.w	[%a4] 748, %d2
	.loc 1 2305 0
	jnz	%d2, .L259
.LVL308:
.L249:
	.loc 1 2335 0
	mov	%d15, -32768
	.loc 1 2350 0
	mov	%d2, 0
	.loc 1 2335 0
	st.h	[%a4] 752, %d15
	.loc 1 2338 0
	st.h	[%a4] 404, %d15
	.loc 1 2340 0
	mov	%d15, 2
	st.b	[%a4] 398, %d15
.LVL309:
	.loc 1 2350 0
	ret
.LVL310:
.L259:
	.loc 1 2301 0
	sh	%d4, %d4, 16
.LVL311:
	.loc 1 2310 0
	div.u	%e2, %d4, %d2
.LVL312:
	.loc 1 2324 0
	mov	%d15, 2
	.loc 1 2319 0
	sat.hu	%d2, %d2
.LVL313:
	.loc 1 2324 0
	st.b	[%a4] 398, %d15
	.loc 1 2318 0
	st.h	[%a4] 752, %d2
	.loc 1 2322 0
	st.h	[%a4] 404, %d2
	.loc 1 2350 0
	mov	%d2, 0
	ret
.LFE56:
	.size	VL53L1_low_power_auto_update_DSS, .-VL53L1_low_power_auto_update_DSS
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
	.uaword	.LFB57
	.uaword	.LFE57-.LFB57
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
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
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB13
	.uaword	.LFE13-.LFB13
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE52:
.LSFDE54:
	.uaword	.LEFDE54-.LASFDE54
.LASFDE54:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE54:
.LSFDE56:
	.uaword	.LEFDE56-.LASFDE56
.LASFDE56:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.align 2
.LEFDE56:
.LSFDE58:
	.uaword	.LEFDE58-.LASFDE58
.LASFDE58:
	.uaword	.Lframe0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.align 2
.LEFDE58:
.LSFDE60:
	.uaword	.LEFDE60-.LASFDE60
.LASFDE60:
	.uaword	.Lframe0
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.align 2
.LEFDE60:
.LSFDE62:
	.uaword	.LEFDE62-.LASFDE62
.LASFDE62:
	.uaword	.Lframe0
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.align 2
.LEFDE62:
.LSFDE64:
	.uaword	.LEFDE64-.LASFDE64
.LASFDE64:
	.uaword	.Lframe0
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.align 2
.LEFDE64:
.LSFDE66:
	.uaword	.LEFDE66-.LASFDE66
.LASFDE66:
	.uaword	.Lframe0
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.align 2
.LEFDE66:
.LSFDE68:
	.uaword	.LEFDE68-.LASFDE68
.LASFDE68:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.align 2
.LEFDE68:
.LSFDE70:
	.uaword	.LEFDE70-.LASFDE70
.LASFDE70:
	.uaword	.Lframe0
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.align 2
.LEFDE70:
.LSFDE72:
	.uaword	.LEFDE72-.LASFDE72
.LASFDE72:
	.uaword	.Lframe0
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.align 2
.LEFDE72:
.LSFDE74:
	.uaword	.LEFDE74-.LASFDE74
.LASFDE74:
	.uaword	.Lframe0
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.align 2
.LEFDE74:
.LSFDE76:
	.uaword	.LEFDE76-.LASFDE76
.LASFDE76:
	.uaword	.Lframe0
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.align 2
.LEFDE76:
.LSFDE78:
	.uaword	.LEFDE78-.LASFDE78
.LASFDE78:
	.uaword	.Lframe0
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.align 2
.LEFDE78:
.LSFDE80:
	.uaword	.LEFDE80-.LASFDE80
.LASFDE80:
	.uaword	.Lframe0
	.uaword	.LFB39
	.uaword	.LFE39-.LFB39
	.align 2
.LEFDE80:
.LSFDE82:
	.uaword	.LEFDE82-.LASFDE82
.LASFDE82:
	.uaword	.Lframe0
	.uaword	.LFB40
	.uaword	.LFE40-.LFB40
	.align 2
.LEFDE82:
.LSFDE84:
	.uaword	.LEFDE84-.LASFDE84
.LASFDE84:
	.uaword	.Lframe0
	.uaword	.LFB41
	.uaword	.LFE41-.LFB41
	.byte	0x4
	.uaword	.LCFI0-.LFB41
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE84:
.LSFDE86:
	.uaword	.LEFDE86-.LASFDE86
.LASFDE86:
	.uaword	.Lframe0
	.uaword	.LFB42
	.uaword	.LFE42-.LFB42
	.align 2
.LEFDE86:
.LSFDE88:
	.uaword	.LEFDE88-.LASFDE88
.LASFDE88:
	.uaword	.Lframe0
	.uaword	.LFB43
	.uaword	.LFE43-.LFB43
	.byte	0x4
	.uaword	.LCFI1-.LFB43
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE88:
.LSFDE90:
	.uaword	.LEFDE90-.LASFDE90
.LASFDE90:
	.uaword	.Lframe0
	.uaword	.LFB44
	.uaword	.LFE44-.LFB44
	.align 2
.LEFDE90:
.LSFDE92:
	.uaword	.LEFDE92-.LASFDE92
.LASFDE92:
	.uaword	.Lframe0
	.uaword	.LFB45
	.uaword	.LFE45-.LFB45
	.align 2
.LEFDE92:
.LSFDE94:
	.uaword	.LEFDE94-.LASFDE94
.LASFDE94:
	.uaword	.Lframe0
	.uaword	.LFB46
	.uaword	.LFE46-.LFB46
	.align 2
.LEFDE94:
.LSFDE96:
	.uaword	.LEFDE96-.LASFDE96
.LASFDE96:
	.uaword	.Lframe0
	.uaword	.LFB47
	.uaword	.LFE47-.LFB47
	.align 2
.LEFDE96:
.LSFDE98:
	.uaword	.LEFDE98-.LASFDE98
.LASFDE98:
	.uaword	.Lframe0
	.uaword	.LFB48
	.uaword	.LFE48-.LFB48
	.align 2
.LEFDE98:
.LSFDE100:
	.uaword	.LEFDE100-.LASFDE100
.LASFDE100:
	.uaword	.Lframe0
	.uaword	.LFB49
	.uaword	.LFE49-.LFB49
	.byte	0x4
	.uaword	.LCFI2-.LFB49
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE100:
.LSFDE102:
	.uaword	.LEFDE102-.LASFDE102
.LASFDE102:
	.uaword	.Lframe0
	.uaword	.LFB50
	.uaword	.LFE50-.LFB50
	.byte	0x4
	.uaword	.LCFI3-.LFB50
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE102:
.LSFDE104:
	.uaword	.LEFDE104-.LASFDE104
.LASFDE104:
	.uaword	.Lframe0
	.uaword	.LFB51
	.uaword	.LFE51-.LFB51
	.byte	0x4
	.uaword	.LCFI4-.LFB51
	.byte	0xe
	.uleb128 0x200
	.align 2
.LEFDE104:
.LSFDE106:
	.uaword	.LEFDE106-.LASFDE106
.LASFDE106:
	.uaword	.Lframe0
	.uaword	.LFB52
	.uaword	.LFE52-.LFB52
	.align 2
.LEFDE106:
.LSFDE108:
	.uaword	.LEFDE108-.LASFDE108
.LASFDE108:
	.uaword	.Lframe0
	.uaword	.LFB53
	.uaword	.LFE53-.LFB53
	.align 2
.LEFDE108:
.LSFDE110:
	.uaword	.LEFDE110-.LASFDE110
.LASFDE110:
	.uaword	.Lframe0
	.uaword	.LFB54
	.uaword	.LFE54-.LFB54
	.align 2
.LEFDE110:
.LSFDE112:
	.uaword	.LEFDE112-.LASFDE112
.LASFDE112:
	.uaword	.Lframe0
	.uaword	.LFB55
	.uaword	.LFE55-.LFB55
	.align 2
.LEFDE112:
.LSFDE114:
	.uaword	.LEFDE114-.LASFDE114
.LASFDE114:
	.uaword	.Lframe0
	.uaword	.LFB56
	.uaword	.LFE56-.LFB56
	.align 2
.LEFDE114:
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
	.file 10 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_platform.h"
	.file 11 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core_support.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x710c
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.c"
	.string	"D:\\\\MinKyu_AurixRacer\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0x198
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.string	"int8_t"
	.byte	0x2
	.byte	0x29
	.uaword	0x1ce
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8_t"
	.byte	0x2
	.byte	0x2a
	.uaword	0x1ec
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"int16_t"
	.byte	0x2
	.byte	0x35
	.uaword	0x20c
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16_t"
	.byte	0x2
	.byte	0x36
	.uaword	0x229
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"int32_t"
	.byte	0x2
	.byte	0x4f
	.uaword	0x24e
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint32_t"
	.byte	0x2
	.byte	0x50
	.uaword	0x26a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint64_t"
	.byte	0x2
	.byte	0x78
	.uaword	0x1a6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x3
	.string	"FixPoint1616_t"
	.byte	0x3
	.byte	0x93
	.uaword	0x25a
	.uleb128 0x3
	.string	"VL53L1_DeviceState"
	.byte	0x4
	.byte	0x65
	.uaword	0x1dd
	.uleb128 0x3
	.string	"VL53L1_DevicePresetModes"
	.byte	0x4
	.byte	0x7d
	.uaword	0x1dd
	.uleb128 0x3
	.string	"VL53L1_DeviceMeasurementModes"
	.byte	0x4
	.byte	0x96
	.uaword	0x1dd
	.uleb128 0x3
	.string	"VL53L1_OffsetCalibrationMode"
	.byte	0x4
	.byte	0xa5
	.uaword	0x1dd
	.uleb128 0x3
	.string	"VL53L1_OffsetCorrectionMode"
	.byte	0x4
	.byte	0xb6
	.uaword	0x1dd
	.uleb128 0x3
	.string	"VL53L1_DeviceError"
	.byte	0x4
	.byte	0xfe
	.uaword	0x1dd
	.uleb128 0x4
	.string	"VL53L1_DeviceDssMode"
	.byte	0x4
	.uahalf	0x13a
	.uaword	0x1dd
	.uleb128 0x4
	.string	"VL53L1_DeviceSscArray"
	.byte	0x4
	.uahalf	0x1b2
	.uaword	0x1dd
	.uleb128 0x4
	.string	"VL53L1_GPIO_Interrupt_Mode"
	.byte	0x4
	.uahalf	0x21c
	.uaword	0x1dd
	.uleb128 0x3
	.string	"VL53L1_Error"
	.byte	0x5
	.byte	0x59
	.uaword	0x1c0
	.uleb128 0x5
	.byte	0xc
	.byte	0x6
	.byte	0x80
	.uaword	0x571
	.uleb128 0x6
	.string	"i2c_slave__device_address"
	.byte	0x6
	.byte	0x81
	.uaword	0x1dd
	.byte	0
	.uleb128 0x6
	.string	"ana_config__vhv_ref_sel_vddpix"
	.byte	0x6
	.byte	0x8b
	.uaword	0x1dd
	.byte	0x1
	.uleb128 0x6
	.string	"ana_config__vhv_ref_sel_vquench"
	.byte	0x6
	.byte	0x95
	.uaword	0x1dd
	.byte	0x2
	.uleb128 0x6
	.string	"ana_config__reg_avdd1v2_sel"
	.byte	0x6
	.byte	0x9f
	.uaword	0x1dd
	.byte	0x3
	.uleb128 0x6
	.string	"ana_config__fast_osc__trim"
	.byte	0x6
	.byte	0xa9
	.uaword	0x1dd
	.byte	0x4
	.uleb128 0x6
	.string	"osc_measured__fast_osc__frequency"
	.byte	0x6
	.byte	0xb3
	.uaword	0x219
	.byte	0x6
	.uleb128 0x6
	.string	"vhv_config__timeout_macrop_loop_bound"
	.byte	0x6
	.byte	0xbd
	.uaword	0x1dd
	.byte	0x8
	.uleb128 0x6
	.string	"vhv_config__count_thresh"
	.byte	0x6
	.byte	0xc8
	.uaword	0x1dd
	.byte	0x9
	.uleb128 0x6
	.string	"vhv_config__offset"
	.byte	0x6
	.byte	0xd2
	.uaword	0x1dd
	.byte	0xa
	.uleb128 0x6
	.string	"vhv_config__init"
	.byte	0x6
	.byte	0xdc
	.uaword	0x1dd
	.byte	0xb
	.byte	0
	.uleb128 0x3
	.string	"VL53L1_static_nvm_managed_t"
	.byte	0x6
	.byte	0xe7
	.uaword	0x403
	.uleb128 0x5
	.byte	0x18
	.byte	0x6
	.byte	0xf3
	.uaword	0x7e6
	.uleb128 0x6
	.string	"global_config__spad_enables_ref_0"
	.byte	0x6
	.byte	0xf4
	.uaword	0x1dd
	.byte	0
	.uleb128 0x6
	.string	"global_config__spad_enables_ref_1"
	.byte	0x6
	.byte	0xfe
	.uaword	0x1dd
	.byte	0x1
	.uleb128 0x7
	.string	"global_config__spad_enables_ref_2"
	.byte	0x6
	.uahalf	0x108
	.uaword	0x1dd
	.byte	0x2
	.uleb128 0x7
	.string	"global_config__spad_enables_ref_3"
	.byte	0x6
	.uahalf	0x112
	.uaword	0x1dd
	.byte	0x3
	.uleb128 0x7
	.string	"global_config__spad_enables_ref_4"
	.byte	0x6
	.uahalf	0x11c
	.uaword	0x1dd
	.byte	0x4
	.uleb128 0x7
	.string	"global_config__spad_enables_ref_5"
	.byte	0x6
	.uahalf	0x126
	.uaword	0x1dd
	.byte	0x5
	.uleb128 0x7
	.string	"global_config__ref_en_start_select"
	.byte	0x6
	.uahalf	0x130
	.uaword	0x1dd
	.byte	0x6
	.uleb128 0x7
	.string	"ref_spad_man__num_requested_ref_spads"
	.byte	0x6
	.uahalf	0x13a
	.uaword	0x1dd
	.byte	0x7
	.uleb128 0x7
	.string	"ref_spad_man__ref_location"
	.byte	0x6
	.uahalf	0x144
	.uaword	0x1dd
	.byte	0x8
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x14e
	.uaword	0x219
	.byte	0xa
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x158
	.uaword	0x1fd
	.byte	0xc
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x162
	.uaword	0x1fd
	.byte	0xe
	.uleb128 0x7
	.string	"ref_spad_char__total_rate_target_mcps"
	.byte	0x6
	.uahalf	0x16c
	.uaword	0x219
	.byte	0x10
	.uleb128 0x7
	.string	"algo__part_to_part_range_offset_mm"
	.byte	0x6
	.uahalf	0x176
	.uaword	0x1fd
	.byte	0x12
	.uleb128 0x7
	.string	"mm_config__inner_offset_mm"
	.byte	0x6
	.uahalf	0x180
	.uaword	0x1fd
	.byte	0x14
	.uleb128 0x7
	.string	"mm_config__outer_offset_mm"
	.byte	0x6
	.uahalf	0x18a
	.uaword	0x1fd
	.byte	0x16
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_customer_nvm_managed_t"
	.byte	0x6
	.uahalf	0x194
	.uaword	0x594
	.uleb128 0x9
	.byte	0x20
	.byte	0x6
	.uahalf	0x1a0
	.uaword	0xc46
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x1a1
	.uaword	0x219
	.byte	0
	.uleb128 0x7
	.string	"debug__ctrl"
	.byte	0x6
	.uahalf	0x1ab
	.uaword	0x1dd
	.byte	0x2
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x6
	.uahalf	0x1b5
	.uaword	0x1dd
	.byte	0x3
	.uleb128 0x7
	.string	"clk_gating__ctrl"
	.byte	0x6
	.uahalf	0x1bf
	.uaword	0x1dd
	.byte	0x4
	.uleb128 0x7
	.string	"nvm_bist__ctrl"
	.byte	0x6
	.uahalf	0x1cc
	.uaword	0x1dd
	.byte	0x5
	.uleb128 0x7
	.string	"nvm_bist__num_nvm_words"
	.byte	0x6
	.uahalf	0x1d7
	.uaword	0x1dd
	.byte	0x6
	.uleb128 0x7
	.string	"nvm_bist__start_address"
	.byte	0x6
	.uahalf	0x1e1
	.uaword	0x1dd
	.byte	0x7
	.uleb128 0x7
	.string	"host_if__status"
	.byte	0x6
	.uahalf	0x1eb
	.uaword	0x1dd
	.byte	0x8
	.uleb128 0x7
	.string	"pad_i2c_hv__config"
	.byte	0x6
	.uahalf	0x1f5
	.uaword	0x1dd
	.byte	0x9
	.uleb128 0x7
	.string	"pad_i2c_hv__extsup_config"
	.byte	0x6
	.uahalf	0x204
	.uaword	0x1dd
	.byte	0xa
	.uleb128 0x7
	.string	"gpio_hv_pad__ctrl"
	.byte	0x6
	.uahalf	0x20e
	.uaword	0x1dd
	.byte	0xb
	.uleb128 0x7
	.string	"gpio_hv_mux__ctrl"
	.byte	0x6
	.uahalf	0x219
	.uaword	0x1dd
	.byte	0xc
	.uleb128 0x7
	.string	"gpio__tio_hv_status"
	.byte	0x6
	.uahalf	0x224
	.uaword	0x1dd
	.byte	0xd
	.uleb128 0x7
	.string	"gpio__fio_hv_status"
	.byte	0x6
	.uahalf	0x22f
	.uaword	0x1dd
	.byte	0xe
	.uleb128 0x7
	.string	"ana_config__spad_sel_pswidth"
	.byte	0x6
	.uahalf	0x239
	.uaword	0x1dd
	.byte	0xf
	.uleb128 0x7
	.string	"ana_config__vcsel_pulse_width_offset"
	.byte	0x6
	.uahalf	0x243
	.uaword	0x1dd
	.byte	0x10
	.uleb128 0x7
	.string	"ana_config__fast_osc__config_ctrl"
	.byte	0x6
	.uahalf	0x24d
	.uaword	0x1dd
	.byte	0x11
	.uleb128 0x7
	.string	"sigma_estimator__effective_pulse_width_ns"
	.byte	0x6
	.uahalf	0x257
	.uaword	0x1dd
	.byte	0x12
	.uleb128 0x7
	.string	"sigma_estimator__effective_ambient_width_ns"
	.byte	0x6
	.uahalf	0x261
	.uaword	0x1dd
	.byte	0x13
	.uleb128 0x7
	.string	"sigma_estimator__sigma_ref_mm"
	.byte	0x6
	.uahalf	0x26b
	.uaword	0x1dd
	.byte	0x14
	.uleb128 0x7
	.string	"algo__crosstalk_compensation_valid_height_mm"
	.byte	0x6
	.uahalf	0x275
	.uaword	0x1dd
	.byte	0x15
	.uleb128 0x7
	.string	"spare_host_config__static_config_spare_0"
	.byte	0x6
	.uahalf	0x27f
	.uaword	0x1dd
	.byte	0x16
	.uleb128 0x7
	.string	"spare_host_config__static_config_spare_1"
	.byte	0x6
	.uahalf	0x289
	.uaword	0x1dd
	.byte	0x17
	.uleb128 0x7
	.string	"algo__range_ignore_threshold_mcps"
	.byte	0x6
	.uahalf	0x293
	.uaword	0x219
	.byte	0x18
	.uleb128 0x7
	.string	"algo__range_ignore_valid_height_mm"
	.byte	0x6
	.uahalf	0x29d
	.uaword	0x1dd
	.byte	0x1a
	.uleb128 0x7
	.string	"algo__range_min_clip"
	.byte	0x6
	.uahalf	0x2a7
	.uaword	0x1dd
	.byte	0x1b
	.uleb128 0x7
	.string	"algo__consistency_check__tolerance"
	.byte	0x6
	.uahalf	0x2b2
	.uaword	0x1dd
	.byte	0x1c
	.uleb128 0x7
	.string	"spare_host_config__static_config_spare_2"
	.byte	0x6
	.uahalf	0x2bc
	.uaword	0x1dd
	.byte	0x1d
	.uleb128 0x7
	.string	"sd_config__reset_stages_msb"
	.byte	0x6
	.uahalf	0x2c6
	.uaword	0x1dd
	.byte	0x1e
	.uleb128 0x7
	.string	"sd_config__reset_stages_lsb"
	.byte	0x6
	.uahalf	0x2d0
	.uaword	0x1dd
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_static_config_t"
	.byte	0x6
	.uahalf	0x2db
	.uaword	0x80c
	.uleb128 0x9
	.byte	0x16
	.byte	0x6
	.uahalf	0x2e7
	.uaword	0xeb9
	.uleb128 0x7
	.string	"gph_config__stream_count_update_value"
	.byte	0x6
	.uahalf	0x2e8
	.uaword	0x1dd
	.byte	0
	.uleb128 0x7
	.string	"global_config__stream_divider"
	.byte	0x6
	.uahalf	0x2f2
	.uaword	0x1dd
	.byte	0x1
	.uleb128 0x7
	.string	"system__interrupt_config_gpio"
	.byte	0x6
	.uahalf	0x2fc
	.uaword	0x1dd
	.byte	0x2
	.uleb128 0x7
	.string	"cal_config__vcsel_start"
	.byte	0x6
	.uahalf	0x30b
	.uaword	0x1dd
	.byte	0x3
	.uleb128 0x7
	.string	"cal_config__repeat_rate"
	.byte	0x6
	.uahalf	0x315
	.uaword	0x219
	.byte	0x4
	.uleb128 0x7
	.string	"global_config__vcsel_width"
	.byte	0x6
	.uahalf	0x31f
	.uaword	0x1dd
	.byte	0x6
	.uleb128 0x7
	.string	"phasecal_config__timeout_macrop"
	.byte	0x6
	.uahalf	0x329
	.uaword	0x1dd
	.byte	0x7
	.uleb128 0x7
	.string	"phasecal_config__target"
	.byte	0x6
	.uahalf	0x333
	.uaword	0x1dd
	.byte	0x8
	.uleb128 0x7
	.string	"phasecal_config__override"
	.byte	0x6
	.uahalf	0x33d
	.uaword	0x1dd
	.byte	0x9
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x347
	.uaword	0x1dd
	.byte	0xa
	.uleb128 0x7
	.string	"system__thresh_rate_high"
	.byte	0x6
	.uahalf	0x352
	.uaword	0x219
	.byte	0xc
	.uleb128 0x7
	.string	"system__thresh_rate_low"
	.byte	0x6
	.uahalf	0x35c
	.uaword	0x219
	.byte	0xe
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0x6
	.uahalf	0x366
	.uaword	0x219
	.byte	0x10
	.uleb128 0x7
	.string	"dss_config__manual_block_select"
	.byte	0x6
	.uahalf	0x370
	.uaword	0x1dd
	.byte	0x12
	.uleb128 0x7
	.string	"dss_config__aperture_attenuation"
	.byte	0x6
	.uahalf	0x37a
	.uaword	0x1dd
	.byte	0x13
	.uleb128 0x7
	.string	"dss_config__max_spads_limit"
	.byte	0x6
	.uahalf	0x384
	.uaword	0x1dd
	.byte	0x14
	.uleb128 0x7
	.string	"dss_config__min_spads_limit"
	.byte	0x6
	.uahalf	0x38e
	.uaword	0x1dd
	.byte	0x15
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_general_config_t"
	.byte	0x6
	.uahalf	0x398
	.uaword	0xc65
	.uleb128 0x9
	.byte	0x18
	.byte	0x6
	.uahalf	0x3a4
	.uaword	0x116f
	.uleb128 0x7
	.string	"mm_config__timeout_macrop_a_hi"
	.byte	0x6
	.uahalf	0x3a5
	.uaword	0x1dd
	.byte	0
	.uleb128 0x7
	.string	"mm_config__timeout_macrop_a_lo"
	.byte	0x6
	.uahalf	0x3af
	.uaword	0x1dd
	.byte	0x1
	.uleb128 0x7
	.string	"mm_config__timeout_macrop_b_hi"
	.byte	0x6
	.uahalf	0x3b9
	.uaword	0x1dd
	.byte	0x2
	.uleb128 0x7
	.string	"mm_config__timeout_macrop_b_lo"
	.byte	0x6
	.uahalf	0x3c3
	.uaword	0x1dd
	.byte	0x3
	.uleb128 0x7
	.string	"range_config__timeout_macrop_a_hi"
	.byte	0x6
	.uahalf	0x3cd
	.uaword	0x1dd
	.byte	0x4
	.uleb128 0x7
	.string	"range_config__timeout_macrop_a_lo"
	.byte	0x6
	.uahalf	0x3d7
	.uaword	0x1dd
	.byte	0x5
	.uleb128 0x7
	.string	"range_config__vcsel_period_a"
	.byte	0x6
	.uahalf	0x3e1
	.uaword	0x1dd
	.byte	0x6
	.uleb128 0x7
	.string	"range_config__timeout_macrop_b_hi"
	.byte	0x6
	.uahalf	0x3eb
	.uaword	0x1dd
	.byte	0x7
	.uleb128 0x7
	.string	"range_config__timeout_macrop_b_lo"
	.byte	0x6
	.uahalf	0x3f5
	.uaword	0x1dd
	.byte	0x8
	.uleb128 0x7
	.string	"range_config__vcsel_period_b"
	.byte	0x6
	.uahalf	0x3ff
	.uaword	0x1dd
	.byte	0x9
	.uleb128 0x7
	.string	"range_config__sigma_thresh"
	.byte	0x6
	.uahalf	0x409
	.uaword	0x219
	.byte	0xa
	.uleb128 0x7
	.string	"range_config__min_count_rate_rtn_limit_mcps"
	.byte	0x6
	.uahalf	0x413
	.uaword	0x219
	.byte	0xc
	.uleb128 0x7
	.string	"range_config__valid_phase_low"
	.byte	0x6
	.uahalf	0x41d
	.uaword	0x1dd
	.byte	0xe
	.uleb128 0x7
	.string	"range_config__valid_phase_high"
	.byte	0x6
	.uahalf	0x427
	.uaword	0x1dd
	.byte	0xf
	.uleb128 0x7
	.string	"system__intermeasurement_period"
	.byte	0x6
	.uahalf	0x431
	.uaword	0x25a
	.byte	0x10
	.uleb128 0x7
	.string	"system__fractional_enable"
	.byte	0x6
	.uahalf	0x43b
	.uaword	0x1dd
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_timing_config_t"
	.byte	0x6
	.uahalf	0x445
	.uaword	0xed9
	.uleb128 0x9
	.byte	0x14
	.byte	0x6
	.uahalf	0x451
	.uaword	0x13e1
	.uleb128 0x7
	.string	"system__grouped_parameter_hold_0"
	.byte	0x6
	.uahalf	0x452
	.uaword	0x1dd
	.byte	0
	.uleb128 0x7
	.string	"system__thresh_high"
	.byte	0x6
	.uahalf	0x45d
	.uaword	0x219
	.byte	0x2
	.uleb128 0x7
	.string	"system__thresh_low"
	.byte	0x6
	.uahalf	0x467
	.uaword	0x219
	.byte	0x4
	.uleb128 0x7
	.string	"system__enable_xtalk_per_quadrant"
	.byte	0x6
	.uahalf	0x471
	.uaword	0x1dd
	.byte	0x6
	.uleb128 0x7
	.string	"system__seed_config"
	.byte	0x6
	.uahalf	0x47b
	.uaword	0x1dd
	.byte	0x7
	.uleb128 0x7
	.string	"sd_config__woi_sd0"
	.byte	0x6
	.uahalf	0x486
	.uaword	0x1dd
	.byte	0x8
	.uleb128 0x7
	.string	"sd_config__woi_sd1"
	.byte	0x6
	.uahalf	0x490
	.uaword	0x1dd
	.byte	0x9
	.uleb128 0x7
	.string	"sd_config__initial_phase_sd0"
	.byte	0x6
	.uahalf	0x49a
	.uaword	0x1dd
	.byte	0xa
	.uleb128 0x7
	.string	"sd_config__initial_phase_sd1"
	.byte	0x6
	.uahalf	0x4a4
	.uaword	0x1dd
	.byte	0xb
	.uleb128 0x7
	.string	"system__grouped_parameter_hold_1"
	.byte	0x6
	.uahalf	0x4ae
	.uaword	0x1dd
	.byte	0xc
	.uleb128 0x7
	.string	"sd_config__first_order_select"
	.byte	0x6
	.uahalf	0x4b9
	.uaword	0x1dd
	.byte	0xd
	.uleb128 0x7
	.string	"sd_config__quantifier"
	.byte	0x6
	.uahalf	0x4c4
	.uaword	0x1dd
	.byte	0xe
	.uleb128 0x7
	.string	"roi_config__user_roi_centre_spad"
	.byte	0x6
	.uahalf	0x4ce
	.uaword	0x1dd
	.byte	0xf
	.uleb128 0x7
	.string	"roi_config__user_roi_requested_global_xy_size"
	.byte	0x6
	.uahalf	0x4d8
	.uaword	0x1dd
	.byte	0x10
	.uleb128 0x7
	.string	"system__sequence_config"
	.byte	0x6
	.uahalf	0x4e2
	.uaword	0x1dd
	.byte	0x11
	.uleb128 0x7
	.string	"system__grouped_parameter_hold"
	.byte	0x6
	.uahalf	0x4f3
	.uaword	0x1dd
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_dynamic_config_t"
	.byte	0x6
	.uahalf	0x4fe
	.uaword	0x118e
	.uleb128 0x9
	.byte	0x6
	.byte	0x6
	.uahalf	0x50a
	.uaword	0x14b0
	.uleb128 0x7
	.string	"power_management__go1_power_force"
	.byte	0x6
	.uahalf	0x50b
	.uaword	0x1dd
	.byte	0
	.uleb128 0x7
	.string	"system__stream_count_ctrl"
	.byte	0x6
	.uahalf	0x515
	.uaword	0x1dd
	.byte	0x1
	.uleb128 0x7
	.string	"firmware__enable"
	.byte	0x6
	.uahalf	0x51f
	.uaword	0x1dd
	.byte	0x2
	.uleb128 0x7
	.string	"system__interrupt_clear"
	.byte	0x6
	.uahalf	0x529
	.uaword	0x1dd
	.byte	0x3
	.uleb128 0x7
	.string	"system__mode_start"
	.byte	0x6
	.uahalf	0x534
	.uaword	0x1dd
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_system_control_t"
	.byte	0x6
	.uahalf	0x543
	.uaword	0x1401
	.uleb128 0x9
	.byte	0x2c
	.byte	0x6
	.uahalf	0x54f
	.uaword	0x18bf
	.uleb128 0x7
	.string	"result__interrupt_status"
	.byte	0x6
	.uahalf	0x550
	.uaword	0x1dd
	.byte	0
	.uleb128 0x7
	.string	"result__range_status"
	.byte	0x6
	.uahalf	0x55c
	.uaword	0x1dd
	.byte	0x1
	.uleb128 0x7
	.string	"result__report_status"
	.byte	0x6
	.uahalf	0x569
	.uaword	0x1dd
	.byte	0x2
	.uleb128 0x7
	.string	"result__stream_count"
	.byte	0x6
	.uahalf	0x573
	.uaword	0x1dd
	.byte	0x3
	.uleb128 0x7
	.string	"result__dss_actual_effective_spads_sd0"
	.byte	0x6
	.uahalf	0x57d
	.uaword	0x219
	.byte	0x4
	.uleb128 0x7
	.string	"result__peak_signal_count_rate_mcps_sd0"
	.byte	0x6
	.uahalf	0x587
	.uaword	0x219
	.byte	0x6
	.uleb128 0x7
	.string	"result__ambient_count_rate_mcps_sd0"
	.byte	0x6
	.uahalf	0x591
	.uaword	0x219
	.byte	0x8
	.uleb128 0x7
	.string	"result__sigma_sd0"
	.byte	0x6
	.uahalf	0x59b
	.uaword	0x219
	.byte	0xa
	.uleb128 0x7
	.string	"result__phase_sd0"
	.byte	0x6
	.uahalf	0x5a5
	.uaword	0x219
	.byte	0xc
	.uleb128 0x7
	.string	"result__final_crosstalk_corrected_range_mm_sd0"
	.byte	0x6
	.uahalf	0x5af
	.uaword	0x219
	.byte	0xe
	.uleb128 0x7
	.string	"result__peak_signal_count_rate_crosstalk_corrected_mcps_sd0"
	.byte	0x6
	.uahalf	0x5b9
	.uaword	0x219
	.byte	0x10
	.uleb128 0x7
	.string	"result__mm_inner_actual_effective_spads_sd0"
	.byte	0x6
	.uahalf	0x5c3
	.uaword	0x219
	.byte	0x12
	.uleb128 0x7
	.string	"result__mm_outer_actual_effective_spads_sd0"
	.byte	0x6
	.uahalf	0x5cd
	.uaword	0x219
	.byte	0x14
	.uleb128 0x7
	.string	"result__avg_signal_count_rate_mcps_sd0"
	.byte	0x6
	.uahalf	0x5d7
	.uaword	0x219
	.byte	0x16
	.uleb128 0x7
	.string	"result__dss_actual_effective_spads_sd1"
	.byte	0x6
	.uahalf	0x5e1
	.uaword	0x219
	.byte	0x18
	.uleb128 0x7
	.string	"result__peak_signal_count_rate_mcps_sd1"
	.byte	0x6
	.uahalf	0x5eb
	.uaword	0x219
	.byte	0x1a
	.uleb128 0x7
	.string	"result__ambient_count_rate_mcps_sd1"
	.byte	0x6
	.uahalf	0x5f5
	.uaword	0x219
	.byte	0x1c
	.uleb128 0x7
	.string	"result__sigma_sd1"
	.byte	0x6
	.uahalf	0x5ff
	.uaword	0x219
	.byte	0x1e
	.uleb128 0x7
	.string	"result__phase_sd1"
	.byte	0x6
	.uahalf	0x609
	.uaword	0x219
	.byte	0x20
	.uleb128 0x7
	.string	"result__final_crosstalk_corrected_range_mm_sd1"
	.byte	0x6
	.uahalf	0x613
	.uaword	0x219
	.byte	0x22
	.uleb128 0x7
	.string	"result__spare_0_sd1"
	.byte	0x6
	.uahalf	0x61d
	.uaword	0x219
	.byte	0x24
	.uleb128 0x7
	.string	"result__spare_1_sd1"
	.byte	0x6
	.uahalf	0x627
	.uaword	0x219
	.byte	0x26
	.uleb128 0x7
	.string	"result__spare_2_sd1"
	.byte	0x6
	.uahalf	0x631
	.uaword	0x219
	.byte	0x28
	.uleb128 0x7
	.string	"result__spare_3_sd1"
	.byte	0x6
	.uahalf	0x63b
	.uaword	0x1dd
	.byte	0x2a
	.uleb128 0x7
	.string	"result__thresh_info"
	.byte	0x6
	.uahalf	0x645
	.uaword	0x1dd
	.byte	0x2b
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_system_results_t"
	.byte	0x6
	.uahalf	0x650
	.uaword	0x14d0
	.uleb128 0x9
	.byte	0x24
	.byte	0x6
	.uahalf	0x65c
	.uaword	0x1a81
	.uleb128 0x7
	.string	"result_core__ambient_window_events_sd0"
	.byte	0x6
	.uahalf	0x65d
	.uaword	0x25a
	.byte	0
	.uleb128 0x7
	.string	"result_core__ranging_total_events_sd0"
	.byte	0x6
	.uahalf	0x667
	.uaword	0x25a
	.byte	0x4
	.uleb128 0x7
	.string	"result_core__signal_total_events_sd0"
	.byte	0x6
	.uahalf	0x671
	.uaword	0x23f
	.byte	0x8
	.uleb128 0x7
	.string	"result_core__total_periods_elapsed_sd0"
	.byte	0x6
	.uahalf	0x67b
	.uaword	0x25a
	.byte	0xc
	.uleb128 0x7
	.string	"result_core__ambient_window_events_sd1"
	.byte	0x6
	.uahalf	0x685
	.uaword	0x25a
	.byte	0x10
	.uleb128 0x7
	.string	"result_core__ranging_total_events_sd1"
	.byte	0x6
	.uahalf	0x68f
	.uaword	0x25a
	.byte	0x14
	.uleb128 0x7
	.string	"result_core__signal_total_events_sd1"
	.byte	0x6
	.uahalf	0x699
	.uaword	0x23f
	.byte	0x18
	.uleb128 0x7
	.string	"result_core__total_periods_elapsed_sd1"
	.byte	0x6
	.uahalf	0x6a3
	.uaword	0x25a
	.byte	0x1c
	.uleb128 0x7
	.string	"result_core__spare_0"
	.byte	0x6
	.uahalf	0x6ad
	.uaword	0x1dd
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_core_results_t"
	.byte	0x6
	.uahalf	0x6b7
	.uaword	0x18df
	.uleb128 0x9
	.byte	0x38
	.byte	0x6
	.uahalf	0x6c3
	.uaword	0x20ca
	.uleb128 0x7
	.string	"phasecal_result__reference_phase"
	.byte	0x6
	.uahalf	0x6c4
	.uaword	0x219
	.byte	0
	.uleb128 0x7
	.string	"phasecal_result__vcsel_start"
	.byte	0x6
	.uahalf	0x6ce
	.uaword	0x1dd
	.byte	0x2
	.uleb128 0x7
	.string	"ref_spad_char_result__num_actual_ref_spads"
	.byte	0x6
	.uahalf	0x6d8
	.uaword	0x1dd
	.byte	0x3
	.uleb128 0x7
	.string	"ref_spad_char_result__ref_location"
	.byte	0x6
	.uahalf	0x6e2
	.uaword	0x1dd
	.byte	0x4
	.uleb128 0x7
	.string	"vhv_result__coldboot_status"
	.byte	0x6
	.uahalf	0x6ec
	.uaword	0x1dd
	.byte	0x5
	.uleb128 0x7
	.string	"vhv_result__search_result"
	.byte	0x6
	.uahalf	0x6f6
	.uaword	0x1dd
	.byte	0x6
	.uleb128 0x7
	.string	"vhv_result__latest_setting"
	.byte	0x6
	.uahalf	0x700
	.uaword	0x1dd
	.byte	0x7
	.uleb128 0x7
	.string	"result__osc_calibrate_val"
	.byte	0x6
	.uahalf	0x70a
	.uaword	0x219
	.byte	0x8
	.uleb128 0x7
	.string	"ana_config__powerdown_go1"
	.byte	0x6
	.uahalf	0x714
	.uaword	0x1dd
	.byte	0xa
	.uleb128 0x7
	.string	"ana_config__ref_bg_ctrl"
	.byte	0x6
	.uahalf	0x71f
	.uaword	0x1dd
	.byte	0xb
	.uleb128 0x7
	.string	"ana_config__regdvdd1v2_ctrl"
	.byte	0x6
	.uahalf	0x72a
	.uaword	0x1dd
	.byte	0xc
	.uleb128 0x7
	.string	"ana_config__osc_slow_ctrl"
	.byte	0x6
	.uahalf	0x736
	.uaword	0x1dd
	.byte	0xd
	.uleb128 0x7
	.string	"test_mode__status"
	.byte	0x6
	.uahalf	0x742
	.uaword	0x1dd
	.byte	0xe
	.uleb128 0x7
	.string	"firmware__system_status"
	.byte	0x6
	.uahalf	0x74c
	.uaword	0x1dd
	.byte	0xf
	.uleb128 0x7
	.string	"firmware__mode_status"
	.byte	0x6
	.uahalf	0x757
	.uaword	0x1dd
	.byte	0x10
	.uleb128 0x7
	.string	"firmware__secondary_mode_status"
	.byte	0x6
	.uahalf	0x761
	.uaword	0x1dd
	.byte	0x11
	.uleb128 0x7
	.string	"firmware__cal_repeat_rate_counter"
	.byte	0x6
	.uahalf	0x76b
	.uaword	0x219
	.byte	0x12
	.uleb128 0x7
	.string	"gph__system__thresh_high"
	.byte	0x6
	.uahalf	0x775
	.uaword	0x219
	.byte	0x14
	.uleb128 0x7
	.string	"gph__system__thresh_low"
	.byte	0x6
	.uahalf	0x77f
	.uaword	0x219
	.byte	0x16
	.uleb128 0x7
	.string	"gph__system__enable_xtalk_per_quadrant"
	.byte	0x6
	.uahalf	0x789
	.uaword	0x1dd
	.byte	0x18
	.uleb128 0x7
	.string	"gph__spare_0"
	.byte	0x6
	.uahalf	0x793
	.uaword	0x1dd
	.byte	0x19
	.uleb128 0x7
	.string	"gph__sd_config__woi_sd0"
	.byte	0x6
	.uahalf	0x79f
	.uaword	0x1dd
	.byte	0x1a
	.uleb128 0x7
	.string	"gph__sd_config__woi_sd1"
	.byte	0x6
	.uahalf	0x7a9
	.uaword	0x1dd
	.byte	0x1b
	.uleb128 0x7
	.string	"gph__sd_config__initial_phase_sd0"
	.byte	0x6
	.uahalf	0x7b3
	.uaword	0x1dd
	.byte	0x1c
	.uleb128 0x7
	.string	"gph__sd_config__initial_phase_sd1"
	.byte	0x6
	.uahalf	0x7bd
	.uaword	0x1dd
	.byte	0x1d
	.uleb128 0x7
	.string	"gph__sd_config__first_order_select"
	.byte	0x6
	.uahalf	0x7c7
	.uaword	0x1dd
	.byte	0x1e
	.uleb128 0x7
	.string	"gph__sd_config__quantifier"
	.byte	0x6
	.uahalf	0x7d2
	.uaword	0x1dd
	.byte	0x1f
	.uleb128 0x7
	.string	"gph__roi_config__user_roi_centre_spad"
	.byte	0x6
	.uahalf	0x7dc
	.uaword	0x1dd
	.byte	0x20
	.uleb128 0x7
	.string	"gph__roi_config__user_roi_requested_global_xy_size"
	.byte	0x6
	.uahalf	0x7e6
	.uaword	0x1dd
	.byte	0x21
	.uleb128 0x7
	.string	"gph__system__sequence_config"
	.byte	0x6
	.uahalf	0x7f0
	.uaword	0x1dd
	.byte	0x22
	.uleb128 0x7
	.string	"gph__gph_id"
	.byte	0x6
	.uahalf	0x801
	.uaword	0x1dd
	.byte	0x23
	.uleb128 0x7
	.string	"system__interrupt_set"
	.byte	0x6
	.uahalf	0x80b
	.uaword	0x1dd
	.byte	0x24
	.uleb128 0x7
	.string	"interrupt_manager__enables"
	.byte	0x6
	.uahalf	0x816
	.uaword	0x1dd
	.byte	0x25
	.uleb128 0x7
	.string	"interrupt_manager__clear"
	.byte	0x6
	.uahalf	0x824
	.uaword	0x1dd
	.byte	0x26
	.uleb128 0x7
	.string	"interrupt_manager__status"
	.byte	0x6
	.uahalf	0x832
	.uaword	0x1dd
	.byte	0x27
	.uleb128 0x7
	.string	"mcu_to_host_bank__wr_access_en"
	.byte	0x6
	.uahalf	0x840
	.uaword	0x1dd
	.byte	0x28
	.uleb128 0x7
	.string	"power_management__go1_reset_status"
	.byte	0x6
	.uahalf	0x84a
	.uaword	0x1dd
	.byte	0x29
	.uleb128 0x7
	.string	"pad_startup_mode__value_ro"
	.byte	0x6
	.uahalf	0x854
	.uaword	0x1dd
	.byte	0x2a
	.uleb128 0x7
	.string	"pad_startup_mode__value_ctrl"
	.byte	0x6
	.uahalf	0x85f
	.uaword	0x1dd
	.byte	0x2b
	.uleb128 0x8
	.uaword	.LASF7
	.byte	0x6
	.uahalf	0x86c
	.uaword	0x25a
	.byte	0x2c
	.uleb128 0x7
	.string	"interrupt_scheduler__data_out"
	.byte	0x6
	.uahalf	0x876
	.uaword	0x25a
	.byte	0x30
	.uleb128 0x7
	.string	"nvm_bist__complete"
	.byte	0x6
	.uahalf	0x880
	.uaword	0x1dd
	.byte	0x34
	.uleb128 0x7
	.string	"nvm_bist__status"
	.byte	0x6
	.uahalf	0x88a
	.uaword	0x1dd
	.byte	0x35
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_debug_results_t"
	.byte	0x6
	.uahalf	0x894
	.uaword	0x1a9f
	.uleb128 0x9
	.byte	0x32
	.byte	0x6
	.uahalf	0x8a0
	.uaword	0x289b
	.uleb128 0x7
	.string	"identification__model_id"
	.byte	0x6
	.uahalf	0x8a1
	.uaword	0x1dd
	.byte	0
	.uleb128 0x7
	.string	"identification__module_type"
	.byte	0x6
	.uahalf	0x8ab
	.uaword	0x1dd
	.byte	0x1
	.uleb128 0x7
	.string	"identification__revision_id"
	.byte	0x6
	.uahalf	0x8b5
	.uaword	0x1dd
	.byte	0x2
	.uleb128 0x7
	.string	"identification__module_id"
	.byte	0x6
	.uahalf	0x8c0
	.uaword	0x219
	.byte	0x4
	.uleb128 0x7
	.string	"ana_config__fast_osc__trim_max"
	.byte	0x6
	.uahalf	0x8ca
	.uaword	0x1dd
	.byte	0x6
	.uleb128 0x7
	.string	"ana_config__fast_osc__freq_set"
	.byte	0x6
	.uahalf	0x8d4
	.uaword	0x1dd
	.byte	0x7
	.uleb128 0x7
	.string	"ana_config__vcsel_trim"
	.byte	0x6
	.uahalf	0x8de
	.uaword	0x1dd
	.byte	0x8
	.uleb128 0x7
	.string	"ana_config__vcsel_selion"
	.byte	0x6
	.uahalf	0x8e8
	.uaword	0x1dd
	.byte	0x9
	.uleb128 0x7
	.string	"ana_config__vcsel_selion_max"
	.byte	0x6
	.uahalf	0x8f2
	.uaword	0x1dd
	.byte	0xa
	.uleb128 0x7
	.string	"protected_laser_safety__lock_bit"
	.byte	0x6
	.uahalf	0x8fc
	.uaword	0x1dd
	.byte	0xb
	.uleb128 0x7
	.string	"laser_safety__key"
	.byte	0x6
	.uahalf	0x906
	.uaword	0x1dd
	.byte	0xc
	.uleb128 0x7
	.string	"laser_safety__key_ro"
	.byte	0x6
	.uahalf	0x910
	.uaword	0x1dd
	.byte	0xd
	.uleb128 0x7
	.string	"laser_safety__clip"
	.byte	0x6
	.uahalf	0x91a
	.uaword	0x1dd
	.byte	0xe
	.uleb128 0x7
	.string	"laser_safety__mult"
	.byte	0x6
	.uahalf	0x924
	.uaword	0x1dd
	.byte	0xf
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_0"
	.byte	0x6
	.uahalf	0x92e
	.uaword	0x1dd
	.byte	0x10
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_1"
	.byte	0x6
	.uahalf	0x938
	.uaword	0x1dd
	.byte	0x11
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_2"
	.byte	0x6
	.uahalf	0x942
	.uaword	0x1dd
	.byte	0x12
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_3"
	.byte	0x6
	.uahalf	0x94c
	.uaword	0x1dd
	.byte	0x13
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_4"
	.byte	0x6
	.uahalf	0x956
	.uaword	0x1dd
	.byte	0x14
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_5"
	.byte	0x6
	.uahalf	0x960
	.uaword	0x1dd
	.byte	0x15
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_6"
	.byte	0x6
	.uahalf	0x96a
	.uaword	0x1dd
	.byte	0x16
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_7"
	.byte	0x6
	.uahalf	0x974
	.uaword	0x1dd
	.byte	0x17
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_8"
	.byte	0x6
	.uahalf	0x97e
	.uaword	0x1dd
	.byte	0x18
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_9"
	.byte	0x6
	.uahalf	0x988
	.uaword	0x1dd
	.byte	0x19
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_10"
	.byte	0x6
	.uahalf	0x992
	.uaword	0x1dd
	.byte	0x1a
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_11"
	.byte	0x6
	.uahalf	0x99c
	.uaword	0x1dd
	.byte	0x1b
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_12"
	.byte	0x6
	.uahalf	0x9a6
	.uaword	0x1dd
	.byte	0x1c
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_13"
	.byte	0x6
	.uahalf	0x9b0
	.uaword	0x1dd
	.byte	0x1d
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_14"
	.byte	0x6
	.uahalf	0x9ba
	.uaword	0x1dd
	.byte	0x1e
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_15"
	.byte	0x6
	.uahalf	0x9c4
	.uaword	0x1dd
	.byte	0x1f
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_16"
	.byte	0x6
	.uahalf	0x9ce
	.uaword	0x1dd
	.byte	0x20
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_17"
	.byte	0x6
	.uahalf	0x9d8
	.uaword	0x1dd
	.byte	0x21
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_18"
	.byte	0x6
	.uahalf	0x9e2
	.uaword	0x1dd
	.byte	0x22
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_19"
	.byte	0x6
	.uahalf	0x9ec
	.uaword	0x1dd
	.byte	0x23
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_20"
	.byte	0x6
	.uahalf	0x9f6
	.uaword	0x1dd
	.byte	0x24
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_21"
	.byte	0x6
	.uahalf	0xa00
	.uaword	0x1dd
	.byte	0x25
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_22"
	.byte	0x6
	.uahalf	0xa0a
	.uaword	0x1dd
	.byte	0x26
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_23"
	.byte	0x6
	.uahalf	0xa14
	.uaword	0x1dd
	.byte	0x27
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_24"
	.byte	0x6
	.uahalf	0xa1e
	.uaword	0x1dd
	.byte	0x28
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_25"
	.byte	0x6
	.uahalf	0xa28
	.uaword	0x1dd
	.byte	0x29
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_26"
	.byte	0x6
	.uahalf	0xa32
	.uaword	0x1dd
	.byte	0x2a
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_27"
	.byte	0x6
	.uahalf	0xa3c
	.uaword	0x1dd
	.byte	0x2b
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_28"
	.byte	0x6
	.uahalf	0xa46
	.uaword	0x1dd
	.byte	0x2c
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_29"
	.byte	0x6
	.uahalf	0xa50
	.uaword	0x1dd
	.byte	0x2d
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_30"
	.byte	0x6
	.uahalf	0xa5a
	.uaword	0x1dd
	.byte	0x2e
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_31"
	.byte	0x6
	.uahalf	0xa64
	.uaword	0x1dd
	.byte	0x2f
	.uleb128 0x7
	.string	"roi_config__mode_roi_centre_spad"
	.byte	0x6
	.uahalf	0xa6e
	.uaword	0x1dd
	.byte	0x30
	.uleb128 0x7
	.string	"roi_config__mode_roi_xy_size"
	.byte	0x6
	.uahalf	0xa78
	.uaword	0x1dd
	.byte	0x31
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_nvm_copy_data_t"
	.byte	0x6
	.uahalf	0xa82
	.uaword	0x20e9
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.byte	0x9d
	.uaword	0x290a
	.uleb128 0x6
	.string	"ll_revision"
	.byte	0x7
	.byte	0x9e
	.uaword	0x25a
	.byte	0
	.uleb128 0x6
	.string	"ll_major"
	.byte	0x7
	.byte	0x9f
	.uaword	0x1dd
	.byte	0x4
	.uleb128 0x6
	.string	"ll_minor"
	.byte	0x7
	.byte	0xa0
	.uaword	0x1dd
	.byte	0x5
	.uleb128 0x6
	.string	"ll_build"
	.byte	0x7
	.byte	0xa1
	.uaword	0x1dd
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.string	"VL53L1_ll_version_t"
	.byte	0x7
	.byte	0xa2
	.uaword	0x28ba
	.uleb128 0x5
	.byte	0x10
	.byte	0x7
	.byte	0xa8
	.uaword	0x29c2
	.uleb128 0x6
	.string	"device_test_mode"
	.byte	0x7
	.byte	0xaa
	.uaword	0x1dd
	.byte	0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.byte	0xab
	.uaword	0x1dd
	.byte	0x1
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.byte	0xac
	.uaword	0x25a
	.byte	0x4
	.uleb128 0x6
	.string	"target_count_rate_mcps"
	.byte	0x7
	.byte	0xad
	.uaword	0x219
	.byte	0x8
	.uleb128 0x6
	.string	"min_count_rate_limit_mcps"
	.byte	0x7
	.byte	0xaf
	.uaword	0x219
	.byte	0xa
	.uleb128 0x6
	.string	"max_count_rate_limit_mcps"
	.byte	0x7
	.byte	0xb1
	.uaword	0x219
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"VL53L1_refspadchar_config_t"
	.byte	0x7
	.byte	0xb4
	.uaword	0x2925
	.uleb128 0x5
	.byte	0xc
	.byte	0x7
	.byte	0xbb
	.uaword	0x2a5b
	.uleb128 0x6
	.string	"array_select"
	.byte	0x7
	.byte	0xbd
	.uaword	0x3ae
	.byte	0
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.byte	0xc1
	.uaword	0x1dd
	.byte	0x1
	.uleb128 0x6
	.string	"vcsel_start"
	.byte	0x7
	.byte	0xc3
	.uaword	0x1dd
	.byte	0x2
	.uleb128 0x6
	.string	"vcsel_width"
	.byte	0x7
	.byte	0xc5
	.uaword	0x1dd
	.byte	0x3
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.byte	0xc7
	.uaword	0x25a
	.byte	0x4
	.uleb128 0x6
	.string	"rate_limit_mcps"
	.byte	0x7
	.byte	0xc9
	.uaword	0x219
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"VL53L1_ssc_config_t"
	.byte	0x7
	.byte	0xce
	.uaword	0x29e5
	.uleb128 0x5
	.byte	0x18
	.byte	0x7
	.byte	0xd4
	.uaword	0x2c1b
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.byte	0xd7
	.uaword	0x25a
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x7
	.byte	0xd9
	.uaword	0x1fd
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x7
	.byte	0xdb
	.uaword	0x1fd
	.byte	0x6
	.uleb128 0x6
	.string	"nvm_default__crosstalk_compensation_plane_offset_kcps"
	.byte	0x7
	.byte	0xdd
	.uaword	0x25a
	.byte	0x8
	.uleb128 0x6
	.string	"nvm_default__crosstalk_compensation_x_plane_gradient_kcps"
	.byte	0x7
	.byte	0xdf
	.uaword	0x1fd
	.byte	0xc
	.uleb128 0x6
	.string	"nvm_default__crosstalk_compensation_y_plane_gradient_kcps"
	.byte	0x7
	.byte	0xe1
	.uaword	0x1fd
	.byte	0xe
	.uleb128 0x6
	.string	"global_crosstalk_compensation_enable"
	.byte	0x7
	.byte	0xe3
	.uaword	0x1dd
	.byte	0x10
	.uleb128 0x6
	.string	"lite_mode_crosstalk_margin_kcps"
	.byte	0x7
	.byte	0xe5
	.uaword	0x1fd
	.byte	0x12
	.uleb128 0x6
	.string	"crosstalk_range_ignore_threshold_mult"
	.byte	0x7
	.byte	0xeb
	.uaword	0x1dd
	.byte	0x14
	.uleb128 0x6
	.string	"crosstalk_range_ignore_threshold_rate_mcps"
	.byte	0x7
	.byte	0xed
	.uaword	0x219
	.byte	0x16
	.byte	0
	.uleb128 0x3
	.string	"VL53L1_xtalk_config_t"
	.byte	0x7
	.byte	0xf2
	.uaword	0x2a76
	.uleb128 0x5
	.byte	0x4c
	.byte	0x7
	.byte	0xfe
	.uaword	0x313e
	.uleb128 0x7
	.string	"tp_tuning_parm_version"
	.byte	0x7
	.uahalf	0x101
	.uaword	0x219
	.byte	0
	.uleb128 0x7
	.string	"tp_tuning_parm_key_table_version"
	.byte	0x7
	.uahalf	0x104
	.uaword	0x219
	.byte	0x2
	.uleb128 0x7
	.string	"tp_tuning_parm_lld_version"
	.byte	0x7
	.uahalf	0x108
	.uaword	0x219
	.byte	0x4
	.uleb128 0x7
	.string	"tp_init_phase_rtn_lite_long"
	.byte	0x7
	.uahalf	0x10c
	.uaword	0x1dd
	.byte	0x6
	.uleb128 0x7
	.string	"tp_init_phase_rtn_lite_med"
	.byte	0x7
	.uahalf	0x110
	.uaword	0x1dd
	.byte	0x7
	.uleb128 0x7
	.string	"tp_init_phase_rtn_lite_short"
	.byte	0x7
	.uahalf	0x114
	.uaword	0x1dd
	.byte	0x8
	.uleb128 0x7
	.string	"tp_init_phase_ref_lite_long"
	.byte	0x7
	.uahalf	0x118
	.uaword	0x1dd
	.byte	0x9
	.uleb128 0x7
	.string	"tp_init_phase_ref_lite_med"
	.byte	0x7
	.uahalf	0x11c
	.uaword	0x1dd
	.byte	0xa
	.uleb128 0x7
	.string	"tp_init_phase_ref_lite_short"
	.byte	0x7
	.uahalf	0x120
	.uaword	0x1dd
	.byte	0xb
	.uleb128 0x7
	.string	"tp_consistency_lite_phase_tolerance"
	.byte	0x7
	.uahalf	0x125
	.uaword	0x1dd
	.byte	0xc
	.uleb128 0x7
	.string	"tp_phasecal_target"
	.byte	0x7
	.uahalf	0x129
	.uaword	0x1dd
	.byte	0xd
	.uleb128 0x7
	.string	"tp_cal_repeat_rate"
	.byte	0x7
	.uahalf	0x12c
	.uaword	0x219
	.byte	0xe
	.uleb128 0x7
	.string	"tp_lite_min_clip"
	.byte	0x7
	.uahalf	0x130
	.uaword	0x1dd
	.byte	0x10
	.uleb128 0x7
	.string	"tp_lite_long_sigma_thresh_mm"
	.byte	0x7
	.uahalf	0x135
	.uaword	0x219
	.byte	0x12
	.uleb128 0x7
	.string	"tp_lite_med_sigma_thresh_mm"
	.byte	0x7
	.uahalf	0x139
	.uaword	0x219
	.byte	0x14
	.uleb128 0x7
	.string	"tp_lite_short_sigma_thresh_mm"
	.byte	0x7
	.uahalf	0x13d
	.uaword	0x219
	.byte	0x16
	.uleb128 0x7
	.string	"tp_lite_long_min_count_rate_rtn_mcps"
	.byte	0x7
	.uahalf	0x142
	.uaword	0x219
	.byte	0x18
	.uleb128 0x7
	.string	"tp_lite_med_min_count_rate_rtn_mcps"
	.byte	0x7
	.uahalf	0x146
	.uaword	0x219
	.byte	0x1a
	.uleb128 0x7
	.string	"tp_lite_short_min_count_rate_rtn_mcps"
	.byte	0x7
	.uahalf	0x14a
	.uaword	0x219
	.byte	0x1c
	.uleb128 0x7
	.string	"tp_lite_sigma_est_pulse_width_ns"
	.byte	0x7
	.uahalf	0x14f
	.uaword	0x1dd
	.byte	0x1e
	.uleb128 0x7
	.string	"tp_lite_sigma_est_amb_width_ns"
	.byte	0x7
	.uahalf	0x152
	.uaword	0x1dd
	.byte	0x1f
	.uleb128 0x7
	.string	"tp_lite_sigma_ref_mm"
	.byte	0x7
	.uahalf	0x155
	.uaword	0x1dd
	.byte	0x20
	.uleb128 0x7
	.string	"tp_lite_seed_cfg"
	.byte	0x7
	.uahalf	0x158
	.uaword	0x1dd
	.byte	0x21
	.uleb128 0x7
	.string	"tp_timed_seed_cfg"
	.byte	0x7
	.uahalf	0x15b
	.uaword	0x1dd
	.byte	0x22
	.uleb128 0x7
	.string	"tp_lite_quantifier"
	.byte	0x7
	.uahalf	0x15f
	.uaword	0x1dd
	.byte	0x23
	.uleb128 0x7
	.string	"tp_lite_first_order_select"
	.byte	0x7
	.uahalf	0x162
	.uaword	0x1dd
	.byte	0x24
	.uleb128 0x7
	.string	"tp_dss_target_lite_mcps"
	.byte	0x7
	.uahalf	0x166
	.uaword	0x219
	.byte	0x26
	.uleb128 0x7
	.string	"tp_dss_target_timed_mcps"
	.byte	0x7
	.uahalf	0x169
	.uaword	0x219
	.byte	0x28
	.uleb128 0x7
	.string	"tp_phasecal_timeout_lite_us"
	.byte	0x7
	.uahalf	0x16d
	.uaword	0x25a
	.byte	0x2c
	.uleb128 0x7
	.string	"tp_phasecal_timeout_timed_us"
	.byte	0x7
	.uahalf	0x171
	.uaword	0x25a
	.byte	0x30
	.uleb128 0x7
	.string	"tp_mm_timeout_lite_us"
	.byte	0x7
	.uahalf	0x175
	.uaword	0x25a
	.byte	0x34
	.uleb128 0x7
	.string	"tp_mm_timeout_timed_us"
	.byte	0x7
	.uahalf	0x178
	.uaword	0x25a
	.byte	0x38
	.uleb128 0x7
	.string	"tp_mm_timeout_lpa_us"
	.byte	0x7
	.uahalf	0x17b
	.uaword	0x25a
	.byte	0x3c
	.uleb128 0x7
	.string	"tp_range_timeout_lite_us"
	.byte	0x7
	.uahalf	0x17f
	.uaword	0x25a
	.byte	0x40
	.uleb128 0x7
	.string	"tp_range_timeout_timed_us"
	.byte	0x7
	.uahalf	0x182
	.uaword	0x25a
	.byte	0x44
	.uleb128 0x7
	.string	"tp_range_timeout_lpa_us"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x25a
	.byte	0x48
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_tuning_parm_storage_t"
	.byte	0x7
	.uahalf	0x189
	.uaword	0x2c38
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.uahalf	0x191
	.uaword	0x3187
	.uleb128 0x8
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x193
	.uaword	0x1dd
	.byte	0
	.uleb128 0x8
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x194
	.uaword	0x1dd
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_optical_centre_t"
	.byte	0x7
	.uahalf	0x196
	.uaword	0x3163
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.uahalf	0x19d
	.uaword	0x31e5
	.uleb128 0x8
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x19f
	.uaword	0x1dd
	.byte	0
	.uleb128 0x8
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x1dd
	.byte	0x1
	.uleb128 0x8
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x1a1
	.uaword	0x1dd
	.byte	0x2
	.uleb128 0x8
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x1a2
	.uaword	0x1dd
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_user_zone_t"
	.byte	0x7
	.uahalf	0x1a4
	.uaword	0x31a7
	.uleb128 0x9
	.byte	0xe
	.byte	0x7
	.uahalf	0x1ae
	.uaword	0x330c
	.uleb128 0x7
	.string	"intr_mode_distance"
	.byte	0x7
	.uahalf	0x1b1
	.uaword	0x3cc
	.byte	0
	.uleb128 0x7
	.string	"intr_mode_rate"
	.byte	0x7
	.uahalf	0x1b4
	.uaword	0x3cc
	.byte	0x1
	.uleb128 0x7
	.string	"intr_new_measure_ready"
	.byte	0x7
	.uahalf	0x1b9
	.uaword	0x1dd
	.byte	0x2
	.uleb128 0x7
	.string	"intr_no_target"
	.byte	0x7
	.uahalf	0x1bc
	.uaword	0x1dd
	.byte	0x3
	.uleb128 0x7
	.string	"intr_combined_mode"
	.byte	0x7
	.uahalf	0x1c2
	.uaword	0x1dd
	.byte	0x4
	.uleb128 0x7
	.string	"threshold_distance_high"
	.byte	0x7
	.uahalf	0x1ca
	.uaword	0x219
	.byte	0x6
	.uleb128 0x7
	.string	"threshold_distance_low"
	.byte	0x7
	.uahalf	0x1cd
	.uaword	0x219
	.byte	0x8
	.uleb128 0x7
	.string	"threshold_rate_high"
	.byte	0x7
	.uahalf	0x1d0
	.uaword	0x219
	.byte	0xa
	.uleb128 0x7
	.string	"threshold_rate_low"
	.byte	0x7
	.uahalf	0x1d3
	.uaword	0x219
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_GPIO_interrupt_config_t"
	.byte	0x7
	.uahalf	0x1d5
	.uaword	0x3200
	.uleb128 0x9
	.byte	0x10
	.byte	0x7
	.uahalf	0x1e0
	.uaword	0x3453
	.uleb128 0x7
	.string	"vhv_loop_bound"
	.byte	0x7
	.uahalf	0x1e6
	.uaword	0x1dd
	.byte	0
	.uleb128 0x7
	.string	"is_low_power_auto_mode"
	.byte	0x7
	.uahalf	0x1e9
	.uaword	0x1dd
	.byte	0x1
	.uleb128 0x7
	.string	"low_power_auto_range_count"
	.byte	0x7
	.uahalf	0x1ed
	.uaword	0x1dd
	.byte	0x2
	.uleb128 0x7
	.string	"saved_interrupt_config"
	.byte	0x7
	.uahalf	0x1f0
	.uaword	0x1dd
	.byte	0x3
	.uleb128 0x7
	.string	"saved_vhv_init"
	.byte	0x7
	.uahalf	0x1f3
	.uaword	0x1dd
	.byte	0x4
	.uleb128 0x7
	.string	"saved_vhv_timeout"
	.byte	0x7
	.uahalf	0x1f6
	.uaword	0x1dd
	.byte	0x5
	.uleb128 0x7
	.string	"first_run_phasecal_result"
	.byte	0x7
	.uahalf	0x1f9
	.uaword	0x1dd
	.byte	0x6
	.uleb128 0x7
	.string	"dss__total_rate_per_spad_mcps"
	.byte	0x7
	.uahalf	0x1fc
	.uaword	0x25a
	.byte	0x8
	.uleb128 0x7
	.string	"dss__required_spads"
	.byte	0x7
	.uahalf	0x1ff
	.uaword	0x219
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_low_power_auto_data_t"
	.byte	0x7
	.uahalf	0x201
	.uaword	0x3333
	.uleb128 0x9
	.byte	0x40
	.byte	0x7
	.uahalf	0x20b
	.uaword	0x36ab
	.uleb128 0x7
	.string	"range_id"
	.byte	0x7
	.uahalf	0x20f
	.uaword	0x1dd
	.byte	0
	.uleb128 0x7
	.string	"time_stamp"
	.byte	0x7
	.uahalf	0x211
	.uaword	0x25a
	.byte	0x4
	.uleb128 0x8
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x214
	.uaword	0x219
	.byte	0x8
	.uleb128 0x7
	.string	"woi"
	.byte	0x7
	.uahalf	0x216
	.uaword	0x1dd
	.byte	0xa
	.uleb128 0x8
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x219
	.uaword	0x219
	.byte	0xc
	.uleb128 0x7
	.string	"zero_distance_phase"
	.byte	0x7
	.uahalf	0x21b
	.uaword	0x219
	.byte	0xe
	.uleb128 0x7
	.string	"actual_effective_spads"
	.byte	0x7
	.uahalf	0x21d
	.uaword	0x219
	.byte	0x10
	.uleb128 0x7
	.string	"total_periods_elapsed"
	.byte	0x7
	.uahalf	0x220
	.uaword	0x25a
	.byte	0x14
	.uleb128 0x7
	.string	"peak_duration_us"
	.byte	0x7
	.uahalf	0x223
	.uaword	0x25a
	.byte	0x18
	.uleb128 0x7
	.string	"woi_duration_us"
	.byte	0x7
	.uahalf	0x226
	.uaword	0x25a
	.byte	0x1c
	.uleb128 0x7
	.string	"ambient_window_events"
	.byte	0x7
	.uahalf	0x22c
	.uaword	0x25a
	.byte	0x20
	.uleb128 0x7
	.string	"ranging_total_events"
	.byte	0x7
	.uahalf	0x22e
	.uaword	0x25a
	.byte	0x24
	.uleb128 0x7
	.string	"signal_total_events"
	.byte	0x7
	.uahalf	0x231
	.uaword	0x23f
	.byte	0x28
	.uleb128 0x7
	.string	"peak_signal_count_rate_mcps"
	.byte	0x7
	.uahalf	0x237
	.uaword	0x219
	.byte	0x2c
	.uleb128 0x7
	.string	"avg_signal_count_rate_mcps"
	.byte	0x7
	.uahalf	0x239
	.uaword	0x219
	.byte	0x2e
	.uleb128 0x7
	.string	"ambient_count_rate_mcps"
	.byte	0x7
	.uahalf	0x23b
	.uaword	0x219
	.byte	0x30
	.uleb128 0x7
	.string	"total_rate_per_spad_mcps"
	.byte	0x7
	.uahalf	0x23d
	.uaword	0x219
	.byte	0x32
	.uleb128 0x7
	.string	"peak_rate_per_spad_kcps"
	.byte	0x7
	.uahalf	0x23f
	.uaword	0x25a
	.byte	0x34
	.uleb128 0x8
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x244
	.uaword	0x219
	.byte	0x38
	.uleb128 0x7
	.string	"median_phase"
	.byte	0x7
	.uahalf	0x249
	.uaword	0x219
	.byte	0x3a
	.uleb128 0x8
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x24e
	.uaword	0x1fd
	.byte	0x3c
	.uleb128 0x7
	.string	"range_status"
	.byte	0x7
	.uahalf	0x255
	.uaword	0x1dd
	.byte	0x3e
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_range_data_t"
	.byte	0x7
	.uahalf	0x257
	.uaword	0x3478
	.uleb128 0x9
	.byte	0x84
	.byte	0x7
	.uahalf	0x260
	.uaword	0x3725
	.uleb128 0x8
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x262
	.uaword	0x2d1
	.byte	0
	.uleb128 0x8
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x264
	.uaword	0x2d1
	.byte	0x1
	.uleb128 0x7
	.string	"stream_count"
	.byte	0x7
	.uahalf	0x266
	.uaword	0x1dd
	.byte	0x2
	.uleb128 0x7
	.string	"device_status"
	.byte	0x7
	.uahalf	0x269
	.uaword	0x1dd
	.byte	0x3
	.uleb128 0x8
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x26c
	.uaword	0x3725
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.uaword	0x36ab
	.uaword	0x3735
	.uleb128 0xc
	.uaword	0x2a7
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_range_results_t"
	.byte	0x7
	.uahalf	0x26f
	.uaword	0x36c7
	.uleb128 0x9
	.byte	0x1c
	.byte	0x7
	.uahalf	0x279
	.uaword	0x37f5
	.uleb128 0x8
	.uaword	.LASF20
	.byte	0x7
	.uahalf	0x27b
	.uaword	0x1dd
	.byte	0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x27d
	.uaword	0x1dd
	.byte	0x1
	.uleb128 0x8
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x27f
	.uaword	0x219
	.byte	0x2
	.uleb128 0x7
	.string	"no_of_samples"
	.byte	0x7
	.uahalf	0x281
	.uaword	0x1dd
	.byte	0x4
	.uleb128 0x7
	.string	"effective_spads"
	.byte	0x7
	.uahalf	0x283
	.uaword	0x25a
	.byte	0x8
	.uleb128 0x8
	.uaword	.LASF21
	.byte	0x7
	.uahalf	0x285
	.uaword	0x25a
	.byte	0xc
	.uleb128 0x8
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x287
	.uaword	0x25a
	.byte	0x10
	.uleb128 0x8
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x289
	.uaword	0x23f
	.byte	0x14
	.uleb128 0x7
	.string	"range_mm_offset"
	.byte	0x7
	.uahalf	0x28c
	.uaword	0x23f
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_offset_range_data_t"
	.byte	0x7
	.uahalf	0x28f
	.uaword	0x3754
	.uleb128 0x9
	.byte	0x5c
	.byte	0x7
	.uahalf	0x299
	.uaword	0x3891
	.uleb128 0x8
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x29b
	.uaword	0x1fd
	.byte	0
	.uleb128 0x7
	.string	"cal_status"
	.byte	0x7
	.uahalf	0x29d
	.uaword	0x3ef
	.byte	0x2
	.uleb128 0x7
	.string	"cal_report"
	.byte	0x7
	.uahalf	0x29f
	.uaword	0x1dd
	.byte	0x3
	.uleb128 0x7
	.string	"max_results"
	.byte	0x7
	.uahalf	0x2a1
	.uaword	0x1dd
	.byte	0x4
	.uleb128 0x7
	.string	"active_results"
	.byte	0x7
	.uahalf	0x2a4
	.uaword	0x1dd
	.byte	0x5
	.uleb128 0x8
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x2a6
	.uaword	0x3891
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.uaword	0x37f5
	.uaword	0x38a1
	.uleb128 0xc
	.uaword	0x2a7
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_offset_range_results_t"
	.byte	0x7
	.uahalf	0x2a9
	.uaword	0x3818
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.uahalf	0x2b4
	.uaword	0x399d
	.uleb128 0x7
	.string	"result__mm_inner_actual_effective_spads"
	.byte	0x7
	.uahalf	0x2b6
	.uaword	0x219
	.byte	0
	.uleb128 0x7
	.string	"result__mm_outer_actual_effective_spads"
	.byte	0x7
	.uahalf	0x2b8
	.uaword	0x219
	.byte	0x2
	.uleb128 0x7
	.string	"result__mm_inner_peak_signal_count_rtn_mcps"
	.byte	0x7
	.uahalf	0x2ba
	.uaword	0x219
	.byte	0x4
	.uleb128 0x7
	.string	"result__mm_outer_peak_signal_count_rtn_mcps"
	.byte	0x7
	.uahalf	0x2bc
	.uaword	0x219
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_additional_offset_cal_data_t"
	.byte	0x7
	.uahalf	0x2bf
	.uaword	0x38c7
	.uleb128 0x9
	.byte	0x3a
	.byte	0x7
	.uahalf	0x2ca
	.uaword	0x3a1c
	.uleb128 0x8
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x2cc
	.uaword	0x1fd
	.byte	0
	.uleb128 0x7
	.string	"max_samples"
	.byte	0x7
	.uahalf	0x2ce
	.uaword	0x219
	.byte	0x2
	.uleb128 0x8
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x2d0
	.uaword	0x219
	.byte	0x4
	.uleb128 0x8
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x2d2
	.uaword	0x219
	.byte	0x6
	.uleb128 0x8
	.uaword	.LASF21
	.byte	0x7
	.uahalf	0x2d4
	.uaword	0x3a1c
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.uaword	0x219
	.uaword	0x3a2c
	.uleb128 0xc
	.uaword	0x2a7
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_cal_peak_rate_map_t"
	.byte	0x7
	.uahalf	0x2d7
	.uaword	0x39c9
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.uahalf	0x2e1
	.uaword	0x3a7f
	.uleb128 0x7
	.string	"standard_ranging_gain_factor"
	.byte	0x7
	.uahalf	0x2e3
	.uaword	0x219
	.byte	0
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_gain_calibration_data_t"
	.byte	0x7
	.uahalf	0x2e6
	.uaword	0x3a4f
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.uahalf	0x2f0
	.uaword	0x3b59
	.uleb128 0x8
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x2f2
	.uaword	0x2d1
	.byte	0
	.uleb128 0x7
	.string	"cfg_stream_count"
	.byte	0x7
	.uahalf	0x2f4
	.uaword	0x1dd
	.byte	0x1
	.uleb128 0x7
	.string	"cfg_gph_id"
	.byte	0x7
	.uahalf	0x2f7
	.uaword	0x1dd
	.byte	0x2
	.uleb128 0x7
	.string	"cfg_timing_status"
	.byte	0x7
	.uahalf	0x2f9
	.uaword	0x1dd
	.byte	0x3
	.uleb128 0x8
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x2fc
	.uaword	0x2d1
	.byte	0x4
	.uleb128 0x7
	.string	"rd_stream_count"
	.byte	0x7
	.uahalf	0x2fe
	.uaword	0x1dd
	.byte	0x5
	.uleb128 0x7
	.string	"rd_gph_id"
	.byte	0x7
	.uahalf	0x300
	.uaword	0x1dd
	.byte	0x6
	.uleb128 0x7
	.string	"rd_timing_status"
	.byte	0x7
	.uahalf	0x302
	.uaword	0x1dd
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_ll_driver_state_t"
	.byte	0x7
	.uahalf	0x305
	.uaword	0x3aa6
	.uleb128 0x9
	.byte	0x14
	.byte	0x7
	.uahalf	0x30a
	.uaword	0x3c0c
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x30c
	.uaword	0x219
	.byte	0
	.uleb128 0x8
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x30f
	.uaword	0x25a
	.byte	0x4
	.uleb128 0x8
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x312
	.uaword	0x25a
	.byte	0x8
	.uleb128 0x8
	.uaword	.LASF25
	.byte	0x7
	.uahalf	0x315
	.uaword	0x25a
	.byte	0xc
	.uleb128 0x7
	.string	"pre_num_of_samples"
	.byte	0x7
	.uahalf	0x319
	.uaword	0x1dd
	.byte	0x10
	.uleb128 0x7
	.string	"mm1_num_of_samples"
	.byte	0x7
	.uahalf	0x31c
	.uaword	0x1dd
	.byte	0x11
	.uleb128 0x7
	.string	"mm2_num_of_samples"
	.byte	0x7
	.uahalf	0x31f
	.uaword	0x1dd
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_offsetcal_config_t"
	.byte	0x7
	.uahalf	0x323
	.uaword	0x3b7a
	.uleb128 0xd
	.uahalf	0x2f4
	.byte	0x7
	.uahalf	0x32e
	.uaword	0x3f9e
	.uleb128 0x7
	.string	"wait_method"
	.byte	0x7
	.uahalf	0x330
	.uaword	0x1dd
	.byte	0
	.uleb128 0x8
	.uaword	.LASF20
	.byte	0x7
	.uahalf	0x332
	.uaword	0x2eb
	.byte	0x1
	.uleb128 0x7
	.string	"measurement_mode"
	.byte	0x7
	.uahalf	0x334
	.uaword	0x30b
	.byte	0x2
	.uleb128 0x7
	.string	"offset_calibration_mode"
	.byte	0x7
	.uahalf	0x336
	.uaword	0x330
	.byte	0x3
	.uleb128 0x7
	.string	"offset_correction_mode"
	.byte	0x7
	.uahalf	0x338
	.uaword	0x354
	.byte	0x4
	.uleb128 0x8
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x33a
	.uaword	0x25a
	.byte	0x8
	.uleb128 0x8
	.uaword	.LASF25
	.byte	0x7
	.uahalf	0x33c
	.uaword	0x25a
	.byte	0xc
	.uleb128 0x8
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x33e
	.uaword	0x25a
	.byte	0x10
	.uleb128 0x7
	.string	"inter_measurement_period_ms"
	.byte	0x7
	.uahalf	0x340
	.uaword	0x25a
	.byte	0x14
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x342
	.uaword	0x219
	.byte	0x18
	.uleb128 0x7
	.string	"fw_ready_poll_duration_ms"
	.byte	0x7
	.uahalf	0x345
	.uaword	0x25a
	.byte	0x1c
	.uleb128 0x7
	.string	"fw_ready"
	.byte	0x7
	.uahalf	0x347
	.uaword	0x1dd
	.byte	0x20
	.uleb128 0x7
	.string	"debug_mode"
	.byte	0x7
	.uahalf	0x349
	.uaword	0x1dd
	.byte	0x21
	.uleb128 0x7
	.string	"version"
	.byte	0x7
	.uahalf	0x34d
	.uaword	0x290a
	.byte	0x24
	.uleb128 0x7
	.string	"ll_state"
	.byte	0x7
	.uahalf	0x350
	.uaword	0x3b59
	.byte	0x2c
	.uleb128 0x7
	.string	"gpio_interrupt_config"
	.byte	0x7
	.uahalf	0x353
	.uaword	0x330c
	.byte	0x34
	.uleb128 0x7
	.string	"customer"
	.byte	0x7
	.uahalf	0x356
	.uaword	0x7e6
	.byte	0x42
	.uleb128 0x7
	.string	"cal_peak_rate_map"
	.byte	0x7
	.uahalf	0x357
	.uaword	0x3a2c
	.byte	0x5a
	.uleb128 0x7
	.string	"add_off_cal_data"
	.byte	0x7
	.uahalf	0x358
	.uaword	0x399d
	.byte	0x94
	.uleb128 0x7
	.string	"gain_cal"
	.byte	0x7
	.uahalf	0x359
	.uaword	0x3a7f
	.byte	0x9c
	.uleb128 0x7
	.string	"mm_roi"
	.byte	0x7
	.uahalf	0x35a
	.uaword	0x31e5
	.byte	0x9e
	.uleb128 0x7
	.string	"optical_centre"
	.byte	0x7
	.uahalf	0x35b
	.uaword	0x3187
	.byte	0xa2
	.uleb128 0x7
	.string	"tuning_parms"
	.byte	0x7
	.uahalf	0x35e
	.uaword	0x313e
	.byte	0xa4
	.uleb128 0x7
	.string	"rtn_good_spads"
	.byte	0x7
	.uahalf	0x361
	.uaword	0x3f9e
	.byte	0xf0
	.uleb128 0xe
	.string	"refspadchar"
	.byte	0x7
	.uahalf	0x364
	.uaword	0x29c2
	.uahalf	0x110
	.uleb128 0xe
	.string	"ssc_cfg"
	.byte	0x7
	.uahalf	0x365
	.uaword	0x2a5b
	.uahalf	0x120
	.uleb128 0xe
	.string	"xtalk_cfg"
	.byte	0x7
	.uahalf	0x366
	.uaword	0x2c1b
	.uahalf	0x12c
	.uleb128 0xe
	.string	"offsetcal_cfg"
	.byte	0x7
	.uahalf	0x367
	.uaword	0x3c0c
	.uahalf	0x144
	.uleb128 0xe
	.string	"stat_nvm"
	.byte	0x7
	.uahalf	0x36a
	.uaword	0x571
	.uahalf	0x158
	.uleb128 0xe
	.string	"stat_cfg"
	.byte	0x7
	.uahalf	0x36b
	.uaword	0xc46
	.uahalf	0x164
	.uleb128 0xe
	.string	"gen_cfg"
	.byte	0x7
	.uahalf	0x36c
	.uaword	0xeb9
	.uahalf	0x184
	.uleb128 0xe
	.string	"tim_cfg"
	.byte	0x7
	.uahalf	0x36d
	.uaword	0x116f
	.uahalf	0x19c
	.uleb128 0xe
	.string	"dyn_cfg"
	.byte	0x7
	.uahalf	0x36e
	.uaword	0x13e1
	.uahalf	0x1b4
	.uleb128 0xe
	.string	"sys_ctrl"
	.byte	0x7
	.uahalf	0x36f
	.uaword	0x14b0
	.uahalf	0x1c8
	.uleb128 0xe
	.string	"sys_results"
	.byte	0x7
	.uahalf	0x370
	.uaword	0x18bf
	.uahalf	0x1ce
	.uleb128 0xe
	.string	"nvm_copy_data"
	.byte	0x7
	.uahalf	0x371
	.uaword	0x289b
	.uahalf	0x1fa
	.uleb128 0xe
	.string	"offset_results"
	.byte	0x7
	.uahalf	0x374
	.uaword	0x38a1
	.uahalf	0x22c
	.uleb128 0xe
	.string	"core_results"
	.byte	0x7
	.uahalf	0x377
	.uaword	0x1a81
	.uahalf	0x288
	.uleb128 0xe
	.string	"dbg_results"
	.byte	0x7
	.uahalf	0x378
	.uaword	0x20ca
	.uahalf	0x2ac
	.uleb128 0xe
	.string	"low_power_auto_data"
	.byte	0x7
	.uahalf	0x37c
	.uaword	0x3453
	.uahalf	0x2e4
	.byte	0
	.uleb128 0xb
	.uaword	0x1dd
	.uaword	0x3fae
	.uleb128 0xc
	.uaword	0x2a7
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_LLDriverData_t"
	.byte	0x7
	.uahalf	0x388
	.uaword	0x3c2e
	.uleb128 0x9
	.byte	0x84
	.byte	0x7
	.uahalf	0x392
	.uaword	0x3fed
	.uleb128 0x7
	.string	"range_results"
	.byte	0x7
	.uahalf	0x395
	.uaword	0x3735
	.byte	0
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_LLDriverResults_t"
	.byte	0x7
	.uahalf	0x397
	.uaword	0x3fcc
	.uleb128 0xd
	.uahalf	0x208
	.byte	0x7
	.uahalf	0x3fb
	.uaword	0x409c
	.uleb128 0x7
	.string	"spad_type"
	.byte	0x7
	.uahalf	0x3fd
	.uaword	0x1dd
	.byte	0
	.uleb128 0x7
	.string	"buffer_size"
	.byte	0x7
	.uahalf	0x3ff
	.uaword	0x219
	.byte	0x2
	.uleb128 0x7
	.string	"rate_data"
	.byte	0x7
	.uahalf	0x401
	.uaword	0x409c
	.byte	0x4
	.uleb128 0xe
	.string	"no_of_values"
	.byte	0x7
	.uahalf	0x403
	.uaword	0x219
	.uahalf	0x204
	.uleb128 0xe
	.string	"fractional_bits"
	.byte	0x7
	.uahalf	0x405
	.uaword	0x1dd
	.uahalf	0x206
	.uleb128 0xe
	.string	"error_status"
	.byte	0x7
	.uahalf	0x407
	.uaword	0x1dd
	.uahalf	0x207
	.byte	0
	.uleb128 0xb
	.uaword	0x219
	.uaword	0x40ac
	.uleb128 0xc
	.uaword	0x2a7
	.byte	0xff
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_spad_rate_data_t"
	.byte	0x7
	.uahalf	0x40a
	.uaword	0x400e
	.uleb128 0x3
	.string	"VL53L1_PresetModes"
	.byte	0x8
	.byte	0x88
	.uaword	0x1dd
	.uleb128 0x3
	.string	"VL53L1_DistanceModes"
	.byte	0x8
	.byte	0x96
	.uaword	0x1dd
	.uleb128 0x9
	.byte	0x1c
	.byte	0x8
	.uahalf	0x11e
	.uaword	0x4206
	.uleb128 0x7
	.string	"PresetMode"
	.byte	0x8
	.uahalf	0x11f
	.uaword	0x40cc
	.byte	0
	.uleb128 0x7
	.string	"DistanceMode"
	.byte	0x8
	.uahalf	0x121
	.uaword	0x40e6
	.byte	0x1
	.uleb128 0x7
	.string	"InternalDistanceMode"
	.byte	0x8
	.uahalf	0x123
	.uaword	0x40e6
	.byte	0x2
	.uleb128 0x7
	.string	"NewDistanceMode"
	.byte	0x8
	.uahalf	0x127
	.uaword	0x40e6
	.byte	0x3
	.uleb128 0x7
	.string	"MeasurementTimingBudgetMicroSeconds"
	.byte	0x8
	.uahalf	0x12b
	.uaword	0x25a
	.byte	0x4
	.uleb128 0x7
	.string	"LimitChecksEnable"
	.byte	0x8
	.uahalf	0x12d
	.uaword	0x4206
	.byte	0x8
	.uleb128 0x7
	.string	"LimitChecksStatus"
	.byte	0x8
	.uahalf	0x12f
	.uaword	0x4206
	.byte	0xa
	.uleb128 0x7
	.string	"LimitChecksValue"
	.byte	0x8
	.uahalf	0x133
	.uaword	0x4216
	.byte	0xc
	.uleb128 0x7
	.string	"LimitChecksCurrent"
	.byte	0x8
	.uahalf	0x135
	.uaword	0x4216
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.uaword	0x1dd
	.uaword	0x4216
	.uleb128 0xc
	.uaword	0x2a7
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.uaword	0x2bb
	.uaword	0x4226
	.uleb128 0xc
	.uaword	0x2a7
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_DeviceParameters_t"
	.byte	0x8
	.uahalf	0x139
	.uaword	0x4102
	.uleb128 0x4
	.string	"VL53L1_State"
	.byte	0x8
	.uahalf	0x141
	.uaword	0x1dd
	.uleb128 0xd
	.uahalf	0x398
	.byte	0x8
	.uahalf	0x222
	.uaword	0x42bb
	.uleb128 0x7
	.string	"LLData"
	.byte	0x8
	.uahalf	0x223
	.uaword	0x3fae
	.byte	0
	.uleb128 0xe
	.string	"llresults"
	.byte	0x8
	.uahalf	0x226
	.uaword	0x3fed
	.uahalf	0x2f4
	.uleb128 0xe
	.string	"PalState"
	.byte	0x8
	.uahalf	0x229
	.uaword	0x4248
	.uahalf	0x378
	.uleb128 0xe
	.string	"CurrentParameters"
	.byte	0x8
	.uahalf	0x22a
	.uaword	0x4226
	.uahalf	0x37c
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_DevData_t"
	.byte	0x8
	.uahalf	0x22d
	.uaword	0x425d
	.uleb128 0x5
	.byte	0x4
	.byte	0x9
	.byte	0x4a
	.uaword	0x42eb
	.uleb128 0x6
	.string	"dummy"
	.byte	0x9
	.byte	0x4b
	.uaword	0x25a
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"I2C_HandleTypeDef"
	.byte	0x9
	.byte	0x4c
	.uaword	0x42d4
	.uleb128 0xf
	.uahalf	0x3a4
	.byte	0x9
	.byte	0x4e
	.uaword	0x4398
	.uleb128 0x6
	.string	"Data"
	.byte	0x9
	.byte	0x50
	.uaword	0x42bb
	.byte	0
	.uleb128 0x10
	.string	"I2cDevAddr"
	.byte	0x9
	.byte	0x52
	.uaword	0x1dd
	.uahalf	0x398
	.uleb128 0x10
	.string	"comms_type"
	.byte	0x9
	.byte	0x53
	.uaword	0x1dd
	.uahalf	0x399
	.uleb128 0x10
	.string	"comms_speed_khz"
	.byte	0x9
	.byte	0x54
	.uaword	0x219
	.uahalf	0x39a
	.uleb128 0x10
	.string	"new_data_ready_poll_duration_ms"
	.byte	0x9
	.byte	0x55
	.uaword	0x25a
	.uahalf	0x39c
	.uleb128 0x10
	.string	"I2cHandle"
	.byte	0x9
	.byte	0x56
	.uaword	0x4398
	.uahalf	0x3a0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x42eb
	.uleb128 0x3
	.string	"VL53L1_Dev_t"
	.byte	0x9
	.byte	0x58
	.uaword	0x4304
	.uleb128 0x3
	.string	"VL53L1_DEV"
	.byte	0x9
	.byte	0x5a
	.uaword	0x43c4
	.uleb128 0x11
	.byte	0x4
	.uaword	0x439e
	.uleb128 0x12
	.byte	0x1
	.string	"VL53L1_set_firmware_enable_register"
	.byte	0x1
	.uahalf	0x2ec
	.byte	0x1
	.uaword	0x3ef
	.byte	0x1
	.uaword	0x442e
	.uleb128 0x13
	.string	"Dev"
	.byte	0x1
	.uahalf	0x2ed
	.uaword	0x43b2
	.uleb128 0x14
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x2ee
	.uaword	0x1dd
	.uleb128 0x15
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x2f4
	.uaword	0x3ef
	.uleb128 0x15
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x2f5
	.uaword	0x442e
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x3fae
	.uleb128 0x12
	.byte	0x1
	.string	"VL53L1_set_powerforce_register"
	.byte	0x1
	.uahalf	0x327
	.byte	0x1
	.uaword	0x3ef
	.byte	0x1
	.uaword	0x4493
	.uleb128 0x13
	.string	"Dev"
	.byte	0x1
	.uahalf	0x328
	.uaword	0x43b2
	.uleb128 0x14
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x329
	.uaword	0x1dd
	.uleb128 0x15
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x32f
	.uaword	0x3ef
	.uleb128 0x15
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x330
	.uaword	0x442e
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"VL53L1_encode_timeout"
	.byte	0x1
	.uahalf	0x4d0
	.byte	0x1
	.uaword	0x219
	.byte	0x1
	.uaword	0x44f1
	.uleb128 0x14
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x4d0
	.uaword	0x25a
	.uleb128 0x15
	.uaword	.LASF30
	.byte	0x1
	.uahalf	0x4d6
	.uaword	0x219
	.uleb128 0x16
	.string	"ls_byte"
	.byte	0x1
	.uahalf	0x4d7
	.uaword	0x25a
	.uleb128 0x16
	.string	"ms_byte"
	.byte	0x1
	.uahalf	0x4d8
	.uaword	0x219
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"VL53L1_calc_timeout_mclks"
	.byte	0x1
	.uahalf	0x42c
	.byte	0x1
	.uaword	0x25a
	.byte	0x1
	.uaword	0x453f
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x42d
	.uaword	0x25a
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x42e
	.uaword	0x25a
	.uleb128 0x15
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x439
	.uaword	0x25a
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"VL53L1_decode_timeout"
	.byte	0x1
	.uahalf	0x4ea
	.byte	0x1
	.uaword	0x25a
	.byte	0x1
	.uaword	0x458c
	.uleb128 0x14
	.uaword	.LASF30
	.byte	0x1
	.uahalf	0x4ea
	.uaword	0x219
	.uleb128 0x16
	.string	"timeout_macro_clks"
	.byte	0x1
	.uahalf	0x4f1
	.uaword	0x25a
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"VL53L1_calc_timeout_us"
	.byte	0x1
	.uahalf	0x46e
	.byte	0x1
	.uaword	0x25a
	.byte	0x1
	.uaword	0x45e3
	.uleb128 0x14
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x46f
	.uaword	0x25a
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x470
	.uaword	0x25a
	.uleb128 0x15
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x47b
	.uaword	0x25a
	.uleb128 0x16
	.string	"tmp"
	.byte	0x1
	.uahalf	0x47c
	.uaword	0x290
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"VL53L1_calc_encoded_timeout"
	.byte	0x1
	.uahalf	0x447
	.byte	0x1
	.uaword	0x219
	.byte	0x1
	.uaword	0x463f
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x448
	.uaword	0x25a
	.uleb128 0x14
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x449
	.uaword	0x25a
	.uleb128 0x15
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x454
	.uaword	0x25a
	.uleb128 0x15
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x455
	.uaword	0x219
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"VL53L1_decode_zone_size"
	.byte	0x1
	.uahalf	0x5bd
	.byte	0x1
	.byte	0x1
	.uaword	0x468e
	.uleb128 0x14
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x5be
	.uaword	0x1dd
	.uleb128 0x13
	.string	"pwidth"
	.byte	0x1
	.uahalf	0x5bf
	.uaword	0x468e
	.uleb128 0x13
	.string	"pheight"
	.byte	0x1
	.uahalf	0x5c0
	.uaword	0x468e
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x1dd
	.uleb128 0x17
	.byte	0x1
	.string	"VL53L1_encode_row_col"
	.byte	0x1
	.uahalf	0x5ac
	.byte	0x1
	.byte	0x1
	.uaword	0x46e3
	.uleb128 0x13
	.string	"row"
	.byte	0x1
	.uahalf	0x5ad
	.uaword	0x1dd
	.uleb128 0x13
	.string	"col"
	.byte	0x1
	.uahalf	0x5ae
	.uaword	0x1dd
	.uleb128 0x13
	.string	"pspad_number"
	.byte	0x1
	.uahalf	0x5af
	.uaword	0x468e
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"VL53L1_spad_number_to_byte_bit_index"
	.byte	0x1
	.uahalf	0x596
	.byte	0x1
	.byte	0x1
	.uaword	0x4759
	.uleb128 0x14
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x597
	.uaword	0x1dd
	.uleb128 0x13
	.string	"pbyte_index"
	.byte	0x1
	.uahalf	0x598
	.uaword	0x468e
	.uleb128 0x13
	.string	"pbit_index"
	.byte	0x1
	.uahalf	0x599
	.uaword	0x468e
	.uleb128 0x13
	.string	"pbit_mask"
	.byte	0x1
	.uahalf	0x59a
	.uaword	0x468e
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"VL53L1_is_aperture_location"
	.byte	0x1
	.uahalf	0x61a
	.byte	0x1
	.uaword	0x1dd
	.byte	0x1
	.uaword	0x47c9
	.uleb128 0x13
	.string	"row"
	.byte	0x1
	.uahalf	0x61b
	.uaword	0x1dd
	.uleb128 0x13
	.string	"col"
	.byte	0x1
	.uahalf	0x61c
	.uaword	0x1dd
	.uleb128 0x15
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x622
	.uaword	0x1dd
	.uleb128 0x16
	.string	"mod_row"
	.byte	0x1
	.uahalf	0x623
	.uaword	0x1dd
	.uleb128 0x16
	.string	"mod_col"
	.byte	0x1
	.uahalf	0x624
	.uaword	0x1dd
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"VL53L1_set_GPIO_distance_threshold"
	.byte	0x1
	.uahalf	0x6d5
	.byte	0x1
	.uaword	0x3ef
	.byte	0x1
	.uaword	0x4838
	.uleb128 0x13
	.string	"Dev"
	.byte	0x1
	.uahalf	0x6d6
	.uaword	0x43b2
	.uleb128 0x14
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x6d7
	.uaword	0x219
	.uleb128 0x14
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x6d8
	.uaword	0x219
	.uleb128 0x15
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x6da
	.uaword	0x3ef
	.uleb128 0x15
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x6dc
	.uaword	0x442e
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"VL53L1_set_GPIO_rate_threshold"
	.byte	0x1
	.uahalf	0x6eb
	.byte	0x1
	.uaword	0x3ef
	.byte	0x1
	.uaword	0x48a3
	.uleb128 0x13
	.string	"Dev"
	.byte	0x1
	.uahalf	0x6ec
	.uaword	0x43b2
	.uleb128 0x14
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x6ed
	.uaword	0x219
	.uleb128 0x14
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x6ee
	.uaword	0x219
	.uleb128 0x15
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x6f0
	.uaword	0x3ef
	.uleb128 0x15
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x6f2
	.uaword	0x442e
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"VL53L1_disable_firmware"
	.byte	0x1
	.uahalf	0x314
	.byte	0x1
	.uaword	0x3ef
	.byte	0x1
	.uaword	0x48e3
	.uleb128 0x13
	.string	"Dev"
	.byte	0x1
	.uahalf	0x315
	.uaword	0x43b2
	.uleb128 0x15
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x31b
	.uaword	0x3ef
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"VL53L1_decode_unsigned_integer"
	.byte	0x1
	.uahalf	0x56f
	.byte	0x1
	.uaword	0x25a
	.byte	0x1
	.uaword	0x494a
	.uleb128 0x14
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x570
	.uaword	0x468e
	.uleb128 0x14
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x571
	.uaword	0x1dd
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.uahalf	0x577
	.uaword	0x1dd
	.uleb128 0x16
	.string	"decoded_value"
	.byte	0x1
	.uahalf	0x578
	.uaword	0x25a
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"VL53L1_enable_firmware"
	.byte	0x1
	.uahalf	0x301
	.byte	0x1
	.uaword	0x3ef
	.byte	0x1
	.uaword	0x4989
	.uleb128 0x13
	.string	"Dev"
	.byte	0x1
	.uahalf	0x302
	.uaword	0x43b2
	.uleb128 0x15
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x308
	.uaword	0x3ef
	.byte	0
	.uleb128 0x18
	.uaword	0x4493
	.uaword	.LFB57
	.uaword	.LFE57
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x49c3
	.uleb128 0x19
	.uaword	0x44b8
	.uaword	.LLST0
	.uleb128 0x1a
	.uaword	0x44c4
	.byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uleb128 0x1a
	.uaword	0x44d0
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x44e0
	.uaword	.LLST1
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"VL53L1_init_version"
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4a06
	.uleb128 0x1d
	.string	"Dev"
	.byte	0x1
	.byte	0x64
	.uaword	0x43b2
	.byte	0x1
	.byte	0x64
	.uleb128 0x1e
	.uaword	.LASF28
	.byte	0x1
	.byte	0x6a
	.uaword	0x442e
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"VL53L1_init_ll_driver_state"
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4a76
	.uleb128 0x1d
	.string	"Dev"
	.byte	0x1
	.byte	0x74
	.uaword	0x43b2
	.byte	0x1
	.byte	0x64
	.uleb128 0x1d
	.string	"device_state"
	.byte	0x1
	.byte	0x75
	.uaword	0x2d1
	.byte	0x1
	.byte	0x54
	.uleb128 0x1e
	.uaword	.LASF28
	.byte	0x1
	.byte	0x7b
	.uaword	0x442e
	.byte	0x1
	.byte	0x64
	.uleb128 0x1e
	.uaword	.LASF40
	.byte	0x1
	.byte	0x7c
	.uaword	0x4a76
	.byte	0x3
	.byte	0x84
	.sleb128 44
	.byte	0x9f
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x3b59
	.uleb128 0x1f
	.byte	0x1
	.string	"VL53L1_update_ll_driver_rd_state"
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.uaword	0x3ef
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4aeb
	.uleb128 0x1d
	.string	"Dev"
	.byte	0x1
	.byte	0x8c
	.uaword	0x43b2
	.byte	0x1
	.byte	0x64
	.uleb128 0x20
	.uaword	.LASF27
	.byte	0x1
	.byte	0x97
	.uaword	0x3ef
	.byte	0
	.uleb128 0x1e
	.uaword	.LASF28
	.byte	0x1
	.byte	0x98
	.uaword	0x442e
	.byte	0x1
	.byte	0x64
	.uleb128 0x1e
	.uaword	.LASF40
	.byte	0x1
	.byte	0x99
	.uaword	0x4a76
	.byte	0x3
	.byte	0x84
	.sleb128 44
	.byte	0x9f
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_check_ll_driver_rd_state"
	.byte	0x1
	.uahalf	0x100
	.byte	0x1
	.uaword	0x3ef
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4bd5
	.uleb128 0x22
	.string	"Dev"
	.byte	0x1
	.uahalf	0x101
	.uaword	0x43b2
	.byte	0x1
	.byte	0x64
	.uleb128 0x23
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x10a
	.uaword	0x3ef
	.uaword	.LLST2
	.uleb128 0x24
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x10b
	.uaword	0x442e
	.byte	0x1
	.byte	0x64
	.uleb128 0x24
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x10e
	.uaword	0x4a76
	.byte	0x3
	.byte	0x84
	.sleb128 44
	.byte	0x9f
	.uleb128 0x25
	.string	"psys_results"
	.byte	0x1
	.uahalf	0x10f
	.uaword	0x4bd5
	.byte	0x4
	.byte	0x84
	.sleb128 462
	.byte	0x9f
	.uleb128 0x26
	.string	"device_range_status"
	.byte	0x1
	.uahalf	0x111
	.uaword	0x1dd
	.uaword	.LLST3
	.uleb128 0x26
	.string	"device_stream_count"
	.byte	0x1
	.uahalf	0x112
	.uaword	0x1dd
	.uaword	.LLST4
	.uleb128 0x26
	.string	"device_gph_id"
	.byte	0x1
	.uahalf	0x113
	.uaword	0x1dd
	.uaword	.LLST5
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x18bf
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_update_ll_driver_cfg_state"
	.byte	0x1
	.uahalf	0x15e
	.byte	0x1
	.uaword	0x3ef
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4c50
	.uleb128 0x22
	.string	"Dev"
	.byte	0x1
	.uahalf	0x15f
	.uaword	0x43b2
	.byte	0x1
	.byte	0x64
	.uleb128 0x27
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x165
	.uaword	0x3ef
	.byte	0
	.uleb128 0x24
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x166
	.uaword	0x442e
	.byte	0x1
	.byte	0x64
	.uleb128 0x24
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x169
	.uaword	0x4a76
	.byte	0x3
	.byte	0x84
	.sleb128 44
	.byte	0x9f
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"VL53L1_copy_rtn_good_spads_to_buffer"
	.byte	0x1
	.uahalf	0x1b6
	.byte	0x1
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4ca9
	.uleb128 0x22
	.string	"pdata"
	.byte	0x1
	.uahalf	0x1b7
	.uaword	0x4ca9
	.byte	0x1
	.byte	0x64
	.uleb128 0x29
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x1b8
	.uaword	0x468e
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x289b
	.uleb128 0x28
	.byte	0x1
	.string	"VL53L1_init_system_results"
	.byte	0x1
	.uahalf	0x1e1
	.byte	0x1
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4cf0
	.uleb128 0x22
	.string	"pdata"
	.byte	0x1
	.uahalf	0x1e2
	.uaword	0x4bd5
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"VL53L1_i2c_encode_uint16_t"
	.byte	0x1
	.uahalf	0x208
	.byte	0x1
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4d6b
	.uleb128 0x2a
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x209
	.uaword	0x219
	.uaword	.LLST6
	.uleb128 0x29
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x20a
	.uaword	0x219
	.byte	0x1
	.byte	0x55
	.uleb128 0x29
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x20b
	.uaword	0x468e
	.byte	0x1
	.byte	0x64
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.uahalf	0x212
	.uaword	0x219
	.uaword	.LLST7
	.uleb128 0x23
	.uaword	.LASF19
	.byte	0x1
	.uahalf	0x213
	.uaword	0x219
	.uaword	.LLST8
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_i2c_decode_uint16_t"
	.byte	0x1
	.uahalf	0x21d
	.byte	0x1
	.uaword	0x219
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4dd0
	.uleb128 0x2a
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x21e
	.uaword	0x219
	.uaword	.LLST9
	.uleb128 0x2a
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x21f
	.uaword	0x468e
	.uaword	.LLST10
	.uleb128 0x23
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x226
	.uaword	0x219
	.uaword	.LLST11
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"VL53L1_i2c_encode_int16_t"
	.byte	0x1
	.uahalf	0x230
	.byte	0x1
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4e4a
	.uleb128 0x2a
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x231
	.uaword	0x1fd
	.uaword	.LLST12
	.uleb128 0x29
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x232
	.uaword	0x219
	.byte	0x1
	.byte	0x55
	.uleb128 0x29
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x233
	.uaword	0x468e
	.byte	0x1
	.byte	0x64
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.uahalf	0x23a
	.uaword	0x219
	.uaword	.LLST13
	.uleb128 0x23
	.uaword	.LASF19
	.byte	0x1
	.uahalf	0x23b
	.uaword	0x1fd
	.uaword	.LLST14
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_i2c_decode_int16_t"
	.byte	0x1
	.uahalf	0x245
	.byte	0x1
	.uaword	0x1fd
	.uaword	.LFB10
	.uaword	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4eae
	.uleb128 0x2a
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x246
	.uaword	0x219
	.uaword	.LLST15
	.uleb128 0x2a
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x247
	.uaword	0x468e
	.uaword	.LLST16
	.uleb128 0x23
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x24e
	.uaword	0x1fd
	.uaword	.LLST17
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"VL53L1_i2c_encode_uint32_t"
	.byte	0x1
	.uahalf	0x25c
	.byte	0x1
	.uaword	.LFB11
	.uaword	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4f27
	.uleb128 0x2a
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x25d
	.uaword	0x25a
	.uaword	.LLST18
	.uleb128 0x29
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x25e
	.uaword	0x219
	.byte	0x1
	.byte	0x55
	.uleb128 0x29
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x25f
	.uaword	0x468e
	.byte	0x1
	.byte	0x64
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.uahalf	0x266
	.uaword	0x219
	.uaword	.LLST19
	.uleb128 0x24
	.uaword	.LASF19
	.byte	0x1
	.uahalf	0x267
	.uaword	0x25a
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_i2c_decode_uint32_t"
	.byte	0x1
	.uahalf	0x271
	.byte	0x1
	.uaword	0x25a
	.uaword	.LFB12
	.uaword	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4f8c
	.uleb128 0x2a
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x272
	.uaword	0x219
	.uaword	.LLST20
	.uleb128 0x2a
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x273
	.uaword	0x468e
	.uaword	.LLST21
	.uleb128 0x23
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x27a
	.uaword	0x25a
	.uaword	.LLST22
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_i2c_decode_with_mask"
	.byte	0x1
	.uahalf	0x284
	.byte	0x1
	.uaword	0x25a
	.uaword	.LFB13
	.uaword	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5026
	.uleb128 0x2a
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x285
	.uaword	0x219
	.uaword	.LLST23
	.uleb128 0x2a
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x286
	.uaword	0x468e
	.uaword	.LLST24
	.uleb128 0x29
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x287
	.uaword	0x25a
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"down_shift"
	.byte	0x1
	.uahalf	0x288
	.uaword	0x25a
	.byte	0x1
	.byte	0x56
	.uleb128 0x22
	.string	"offset"
	.byte	0x1
	.uahalf	0x289
	.uaword	0x25a
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x290
	.uaword	0x25a
	.uaword	.LLST25
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"VL53L1_i2c_encode_int32_t"
	.byte	0x1
	.uahalf	0x2a4
	.byte	0x1
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x509e
	.uleb128 0x2a
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x2a5
	.uaword	0x23f
	.uaword	.LLST26
	.uleb128 0x29
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x2a6
	.uaword	0x219
	.byte	0x1
	.byte	0x55
	.uleb128 0x29
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x2a7
	.uaword	0x468e
	.byte	0x1
	.byte	0x64
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.uahalf	0x2ae
	.uaword	0x219
	.uaword	.LLST27
	.uleb128 0x24
	.uaword	.LASF19
	.byte	0x1
	.uahalf	0x2af
	.uaword	0x23f
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_i2c_decode_int32_t"
	.byte	0x1
	.uahalf	0x2b9
	.byte	0x1
	.uaword	0x23f
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5102
	.uleb128 0x2a
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x2ba
	.uaword	0x219
	.uaword	.LLST28
	.uleb128 0x2a
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x2bb
	.uaword	0x468e
	.uaword	.LLST29
	.uleb128 0x23
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x2c2
	.uaword	0x23f
	.uaword	.LLST30
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_start_test"
	.byte	0x1
	.uahalf	0x2d2
	.byte	0x1
	.uaword	0x3ef
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5173
	.uleb128 0x2b
	.string	"Dev"
	.byte	0x1
	.uahalf	0x2d3
	.uaword	0x43b2
	.uaword	.LLST31
	.uleb128 0x2a
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x2d4
	.uaword	0x1dd
	.uaword	.LLST32
	.uleb128 0x27
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x2da
	.uaword	0x3ef
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL84
	.byte	0x1
	.uaword	0x6fc5
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x27
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	0x43ca
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x51c1
	.uleb128 0x19
	.uaword	0x43fd
	.uaword	.LLST33
	.uleb128 0x19
	.uaword	0x4409
	.uaword	.LLST34
	.uleb128 0x2e
	.uaword	0x4415
	.byte	0
	.uleb128 0x1b
	.uaword	0x4421
	.uaword	.LLST33
	.uleb128 0x2c
	.uaword	.LVL87
	.byte	0x1
	.uaword	0x6fc5
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x85
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	0x494a
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x523b
	.uleb128 0x19
	.uaword	0x4970
	.uaword	.LLST36
	.uleb128 0x2e
	.uaword	0x497c
	.byte	0
	.uleb128 0x2f
	.uaword	0x43ca
	.uaword	.LBB72
	.uaword	.LBE72
	.byte	0x1
	.uahalf	0x30c
	.uleb128 0x30
	.uaword	0x4409
	.byte	0x1
	.uleb128 0x19
	.uaword	0x43fd
	.uaword	.LLST36
	.uleb128 0x31
	.uaword	.LBB73
	.uaword	.LBE73
	.uleb128 0x2e
	.uaword	0x4415
	.byte	0
	.uleb128 0x1b
	.uaword	0x4421
	.uaword	.LLST36
	.uleb128 0x2c
	.uaword	.LVL89
	.byte	0x1
	.uaword	0x6fc5
	.uleb128 0x2d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x85
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	0x48a3
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x52b5
	.uleb128 0x19
	.uaword	0x48ca
	.uaword	.LLST39
	.uleb128 0x2e
	.uaword	0x48d6
	.byte	0
	.uleb128 0x2f
	.uaword	0x43ca
	.uaword	.LBB74
	.uaword	.LBE74
	.byte	0x1
	.uahalf	0x31f
	.uleb128 0x30
	.uaword	0x4409
	.byte	0
	.uleb128 0x19
	.uaword	0x43fd
	.uaword	.LLST39
	.uleb128 0x31
	.uaword	.LBB75
	.uaword	.LBE75
	.uleb128 0x2e
	.uaword	0x4415
	.byte	0
	.uleb128 0x1b
	.uaword	0x4421
	.uaword	.LLST39
	.uleb128 0x2c
	.uaword	.LVL91
	.byte	0x1
	.uaword	0x6fc5
	.uleb128 0x2d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x85
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	0x4434
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5303
	.uleb128 0x19
	.uaword	0x4462
	.uaword	.LLST42
	.uleb128 0x19
	.uaword	0x446e
	.uaword	.LLST43
	.uleb128 0x2e
	.uaword	0x447a
	.byte	0
	.uleb128 0x1b
	.uaword	0x4486
	.uaword	.LLST42
	.uleb128 0x2c
	.uaword	.LVL94
	.byte	0x1
	.uaword	0x6fc5
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x83
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_enable_powerforce"
	.byte	0x1
	.uahalf	0x33d
	.byte	0x1
	.uaword	0x3ef
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x53a9
	.uleb128 0x2b
	.string	"Dev"
	.byte	0x1
	.uahalf	0x33e
	.uaword	0x43b2
	.uaword	.LLST45
	.uleb128 0x27
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x344
	.uaword	0x3ef
	.byte	0
	.uleb128 0x2f
	.uaword	0x4434
	.uaword	.LBB76
	.uaword	.LBE76
	.byte	0x1
	.uahalf	0x348
	.uleb128 0x30
	.uaword	0x446e
	.byte	0x1
	.uleb128 0x19
	.uaword	0x4462
	.uaword	.LLST45
	.uleb128 0x31
	.uaword	.LBB77
	.uaword	.LBE77
	.uleb128 0x2e
	.uaword	0x447a
	.byte	0
	.uleb128 0x1b
	.uaword	0x4486
	.uaword	.LLST45
	.uleb128 0x2c
	.uaword	.LVL96
	.byte	0x1
	.uaword	0x6fc5
	.uleb128 0x2d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x83
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_disable_powerforce"
	.byte	0x1
	.uahalf	0x350
	.byte	0x1
	.uaword	0x3ef
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5450
	.uleb128 0x2b
	.string	"Dev"
	.byte	0x1
	.uahalf	0x351
	.uaword	0x43b2
	.uaword	.LLST48
	.uleb128 0x27
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x357
	.uaword	0x3ef
	.byte	0
	.uleb128 0x2f
	.uaword	0x4434
	.uaword	.LBB78
	.uaword	.LBE78
	.byte	0x1
	.uahalf	0x35b
	.uleb128 0x30
	.uaword	0x446e
	.byte	0
	.uleb128 0x19
	.uaword	0x4462
	.uaword	.LLST48
	.uleb128 0x31
	.uaword	.LBB79
	.uaword	.LBE79
	.uleb128 0x2e
	.uaword	0x447a
	.byte	0
	.uleb128 0x1b
	.uaword	0x4486
	.uaword	.LLST48
	.uleb128 0x2c
	.uaword	.LVL98
	.byte	0x1
	.uaword	0x6fc5
	.uleb128 0x2d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x83
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_clear_interrupt"
	.byte	0x1
	.uahalf	0x363
	.byte	0x1
	.uaword	0x3ef
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x54cb
	.uleb128 0x2b
	.string	"Dev"
	.byte	0x1
	.uahalf	0x364
	.uaword	0x43b2
	.uaword	.LLST51
	.uleb128 0x27
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x36a
	.uaword	0x3ef
	.byte	0
	.uleb128 0x23
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x36b
	.uaword	0x442e
	.uaword	.LLST51
	.uleb128 0x2c
	.uaword	.LVL100
	.byte	0x1
	.uaword	0x6fc5
	.uleb128 0x2d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x86
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_calc_macro_period_us"
	.byte	0x1
	.uahalf	0x399
	.byte	0x1
	.uaword	0x25a
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x556a
	.uleb128 0x2a
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x39a
	.uaword	0x219
	.uaword	.LLST53
	.uleb128 0x2a
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x39b
	.uaword	0x1dd
	.uaword	.LLST54
	.uleb128 0x23
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x3a4
	.uaword	0x25a
	.uaword	.LLST55
	.uleb128 0x23
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x3a5
	.uaword	0x1dd
	.uaword	.LLST56
	.uleb128 0x23
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x3a6
	.uaword	0x25a
	.uaword	.LLST57
	.uleb128 0x32
	.uaword	.LVL102
	.uaword	0x6ff1
	.uleb128 0x33
	.uaword	.LVL104
	.uaword	0x701f
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_calc_range_ignore_threshold"
	.byte	0x1
	.uahalf	0x3dc
	.byte	0x1
	.uaword	0x219
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x56a0
	.uleb128 0x2b
	.string	"central_rate"
	.byte	0x1
	.uahalf	0x3dd
	.uaword	0x25a
	.uaword	.LLST58
	.uleb128 0x2b
	.string	"x_gradient"
	.byte	0x1
	.uahalf	0x3de
	.uaword	0x1fd
	.uaword	.LLST59
	.uleb128 0x2b
	.string	"y_gradient"
	.byte	0x1
	.uahalf	0x3df
	.uaword	0x1fd
	.uaword	.LLST60
	.uleb128 0x2b
	.string	"rate_mult"
	.byte	0x1
	.uahalf	0x3e0
	.uaword	0x1dd
	.uaword	.LLST61
	.uleb128 0x26
	.string	"range_ignore_thresh_int"
	.byte	0x1
	.uahalf	0x3f0
	.uaword	0x23f
	.uaword	.LLST62
	.uleb128 0x26
	.string	"range_ignore_thresh_kcps"
	.byte	0x1
	.uahalf	0x3f1
	.uaword	0x219
	.uaword	.LLST63
	.uleb128 0x26
	.string	"central_rate_int"
	.byte	0x1
	.uahalf	0x3f2
	.uaword	0x23f
	.uaword	.LLST64
	.uleb128 0x26
	.string	"x_gradient_int"
	.byte	0x1
	.uahalf	0x3f3
	.uaword	0x1fd
	.uaword	.LLST65
	.uleb128 0x26
	.string	"y_gradient_int"
	.byte	0x1
	.uahalf	0x3f4
	.uaword	0x1fd
	.uaword	.LLST66
	.byte	0
	.uleb128 0x18
	.uaword	0x44f1
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x56ce
	.uleb128 0x19
	.uaword	0x451a
	.uaword	.LLST67
	.uleb128 0x34
	.uaword	0x4526
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.uaword	0x4532
	.uaword	.LLST68
	.byte	0
	.uleb128 0x18
	.uaword	0x45e3
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5780
	.uleb128 0x19
	.uaword	0x460e
	.uaword	.LLST69
	.uleb128 0x19
	.uaword	0x461a
	.uaword	.LLST70
	.uleb128 0x1b
	.uaword	0x4626
	.uaword	.LLST71
	.uleb128 0x1b
	.uaword	0x4632
	.uaword	.LLST72
	.uleb128 0x35
	.uaword	0x44f1
	.uaword	.LBB80
	.uaword	.LBE80
	.byte	0x1
	.uahalf	0x459
	.uaword	0x5740
	.uleb128 0x19
	.uaword	0x4526
	.uaword	.LLST70
	.uleb128 0x19
	.uaword	0x451a
	.uaword	.LLST69
	.uleb128 0x31
	.uaword	.LBB81
	.uaword	.LBE81
	.uleb128 0x1b
	.uaword	0x4532
	.uaword	.LLST75
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x4493
	.uaword	.LBB82
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x45c
	.uleb128 0x19
	.uaword	0x44b8
	.uaword	.LLST76
	.uleb128 0x37
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1b
	.uaword	0x44c4
	.uaword	.LLST77
	.uleb128 0x2e
	.uaword	0x44d0
	.byte	0
	.uleb128 0x2e
	.uaword	0x44e0
	.byte	0
	.uleb128 0x38
	.uaword	.LVL134
	.byte	0x1
	.uaword	0x4989
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	0x458c
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x57b7
	.uleb128 0x19
	.uaword	0x45b2
	.uaword	.LLST78
	.uleb128 0x34
	.uaword	0x45be
	.byte	0x1
	.byte	0x55
	.uleb128 0x1b
	.uaword	0x45ca
	.uaword	.LLST79
	.uleb128 0x1b
	.uaword	0x45d6
	.uaword	.LLST80
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_calc_crosstalk_plane_offset_with_margin"
	.byte	0x1
	.uahalf	0x495
	.byte	0x1
	.uaword	0x25a
	.uaword	.LFB29
	.uaword	.LFE29
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5883
	.uleb128 0x2b
	.string	"plane_offset_kcps"
	.byte	0x1
	.uahalf	0x496
	.uaword	0x25a
	.uaword	.LLST81
	.uleb128 0x22
	.string	"margin_offset_kcps"
	.byte	0x1
	.uahalf	0x497
	.uaword	0x1fd
	.byte	0x1
	.byte	0x55
	.uleb128 0x26
	.string	"plane_offset_with_margin"
	.byte	0x1
	.uahalf	0x499
	.uaword	0x25a
	.uaword	.LLST82
	.uleb128 0x26
	.string	"plane_offset_kcps_temp"
	.byte	0x1
	.uahalf	0x49a
	.uaword	0x23f
	.uaword	.LLST82
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_calc_decoded_timeout_us"
	.byte	0x1
	.uahalf	0x4b2
	.byte	0x1
	.uaword	0x25a
	.uaword	.LFB30
	.uaword	.LFE30
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5960
	.uleb128 0x2a
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x4b3
	.uaword	0x219
	.uaword	.LLST84
	.uleb128 0x29
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x4b4
	.uaword	0x25a
	.byte	0x1
	.byte	0x55
	.uleb128 0x23
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x4bf
	.uaword	0x25a
	.uaword	.LLST85
	.uleb128 0x23
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x4c0
	.uaword	0x25a
	.uaword	.LLST86
	.uleb128 0x39
	.uaword	0x453f
	.uaword	.LBB86
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x4c4
	.uaword	0x5926
	.uleb128 0x19
	.uaword	0x4564
	.uaword	.LLST87
	.uleb128 0x37
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x1b
	.uaword	0x4570
	.uaword	.LLST88
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x458c
	.uaword	.LBB89
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x4c7
	.uleb128 0x34
	.uaword	0x45be
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.uaword	0x45b2
	.uaword	.LLST89
	.uleb128 0x37
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x1b
	.uaword	0x45ca
	.uaword	.LLST90
	.uleb128 0x1b
	.uaword	0x45d6
	.uaword	.LLST91
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	0x4493
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x59a5
	.uleb128 0x19
	.uaword	0x44b8
	.uaword	.LLST92
	.uleb128 0x1b
	.uaword	0x44c4
	.uaword	.LLST93
	.uleb128 0x2e
	.uaword	0x44d0
	.byte	0
	.uleb128 0x2e
	.uaword	0x44e0
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL145
	.byte	0x1
	.uaword	0x4989
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	0x453f
	.uaword	.LFB32
	.uaword	.LFE32
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x59cc
	.uleb128 0x19
	.uaword	0x4564
	.uaword	.LLST94
	.uleb128 0x1b
	.uaword	0x4570
	.uaword	.LLST95
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_calc_timeout_register_values"
	.byte	0x1
	.uahalf	0x4fa
	.byte	0x1
	.uaword	0x3ef
	.uaword	.LFB33
	.uaword	.LFE33
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5dec
	.uleb128 0x2a
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x4fb
	.uaword	0x25a
	.uaword	.LLST96
	.uleb128 0x2a
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x4fc
	.uaword	0x25a
	.uaword	.LLST97
	.uleb128 0x2a
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x4fd
	.uaword	0x25a
	.uaword	.LLST98
	.uleb128 0x2a
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x4fe
	.uaword	0x219
	.uaword	.LLST99
	.uleb128 0x2a
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x4ff
	.uaword	0x5dec
	.uaword	.LLST100
	.uleb128 0x2b
	.string	"ptiming"
	.byte	0x1
	.uahalf	0x500
	.uaword	0x5df2
	.uaword	.LLST101
	.uleb128 0x23
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x509
	.uaword	0x3ef
	.uaword	.LLST102
	.uleb128 0x23
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x50b
	.uaword	0x25a
	.uaword	.LLST103
	.uleb128 0x23
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x50c
	.uaword	0x25a
	.uaword	.LLST104
	.uleb128 0x23
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x50d
	.uaword	0x219
	.uaword	.LLST105
	.uleb128 0x35
	.uaword	0x44f1
	.uaword	.LBB94
	.uaword	.LBE94
	.byte	0x1
	.uahalf	0x51b
	.uaword	0x5ae7
	.uleb128 0x19
	.uaword	0x4526
	.uaword	.LLST106
	.uleb128 0x19
	.uaword	0x451a
	.uaword	.LLST107
	.uleb128 0x31
	.uaword	.LBB95
	.uaword	.LBE95
	.uleb128 0x1b
	.uaword	0x4532
	.uaword	.LLST108
	.byte	0
	.byte	0
	.uleb128 0x39
	.uaword	0x45e3
	.uaword	.LBB96
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.uahalf	0x528
	.uaword	0x5ba0
	.uleb128 0x19
	.uaword	0x461a
	.uaword	.LLST109
	.uleb128 0x19
	.uaword	0x460e
	.uaword	.LLST110
	.uleb128 0x37
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x3a
	.uaword	0x4626
	.uleb128 0x1b
	.uaword	0x4632
	.uaword	.LLST111
	.uleb128 0x35
	.uaword	0x44f1
	.uaword	.LBB98
	.uaword	.LBE98
	.byte	0x1
	.uahalf	0x459
	.uaword	0x5b5a
	.uleb128 0x19
	.uaword	0x4526
	.uaword	.LLST109
	.uleb128 0x19
	.uaword	0x451a
	.uaword	.LLST110
	.uleb128 0x31
	.uaword	.LBB99
	.uaword	.LBE99
	.uleb128 0x1b
	.uaword	0x4532
	.uaword	.LLST114
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x4493
	.uaword	.LBB100
	.uaword	.Ldebug_ranges0+0x68
	.byte	0x1
	.uahalf	0x45c
	.uleb128 0x19
	.uaword	0x44b8
	.uaword	.LLST114
	.uleb128 0x37
	.uaword	.Ldebug_ranges0+0x68
	.uleb128 0x1b
	.uaword	0x44c4
	.uaword	.LLST111
	.uleb128 0x1b
	.uaword	0x44d0
	.uaword	.LLST117
	.uleb128 0x1b
	.uaword	0x44e0
	.uaword	.LLST117
	.uleb128 0x32
	.uaword	.LVL170
	.uaword	0x4989
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.uaword	0x45e3
	.uaword	.LBB109
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.uahalf	0x533
	.uaword	0x5c55
	.uleb128 0x19
	.uaword	0x461a
	.uaword	.LLST119
	.uleb128 0x19
	.uaword	0x460e
	.uaword	.LLST120
	.uleb128 0x37
	.uaword	.Ldebug_ranges0+0x88
	.uleb128 0x3a
	.uaword	0x4626
	.uleb128 0x1b
	.uaword	0x4632
	.uaword	.LLST121
	.uleb128 0x39
	.uaword	0x44f1
	.uaword	.LBB111
	.uaword	.Ldebug_ranges0+0xb0
	.byte	0x1
	.uahalf	0x459
	.uaword	0x5c0f
	.uleb128 0x19
	.uaword	0x4526
	.uaword	.LLST119
	.uleb128 0x19
	.uaword	0x451a
	.uaword	.LLST120
	.uleb128 0x37
	.uaword	.Ldebug_ranges0+0xb0
	.uleb128 0x1b
	.uaword	0x4532
	.uaword	.LLST124
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x4493
	.uaword	.LBB115
	.uaword	.Ldebug_ranges0+0x98
	.byte	0x1
	.uahalf	0x45c
	.uleb128 0x19
	.uaword	0x44b8
	.uaword	.LLST124
	.uleb128 0x37
	.uaword	.Ldebug_ranges0+0x98
	.uleb128 0x1b
	.uaword	0x44c4
	.uaword	.LLST121
	.uleb128 0x1b
	.uaword	0x44d0
	.uaword	.LLST127
	.uleb128 0x1b
	.uaword	0x44e0
	.uaword	.LLST127
	.uleb128 0x32
	.uaword	.LVL176
	.uaword	0x4989
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.uaword	0x45e3
	.uaword	.LBB124
	.uaword	.Ldebug_ranges0+0xc8
	.byte	0x1
	.uahalf	0x544
	.uaword	0x5d0e
	.uleb128 0x19
	.uaword	0x461a
	.uaword	.LLST129
	.uleb128 0x19
	.uaword	0x460e
	.uaword	.LLST130
	.uleb128 0x37
	.uaword	.Ldebug_ranges0+0xc8
	.uleb128 0x3a
	.uaword	0x4626
	.uleb128 0x1b
	.uaword	0x4632
	.uaword	.LLST131
	.uleb128 0x35
	.uaword	0x44f1
	.uaword	.LBB126
	.uaword	.LBE126
	.byte	0x1
	.uahalf	0x459
	.uaword	0x5cc8
	.uleb128 0x19
	.uaword	0x4526
	.uaword	.LLST129
	.uleb128 0x19
	.uaword	0x451a
	.uaword	.LLST130
	.uleb128 0x31
	.uaword	.LBB127
	.uaword	.LBE127
	.uleb128 0x1b
	.uaword	0x4532
	.uaword	.LLST134
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x4493
	.uaword	.LBB128
	.uaword	.Ldebug_ranges0+0xd0
	.byte	0x1
	.uahalf	0x45c
	.uleb128 0x19
	.uaword	0x44b8
	.uaword	.LLST134
	.uleb128 0x37
	.uaword	.Ldebug_ranges0+0xd0
	.uleb128 0x1b
	.uaword	0x44c4
	.uaword	.LLST131
	.uleb128 0x1b
	.uaword	0x44d0
	.uaword	.LLST137
	.uleb128 0x1b
	.uaword	0x44e0
	.uaword	.LLST137
	.uleb128 0x32
	.uaword	.LVL174
	.uaword	0x4989
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.uaword	0x45e3
	.uaword	.LBB135
	.uaword	.Ldebug_ranges0+0xe8
	.byte	0x1
	.uahalf	0x54f
	.uaword	0x5dc7
	.uleb128 0x19
	.uaword	0x461a
	.uaword	.LLST139
	.uleb128 0x19
	.uaword	0x460e
	.uaword	.LLST140
	.uleb128 0x37
	.uaword	.Ldebug_ranges0+0xe8
	.uleb128 0x3a
	.uaword	0x4626
	.uleb128 0x1b
	.uaword	0x4632
	.uaword	.LLST141
	.uleb128 0x35
	.uaword	0x44f1
	.uaword	.LBB137
	.uaword	.LBE137
	.byte	0x1
	.uahalf	0x459
	.uaword	0x5d81
	.uleb128 0x19
	.uaword	0x4526
	.uaword	.LLST139
	.uleb128 0x19
	.uaword	0x451a
	.uaword	.LLST140
	.uleb128 0x31
	.uaword	.LBB138
	.uaword	.LBE138
	.uleb128 0x1b
	.uaword	0x4532
	.uaword	.LLST144
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x4493
	.uaword	.LBB139
	.uaword	.Ldebug_ranges0+0xf0
	.byte	0x1
	.uahalf	0x45c
	.uleb128 0x19
	.uaword	0x44b8
	.uaword	.LLST144
	.uleb128 0x37
	.uaword	.Ldebug_ranges0+0xf0
	.uleb128 0x1b
	.uaword	0x44c4
	.uaword	.LLST141
	.uleb128 0x1b
	.uaword	0x44d0
	.uaword	.LLST147
	.uleb128 0x1b
	.uaword	0x44e0
	.uaword	.LLST147
	.uleb128 0x32
	.uaword	.LVL172
	.uaword	0x4989
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL151
	.uaword	0x54cb
	.uaword	0x5ddb
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL162
	.uaword	0x54cb
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0xeb9
	.uleb128 0x11
	.byte	0x4
	.uaword	0x116f
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_encode_vcsel_period"
	.byte	0x1
	.uahalf	0x560
	.byte	0x1
	.uaword	0x1dd
	.uaword	.LFB34
	.uaword	.LFE34
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5e5a
	.uleb128 0x2a
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x560
	.uaword	0x1dd
	.uaword	.LLST149
	.uleb128 0x26
	.string	"vcsel_period_reg"
	.byte	0x1
	.uahalf	0x567
	.uaword	0x1dd
	.uaword	.LLST150
	.byte	0
	.uleb128 0x18
	.uaword	0x48e3
	.uaword	.LFB35
	.uaword	.LFE35
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5e8f
	.uleb128 0x34
	.uaword	0x4911
	.byte	0x1
	.byte	0x64
	.uleb128 0x34
	.uaword	0x491d
	.byte	0x1
	.byte	0x54
	.uleb128 0x1b
	.uaword	0x4929
	.uaword	.LLST151
	.uleb128 0x1b
	.uaword	0x4933
	.uaword	.LLST152
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"VL53L1_encode_unsigned_integer"
	.byte	0x1
	.uahalf	0x582
	.byte	0x1
	.uaword	.LFB36
	.uaword	.LFE36
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5f0c
	.uleb128 0x2a
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x583
	.uaword	0x25a
	.uaword	.LLST153
	.uleb128 0x29
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x584
	.uaword	0x1dd
	.byte	0x1
	.byte	0x55
	.uleb128 0x29
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x585
	.uaword	0x468e
	.byte	0x1
	.byte	0x64
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.uahalf	0x58b
	.uaword	0x1dd
	.uaword	.LLST154
	.uleb128 0x24
	.uaword	.LASF19
	.byte	0x1
	.uahalf	0x58c
	.uaword	0x25a
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x18
	.uaword	0x46e3
	.uaword	.LFB37
	.uaword	.LFE37
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5f3f
	.uleb128 0x19
	.uaword	0x4713
	.uaword	.LLST155
	.uleb128 0x34
	.uaword	0x471f
	.byte	0x1
	.byte	0x64
	.uleb128 0x34
	.uaword	0x4733
	.byte	0x1
	.byte	0x65
	.uleb128 0x34
	.uaword	0x4746
	.byte	0x1
	.byte	0x66
	.byte	0
	.uleb128 0x18
	.uaword	0x4694
	.uaword	.LFB38
	.uaword	.LFE38
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5f6d
	.uleb128 0x19
	.uaword	0x46b5
	.uaword	.LLST156
	.uleb128 0x19
	.uaword	0x46c1
	.uaword	.LLST157
	.uleb128 0x34
	.uaword	0x46cd
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x18
	.uaword	0x463f
	.uaword	.LFB39
	.uaword	.LFE39
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5f99
	.uleb128 0x19
	.uaword	0x4662
	.uaword	.LLST158
	.uleb128 0x34
	.uaword	0x466e
	.byte	0x1
	.byte	0x64
	.uleb128 0x34
	.uaword	0x467d
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"VL53L1_encode_zone_size"
	.byte	0x1
	.uahalf	0x5d2
	.byte	0x1
	.uaword	.LFB40
	.uaword	.LFE40
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6000
	.uleb128 0x2a
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x5d3
	.uaword	0x1dd
	.uaword	.LLST159
	.uleb128 0x29
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x5d4
	.uaword	0x1dd
	.byte	0x1
	.byte	0x55
	.uleb128 0x22
	.string	"pencoded_xy_size"
	.byte	0x1
	.uahalf	0x5d5
	.uaword	0x468e
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"VL53L1_decode_zone_limits"
	.byte	0x1
	.uahalf	0x5e5
	.byte	0x1
	.uaword	.LFB41
	.uaword	.LFE41
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6130
	.uleb128 0x2b
	.string	"encoded_xy_centre"
	.byte	0x1
	.uahalf	0x5e6
	.uaword	0x1dd
	.uaword	.LLST160
	.uleb128 0x2a
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x5e7
	.uaword	0x1dd
	.uaword	.LLST161
	.uleb128 0x2b
	.string	"px_ll"
	.byte	0x1
	.uahalf	0x5e8
	.uaword	0x6130
	.uaword	.LLST162
	.uleb128 0x2b
	.string	"py_ll"
	.byte	0x1
	.uahalf	0x5e9
	.uaword	0x6130
	.uaword	.LLST163
	.uleb128 0x2b
	.string	"px_ur"
	.byte	0x1
	.uahalf	0x5ea
	.uaword	0x6130
	.uaword	.LLST164
	.uleb128 0x2b
	.string	"py_ur"
	.byte	0x1
	.uahalf	0x5eb
	.uaword	0x6130
	.uaword	.LLST165
	.uleb128 0x24
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x5f5
	.uaword	0x1dd
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0x24
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x5f6
	.uaword	0x1dd
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x23
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x5f7
	.uaword	0x1dd
	.uaword	.LLST166
	.uleb128 0x23
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x5f8
	.uaword	0x1dd
	.uaword	.LLST167
	.uleb128 0x35
	.uaword	0x463f
	.uaword	.LBB150
	.uaword	.LBE150
	.byte	0x1
	.uahalf	0x601
	.uaword	0x6119
	.uleb128 0x34
	.uaword	0x467d
	.byte	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+24787
	.sleb128 0
	.uleb128 0x34
	.uaword	0x466e
	.byte	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+24771
	.sleb128 0
	.uleb128 0x19
	.uaword	0x4662
	.uaword	.LLST168
	.byte	0
	.uleb128 0x33
	.uaword	.LVL205
	.uaword	0x704e
	.uleb128 0x2d
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x1fd
	.uleb128 0x18
	.uaword	0x4759
	.uaword	.LFB42
	.uaword	.LFE42
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6174
	.uleb128 0x19
	.uaword	0x4784
	.uaword	.LLST169
	.uleb128 0x19
	.uaword	0x4790
	.uaword	.LLST170
	.uleb128 0x1b
	.uaword	0x479c
	.uaword	.LLST171
	.uleb128 0x1a
	.uaword	0x47a8
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.uaword	0x47b8
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"VL53L1_calc_mm_effective_spads"
	.byte	0x1
	.uahalf	0x630
	.byte	0x1
	.uaword	.LFB43
	.uaword	.LFE43
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x64e1
	.uleb128 0x2b
	.string	"encoded_mm_roi_centre"
	.byte	0x1
	.uahalf	0x631
	.uaword	0x1dd
	.uaword	.LLST172
	.uleb128 0x2b
	.string	"encoded_mm_roi_size"
	.byte	0x1
	.uahalf	0x632
	.uaword	0x1dd
	.uaword	.LLST173
	.uleb128 0x2b
	.string	"encoded_zone_centre"
	.byte	0x1
	.uahalf	0x633
	.uaword	0x1dd
	.uaword	.LLST174
	.uleb128 0x2b
	.string	"encoded_zone_size"
	.byte	0x1
	.uahalf	0x634
	.uaword	0x1dd
	.uaword	.LLST175
	.uleb128 0x2b
	.string	"pgood_spads"
	.byte	0x1
	.uahalf	0x635
	.uaword	0x468e
	.uaword	.LLST176
	.uleb128 0x22
	.string	"aperture_attenuation"
	.byte	0x1
	.uahalf	0x636
	.uaword	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"pmm_inner_effective_spads"
	.byte	0x1
	.uahalf	0x637
	.uaword	0x64e1
	.uaword	.LLST177
	.uleb128 0x2b
	.string	"pmm_outer_effective_spads"
	.byte	0x1
	.uahalf	0x638
	.uaword	0x64e1
	.uaword	.LLST178
	.uleb128 0x26
	.string	"x"
	.byte	0x1
	.uahalf	0x640
	.uaword	0x1fd
	.uaword	.LLST179
	.uleb128 0x26
	.string	"y"
	.byte	0x1
	.uahalf	0x641
	.uaword	0x1fd
	.uaword	.LLST180
	.uleb128 0x25
	.string	"mm_x_ll"
	.byte	0x1
	.uahalf	0x643
	.uaword	0x1fd
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x25
	.string	"mm_y_ll"
	.byte	0x1
	.uahalf	0x644
	.uaword	0x1fd
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x25
	.string	"mm_x_ur"
	.byte	0x1
	.uahalf	0x645
	.uaword	0x1fd
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x25
	.string	"mm_y_ur"
	.byte	0x1
	.uahalf	0x646
	.uaword	0x1fd
	.byte	0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x25
	.string	"zone_x_ll"
	.byte	0x1
	.uahalf	0x648
	.uaword	0x1fd
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x25
	.string	"zone_y_ll"
	.byte	0x1
	.uahalf	0x649
	.uaword	0x1fd
	.byte	0x2
	.byte	0x91
	.sleb128 -6
	.uleb128 0x25
	.string	"zone_x_ur"
	.byte	0x1
	.uahalf	0x64a
	.uaword	0x1fd
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x25
	.string	"zone_y_ur"
	.byte	0x1
	.uahalf	0x64b
	.uaword	0x1fd
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0x23
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x64d
	.uaword	0x1dd
	.uaword	.LLST181
	.uleb128 0x26
	.string	"byte_index"
	.byte	0x1
	.uahalf	0x64e
	.uaword	0x1dd
	.uaword	.LLST182
	.uleb128 0x26
	.string	"bit_index"
	.byte	0x1
	.uahalf	0x64f
	.uaword	0x1dd
	.uaword	.LLST183
	.uleb128 0x23
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x650
	.uaword	0x1dd
	.uaword	.LLST184
	.uleb128 0x27
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x652
	.uaword	0x1dd
	.byte	0
	.uleb128 0x26
	.string	"spad_attenuation"
	.byte	0x1
	.uahalf	0x653
	.uaword	0x219
	.uaword	.LLST185
	.uleb128 0x39
	.uaword	0x4759
	.uaword	.LBB152
	.uaword	.Ldebug_ranges0+0x108
	.byte	0x1
	.uahalf	0x68c
	.uaword	0x6423
	.uleb128 0x19
	.uaword	0x4790
	.uaword	.LLST186
	.uleb128 0x3c
	.uaword	0x4784
	.uleb128 0x37
	.uaword	.Ldebug_ranges0+0x108
	.uleb128 0x1b
	.uaword	0x479c
	.uaword	.LLST187
	.uleb128 0x1b
	.uaword	0x47a8
	.uaword	.LLST188
	.uleb128 0x1b
	.uaword	0x47b8
	.uaword	.LLST189
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0x4694
	.uaword	.LBB158
	.uaword	.LBE158
	.byte	0x1
	.uahalf	0x676
	.uaword	0x6453
	.uleb128 0x19
	.uaword	0x46cd
	.uaword	.LLST190
	.uleb128 0x19
	.uaword	0x46c1
	.uaword	.LLST191
	.uleb128 0x19
	.uaword	0x46b5
	.uaword	.LLST192
	.byte	0
	.uleb128 0x35
	.uaword	0x46e3
	.uaword	.LBB160
	.uaword	.LBE160
	.byte	0x1
	.uahalf	0x681
	.uaword	0x648c
	.uleb128 0x19
	.uaword	0x4746
	.uaword	.LLST193
	.uleb128 0x19
	.uaword	0x4733
	.uaword	.LLST194
	.uleb128 0x19
	.uaword	0x471f
	.uaword	.LLST195
	.uleb128 0x19
	.uaword	0x4713
	.uaword	.LLST196
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL218
	.uaword	0x6000
	.uaword	0x64b2
	.uleb128 0x2d
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x2d
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2d
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL219
	.uaword	0x6000
	.uleb128 0x2d
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0x2d
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2d
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -6
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x2d
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x219
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_encode_GPIO_interrupt_config"
	.byte	0x1
	.uahalf	0x6ab
	.byte	0x1
	.uaword	0x1dd
	.uaword	.LFB44
	.uaword	.LFE44
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6543
	.uleb128 0x29
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x6ac
	.uaword	0x6543
	.byte	0x1
	.byte	0x64
	.uleb128 0x23
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x6ae
	.uaword	0x1dd
	.uaword	.LLST197
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x330c
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_decode_GPIO_interrupt_config"
	.byte	0x1
	.uahalf	0x6bd
	.byte	0x1
	.uaword	0x330c
	.uaword	.LFB45
	.uaword	.LFE45
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x65ab
	.uleb128 0x2a
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x6be
	.uaword	0x1dd
	.uaword	.LLST198
	.uleb128 0x26
	.string	"intconf"
	.byte	0x1
	.uahalf	0x6c0
	.uaword	0x330c
	.uaword	.LLST199
	.byte	0
	.uleb128 0x18
	.uaword	0x47c9
	.uaword	.LFB46
	.uaword	.LFE46
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x65e2
	.uleb128 0x34
	.uaword	0x47fb
	.byte	0x1
	.byte	0x64
	.uleb128 0x34
	.uaword	0x4807
	.byte	0x1
	.byte	0x54
	.uleb128 0x34
	.uaword	0x4813
	.byte	0x1
	.byte	0x55
	.uleb128 0x2e
	.uaword	0x481f
	.byte	0
	.uleb128 0x1a
	.uaword	0x482b
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x18
	.uaword	0x4838
	.uaword	.LFB47
	.uaword	.LFE47
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6619
	.uleb128 0x34
	.uaword	0x4866
	.byte	0x1
	.byte	0x64
	.uleb128 0x34
	.uaword	0x4872
	.byte	0x1
	.byte	0x54
	.uleb128 0x34
	.uaword	0x487e
	.byte	0x1
	.byte	0x55
	.uleb128 0x2e
	.uaword	0x488a
	.byte	0
	.uleb128 0x1a
	.uaword	0x4896
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_set_GPIO_thresholds_from_struct"
	.byte	0x1
	.uahalf	0x701
	.byte	0x1
	.uaword	0x3ef
	.uaword	.LFB48
	.uaword	.LFE48
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6705
	.uleb128 0x22
	.string	"Dev"
	.byte	0x1
	.uahalf	0x702
	.uaword	0x43b2
	.byte	0x1
	.byte	0x64
	.uleb128 0x29
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x703
	.uaword	0x6543
	.byte	0x1
	.byte	0x65
	.uleb128 0x23
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x705
	.uaword	0x3ef
	.uaword	.LLST200
	.uleb128 0x35
	.uaword	0x47c9
	.uaword	.LBB164
	.uaword	.LBE164
	.byte	0x1
	.uahalf	0x709
	.uaword	0x66c9
	.uleb128 0x34
	.uaword	0x4813
	.byte	0x2
	.byte	0x85
	.sleb128 8
	.uleb128 0x19
	.uaword	0x4807
	.uaword	.LLST201
	.uleb128 0x34
	.uaword	0x47fb
	.byte	0x1
	.byte	0x64
	.uleb128 0x31
	.uaword	.LBB165
	.uaword	.LBE165
	.uleb128 0x2e
	.uaword	0x481f
	.byte	0
	.uleb128 0x1a
	.uaword	0x482b
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x4838
	.uaword	.LBB166
	.uaword	.Ldebug_ranges0+0x130
	.byte	0x1
	.uahalf	0x70f
	.uleb128 0x34
	.uaword	0x487e
	.byte	0x2
	.byte	0x85
	.sleb128 12
	.uleb128 0x34
	.uaword	0x4872
	.byte	0x2
	.byte	0x85
	.sleb128 10
	.uleb128 0x34
	.uaword	0x4866
	.byte	0x1
	.byte	0x64
	.uleb128 0x37
	.uaword	.Ldebug_ranges0+0x130
	.uleb128 0x2e
	.uaword	0x488a
	.byte	0
	.uleb128 0x1a
	.uaword	0x4896
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_set_ref_spad_char_config"
	.byte	0x1
	.uahalf	0x71c
	.byte	0x1
	.uaword	0x3ef
	.uaword	.LFB49
	.uaword	.LFE49
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6954
	.uleb128 0x2b
	.string	"Dev"
	.byte	0x1
	.uahalf	0x71d
	.uaword	0x43b2
	.uaword	.LLST202
	.uleb128 0x2b
	.string	"vcsel_period_a"
	.byte	0x1
	.uahalf	0x71e
	.uaword	0x1dd
	.uaword	.LLST203
	.uleb128 0x2b
	.string	"phasecal_timeout_us"
	.byte	0x1
	.uahalf	0x71f
	.uaword	0x25a
	.uaword	.LLST204
	.uleb128 0x2b
	.string	"total_rate_target_mcps"
	.byte	0x1
	.uahalf	0x720
	.uaword	0x219
	.uaword	.LLST205
	.uleb128 0x2b
	.string	"max_count_rate_rtn_limit_mcps"
	.byte	0x1
	.uahalf	0x721
	.uaword	0x219
	.uaword	.LLST206
	.uleb128 0x22
	.string	"min_count_rate_rtn_limit_mcps"
	.byte	0x1
	.uahalf	0x722
	.uaword	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x723
	.uaword	0x219
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x72a
	.uaword	0x3ef
	.uaword	.LLST207
	.uleb128 0x23
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x72b
	.uaword	0x442e
	.uaword	.LLST208
	.uleb128 0x25
	.string	"buffer"
	.byte	0x1
	.uahalf	0x72d
	.uaword	0x4206
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0x23
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x72f
	.uaword	0x25a
	.uaword	.LLST209
	.uleb128 0x23
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x730
	.uaword	0x25a
	.uaword	.LLST210
	.uleb128 0x3b
	.uaword	.LVL257
	.uaword	0x54cb
	.uaword	0x687c
	.uleb128 0x2d
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x91
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL262
	.uaword	0x6fc5
	.uaword	0x689c
	.uleb128 0x2d
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x4b
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL266
	.uaword	0x6fc5
	.uaword	0x68b6
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x4b
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL268
	.uaword	0x6fc5
	.uaword	0x68d0
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x60
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL269
	.uaword	0x707e
	.uaword	0x68f5
	.uleb128 0x2d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x2d
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x78
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL270
	.uaword	0x70b3
	.uaword	0x6914
	.uleb128 0x2d
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x4c
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL271
	.uaword	0x70b3
	.uaword	0x6934
	.uleb128 0x2d
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL272
	.byte	0x1
	.uaword	0x70b3
	.uleb128 0x2d
	.byte	0x1
	.byte	0x55
	.byte	0x4
	.byte	0x91
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x66
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_set_ssc_config"
	.byte	0x1
	.uahalf	0x790
	.byte	0x1
	.uaword	0x3ef
	.uaword	.LFB50
	.uaword	.LFE50
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6b4f
	.uleb128 0x2b
	.string	"Dev"
	.byte	0x1
	.uahalf	0x791
	.uaword	0x43b2
	.uaword	.LLST211
	.uleb128 0x2b
	.string	"pssc_cfg"
	.byte	0x1
	.uahalf	0x792
	.uaword	0x6b4f
	.uaword	.LLST212
	.uleb128 0x2a
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x793
	.uaword	0x219
	.uaword	.LLST213
	.uleb128 0x23
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x79d
	.uaword	0x3ef
	.uaword	.LLST214
	.uleb128 0x25
	.string	"buffer"
	.byte	0x1
	.uahalf	0x79e
	.uaword	0x6b55
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x23
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x7a0
	.uaword	0x25a
	.uaword	.LLST215
	.uleb128 0x23
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x7a1
	.uaword	0x219
	.uaword	.LLST216
	.uleb128 0x39
	.uaword	0x45e3
	.uaword	.LBB170
	.uaword	.Ldebug_ranges0+0x148
	.byte	0x1
	.uahalf	0x7b0
	.uaword	0x6ab1
	.uleb128 0x19
	.uaword	0x461a
	.uaword	.LLST217
	.uleb128 0x19
	.uaword	0x460e
	.uaword	.LLST218
	.uleb128 0x37
	.uaword	.Ldebug_ranges0+0x148
	.uleb128 0x1b
	.uaword	0x4626
	.uaword	.LLST219
	.uleb128 0x1b
	.uaword	0x4632
	.uaword	.LLST220
	.uleb128 0x35
	.uaword	0x44f1
	.uaword	.LBB172
	.uaword	.LBE172
	.byte	0x1
	.uahalf	0x459
	.uaword	0x6a71
	.uleb128 0x19
	.uaword	0x4526
	.uaword	.LLST217
	.uleb128 0x19
	.uaword	0x451a
	.uaword	.LLST218
	.uleb128 0x31
	.uaword	.LBB173
	.uaword	.LBE173
	.uleb128 0x1b
	.uaword	0x4532
	.uaword	.LLST223
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x4493
	.uaword	.LBB174
	.uaword	.Ldebug_ranges0+0x160
	.byte	0x1
	.uahalf	0x45c
	.uleb128 0x19
	.uaword	0x44b8
	.uaword	.LLST224
	.uleb128 0x37
	.uaword	.Ldebug_ranges0+0x160
	.uleb128 0x1b
	.uaword	0x44c4
	.uaword	.LLST225
	.uleb128 0x2e
	.uaword	0x44d0
	.byte	0
	.uleb128 0x2e
	.uaword	0x44e0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL284
	.uaword	0x4989
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	.LVL274
	.uaword	0x54cb
	.uleb128 0x3b
	.uaword	.LVL277
	.uaword	0x6fc5
	.uaword	0x6ad4
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x47
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL279
	.uaword	0x6fc5
	.uaword	0x6aee
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x4a
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL280
	.uaword	0x707e
	.uaword	0x6b13
	.uleb128 0x2d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x35
	.uleb128 0x2d
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x61
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.uaword	.LVL281
	.uaword	0x707e
	.uaword	0x6b38
	.uleb128 0x2d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x2d
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x78
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL282
	.uaword	0x6fc5
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x29
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x2a5b
	.uleb128 0xb
	.uaword	0x1dd
	.uaword	0x6b65
	.uleb128 0xc
	.uaword	0x2a7
	.byte	0x4
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_get_spad_rate_data"
	.byte	0x1
	.uahalf	0x7f8
	.byte	0x1
	.uaword	0x3ef
	.uaword	.LFB51
	.uaword	.LFE51
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6d6b
	.uleb128 0x2b
	.string	"Dev"
	.byte	0x1
	.uahalf	0x7f9
	.uaword	0x43b2
	.uaword	.LLST226
	.uleb128 0x2b
	.string	"pspad_rates"
	.byte	0x1
	.uahalf	0x7fa
	.uaword	0x6d6b
	.uaword	.LLST227
	.uleb128 0x23
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x801
	.uaword	0x3ef
	.uaword	.LLST228
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.uahalf	0x802
	.uaword	0x2a0
	.uaword	.LLST229
	.uleb128 0x24
	.uaword	.LASF19
	.byte	0x1
	.uahalf	0x804
	.uaword	0x6d71
	.byte	0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x26
	.string	"pdata"
	.byte	0x1
	.uahalf	0x805
	.uaword	0x468e
	.uaword	.LLST230
	.uleb128 0x39
	.uaword	0x48a3
	.uaword	.LBB180
	.uaword	.Ldebug_ranges0+0x178
	.byte	0x1
	.uahalf	0x80c
	.uaword	0x6c80
	.uleb128 0x19
	.uaword	0x48ca
	.uaword	.LLST231
	.uleb128 0x37
	.uaword	.Ldebug_ranges0+0x178
	.uleb128 0x1b
	.uaword	0x48d6
	.uaword	.LLST232
	.uleb128 0x36
	.uaword	0x43ca
	.uaword	.LBB182
	.uaword	.Ldebug_ranges0+0x178
	.byte	0x1
	.uahalf	0x31f
	.uleb128 0x30
	.uaword	0x4409
	.byte	0
	.uleb128 0x19
	.uaword	0x43fd
	.uaword	.LLST231
	.uleb128 0x37
	.uaword	.Ldebug_ranges0+0x178
	.uleb128 0x1b
	.uaword	0x4415
	.uaword	.LLST234
	.uleb128 0x1b
	.uaword	0x4421
	.uaword	.LLST231
	.uleb128 0x33
	.uaword	.LVL287
	.uaword	0x6fc5
	.uleb128 0x2d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x85
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0x48e3
	.uaword	.LBB192
	.uaword	.LBE192
	.byte	0x1
	.uahalf	0x81f
	.uaword	0x6cbb
	.uleb128 0x3c
	.uaword	0x491d
	.uleb128 0x3c
	.uaword	0x4911
	.uleb128 0x31
	.uaword	.LBB193
	.uaword	.LBE193
	.uleb128 0x1b
	.uaword	0x4929
	.uaword	.LLST236
	.uleb128 0x1b
	.uaword	0x4933
	.uaword	.LLST237
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0x494a
	.uaword	.LBB194
	.uaword	.LBE194
	.byte	0x1
	.uahalf	0x82c
	.uaword	0x6d46
	.uleb128 0x19
	.uaword	0x4970
	.uaword	.LLST238
	.uleb128 0x31
	.uaword	.LBB195
	.uaword	.LBE195
	.uleb128 0x1b
	.uaword	0x497c
	.uaword	.LLST239
	.uleb128 0x2f
	.uaword	0x43ca
	.uaword	.LBB196
	.uaword	.LBE196
	.byte	0x1
	.uahalf	0x30c
	.uleb128 0x19
	.uaword	0x4409
	.uaword	.LLST240
	.uleb128 0x19
	.uaword	0x43fd
	.uaword	.LLST238
	.uleb128 0x31
	.uaword	.LBB197
	.uaword	.LBE197
	.uleb128 0x1b
	.uaword	0x4415
	.uaword	.LLST242
	.uleb128 0x1b
	.uaword	0x4421
	.uaword	.LLST238
	.uleb128 0x33
	.uaword	.LVL295
	.uaword	0x6fc5
	.uleb128 0x2d
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x85
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL297
	.uaword	0x70df
	.uleb128 0x2d
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xa
	.uahalf	0x200
	.uleb128 0x2d
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x2d
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0xe00
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x40ac
	.uleb128 0xb
	.uaword	0x1dd
	.uaword	0x6d82
	.uleb128 0x3d
	.uaword	0x2a7
	.uahalf	0x1ff
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_low_power_auto_data_init"
	.byte	0x1
	.uahalf	0x836
	.byte	0x1
	.uaword	0x3ef
	.uaword	.LFB52
	.uaword	.LFE52
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6de5
	.uleb128 0x22
	.string	"Dev"
	.byte	0x1
	.uahalf	0x837
	.uaword	0x43b2
	.byte	0x1
	.byte	0x64
	.uleb128 0x27
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x840
	.uaword	0x3ef
	.byte	0
	.uleb128 0x24
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x842
	.uaword	0x442e
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_low_power_auto_data_stop_range"
	.byte	0x1
	.uahalf	0x856
	.byte	0x1
	.uaword	0x3ef
	.uaword	.LFB53
	.uaword	.LFE53
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6e4e
	.uleb128 0x22
	.string	"Dev"
	.byte	0x1
	.uahalf	0x857
	.uaword	0x43b2
	.byte	0x1
	.byte	0x64
	.uleb128 0x27
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x860
	.uaword	0x3ef
	.byte	0
	.uleb128 0x24
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x862
	.uaword	0x442e
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_config_low_power_auto_mode"
	.byte	0x1
	.uahalf	0x87f
	.byte	0x1
	.uaword	0x3ef
	.uaword	.LFB54
	.uaword	.LFE54
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6ecb
	.uleb128 0x29
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x880
	.uaword	0x5dec
	.byte	0x1
	.byte	0x64
	.uleb128 0x22
	.string	"pdynamic"
	.byte	0x1
	.uahalf	0x881
	.uaword	0x6ecb
	.byte	0x1
	.byte	0x65
	.uleb128 0x22
	.string	"plpadata"
	.byte	0x1
	.uahalf	0x882
	.uaword	0x6ed1
	.byte	0x1
	.byte	0x66
	.uleb128 0x27
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x88b
	.uaword	0x3ef
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x13e1
	.uleb128 0x11
	.byte	0x4
	.uaword	0x3453
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_low_power_auto_setup_manual_calibration"
	.byte	0x1
	.uahalf	0x8a9
	.byte	0x1
	.uaword	0x3ef
	.uaword	.LFB55
	.uaword	.LFE55
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6f49
	.uleb128 0x22
	.string	"Dev"
	.byte	0x1
	.uahalf	0x8aa
	.uaword	0x43b2
	.byte	0x1
	.byte	0x64
	.uleb128 0x24
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x8b2
	.uaword	0x442e
	.byte	0x1
	.byte	0x64
	.uleb128 0x27
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x8b5
	.uaword	0x3ef
	.byte	0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"VL53L1_low_power_auto_update_DSS"
	.byte	0x1
	.uahalf	0x8d1
	.byte	0x1
	.uaword	0x3ef
	.uaword	.LFB56
	.uaword	.LFE56
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6fc5
	.uleb128 0x22
	.string	"Dev"
	.byte	0x1
	.uahalf	0x8d2
	.uaword	0x43b2
	.byte	0x1
	.byte	0x64
	.uleb128 0x24
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x8d9
	.uaword	0x442e
	.byte	0x1
	.byte	0x64
	.uleb128 0x23
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x8dc
	.uaword	0x3ef
	.uaword	.LLST244
	.uleb128 0x26
	.string	"utemp32a"
	.byte	0x1
	.uahalf	0x8de
	.uaword	0x25a
	.uaword	.LLST245
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"VL53L1_WrByte"
	.byte	0xa
	.byte	0x64
	.byte	0x1
	.uaword	0x3ef
	.byte	0x1
	.uaword	0x6ff1
	.uleb128 0x3f
	.uaword	0x43c4
	.uleb128 0x3f
	.uaword	0x219
	.uleb128 0x3f
	.uaword	0x1dd
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"VL53L1_calc_pll_period_us"
	.byte	0xb
	.byte	0x58
	.byte	0x1
	.uaword	0x25a
	.byte	0x1
	.uaword	0x701f
	.uleb128 0x3f
	.uaword	0x219
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"VL53L1_decode_vcsel_period"
	.byte	0xb
	.byte	0xc9
	.byte	0x1
	.uaword	0x1dd
	.byte	0x1
	.uaword	0x704e
	.uleb128 0x3f
	.uaword	0x1dd
	.byte	0
	.uleb128 0x40
	.byte	0x1
	.string	"VL53L1_decode_row_col"
	.byte	0xb
	.byte	0xd5
	.byte	0x1
	.byte	0x1
	.uaword	0x707e
	.uleb128 0x3f
	.uaword	0x1dd
	.uleb128 0x3f
	.uaword	0x468e
	.uleb128 0x3f
	.uaword	0x468e
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"VL53L1_WriteMulti"
	.byte	0xa
	.byte	0x58
	.byte	0x1
	.uaword	0x3ef
	.byte	0x1
	.uaword	0x70b3
	.uleb128 0x3f
	.uaword	0x43c4
	.uleb128 0x3f
	.uaword	0x219
	.uleb128 0x3f
	.uaword	0x468e
	.uleb128 0x3f
	.uaword	0x25a
	.byte	0
	.uleb128 0x3e
	.byte	0x1
	.string	"VL53L1_WrWord"
	.byte	0xa
	.byte	0x69
	.byte	0x1
	.uaword	0x3ef
	.byte	0x1
	.uaword	0x70df
	.uleb128 0x3f
	.uaword	0x43c4
	.uleb128 0x3f
	.uaword	0x219
	.uleb128 0x3f
	.uaword	0x219
	.byte	0
	.uleb128 0x41
	.byte	0x1
	.string	"VL53L1_ReadMulti"
	.byte	0xa
	.byte	0x5e
	.byte	0x1
	.uaword	0x3ef
	.byte	0x1
	.uleb128 0x3f
	.uaword	0x43c4
	.uleb128 0x3f
	.uaword	0x219
	.uleb128 0x3f
	.uaword	0x468e
	.uleb128 0x3f
	.uaword	0x25a
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
	.uleb128 0x3
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LFE57
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL11
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL18
	.uaword	.LFE3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL19
	.uahalf	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LFE3
	.uahalf	0x8
	.byte	0x84
	.sleb128 463
	.byte	0x94
	.byte	0x1
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LFE3
	.uahalf	0x3
	.byte	0x84
	.sleb128 465
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x1a
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL18
	.uahalf	0xb
	.byte	0x84
	.sleb128 462
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x20
	.byte	0x1a
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LFE3
	.uahalf	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x1a
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL24
	.uaword	.LFE7
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL23
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL28
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL36
	.uaword	.LFE9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL35
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL40
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL50
	.uaword	.LFE11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL53
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL53
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL55
	.uaword	.LVL57
	.uahalf	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL53
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL60
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL60
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL62
	.uaword	.LVL64
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL60
	.uaword	.LVL62
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LFE13
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL70
	.uaword	.LFE14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL73
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL77
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL79
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL80
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL82
	.uaword	.LVL84-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL84-1
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL83
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL85
	.uaword	.LVL87-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL87-1
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL86
	.uaword	.LVL87-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 458
	.uaword	.LVL87-1
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL88
	.uaword	.LVL89-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL89-1
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL90
	.uaword	.LVL91-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL91-1
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL92
	.uaword	.LVL94-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL94-1
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL93
	.uaword	.LVL94-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 456
	.uaword	.LVL94-1
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL95
	.uaword	.LVL96-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL96-1
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL97
	.uaword	.LVL98-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL98-1
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL99
	.uaword	.LVL100-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL100-1
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL101
	.uaword	.LVL102-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL102-1
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL101
	.uaword	.LVL102-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL102-1
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL101
	.uaword	.LVL103
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL104-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL104-1
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL101
	.uaword	.LVL104
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL104
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL101
	.uaword	.LVL105
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x36
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL108
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL110
	.uaword	.LFE25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL109
	.uaword	.LVL114
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL114
	.uaword	.LVL123
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL123
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL109
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL113
	.uaword	.LVL123
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL123
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL126
	.uaword	.LFE25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL109
	.uaword	.LVL118
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL118
	.uaword	.LVL123
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	.LVL123
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL109
	.uaword	.LVL114
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL115
	.uaword	.LVL116
	.uahalf	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL117
	.uaword	.LVL118
	.uahalf	0x9
	.byte	0x77
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x75
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL119
	.uaword	.LVL121
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL121
	.uaword	.LVL123
	.uahalf	0x10
	.byte	0x77
	.sleb128 -31
	.byte	0x77
	.sleb128 0
	.byte	0x77
	.sleb128 -31
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x35
	.byte	0x26
	.byte	0x9f
	.uaword	.LVL123
	.uaword	.LFE25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL109
	.uaword	.LVL120
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL120
	.uaword	.LVL121
	.uahalf	0x11
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x7f
	.sleb128 0
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0x2d
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL121
	.uaword	.LVL122
	.uahalf	0x1e
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x77
	.sleb128 -31
	.byte	0x77
	.sleb128 0
	.byte	0x77
	.sleb128 -31
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x35
	.byte	0x26
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0x2d
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL122
	.uaword	.LVL123
	.uahalf	0x2f
	.byte	0x77
	.sleb128 -31
	.byte	0x77
	.sleb128 0
	.byte	0x77
	.sleb128 -31
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x35
	.byte	0x26
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0xa
	.uahalf	0xffff
	.byte	0x77
	.sleb128 -31
	.byte	0x77
	.sleb128 0
	.byte	0x77
	.sleb128 -31
	.byte	0x30
	.byte	0x2a
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x35
	.byte	0x26
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0x2d
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL123
	.uaword	.LFE25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL109
	.uaword	.LVL111
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL111
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL109
	.uaword	.LVL112
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL109
	.uaword	.LVL113
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL123
	.uaword	.LVL125
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL125
	.uaword	.LVL126
	.uahalf	0x4
	.byte	0x76
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL126
	.uaword	.LFE25
	.uahalf	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x1f
	.byte	0x1f
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL127
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL128
	.uaword	.LFE26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL127
	.uaword	.LVL128
	.uahalf	0x15
	.byte	0x74
	.sleb128 0
	.byte	0x3c
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x22
	.byte	0xf7
	.uleb128 0x196
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL128
	.uaword	.LFE26
	.uahalf	0x16
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x3c
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x22
	.byte	0xf7
	.uleb128 0x196
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL130
	.uaword	.LFE27
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL129
	.uaword	.LVL134-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL134-1
	.uaword	.LFE27
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL129
	.uaword	.LVL131
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL129
	.uaword	.LVL132
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL133
	.uaword	.LFE27
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL129
	.uaword	.LVL131
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL131
	.uaword	.LVL134-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL134-1
	.uaword	.LFE27
	.uahalf	0x37
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x3c
	.byte	0x24
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x1d
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x3c
	.byte	0x24
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xf7
	.uleb128 0x196
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x21
	.byte	0xf7
	.uleb128 0x196
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL131
	.uaword	.LVL134-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL134-1
	.uaword	.LFE27
	.uahalf	0x37
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x3c
	.byte	0x24
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x1d
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x3c
	.byte	0x24
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0xf7
	.uleb128 0x196
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x21
	.byte	0xf7
	.uleb128 0x196
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL131
	.uaword	.LVL132
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL133
	.uaword	.LFE27
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL135
	.uaword	.LVL136
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL136
	.uaword	.LFE28
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL135
	.uaword	.LVL136
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL136
	.uaword	.LFE28
	.uahalf	0xd
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1a6
	.byte	0x3c
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x25
	.byte	0xf7
	.uleb128 0x196
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL135
	.uaword	.LVL136
	.uahalf	0x12
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL136
	.uaword	.LFE28
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1a6
	.byte	0x3c
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL137
	.uaword	.LVL138
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL138
	.uaword	.LFE29
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL137
	.uaword	.LVL138
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL138
	.uaword	.LFE29
	.uahalf	0x1b
	.byte	0x74
	.sleb128 0
	.byte	0x12
	.byte	0xc
	.uaword	0x3ffff
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x30
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL139
	.uaword	.LVL140
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL140
	.uaword	.LFE30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL139
	.uaword	.LVL141
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL139
	.uaword	.LVL142
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL139
	.uaword	.LVL140
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL139
	.uaword	.LVL141
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL141
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL142
	.uaword	.LFE30
	.uahalf	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x24
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL141
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL142
	.uaword	.LFE30
	.uahalf	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x24
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL141
	.uaword	.LVL142
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL142
	.uaword	.LVL143
	.uahalf	0xd
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1a6
	.byte	0x3c
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x25
	.byte	0xf7
	.uleb128 0x196
	.byte	0x9f
	.uaword	.LVL143
	.uaword	.LFE30
	.uahalf	0x28
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x24
	.byte	0x23
	.uleb128 0x1
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x1a6
	.byte	0x22
	.byte	0x3c
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x25
	.byte	0xf7
	.uleb128 0x196
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL141
	.uaword	.LVL142
	.uahalf	0x12
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL142
	.uaword	.LVL143
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x1a6
	.byte	0x3c
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL143
	.uaword	.LFE30
	.uahalf	0x25
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x24
	.byte	0x23
	.uleb128 0x1
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x1a6
	.byte	0x22
	.byte	0x3c
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL144
	.uaword	.LVL145-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL145-1
	.uaword	.LVL145
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL145
	.uaword	.LFE31
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL144
	.uaword	.LVL145
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL146
	.uaword	.LVL147
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL147
	.uaword	.LFE32
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL146
	.uaword	.LVL147
	.uahalf	0x15
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x24
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL148
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL150
	.uaword	.LVL168
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL168
	.uaword	.LVL169
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL169
	.uaword	.LFE33
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL148
	.uaword	.LVL149
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL149
	.uaword	.LVL155
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL155
	.uaword	.LFE33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL148
	.uaword	.LVL151-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL151-1
	.uaword	.LVL159
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL159
	.uaword	.LVL169
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL169
	.uaword	.LVL171
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL171
	.uaword	.LFE33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL148
	.uaword	.LVL151-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL151-1
	.uaword	.LFE33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL148
	.uaword	.LVL151-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL151-1
	.uaword	.LVL168
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL168
	.uaword	.LVL169
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL169
	.uaword	.LFE33
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL148
	.uaword	.LVL151-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL151-1
	.uaword	.LVL168
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL168
	.uaword	.LVL169
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL169
	.uaword	.LFE33
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL148
	.uaword	.LVL168
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL168
	.uaword	.LVL169
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL169
	.uaword	.LFE33
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL148
	.uaword	.LVL152
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL152
	.uaword	.LVL153
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL153
	.uaword	.LVL163
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL163
	.uaword	.LVL164
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL164
	.uaword	.LVL168
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL169
	.uaword	.LFE33
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL148
	.uaword	.LVL154
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL154
	.uaword	.LVL156
	.uahalf	0x16
	.byte	0x72
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0xff
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL156
	.uaword	.LVL163
	.uahalf	0x46
	.byte	0x7c
	.sleb128 0
	.byte	0x3c
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0x1d
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x24
	.byte	0x7c
	.sleb128 0
	.byte	0x3c
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x196
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x21
	.byte	0xf7
	.uleb128 0x196
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0xff
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL169
	.uaword	.LVL171
	.uahalf	0x46
	.byte	0x7c
	.sleb128 0
	.byte	0x3c
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0x1d
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x24
	.byte	0x7c
	.sleb128 0
	.byte	0x3c
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x196
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x21
	.byte	0xf7
	.uleb128 0x196
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0xff
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL175
	.uaword	.LFE33
	.uahalf	0x46
	.byte	0x7c
	.sleb128 0
	.byte	0x3c
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0x1d
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x24
	.byte	0x7c
	.sleb128 0
	.byte	0x3c
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x196
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x21
	.byte	0xf7
	.uleb128 0x196
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0xff
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL148
	.uaword	.LVL158
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL169
	.uaword	.LVL171
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST106:
	.uaword	.LVL152
	.uaword	.LVL153
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL153
	.uaword	.LVL163
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL169
	.uaword	.LVL171
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL175
	.uaword	.LFE33
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL152
	.uaword	.LVL168
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL169
	.uaword	.LFE33
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL152
	.uaword	.LVL154
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL154
	.uaword	.LVL156
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL156
	.uaword	.LVL163
	.uahalf	0x33
	.byte	0x7c
	.sleb128 0
	.byte	0x3c
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0x1d
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x24
	.byte	0x7c
	.sleb128 0
	.byte	0x3c
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x196
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x21
	.byte	0xf7
	.uleb128 0x196
	.byte	0x9f
	.uaword	.LVL169
	.uaword	.LVL171
	.uahalf	0x33
	.byte	0x7c
	.sleb128 0
	.byte	0x3c
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0x1d
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x24
	.byte	0x7c
	.sleb128 0
	.byte	0x3c
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x196
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x21
	.byte	0xf7
	.uleb128 0x196
	.byte	0x9f
	.uaword	.LVL175
	.uaword	.LFE33
	.uahalf	0x33
	.byte	0x7c
	.sleb128 0
	.byte	0x3c
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0x1d
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x24
	.byte	0x7c
	.sleb128 0
	.byte	0x3c
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x196
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x21
	.byte	0xf7
	.uleb128 0x196
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL157
	.uaword	.LVL163
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL169
	.uaword	.LVL171
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL175
	.uaword	.LFE33
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST110:
	.uaword	.LVL157
	.uaword	.LVL168
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL169
	.uaword	.LFE33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST111:
	.uaword	.LVL157
	.uaword	.LVL158
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL169
	.uaword	.LVL171
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST114:
	.uaword	.LVL157
	.uaword	.LVL158
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL158
	.uaword	.LVL163
	.uahalf	0x2f
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0x1d
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x196
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x21
	.byte	0xf7
	.uleb128 0x196
	.byte	0x9f
	.uaword	.LVL169
	.uaword	.LVL170-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL170-1
	.uaword	.LVL171
	.uahalf	0x2f
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0x1d
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x196
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x21
	.byte	0xf7
	.uleb128 0x196
	.byte	0x9f
	.uaword	.LVL175
	.uaword	.LFE33
	.uahalf	0x2f
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0x1d
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x196
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x21
	.byte	0xf7
	.uleb128 0x196
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST117:
	.uaword	.LVL157
	.uaword	.LVL168
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL169
	.uaword	.LFE33
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST119:
	.uaword	.LVL160
	.uaword	.LVL163
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL175
	.uaword	.LFE33
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST120:
	.uaword	.LVL160
	.uaword	.LVL168
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL171
	.uaword	.LFE33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST121:
	.uaword	.LVL160
	.uaword	.LVL161
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL175
	.uaword	.LFE33
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST124:
	.uaword	.LVL160
	.uaword	.LVL161
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL161
	.uaword	.LVL163
	.uahalf	0x2f
	.byte	0x79
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0x1d
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x196
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x21
	.byte	0xf7
	.uleb128 0x196
	.byte	0x9f
	.uaword	.LVL175
	.uaword	.LVL176-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL176-1
	.uaword	.LFE33
	.uahalf	0x2f
	.byte	0x79
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0x1d
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x7a
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x196
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x21
	.byte	0xf7
	.uleb128 0x196
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST127:
	.uaword	.LVL160
	.uaword	.LVL168
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL171
	.uaword	.LFE33
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST129:
	.uaword	.LVL163
	.uaword	.LVL164
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL164
	.uaword	.LVL168
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL171
	.uaword	.LVL175
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST130:
	.uaword	.LVL163
	.uaword	.LVL168
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL171
	.uaword	.LVL175
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST131:
	.uaword	.LVL163
	.uaword	.LVL165
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL173
	.uaword	.LVL175
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST134:
	.uaword	.LVL163
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL165
	.uaword	.LVL168
	.uahalf	0x2f
	.byte	0x78
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0x1d
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x196
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x21
	.byte	0xf7
	.uleb128 0x196
	.byte	0x9f
	.uaword	.LVL171
	.uaword	.LVL173
	.uahalf	0x2f
	.byte	0x78
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0x1d
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x196
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x21
	.byte	0xf7
	.uleb128 0x196
	.byte	0x9f
	.uaword	.LVL173
	.uaword	.LVL174-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL174-1
	.uaword	.LVL175
	.uahalf	0x2f
	.byte	0x78
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x7f
	.sleb128 0
	.byte	0x1d
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x196
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x21
	.byte	0xf7
	.uleb128 0x196
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST137:
	.uaword	.LVL163
	.uaword	.LVL168
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL171
	.uaword	.LVL175
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST139:
	.uaword	.LVL166
	.uaword	.LVL168
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL171
	.uaword	.LVL173
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST140:
	.uaword	.LVL166
	.uaword	.LVL168
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL171
	.uaword	.LVL173
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST141:
	.uaword	.LVL166
	.uaword	.LVL167
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL171
	.uaword	.LVL173
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST144:
	.uaword	.LVL166
	.uaword	.LVL167
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL167
	.uaword	.LVL168
	.uahalf	0x29
	.byte	0x7a
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1d
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x21
	.byte	0xf7
	.uleb128 0x196
	.byte	0x9f
	.uaword	.LVL171
	.uaword	.LVL172-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL172-1
	.uaword	.LVL173
	.uahalf	0x29
	.byte	0x7a
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1d
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x21
	.byte	0xf7
	.uleb128 0x196
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST147:
	.uaword	.LVL166
	.uaword	.LVL168
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL171
	.uaword	.LVL173
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST149:
	.uaword	.LVL177
	.uaword	.LVL178
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL178
	.uaword	.LFE34
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST150:
	.uaword	.LVL177
	.uaword	.LVL178
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL178
	.uaword	.LFE34
	.uahalf	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x31
	.byte	0x25
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST151:
	.uaword	.LVL179
	.uaword	.LVL180
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL180
	.uaword	.LVL181
	.uahalf	0x6
	.byte	0x8f
	.sleb128 0
	.byte	0x84
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL181
	.uaword	.LVL183
	.uahalf	0x6
	.byte	0x8f
	.sleb128 -1
	.byte	0x84
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL183
	.uaword	.LVL184
	.uahalf	0x8
	.byte	0x8f
	.sleb128 0
	.byte	0x84
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST152:
	.uaword	.LVL179
	.uaword	.LVL180
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL180
	.uaword	.LVL182
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL183
	.uaword	.LVL184
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST153:
	.uaword	.LVL185
	.uaword	.LVL186
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL186
	.uaword	.LFE36
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST154:
	.uaword	.LVL185
	.uaword	.LVL186
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL186
	.uaword	.LVL187
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL187
	.uaword	.LVL188
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST155:
	.uaword	.LVL189
	.uaword	.LVL190
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL190
	.uaword	.LFE37
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST156:
	.uaword	.LVL191
	.uaword	.LVL193
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL193
	.uaword	.LVL194
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL194
	.uaword	.LVL196
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL196
	.uaword	.LFE38
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST157:
	.uaword	.LVL191
	.uaword	.LVL192
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL192
	.uaword	.LVL194
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL194
	.uaword	.LVL195
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL195
	.uaword	.LFE38
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST158:
	.uaword	.LVL197
	.uaword	.LVL198
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL198
	.uaword	.LFE39
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST159:
	.uaword	.LVL199
	.uaword	.LVL200
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL200
	.uaword	.LFE40
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST160:
	.uaword	.LVL201
	.uaword	.LVL205-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL205-1
	.uaword	.LFE41
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST161:
	.uaword	.LVL201
	.uaword	.LVL205-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL205-1
	.uaword	.LFE41
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST162:
	.uaword	.LVL201
	.uaword	.LVL202
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL202
	.uaword	.LFE41
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST163:
	.uaword	.LVL201
	.uaword	.LVL204
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL204
	.uaword	.LFE41
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST164:
	.uaword	.LVL201
	.uaword	.LVL205-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL205-1
	.uaword	.LFE41
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST165:
	.uaword	.LVL201
	.uaword	.LVL205-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL205-1
	.uaword	.LFE41
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST166:
	.uaword	.LVL203
	.uaword	.LVL207
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL207
	.uaword	.LVL208
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST167:
	.uaword	.LVL203
	.uaword	.LVL206
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL206
	.uaword	.LFE41
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST168:
	.uaword	.LVL205
	.uaword	.LVL207
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST169:
	.uaword	.LVL209
	.uaword	.LVL211
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL211
	.uaword	.LFE42
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST170:
	.uaword	.LVL209
	.uaword	.LVL210
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL210
	.uaword	.LFE42
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST171:
	.uaword	.LVL209
	.uaword	.LVL211
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL211
	.uaword	.LVL212
	.uahalf	0xf
	.byte	0x74
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x29
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x29
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL212
	.uaword	.LFE42
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST172:
	.uaword	.LVL213
	.uaword	.LVL218-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL218-1
	.uaword	.LFE43
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST173:
	.uaword	.LVL213
	.uaword	.LVL218-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL218-1
	.uaword	.LFE43
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST174:
	.uaword	.LVL213
	.uaword	.LVL218-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL218-1
	.uaword	.LFE43
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST175:
	.uaword	.LVL213
	.uaword	.LVL218-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL218-1
	.uaword	.LFE43
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST176:
	.uaword	.LVL213
	.uaword	.LVL216
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL216
	.uaword	.LFE43
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST177:
	.uaword	.LVL213
	.uaword	.LVL214
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL214
	.uaword	.LFE43
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST178:
	.uaword	.LVL213
	.uaword	.LVL215
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL215
	.uaword	.LFE43
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST179:
	.uaword	.LVL213
	.uaword	.LVL221
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL221
	.uaword	.LVL222
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL224
	.uaword	.LVL225
	.uahalf	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL225
	.uaword	.LVL226
	.uahalf	0x8
	.byte	0x76
	.sleb128 -1
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL238
	.uaword	.LFE43
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST180:
	.uaword	.LVL213
	.uaword	.LVL220
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL220
	.uaword	.LVL221
	.uahalf	0x2
	.byte	0x91
	.sleb128 -6
	.uaword	.LVL221
	.uaword	.LVL236
	.uahalf	0x6
	.byte	0x7e
	.sleb128 0
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL236
	.uaword	.LVL237
	.uahalf	0x8
	.byte	0x7e
	.sleb128 0
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL237
	.uaword	.LVL238
	.uahalf	0x8
	.byte	0x7e
	.sleb128 -1
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL238
	.uaword	.LFE43
	.uahalf	0x2
	.byte	0x91
	.sleb128 -6
	.uaword	0
	.uaword	0
.LLST181:
	.uaword	.LVL217
	.uaword	.LVL221
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL228
	.uaword	.LVL229
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL238
	.uaword	.LFE43
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST182:
	.uaword	.LVL217
	.uaword	.LVL221
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL228
	.uaword	.LVL229
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL238
	.uaword	.LFE43
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST183:
	.uaword	.LVL217
	.uaword	.LVL221
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL228
	.uaword	.LVL229
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x37
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL238
	.uaword	.LFE43
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST184:
	.uaword	.LVL217
	.uaword	.LVL221
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL238
	.uaword	.LFE43
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST185:
	.uaword	.LVL217
	.uaword	.LVL221
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL222
	.uaword	.LVL223
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL234
	.uaword	.LVL235
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL238
	.uaword	.LFE43
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST186:
	.uaword	.LVL230
	.uaword	.LVL231
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL231
	.uaword	.LVL233
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST187:
	.uaword	.LVL222
	.uaword	.LVL224
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL230
	.uaword	.LVL236
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST188:
	.uaword	.LVL222
	.uaword	.LVL224
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL230
	.uaword	.LVL236
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST189:
	.uaword	.LVL231
	.uaword	.LVL232
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL232
	.uaword	.LVL233
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST190:
	.uaword	.LVL222
	.uaword	.LVL226
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+25448
	.sleb128 0
	.uaword	.LVL227
	.uaword	.LVL236
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+25448
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST191:
	.uaword	.LVL227
	.uaword	.LVL233
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST192:
	.uaword	.LVL222
	.uaword	.LVL226
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL227
	.uaword	.LVL236
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST193:
	.uaword	.LVL222
	.uaword	.LVL226
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+25509
	.sleb128 0
	.uaword	.LVL228
	.uaword	.LVL236
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+25509
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST194:
	.uaword	.LVL222
	.uaword	.LVL226
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+25487
	.sleb128 0
	.uaword	.LVL228
	.uaword	.LVL236
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+25487
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST195:
	.uaword	.LVL222
	.uaword	.LVL226
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+25464
	.sleb128 0
	.uaword	.LVL228
	.uaword	.LVL236
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+25464
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST196:
	.uaword	.LVL228
	.uaword	.LVL229
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST197:
	.uaword	.LVL239
	.uaword	.LVL240
	.uahalf	0x1a
	.byte	0x84
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x32
	.byte	0x24
	.byte	0x84
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x35
	.byte	0x24
	.byte	0x21
	.byte	0x84
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x36
	.byte	0x24
	.byte	0x21
	.byte	0x84
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x21
	.byte	0x9f
	.uaword	.LVL240
	.uaword	.LVL241
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL241
	.uaword	.LFE44
	.uahalf	0x22
	.byte	0x84
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x84
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x35
	.byte	0x24
	.byte	0x21
	.byte	0x84
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x21
	.byte	0x73
	.sleb128 0
	.byte	0x21
	.byte	0x7f
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST198:
	.uaword	.LVL242
	.uaword	.LVL243
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL243
	.uaword	.LFE45
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST199:
	.uaword	.LVL242
	.uaword	.LVL243
	.uahalf	0x3b
	.byte	0x74
	.sleb128 0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x74
	.sleb128 0
	.byte	0x36
	.byte	0x25
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x74
	.sleb128 0
	.byte	0x37
	.byte	0x25
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL243
	.uaword	.LFE45
	.uahalf	0x12
	.byte	0x93
	.uleb128 0x6
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x2
	.uaword	0
	.uaword	0
.LLST200:
	.uaword	.LVL246
	.uaword	.LVL249
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL252
	.uaword	.LFE48
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST201:
	.uaword	.LVL247
	.uaword	.LVL248
	.uahalf	0x2
	.byte	0x85
	.sleb128 6
	.uaword	.LVL248
	.uaword	.LVL250
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST202:
	.uaword	.LVL253
	.uaword	.LVL257-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL257-1
	.uaword	.LFE49
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST203:
	.uaword	.LVL253
	.uaword	.LVL254
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL254
	.uaword	.LFE49
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST204:
	.uaword	.LVL253
	.uaword	.LVL255
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL255
	.uaword	.LVL258
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL258
	.uaword	.LFE49
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST205:
	.uaword	.LVL253
	.uaword	.LVL257-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL257-1
	.uaword	.LFE49
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST206:
	.uaword	.LVL253
	.uaword	.LVL257-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL257-1
	.uaword	.LFE49
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST207:
	.uaword	.LVL253
	.uaword	.LVL262
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL262
	.uaword	.LVL264
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL265
	.uaword	.LVL266
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL266
	.uaword	.LVL267
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL268
	.uaword	.LVL269-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL269
	.uaword	.LVL270-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL270
	.uaword	.LVL271-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL271
	.uaword	.LVL272-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST208:
	.uaword	.LVL256
	.uaword	.LVL257-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL257-1
	.uaword	.LFE49
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST209:
	.uaword	.LVL256
	.uaword	.LVL257
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL257
	.uaword	.LVL260
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST210:
	.uaword	.LVL256
	.uaword	.LVL258
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL258
	.uaword	.LVL260
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL260
	.uaword	.LVL261
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL265
	.uaword	.LVL266-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST211:
	.uaword	.LVL273
	.uaword	.LVL274-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL274-1
	.uaword	.LFE50
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST212:
	.uaword	.LVL273
	.uaword	.LVL274-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL274-1
	.uaword	.LFE50
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST213:
	.uaword	.LVL273
	.uaword	.LVL274-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL274-1
	.uaword	.LFE50
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST214:
	.uaword	.LVL273
	.uaword	.LVL277
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL277
	.uaword	.LVL279-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL279
	.uaword	.LVL280-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL280
	.uaword	.LVL281-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL281
	.uaword	.LVL282-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL282
	.uaword	.LVL283
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL283
	.uaword	.LFE50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST215:
	.uaword	.LVL273
	.uaword	.LVL274
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL274
	.uaword	.LVL276
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL283
	.uaword	.LVL284-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST216:
	.uaword	.LVL273
	.uaword	.LVL276
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL283
	.uaword	.LFE50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST217:
	.uaword	.LVL274
	.uaword	.LVL276
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL283
	.uaword	.LVL284-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST218:
	.uaword	.LVL274
	.uaword	.LVL276
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	.LVL283
	.uaword	.LVL284-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST219:
	.uaword	.LVL274
	.uaword	.LVL275
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST220:
	.uaword	.LVL274
	.uaword	.LVL276
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL283
	.uaword	.LFE50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST223:
	.uaword	.LVL274
	.uaword	.LVL275
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL275
	.uaword	.LVL276
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL283
	.uaword	.LVL284-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST224:
	.uaword	.LVL275
	.uaword	.LVL276
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL283
	.uaword	.LVL284-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST225:
	.uaword	.LVL275
	.uaword	.LVL276
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL276
	.uaword	.LVL283
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL283
	.uaword	.LFE50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST226:
	.uaword	.LVL285
	.uaword	.LVL287-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL287-1
	.uaword	.LFE51
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST227:
	.uaword	.LVL285
	.uaword	.LVL287-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL287-1
	.uaword	.LFE51
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST228:
	.uaword	.LVL285
	.uaword	.LVL287
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL287
	.uaword	.LVL295-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL295
	.uaword	.LVL297-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL297
	.uaword	.LFE51
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST229:
	.uaword	.LVL285
	.uaword	.LVL289
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL289
	.uaword	.LVL293
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL296
	.uaword	.LFE51
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST230:
	.uaword	.LVL286
	.uaword	.LVL289
	.uahalf	0x1
	.byte	0x6a
	.uaword	.LVL289
	.uaword	.LVL295-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL296
	.uaword	.LFE51
	.uahalf	0x1
	.byte	0x6a
	.uaword	0
	.uaword	0
.LLST231:
	.uaword	.LVL286
	.uaword	.LVL287-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL287-1
	.uaword	.LFE51
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST232:
	.uaword	.LVL286
	.uaword	.LVL287
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST234:
	.uaword	.LVL286
	.uaword	.LVL287
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL287
	.uaword	.LVL288
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL296
	.uaword	.LVL297-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST236:
	.uaword	.LVL289
	.uaword	.LVL296
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST237:
	.uaword	.LVL289
	.uaword	.LVL290
	.uahalf	0x12
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x82
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL290
	.uaword	.LVL295-1
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST238:
	.uaword	.LVL294
	.uaword	.LVL296
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST239:
	.uaword	.LVL294
	.uaword	.LVL295
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST240:
	.uaword	.LVL294
	.uaword	.LVL296
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST242:
	.uaword	.LVL294
	.uaword	.LVL295
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL295
	.uaword	.LVL296
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST244:
	.uaword	.LVL302
	.uaword	.LVL308
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL308
	.uaword	.LVL309
	.uahalf	0x3
	.byte	0x9
	.byte	0xf1
	.byte	0x9f
	.uaword	.LVL309
	.uaword	.LFE56
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST245:
	.uaword	.LVL303
	.uaword	.LVL304
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL304
	.uaword	.LVL305
	.uahalf	0x14
	.byte	0x84
	.sleb128 470
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x84
	.sleb128 478
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL305
	.uaword	.LVL307
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL307
	.uaword	.LVL308
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL310
	.uaword	.LVL311
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL311
	.uaword	.LVL312
	.uahalf	0xc
	.byte	0x84
	.sleb128 356
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL312
	.uaword	.LVL313
	.uahalf	0x17
	.byte	0x72
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xa
	.uahalf	0xffff
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL313
	.uaword	.LFE56
	.uahalf	0x41
	.byte	0x74
	.sleb128 0
	.byte	0x84
	.sleb128 748
	.byte	0x6
	.byte	0x1d
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x8
	.byte	0x20
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0x84
	.sleb128 748
	.byte	0x6
	.byte	0xf7
	.uleb128 0x196
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x196
	.byte	0xf7
	.uleb128 0x1a6
	.byte	0x21
	.byte	0xf7
	.uleb128 0x196
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xa
	.uahalf	0xffff
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x1e4
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB57
	.uaword	.LFE57-.LFB57
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.uaword	.LFB13
	.uaword	.LFE13-.LFB13
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.uaword	.LFB39
	.uaword	.LFE39-.LFB39
	.uaword	.LFB40
	.uaword	.LFE40-.LFB40
	.uaword	.LFB41
	.uaword	.LFE41-.LFB41
	.uaword	.LFB42
	.uaword	.LFE42-.LFB42
	.uaword	.LFB43
	.uaword	.LFE43-.LFB43
	.uaword	.LFB44
	.uaword	.LFE44-.LFB44
	.uaword	.LFB45
	.uaword	.LFE45-.LFB45
	.uaword	.LFB46
	.uaword	.LFE46-.LFB46
	.uaword	.LFB47
	.uaword	.LFE47-.LFB47
	.uaword	.LFB48
	.uaword	.LFE48-.LFB48
	.uaword	.LFB49
	.uaword	.LFE49-.LFB49
	.uaword	.LFB50
	.uaword	.LFE50-.LFB50
	.uaword	.LFB51
	.uaword	.LFE51-.LFB51
	.uaword	.LFB52
	.uaword	.LFE52-.LFB52
	.uaword	.LFB53
	.uaword	.LFE53-.LFB53
	.uaword	.LFB54
	.uaword	.LFE54-.LFB54
	.uaword	.LFB55
	.uaword	.LFE55-.LFB55
	.uaword	.LFB56
	.uaword	.LFE56-.LFB56
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB82
	.uaword	.LBE82
	.uaword	.LBB85
	.uaword	.LBE85
	.uaword	0
	.uaword	0
	.uaword	.LBB86
	.uaword	.LBE86
	.uaword	.LBB92
	.uaword	.LBE92
	.uaword	0
	.uaword	0
	.uaword	.LBB89
	.uaword	.LBE89
	.uaword	.LBB93
	.uaword	.LBE93
	.uaword	0
	.uaword	0
	.uaword	.LBB96
	.uaword	.LBE96
	.uaword	.LBB108
	.uaword	.LBE108
	.uaword	.LBB146
	.uaword	.LBE146
	.uaword	0
	.uaword	0
	.uaword	.LBB100
	.uaword	.LBE100
	.uaword	.LBB104
	.uaword	.LBE104
	.uaword	.LBB105
	.uaword	.LBE105
	.uaword	0
	.uaword	0
	.uaword	.LBB109
	.uaword	.LBE109
	.uaword	.LBB122
	.uaword	.LBE122
	.uaword	.LBB123
	.uaword	.LBE123
	.uaword	.LBB149
	.uaword	.LBE149
	.uaword	0
	.uaword	0
	.uaword	.LBB111
	.uaword	.LBE111
	.uaword	.LBB114
	.uaword	.LBE114
	.uaword	0
	.uaword	0
	.uaword	.LBB124
	.uaword	.LBE124
	.uaword	.LBB134
	.uaword	.LBE134
	.uaword	.LBB148
	.uaword	.LBE148
	.uaword	0
	.uaword	0
	.uaword	.LBB135
	.uaword	.LBE135
	.uaword	.LBB145
	.uaword	.LBE145
	.uaword	.LBB147
	.uaword	.LBE147
	.uaword	0
	.uaword	0
	.uaword	.LBB152
	.uaword	.LBE152
	.uaword	.LBB157
	.uaword	.LBE157
	.uaword	.LBB162
	.uaword	.LBE162
	.uaword	.LBB163
	.uaword	.LBE163
	.uaword	0
	.uaword	0
	.uaword	.LBB166
	.uaword	.LBE166
	.uaword	.LBB169
	.uaword	.LBE169
	.uaword	0
	.uaword	0
	.uaword	.LBB170
	.uaword	.LBE170
	.uaword	.LBB179
	.uaword	.LBE179
	.uaword	0
	.uaword	0
	.uaword	.LBB174
	.uaword	.LBE174
	.uaword	.LBB177
	.uaword	.LBE177
	.uaword	0
	.uaword	0
	.uaword	.LBB180
	.uaword	.LBE180
	.uaword	.LBB190
	.uaword	.LBE190
	.uaword	.LBB191
	.uaword	.LBE191
	.uaword	0
	.uaword	0
	.uaword	.LFB57
	.uaword	.LFE57
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	.LFB4
	.uaword	.LFE4
	.uaword	.LFB5
	.uaword	.LFE5
	.uaword	.LFB6
	.uaword	.LFE6
	.uaword	.LFB7
	.uaword	.LFE7
	.uaword	.LFB8
	.uaword	.LFE8
	.uaword	.LFB9
	.uaword	.LFE9
	.uaword	.LFB10
	.uaword	.LFE10
	.uaword	.LFB11
	.uaword	.LFE11
	.uaword	.LFB12
	.uaword	.LFE12
	.uaword	.LFB13
	.uaword	.LFE13
	.uaword	.LFB14
	.uaword	.LFE14
	.uaword	.LFB15
	.uaword	.LFE15
	.uaword	.LFB16
	.uaword	.LFE16
	.uaword	.LFB17
	.uaword	.LFE17
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LFB27
	.uaword	.LFE27
	.uaword	.LFB28
	.uaword	.LFE28
	.uaword	.LFB29
	.uaword	.LFE29
	.uaword	.LFB30
	.uaword	.LFE30
	.uaword	.LFB31
	.uaword	.LFE31
	.uaword	.LFB32
	.uaword	.LFE32
	.uaword	.LFB33
	.uaword	.LFE33
	.uaword	.LFB34
	.uaword	.LFE34
	.uaword	.LFB35
	.uaword	.LFE35
	.uaword	.LFB36
	.uaword	.LFE36
	.uaword	.LFB37
	.uaword	.LFE37
	.uaword	.LFB38
	.uaword	.LFE38
	.uaword	.LFB39
	.uaword	.LFE39
	.uaword	.LFB40
	.uaword	.LFE40
	.uaword	.LFB41
	.uaword	.LFE41
	.uaword	.LFB42
	.uaword	.LFE42
	.uaword	.LFB43
	.uaword	.LFE43
	.uaword	.LFB44
	.uaword	.LFE44
	.uaword	.LFB45
	.uaword	.LFE45
	.uaword	.LFB46
	.uaword	.LFE46
	.uaword	.LFB47
	.uaword	.LFE47
	.uaword	.LFB48
	.uaword	.LFE48
	.uaword	.LFB49
	.uaword	.LFE49
	.uaword	.LFB50
	.uaword	.LFE50
	.uaword	.LFB51
	.uaword	.LFE51
	.uaword	.LFB52
	.uaword	.LFE52
	.uaword	.LFB53
	.uaword	.LFE53
	.uaword	.LFB54
	.uaword	.LFE54
	.uaword	.LFB55
	.uaword	.LFE55
	.uaword	.LFB56
	.uaword	.LFE56
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF46:
	.string	"pintconf"
.LASF23:
	.string	"phasecal_config_timeout_us"
.LASF24:
	.string	"range_config_timeout_us"
.LASF16:
	.string	"median_range_mm"
.LASF11:
	.string	"y_centre"
.LASF19:
	.string	"data"
.LASF8:
	.string	"vcsel_period"
.LASF15:
	.string	"sigma_mm"
.LASF42:
	.string	"count"
.LASF28:
	.string	"pdev"
.LASF33:
	.string	"encoded_xy_size"
.LASF35:
	.string	"is_aperture"
.LASF45:
	.string	"pgeneral"
.LASF9:
	.string	"timeout_us"
.LASF27:
	.string	"status"
.LASF14:
	.string	"fast_osc_frequency"
.LASF21:
	.string	"peak_rate_mcps"
.LASF4:
	.string	"test_mode__ctrl"
.LASF20:
	.string	"preset_mode"
.LASF7:
	.string	"pll_period_us"
.LASF2:
	.string	"algo__crosstalk_compensation_y_plane_gradient_kcps"
.LASF36:
	.string	"threshold_high"
.LASF13:
	.string	"height"
.LASF43:
	.string	"bit_mask"
.LASF3:
	.string	"dss_config__target_total_rate_mcps"
.LASF5:
	.string	"dss_config__roi_mode_control"
.LASF37:
	.string	"threshold_low"
.LASF0:
	.string	"algo__crosstalk_compensation_plane_offset_kcps"
.LASF32:
	.string	"timeout_encoded"
.LASF44:
	.string	"vcsel_period_pclks"
.LASF31:
	.string	"macro_period_us"
.LASF17:
	.string	"cfg_device_state"
.LASF10:
	.string	"x_centre"
.LASF22:
	.string	"cal_distance_mm"
.LASF29:
	.string	"timeout_mclks"
.LASF30:
	.string	"encoded_timeout"
.LASF38:
	.string	"pbuffer"
.LASF25:
	.string	"mm_config_timeout_us"
.LASF26:
	.string	"value"
.LASF12:
	.string	"width"
.LASF6:
	.string	"dss_config__manual_effective_spads_select"
.LASF40:
	.string	"pstate"
.LASF39:
	.string	"no_of_bytes"
.LASF1:
	.string	"algo__crosstalk_compensation_x_plane_gradient_kcps"
.LASF41:
	.string	"ip_value"
.LASF34:
	.string	"spad_number"
.LASF18:
	.string	"rd_device_state"
.LASF47:
	.string	"system__interrupt_config"
	.extern	VL53L1_ReadMulti,STT_FUNC,0
	.extern	VL53L1_WrWord,STT_FUNC,0
	.extern	VL53L1_WriteMulti,STT_FUNC,0
	.extern	VL53L1_decode_row_col,STT_FUNC,0
	.extern	VL53L1_decode_vcsel_period,STT_FUNC,0
	.extern	VL53L1_calc_pll_period_us,STT_FUNC,0
	.extern	VL53L1_WrByte,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
