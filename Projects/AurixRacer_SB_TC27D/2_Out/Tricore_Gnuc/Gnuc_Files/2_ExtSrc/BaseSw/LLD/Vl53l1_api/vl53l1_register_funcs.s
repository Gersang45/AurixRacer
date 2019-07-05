	.file	"vl53l1_register_funcs.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.VL53L1_i2c_encode_static_nvm_managed,"ax",@progbits
	.align 1
	.global	VL53L1_i2c_encode_static_nvm_managed
	.type	VL53L1_i2c_encode_static_nvm_managed, @function
VL53L1_i2c_encode_static_nvm_managed:
.LFB0:
	.file 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.c"
	.loc 1 88 0
.LVL0:
	.loc 1 99 0
	mov	%d2, -10
	.loc 1 98 0
	jlt.u	%d4, 11, .L2
	.loc 1 101 0
	ld.bu	%d15, [%a4]0
	mov.aa	%a15, %a4
	and	%d15, %d15, 127
	.loc 1 111 0
	mov	%d5, 2
	mov.aa	%a12, %a5
	.loc 1 101 0
	st.b	[%a5]0, %d15
	.loc 1 103 0
	ld.bu	%d15, [%a4] 1
	and	%d15, %d15, 15
	st.b	[%a5] 1, %d15
	.loc 1 105 0
	ld.bu	%d15, [%a4] 2
	and	%d15, %d15, 127
	st.b	[%a5] 2, %d15
	.loc 1 107 0
	ld.bu	%d15, [%a4] 3
	and	%d15, %d15, 3
	st.b	[%a5] 3, %d15
	.loc 1 109 0
	ld.bu	%d15, [%a4] 4
	and	%d15, %d15, 127
	st.b	[%a5] 4, %d15
	.loc 1 111 0
	ld.hu	%d4, [%a4] 6
.LVL1:
	lea	%a4, [%a5] 5
.LVL2:
	call	VL53L1_i2c_encode_uint16_t
.LVL3:
	.loc 1 116 0
	ld.bu	%d15, [%a15] 8
	.loc 1 115 0
	st.b	[%a12] 7, %d15
	.loc 1 118 0
	ld.bu	%d15, [%a15] 9
	.loc 1 117 0
	st.b	[%a12] 8, %d15
	.loc 1 119 0
	ld.bu	%d15, [%a15] 10
	.loc 1 126 0
	mov	%d2, 0
	.loc 1 119 0
	and	%d15, %d15, 63
	st.b	[%a12] 9, %d15
	.loc 1 122 0
	ld.bu	%d15, [%a15] 11
	.loc 1 121 0
	st.b	[%a12] 10, %d15
.LVL4:
.L2:
	.loc 1 127 0
	ret
.LFE0:
	.size	VL53L1_i2c_encode_static_nvm_managed, .-VL53L1_i2c_encode_static_nvm_managed
.section .text.VL53L1_i2c_decode_static_nvm_managed,"ax",@progbits
	.align 1
	.global	VL53L1_i2c_decode_static_nvm_managed
	.type	VL53L1_i2c_decode_static_nvm_managed, @function
VL53L1_i2c_decode_static_nvm_managed:
.LFB1:
	.loc 1 134 0
.LVL5:
	.loc 1 145 0
	mov	%d2, -10
	.loc 1 144 0
	jlt.u	%d4, 11, .L6
	.loc 1 147 0
	ld.bu	%d15, [%a4]0
	mov.aa	%a12, %a4
	and	%d15, %d15, 127
	.loc 1 158 0
	mov	%d4, 2
.LVL6:
	mov.aa	%a15, %a5
	.loc 1 147 0
	st.b	[%a5]0, %d15
	.loc 1 149 0
	ld.bu	%d15, [%a4] 1
	and	%d15, %d15, 15
	st.b	[%a5] 1, %d15
	.loc 1 151 0
	ld.bu	%d15, [%a4] 2
	and	%d15, %d15, 127
	st.b	[%a5] 2, %d15
	.loc 1 153 0
	ld.bu	%d15, [%a4] 3
	and	%d15, %d15, 3
	st.b	[%a5] 3, %d15
	.loc 1 155 0
	ld.bu	%d15, [%a4] 4
	.loc 1 158 0
	add.a	%a4, 5
.LVL7:
	.loc 1 155 0
	and	%d15, %d15, 127
	st.b	[%a5] 4, %d15
	.loc 1 158 0
	call	VL53L1_i2c_decode_uint16_t
.LVL8:
	.loc 1 157 0
	st.h	[%a15] 6, %d2
	.loc 1 159 0
	ld.bu	%d15, [%a12] 7
	st.b	[%a15] 8, %d15
	.loc 1 161 0
	ld.bu	%d15, [%a12] 8
	st.b	[%a15] 9, %d15
	.loc 1 163 0
	ld.bu	%d15, [%a12] 9
	.loc 1 170 0
	mov	%d2, 0
	.loc 1 163 0
	and	%d15, %d15, 63
	st.b	[%a15] 10, %d15
	.loc 1 165 0
	ld.bu	%d15, [%a12] 10
	st.b	[%a15] 11, %d15
.LVL9:
.L6:
	.loc 1 171 0
	ret
.LFE1:
	.size	VL53L1_i2c_decode_static_nvm_managed, .-VL53L1_i2c_decode_static_nvm_managed
.section .text.VL53L1_set_static_nvm_managed,"ax",@progbits
	.align 1
	.global	VL53L1_set_static_nvm_managed
	.type	VL53L1_set_static_nvm_managed, @function
VL53L1_set_static_nvm_managed:
.LFB2:
	.loc 1 177 0
.LVL10:
	sub.a	%SP, 16
.LCFI0:
	.loc 1 177 0
	mov.aa	%a15, %a4
	.loc 1 189 0
	mov	%d4, 11
	mov.aa	%a4, %a5
.LVL11:
	lea	%a5, [%SP] 5
.LVL12:
	call	VL53L1_i2c_encode_static_nvm_managed
.LVL13:
	.loc 1 194 0
	jz	%d2, .L10
	.loc 1 204 0
	ret
.L10:
	.loc 1 195 0
	mov.aa	%a4, %a15
	mov	%d4, 1
	lea	%a5, [%SP] 5
	mov	%d5, 11
	call	VL53L1_WriteMulti
.LVL14:
	.loc 1 204 0
	ret
.LFE2:
	.size	VL53L1_set_static_nvm_managed, .-VL53L1_set_static_nvm_managed
.section .text.VL53L1_get_static_nvm_managed,"ax",@progbits
	.align 1
	.global	VL53L1_get_static_nvm_managed
	.type	VL53L1_get_static_nvm_managed, @function
VL53L1_get_static_nvm_managed:
.LFB3:
	.loc 1 210 0
.LVL15:
	sub.a	%SP, 16
.LCFI1:
	.loc 1 210 0
	mov.aa	%a15, %a5
	.loc 1 222 0
	mov	%d4, 1
	lea	%a5, [%SP] 5
.LVL16:
	mov	%d5, 11
	call	VL53L1_ReadMulti
.LVL17:
	.loc 1 228 0
	jz	%d2, .L13
	.loc 1 237 0
	ret
.L13:
	.loc 1 229 0
	mov	%d4, 11
	lea	%a4, [%SP] 5
	mov.aa	%a5, %a15
	call	VL53L1_i2c_decode_static_nvm_managed
.LVL18:
	.loc 1 237 0
	ret
.LFE3:
	.size	VL53L1_get_static_nvm_managed, .-VL53L1_get_static_nvm_managed
.section .text.VL53L1_i2c_encode_customer_nvm_managed,"ax",@progbits
	.align 1
	.global	VL53L1_i2c_encode_customer_nvm_managed
	.type	VL53L1_i2c_encode_customer_nvm_managed, @function
VL53L1_i2c_encode_customer_nvm_managed:
.LFB4:
	.loc 1 244 0
.LVL19:
	.loc 1 254 0
	lt.u	%d4, %d4, 23
.LVL20:
	.loc 1 255 0
	mov	%d2, -10
	.loc 1 254 0
	jnz	%d4, .L15
	.loc 1 258 0
	ld.bu	%d15, [%a4]0
	.loc 1 257 0
	st.b	[%a5]0, %d15
	.loc 1 260 0
	ld.bu	%d15, [%a4] 1
	.loc 1 259 0
	st.b	[%a5] 1, %d15
	.loc 1 262 0
	ld.bu	%d15, [%a4] 2
	.loc 1 261 0
	st.b	[%a5] 2, %d15
	.loc 1 264 0
	ld.bu	%d15, [%a4] 3
	.loc 1 263 0
	st.b	[%a5] 3, %d15
	.loc 1 266 0
	ld.bu	%d15, [%a4] 4
	.loc 1 265 0
	st.b	[%a5] 4, %d15
	.loc 1 267 0
	ld.bu	%d15, [%a4] 5
	mov.aa	%a15, %a4
	and	%d15, %d15, 15
	.loc 1 275 0
	mov	%d5, 2
	mov.aa	%a12, %a5
	.loc 1 267 0
	st.b	[%a5] 5, %d15
	.loc 1 270 0
	ld.bu	%d15, [%a4] 6
	.loc 1 269 0
	st.b	[%a5] 6, %d15
	.loc 1 271 0
	ld.bu	%d15, [%a4] 7
	and	%d15, %d15, 63
	st.b	[%a5] 7, %d15
	.loc 1 273 0
	ld.bu	%d15, [%a4] 8
	and	%d15, %d15, 3
	st.b	[%a5] 8, %d15
	.loc 1 275 0
	ld.hu	%d4, [%a4] 10
	lea	%a4, [%a5] 9
.LVL21:
	call	VL53L1_i2c_encode_uint16_t
.LVL22:
	.loc 1 279 0
	ld.h	%d4, [%a15] 12
	mov	%d5, 2
	lea	%a4, [%a12] 11
	call	VL53L1_i2c_encode_int16_t
.LVL23:
	.loc 1 283 0
	ld.h	%d4, [%a15] 14
	mov	%d5, 2
	lea	%a4, [%a12] 13
	call	VL53L1_i2c_encode_int16_t
.LVL24:
	.loc 1 287 0
	ld.hu	%d4, [%a15] 16
	mov	%d5, 2
	lea	%a4, [%a12] 15
	call	VL53L1_i2c_encode_uint16_t
.LVL25:
	.loc 1 291 0
	ld.h	%d4, [%a15] 18
	mov	%d5, 2
	insert	%d4, %d4, 0, 13, 19
	lea	%a4, [%a12] 17
	call	VL53L1_i2c_encode_int16_t
.LVL26:
	.loc 1 295 0
	ld.h	%d4, [%a15] 20
	mov	%d5, 2
	lea	%a4, [%a12] 19
	call	VL53L1_i2c_encode_int16_t
.LVL27:
	.loc 1 299 0
	ld.h	%d4, [%a15] 22
	mov	%d5, 2
	lea	%a4, [%a12] 21
	call	VL53L1_i2c_encode_int16_t
.LVL28:
	.loc 1 306 0
	mov	%d2, 0
.LVL29:
.L15:
	.loc 1 307 0
	ret
.LFE4:
	.size	VL53L1_i2c_encode_customer_nvm_managed, .-VL53L1_i2c_encode_customer_nvm_managed
.section .text.VL53L1_i2c_decode_customer_nvm_managed,"ax",@progbits
	.align 1
	.global	VL53L1_i2c_decode_customer_nvm_managed
	.type	VL53L1_i2c_decode_customer_nvm_managed, @function
VL53L1_i2c_decode_customer_nvm_managed:
.LFB5:
	.loc 1 314 0
.LVL30:
	.loc 1 324 0
	lt.u	%d4, %d4, 23
.LVL31:
	.loc 1 325 0
	mov	%d2, -10
	.loc 1 324 0
	jnz	%d4, .L18
	.loc 1 328 0
	ld.bu	%d15, [%a4]0
	.loc 1 327 0
	st.b	[%a5]0, %d15
	.loc 1 329 0
	ld.bu	%d15, [%a4] 1
	st.b	[%a5] 1, %d15
	.loc 1 331 0
	ld.bu	%d15, [%a4] 2
	st.b	[%a5] 2, %d15
	.loc 1 333 0
	ld.bu	%d15, [%a4] 3
	st.b	[%a5] 3, %d15
	.loc 1 335 0
	ld.bu	%d15, [%a4] 4
	st.b	[%a5] 4, %d15
	.loc 1 337 0
	ld.bu	%d15, [%a4] 5
	mov.aa	%a12, %a4
	and	%d15, %d15, 15
	.loc 1 346 0
	mov	%d4, 2
	mov.aa	%a15, %a5
	.loc 1 337 0
	st.b	[%a5] 5, %d15
	.loc 1 339 0
	ld.bu	%d15, [%a4] 6
	st.b	[%a5] 6, %d15
	.loc 1 341 0
	ld.bu	%d15, [%a4] 7
	and	%d15, %d15, 63
	st.b	[%a5] 7, %d15
	.loc 1 343 0
	ld.bu	%d15, [%a4] 8
	.loc 1 346 0
	lea	%a4, [%a4] 9
.LVL32:
	.loc 1 343 0
	and	%d15, %d15, 3
	st.b	[%a5] 8, %d15
	.loc 1 346 0
	call	VL53L1_i2c_decode_uint16_t
.LVL33:
	.loc 1 348 0
	mov	%d4, 2
	lea	%a4, [%a12] 11
	.loc 1 345 0
	st.h	[%a15] 10, %d2
	.loc 1 348 0
	call	VL53L1_i2c_decode_int16_t
.LVL34:
	.loc 1 350 0
	mov	%d4, 2
	lea	%a4, [%a12] 13
	.loc 1 347 0
	st.h	[%a15] 12, %d2
	.loc 1 350 0
	call	VL53L1_i2c_decode_int16_t
.LVL35:
	.loc 1 352 0
	mov	%d4, 2
	lea	%a4, [%a12] 15
	.loc 1 349 0
	st.h	[%a15] 14, %d2
	.loc 1 352 0
	call	VL53L1_i2c_decode_uint16_t
.LVL36:
	.loc 1 354 0
	mov	%d4, 2
	lea	%a4, [%a12] 17
	.loc 1 351 0
	st.h	[%a15] 16, %d2
	.loc 1 354 0
	call	VL53L1_i2c_decode_int16_t
.LVL37:
	.loc 1 353 0
	insert	%d2, %d2, 0, 13, 19
	.loc 1 356 0
	mov	%d4, 2
	lea	%a4, [%a12] 19
	.loc 1 353 0
	st.h	[%a15] 18, %d2
	.loc 1 356 0
	call	VL53L1_i2c_decode_int16_t
.LVL38:
	.loc 1 355 0
	st.h	[%a15] 20, %d2
	.loc 1 358 0
	mov	%d4, 2
	lea	%a4, [%a12] 21
	call	VL53L1_i2c_decode_int16_t
.LVL39:
	.loc 1 357 0
	st.h	[%a15] 22, %d2
	.loc 1 362 0
	mov	%d2, 0
.LVL40:
.L18:
	.loc 1 363 0
	ret
.LFE5:
	.size	VL53L1_i2c_decode_customer_nvm_managed, .-VL53L1_i2c_decode_customer_nvm_managed
.section .text.VL53L1_set_customer_nvm_managed,"ax",@progbits
	.align 1
	.global	VL53L1_set_customer_nvm_managed
	.type	VL53L1_set_customer_nvm_managed, @function
VL53L1_set_customer_nvm_managed:
.LFB6:
	.loc 1 369 0
.LVL41:
	sub.a	%SP, 24
.LCFI2:
	.loc 1 369 0
	mov.aa	%a15, %a4
	.loc 1 381 0
	mov	%d4, 23
	mov.aa	%a4, %a5
.LVL42:
	lea	%a5, [%SP] 1
.LVL43:
	call	VL53L1_i2c_encode_customer_nvm_managed
.LVL44:
	.loc 1 386 0
	jz	%d2, .L22
	.loc 1 396 0
	ret
.L22:
	.loc 1 387 0
	mov.aa	%a4, %a15
	mov	%d4, 13
	lea	%a5, [%SP] 1
	mov	%d5, 23
	call	VL53L1_WriteMulti
.LVL45:
	.loc 1 396 0
	ret
.LFE6:
	.size	VL53L1_set_customer_nvm_managed, .-VL53L1_set_customer_nvm_managed
.section .text.VL53L1_get_customer_nvm_managed,"ax",@progbits
	.align 1
	.global	VL53L1_get_customer_nvm_managed
	.type	VL53L1_get_customer_nvm_managed, @function
VL53L1_get_customer_nvm_managed:
.LFB7:
	.loc 1 402 0
.LVL46:
	sub.a	%SP, 24
.LCFI3:
	.loc 1 402 0
	mov.aa	%a15, %a5
	.loc 1 414 0
	mov	%d4, 13
	lea	%a5, [%SP] 1
.LVL47:
	mov	%d5, 23
	call	VL53L1_ReadMulti
.LVL48:
	.loc 1 420 0
	jz	%d2, .L25
	.loc 1 429 0
	ret
.L25:
	.loc 1 421 0
	mov	%d4, 23
	lea	%a4, [%SP] 1
	mov.aa	%a5, %a15
	call	VL53L1_i2c_decode_customer_nvm_managed
.LVL49:
	.loc 1 429 0
	ret
.LFE7:
	.size	VL53L1_get_customer_nvm_managed, .-VL53L1_get_customer_nvm_managed
.section .text.VL53L1_i2c_encode_static_config,"ax",@progbits
	.align 1
	.global	VL53L1_i2c_encode_static_config
	.type	VL53L1_i2c_encode_static_config, @function
VL53L1_i2c_encode_static_config:
.LFB8:
	.loc 1 436 0
.LVL50:
	.loc 1 446 0
	lt.u	%d4, %d4, 32
.LVL51:
	.loc 1 447 0
	mov	%d2, -10
	.loc 1 446 0
	jnz	%d4, .L27
	.loc 1 449 0
	ld.hu	%d4, [%a4]0
	mov.aa	%a15, %a4
	mov	%d5, 2
	mov.aa	%a4, %a5
.LVL52:
	mov.aa	%a12, %a5
	call	VL53L1_i2c_encode_uint16_t
.LVL53:
	.loc 1 453 0
	ld.bu	%d15, [%a15] 2
	.loc 1 497 0
	mov	%d5, 2
	.loc 1 453 0
	and	%d15, %d15, 1
	.loc 1 497 0
	lea	%a4, [%a12] 24
	.loc 1 453 0
	st.b	[%a12] 2, %d15
	.loc 1 455 0
	ld.bu	%d15, [%a15] 3
	and	%d15, %d15, 15
	st.b	[%a12] 3, %d15
	.loc 1 457 0
	ld.bu	%d15, [%a15] 4
	and	%d15, %d15, 15
	st.b	[%a12] 4, %d15
	.loc 1 459 0
	ld.bu	%d15, [%a15] 5
	and	%d15, %d15, 31
	st.b	[%a12] 5, %d15
	.loc 1 461 0
	ld.bu	%d15, [%a15] 6
	and	%d15, %d15, 127
	st.b	[%a12] 6, %d15
	.loc 1 463 0
	ld.bu	%d15, [%a15] 7
	and	%d15, %d15, 127
	st.b	[%a12] 7, %d15
	.loc 1 465 0
	ld.bu	%d15, [%a15] 8
	and	%d15, %d15, 1
	st.b	[%a12] 8, %d15
	.loc 1 468 0
	ld.bu	%d15, [%a15] 9
	.loc 1 467 0
	st.b	[%a12] 9, %d15
	.loc 1 469 0
	ld.bu	%d15, [%a15] 10
	and	%d15, %d15, 1
	st.b	[%a12] 10, %d15
	.loc 1 471 0
	ld.bu	%d15, [%a15] 11
	and	%d15, %d15, 3
	st.b	[%a12] 11, %d15
	.loc 1 473 0
	ld.bu	%d15, [%a15] 12
	and	%d15, %d15, 31
	st.b	[%a12] 12, %d15
	.loc 1 475 0
	ld.bu	%d15, [%a15] 13
	and	%d15, %d15, 3
	st.b	[%a12] 13, %d15
	.loc 1 477 0
	ld.bu	%d15, [%a15] 14
	and	%d15, %d15, 3
	st.b	[%a12] 14, %d15
	.loc 1 479 0
	ld.bu	%d15, [%a15] 15
	and	%d15, %d15, 7
	st.b	[%a12] 15, %d15
	.loc 1 481 0
	ld.bu	%d15, [%a15] 16
	and	%d15, %d15, 31
	st.b	[%a12] 16, %d15
	.loc 1 483 0
	ld.bu	%d15, [%a15] 17
	and	%d15, %d15, 1
	st.b	[%a12] 17, %d15
	.loc 1 486 0
	ld.bu	%d15, [%a15] 18
	.loc 1 485 0
	st.b	[%a12] 18, %d15
	.loc 1 488 0
	ld.bu	%d15, [%a15] 19
	.loc 1 487 0
	st.b	[%a12] 19, %d15
	.loc 1 490 0
	ld.bu	%d15, [%a15] 20
	.loc 1 489 0
	st.b	[%a12] 20, %d15
	.loc 1 492 0
	ld.bu	%d15, [%a15] 21
	.loc 1 491 0
	st.b	[%a12] 21, %d15
	.loc 1 494 0
	ld.bu	%d15, [%a15] 22
	.loc 1 493 0
	st.b	[%a12] 22, %d15
	.loc 1 496 0
	ld.bu	%d15, [%a15] 23
	.loc 1 495 0
	st.b	[%a12] 23, %d15
	.loc 1 497 0
	ld.hu	%d4, [%a15] 24
	call	VL53L1_i2c_encode_uint16_t
.LVL54:
	.loc 1 502 0
	ld.bu	%d15, [%a15] 26
	.loc 1 501 0
	st.b	[%a12] 26, %d15
	.loc 1 504 0
	ld.bu	%d15, [%a15] 27
	.loc 1 503 0
	st.b	[%a12] 27, %d15
	.loc 1 505 0
	ld.bu	%d15, [%a15] 28
	.loc 1 516 0
	mov	%d2, 0
	.loc 1 505 0
	and	%d15, %d15, 15
	st.b	[%a12] 28, %d15
	.loc 1 508 0
	ld.bu	%d15, [%a15] 29
	.loc 1 507 0
	st.b	[%a12] 29, %d15
	.loc 1 509 0
	ld.bu	%d15, [%a15] 30
	and	%d15, %d15, 15
	st.b	[%a12] 30, %d15
	.loc 1 512 0
	ld.bu	%d15, [%a15] 31
	.loc 1 511 0
	st.b	[%a12] 31, %d15
.LVL55:
.L27:
	.loc 1 517 0
	ret
.LFE8:
	.size	VL53L1_i2c_encode_static_config, .-VL53L1_i2c_encode_static_config
.section .text.VL53L1_i2c_decode_static_config,"ax",@progbits
	.align 1
	.global	VL53L1_i2c_decode_static_config
	.type	VL53L1_i2c_decode_static_config, @function
VL53L1_i2c_decode_static_config:
.LFB9:
	.loc 1 524 0
.LVL56:
	.loc 1 534 0
	lt.u	%d4, %d4, 32
.LVL57:
	.loc 1 524 0
	mov.aa	%a12, %a4
	.loc 1 535 0
	mov	%d2, -10
	.loc 1 534 0
	jnz	%d4, .L30
	.loc 1 538 0
	mov	%d4, 2
	mov.aa	%a15, %a5
	call	VL53L1_i2c_decode_uint16_t
.LVL58:
	.loc 1 537 0
	st.h	[%a15]0, %d2
	.loc 1 539 0
	ld.bu	%d15, [%a12] 2
	.loc 1 584 0
	mov	%d4, 2
	.loc 1 539 0
	and	%d15, %d15, 1
	.loc 1 584 0
	lea	%a4, [%a12] 24
	.loc 1 539 0
	st.b	[%a15] 2, %d15
	.loc 1 541 0
	ld.bu	%d15, [%a12] 3
	and	%d15, %d15, 15
	st.b	[%a15] 3, %d15
	.loc 1 543 0
	ld.bu	%d15, [%a12] 4
	and	%d15, %d15, 15
	st.b	[%a15] 4, %d15
	.loc 1 545 0
	ld.bu	%d15, [%a12] 5
	and	%d15, %d15, 31
	st.b	[%a15] 5, %d15
	.loc 1 547 0
	ld.bu	%d15, [%a12] 6
	and	%d15, %d15, 127
	st.b	[%a15] 6, %d15
	.loc 1 549 0
	ld.bu	%d15, [%a12] 7
	and	%d15, %d15, 127
	st.b	[%a15] 7, %d15
	.loc 1 551 0
	ld.bu	%d15, [%a12] 8
	and	%d15, %d15, 1
	st.b	[%a15] 8, %d15
	.loc 1 553 0
	ld.bu	%d15, [%a12] 9
	st.b	[%a15] 9, %d15
	.loc 1 555 0
	ld.bu	%d15, [%a12] 10
	and	%d15, %d15, 1
	st.b	[%a15] 10, %d15
	.loc 1 557 0
	ld.bu	%d15, [%a12] 11
	and	%d15, %d15, 3
	st.b	[%a15] 11, %d15
	.loc 1 559 0
	ld.bu	%d15, [%a12] 12
	and	%d15, %d15, 31
	st.b	[%a15] 12, %d15
	.loc 1 561 0
	ld.bu	%d15, [%a12] 13
	and	%d15, %d15, 3
	st.b	[%a15] 13, %d15
	.loc 1 563 0
	ld.bu	%d15, [%a12] 14
	and	%d15, %d15, 3
	st.b	[%a15] 14, %d15
	.loc 1 565 0
	ld.bu	%d15, [%a12] 15
	and	%d15, %d15, 7
	st.b	[%a15] 15, %d15
	.loc 1 567 0
	ld.bu	%d15, [%a12] 16
	and	%d15, %d15, 31
	st.b	[%a15] 16, %d15
	.loc 1 569 0
	ld.bu	%d15, [%a12] 17
	and	%d15, %d15, 1
	st.b	[%a15] 17, %d15
	.loc 1 571 0
	ld.bu	%d15, [%a12] 18
	st.b	[%a15] 18, %d15
	.loc 1 573 0
	ld.bu	%d15, [%a12] 19
	st.b	[%a15] 19, %d15
	.loc 1 575 0
	ld.bu	%d15, [%a12] 20
	st.b	[%a15] 20, %d15
	.loc 1 577 0
	ld.bu	%d15, [%a12] 21
	st.b	[%a15] 21, %d15
	.loc 1 579 0
	ld.bu	%d15, [%a12] 22
	st.b	[%a15] 22, %d15
	.loc 1 581 0
	ld.bu	%d15, [%a12] 23
	st.b	[%a15] 23, %d15
	.loc 1 584 0
	call	VL53L1_i2c_decode_uint16_t
.LVL59:
	.loc 1 583 0
	st.h	[%a15] 24, %d2
	.loc 1 585 0
	ld.bu	%d15, [%a12] 26
	st.b	[%a15] 26, %d15
	.loc 1 587 0
	ld.bu	%d15, [%a12] 27
	st.b	[%a15] 27, %d15
	.loc 1 589 0
	ld.bu	%d15, [%a12] 28
	.loc 1 600 0
	mov	%d2, 0
	.loc 1 589 0
	and	%d15, %d15, 15
	st.b	[%a15] 28, %d15
	.loc 1 591 0
	ld.bu	%d15, [%a12] 29
	st.b	[%a15] 29, %d15
	.loc 1 593 0
	ld.bu	%d15, [%a12] 30
	and	%d15, %d15, 15
	st.b	[%a15] 30, %d15
	.loc 1 595 0
	ld.bu	%d15, [%a12] 31
	st.b	[%a15] 31, %d15
.LVL60:
.L30:
	.loc 1 601 0
	ret
.LFE9:
	.size	VL53L1_i2c_decode_static_config, .-VL53L1_i2c_decode_static_config
.section .text.VL53L1_set_static_config,"ax",@progbits
	.align 1
	.global	VL53L1_set_static_config
	.type	VL53L1_set_static_config, @function
VL53L1_set_static_config:
.LFB10:
	.loc 1 607 0
.LVL61:
	sub.a	%SP, 32
.LCFI4:
	.loc 1 607 0
	mov.aa	%a15, %a4
	.loc 1 619 0
	mov	%d4, 32
	mov.aa	%a4, %a5
.LVL62:
	mov.aa	%a5, %SP
.LVL63:
	call	VL53L1_i2c_encode_static_config
.LVL64:
	.loc 1 624 0
	jz	%d2, .L34
	.loc 1 634 0
	ret
.L34:
	.loc 1 625 0
	mov.aa	%a4, %a15
	mov	%d4, 36
	mov.aa	%a5, %SP
	mov	%d5, 32
	call	VL53L1_WriteMulti
.LVL65:
	.loc 1 634 0
	ret
.LFE10:
	.size	VL53L1_set_static_config, .-VL53L1_set_static_config
.section .text.VL53L1_i2c_encode_general_config,"ax",@progbits
	.align 1
	.global	VL53L1_i2c_encode_general_config
	.type	VL53L1_i2c_encode_general_config, @function
VL53L1_i2c_encode_general_config:
.LFB11:
	.loc 1 676 0
.LVL66:
	.loc 1 686 0
	lt.u	%d4, %d4, 22
.LVL67:
	.loc 1 687 0
	mov	%d2, -10
	.loc 1 686 0
	jnz	%d4, .L36
	.loc 1 690 0
	ld.bu	%d15, [%a4]0
	.loc 1 689 0
	st.b	[%a5]0, %d15
	.loc 1 692 0
	ld.bu	%d15, [%a4] 1
	.loc 1 691 0
	st.b	[%a5] 1, %d15
	.loc 1 694 0
	ld.bu	%d15, [%a4] 2
	.loc 1 693 0
	st.b	[%a5] 2, %d15
	.loc 1 695 0
	ld.bu	%d15, [%a4] 3
	mov.aa	%a15, %a4
	and	%d15, %d15, 127
	.loc 1 697 0
	mov	%d5, 2
	mov.aa	%a12, %a5
	.loc 1 695 0
	st.b	[%a5] 3, %d15
	.loc 1 697 0
	ld.h	%d4, [%a4] 4
	lea	%a4, [%a5] 4
.LVL68:
	insert	%d4, %d4, 0, 12, 20
	call	VL53L1_i2c_encode_uint16_t
.LVL69:
	.loc 1 701 0
	ld.bu	%d15, [%a15] 6
	.loc 1 711 0
	mov	%d5, 2
	.loc 1 701 0
	and	%d15, %d15, 127
	.loc 1 711 0
	lea	%a4, [%a12] 12
	.loc 1 701 0
	st.b	[%a12] 6, %d15
	.loc 1 704 0
	ld.bu	%d15, [%a15] 7
	.loc 1 703 0
	st.b	[%a12] 7, %d15
	.loc 1 706 0
	ld.bu	%d15, [%a15] 8
	.loc 1 705 0
	st.b	[%a12] 8, %d15
	.loc 1 707 0
	ld.bu	%d15, [%a15] 9
	and	%d15, %d15, 1
	st.b	[%a12] 9, %d15
	.loc 1 709 0
	ld.bu	%d15, [%a15] 10
	and	%d15, %d15, 7
	st.b	[%a12] 11, %d15
	.loc 1 711 0
	ld.hu	%d4, [%a15] 12
	call	VL53L1_i2c_encode_uint16_t
.LVL70:
	.loc 1 715 0
	ld.hu	%d4, [%a15] 14
	mov	%d5, 2
	lea	%a4, [%a12] 14
	call	VL53L1_i2c_encode_uint16_t
.LVL71:
	.loc 1 719 0
	ld.hu	%d4, [%a15] 16
	mov	%d5, 2
	lea	%a4, [%a12] 16
	call	VL53L1_i2c_encode_uint16_t
.LVL72:
	.loc 1 724 0
	ld.bu	%d15, [%a15] 18
	.loc 1 723 0
	st.b	[%a12] 18, %d15
	.loc 1 726 0
	ld.bu	%d15, [%a15] 19
	.loc 1 725 0
	st.b	[%a12] 19, %d15
	.loc 1 728 0
	ld.bu	%d15, [%a15] 20
	.loc 1 727 0
	st.b	[%a12] 20, %d15
	.loc 1 730 0
	ld.bu	%d15, [%a15] 21
	.loc 1 729 0
	st.b	[%a12] 21, %d15
	.loc 1 734 0
	mov	%d2, 0
.LVL73:
.L36:
	.loc 1 735 0
	ret
.LFE11:
	.size	VL53L1_i2c_encode_general_config, .-VL53L1_i2c_encode_general_config
.section .text.VL53L1_i2c_decode_general_config,"ax",@progbits
	.align 1
	.global	VL53L1_i2c_decode_general_config
	.type	VL53L1_i2c_decode_general_config, @function
VL53L1_i2c_decode_general_config:
.LFB12:
	.loc 1 742 0
.LVL74:
	.loc 1 752 0
	lt.u	%d4, %d4, 22
.LVL75:
	.loc 1 753 0
	mov	%d2, -10
	.loc 1 752 0
	jnz	%d4, .L39
	.loc 1 756 0
	ld.bu	%d15, [%a4]0
	.loc 1 755 0
	st.b	[%a5]0, %d15
	.loc 1 757 0
	ld.bu	%d15, [%a4] 1
	st.b	[%a5] 1, %d15
	.loc 1 759 0
	ld.bu	%d15, [%a4] 2
	st.b	[%a5] 2, %d15
	.loc 1 761 0
	ld.bu	%d15, [%a4] 3
	mov.aa	%a12, %a4
	and	%d15, %d15, 127
	.loc 1 764 0
	mov	%d4, 2
	add.a	%a4, 4
.LVL76:
	.loc 1 761 0
	st.b	[%a5] 3, %d15
	mov.aa	%a15, %a5
	.loc 1 764 0
	call	VL53L1_i2c_decode_uint16_t
.LVL77:
	.loc 1 763 0
	insert	%d2, %d2, 0, 12, 20
	.loc 1 776 0
	mov	%d4, 2
	lea	%a4, [%a12] 12
	.loc 1 763 0
	st.h	[%a15] 4, %d2
	.loc 1 765 0
	ld.bu	%d15, [%a12] 6
	and	%d15, %d15, 127
	st.b	[%a15] 6, %d15
	.loc 1 767 0
	ld.bu	%d15, [%a12] 7
	st.b	[%a15] 7, %d15
	.loc 1 769 0
	ld.bu	%d15, [%a12] 8
	st.b	[%a15] 8, %d15
	.loc 1 771 0
	ld.bu	%d15, [%a12] 9
	and	%d15, %d15, 1
	st.b	[%a15] 9, %d15
	.loc 1 773 0
	ld.bu	%d15, [%a12] 11
	and	%d15, %d15, 7
	st.b	[%a15] 10, %d15
	.loc 1 776 0
	call	VL53L1_i2c_decode_uint16_t
.LVL78:
	.loc 1 778 0
	mov	%d4, 2
	lea	%a4, [%a12] 14
	.loc 1 775 0
	st.h	[%a15] 12, %d2
	.loc 1 778 0
	call	VL53L1_i2c_decode_uint16_t
.LVL79:
	.loc 1 777 0
	st.h	[%a15] 14, %d2
	.loc 1 780 0
	mov	%d4, 2
	lea	%a4, [%a12] 16
	call	VL53L1_i2c_decode_uint16_t
.LVL80:
	.loc 1 779 0
	st.h	[%a15] 16, %d2
	.loc 1 781 0
	ld.bu	%d15, [%a12] 18
	st.b	[%a15] 18, %d15
	.loc 1 783 0
	ld.bu	%d15, [%a12] 19
	st.b	[%a15] 19, %d15
	.loc 1 785 0
	ld.bu	%d15, [%a12] 20
	st.b	[%a15] 20, %d15
	.loc 1 787 0
	ld.bu	%d15, [%a12] 21
	st.b	[%a15] 21, %d15
	.loc 1 792 0
	mov	%d2, 0
.LVL81:
.L39:
	.loc 1 793 0
	ret
.LFE12:
	.size	VL53L1_i2c_decode_general_config, .-VL53L1_i2c_decode_general_config
.section .text.VL53L1_set_general_config,"ax",@progbits
	.align 1
	.global	VL53L1_set_general_config
	.type	VL53L1_set_general_config, @function
VL53L1_set_general_config:
.LFB13:
	.loc 1 799 0
.LVL82:
	sub.a	%SP, 24
.LCFI5:
	.loc 1 799 0
	mov.aa	%a15, %a4
	.loc 1 811 0
	mov	%d4, 22
	mov.aa	%a4, %a5
.LVL83:
	lea	%a5, [%SP] 2
.LVL84:
	call	VL53L1_i2c_encode_general_config
.LVL85:
	.loc 1 816 0
	jz	%d2, .L43
	.loc 1 826 0
	ret
.L43:
	.loc 1 817 0
	mov.aa	%a4, %a15
	mov	%d4, 68
	lea	%a5, [%SP] 2
	mov	%d5, 22
	call	VL53L1_WriteMulti
.LVL86:
	.loc 1 826 0
	ret
.LFE13:
	.size	VL53L1_set_general_config, .-VL53L1_set_general_config
.section .text.VL53L1_i2c_encode_timing_config,"ax",@progbits
	.align 1
	.global	VL53L1_i2c_encode_timing_config
	.type	VL53L1_i2c_encode_timing_config, @function
VL53L1_i2c_encode_timing_config:
.LFB14:
	.loc 1 868 0
.LVL87:
	.loc 1 878 0
	lt.u	%d4, %d4, 23
.LVL88:
	.loc 1 879 0
	mov	%d2, -10
	.loc 1 878 0
	jnz	%d4, .L45
	.loc 1 881 0
	ld.bu	%d15, [%a4]0
	mov.aa	%a15, %a4
	and	%d15, %d15, 15
	.loc 1 901 0
	mov	%d5, 2
	mov.aa	%a12, %a5
	.loc 1 881 0
	st.b	[%a5]0, %d15
	.loc 1 884 0
	ld.bu	%d15, [%a4] 1
	.loc 1 883 0
	st.b	[%a5] 1, %d15
	.loc 1 885 0
	ld.bu	%d15, [%a4] 2
	and	%d15, %d15, 15
	st.b	[%a5] 2, %d15
	.loc 1 888 0
	ld.bu	%d15, [%a4] 3
	.loc 1 887 0
	st.b	[%a5] 3, %d15
	.loc 1 889 0
	ld.bu	%d15, [%a4] 4
	and	%d15, %d15, 15
	st.b	[%a5] 4, %d15
	.loc 1 892 0
	ld.bu	%d15, [%a4] 5
	.loc 1 891 0
	st.b	[%a5] 5, %d15
	.loc 1 893 0
	ld.bu	%d15, [%a4] 6
	and	%d15, %d15, 63
	st.b	[%a5] 6, %d15
	.loc 1 895 0
	ld.bu	%d15, [%a4] 7
	and	%d15, %d15, 15
	st.b	[%a5] 7, %d15
	.loc 1 898 0
	ld.bu	%d15, [%a4] 8
	.loc 1 897 0
	st.b	[%a5] 8, %d15
	.loc 1 899 0
	ld.bu	%d15, [%a4] 9
	and	%d15, %d15, 63
	st.b	[%a5] 9, %d15
	.loc 1 901 0
	ld.hu	%d4, [%a4] 10
	lea	%a4, [%a5] 10
.LVL89:
	call	VL53L1_i2c_encode_uint16_t
.LVL90:
	.loc 1 905 0
	ld.hu	%d4, [%a15] 12
	mov	%d5, 2
	lea	%a4, [%a12] 12
	call	VL53L1_i2c_encode_uint16_t
.LVL91:
	.loc 1 910 0
	ld.bu	%d15, [%a15] 14
	.loc 1 909 0
	st.b	[%a12] 14, %d15
	.loc 1 912 0
	ld.bu	%d15, [%a15] 15
	.loc 1 911 0
	st.b	[%a12] 15, %d15
	.loc 1 913 0
	ld.w	%d4, [%a15] 16
	mov	%d5, 4
	lea	%a4, [%a12] 18
	call	VL53L1_i2c_encode_uint32_t
.LVL92:
	.loc 1 917 0
	ld.bu	%d15, [%a15] 20
	.loc 1 922 0
	mov	%d2, 0
	.loc 1 917 0
	and	%d15, %d15, 1
	st.b	[%a12] 22, %d15
.LVL93:
.L45:
	.loc 1 923 0
	ret
.LFE14:
	.size	VL53L1_i2c_encode_timing_config, .-VL53L1_i2c_encode_timing_config
.section .text.VL53L1_i2c_encode_dynamic_config,"ax",@progbits
	.align 1
	.global	VL53L1_i2c_encode_dynamic_config
	.type	VL53L1_i2c_encode_dynamic_config, @function
VL53L1_i2c_encode_dynamic_config:
.LFB15:
	.loc 1 1058 0
.LVL94:
	.loc 1 1068 0
	lt.u	%d4, %d4, 18
.LVL95:
	.loc 1 1069 0
	mov	%d2, -10
	.loc 1 1068 0
	jnz	%d4, .L48
	.loc 1 1071 0
	ld.bu	%d15, [%a4]0
	mov.aa	%a15, %a4
	and	%d15, %d15, 3
	mov.aa	%a4, %a5
.LVL96:
	.loc 1 1073 0
	mov	%d5, 2
	.loc 1 1071 0
	st.b	[%a4+]1, %d15
	.loc 1 1073 0
	ld.hu	%d4, [%a15] 2
	mov.aa	%a12, %a5
	call	VL53L1_i2c_encode_uint16_t
.LVL97:
	.loc 1 1077 0
	ld.hu	%d4, [%a15] 4
	mov	%d5, 2
	lea	%a4, [%a12] 3
	call	VL53L1_i2c_encode_uint16_t
.LVL98:
	.loc 1 1081 0
	ld.bu	%d15, [%a15] 6
	.loc 1 1110 0
	mov	%d2, 0
	.loc 1 1081 0
	and	%d15, %d15, 1
	st.b	[%a12] 5, %d15
	.loc 1 1083 0
	ld.bu	%d15, [%a15] 7
	and	%d15, %d15, 7
	st.b	[%a12] 6, %d15
	.loc 1 1086 0
	ld.bu	%d15, [%a15] 8
	.loc 1 1085 0
	st.b	[%a12] 7, %d15
	.loc 1 1088 0
	ld.bu	%d15, [%a15] 9
	.loc 1 1087 0
	st.b	[%a12] 8, %d15
	.loc 1 1089 0
	ld.bu	%d15, [%a15] 10
	and	%d15, %d15, 127
	st.b	[%a12] 9, %d15
	.loc 1 1091 0
	ld.bu	%d15, [%a15] 11
	and	%d15, %d15, 127
	st.b	[%a12] 10, %d15
	.loc 1 1093 0
	ld.bu	%d15, [%a15] 12
	and	%d15, %d15, 3
	st.b	[%a12] 11, %d15
	.loc 1 1095 0
	ld.bu	%d15, [%a15] 13
	and	%d15, %d15, 3
	st.b	[%a12] 12, %d15
	.loc 1 1097 0
	ld.bu	%d15, [%a15] 14
	and	%d15, %d15, 15
	st.b	[%a12] 13, %d15
	.loc 1 1100 0
	ld.bu	%d15, [%a15] 15
	.loc 1 1099 0
	st.b	[%a12] 14, %d15
	.loc 1 1102 0
	ld.bu	%d15, [%a15] 16
	.loc 1 1101 0
	st.b	[%a12] 15, %d15
	.loc 1 1104 0
	ld.bu	%d15, [%a15] 17
	.loc 1 1103 0
	st.b	[%a12] 16, %d15
	.loc 1 1105 0
	ld.bu	%d15, [%a15] 18
	and	%d15, %d15, 3
	st.b	[%a12] 17, %d15
.LVL99:
.L48:
	.loc 1 1111 0
	ret
.LFE15:
	.size	VL53L1_i2c_encode_dynamic_config, .-VL53L1_i2c_encode_dynamic_config
.section .text.VL53L1_set_dynamic_config,"ax",@progbits
	.align 1
	.global	VL53L1_set_dynamic_config
	.type	VL53L1_set_dynamic_config, @function
VL53L1_set_dynamic_config:
.LFB16:
	.loc 1 1174 0
.LVL100:
	sub.a	%SP, 24
.LCFI6:
	.loc 1 1174 0
	mov.aa	%a15, %a4
	.loc 1 1186 0
	mov	%d4, 18
	mov.aa	%a4, %a5
.LVL101:
	lea	%a5, [%SP] 6
.LVL102:
	call	VL53L1_i2c_encode_dynamic_config
.LVL103:
	.loc 1 1191 0
	jz	%d2, .L52
	.loc 1 1201 0
	ret
.L52:
	.loc 1 1192 0
	mov.aa	%a4, %a15
	mov	%d4, 113
	lea	%a5, [%SP] 6
	mov	%d5, 18
	call	VL53L1_WriteMulti
.LVL104:
	.loc 1 1201 0
	ret
.LFE16:
	.size	VL53L1_set_dynamic_config, .-VL53L1_set_dynamic_config
.section .text.VL53L1_i2c_encode_system_control,"ax",@progbits
	.align 1
	.global	VL53L1_i2c_encode_system_control
	.type	VL53L1_i2c_encode_system_control, @function
VL53L1_i2c_encode_system_control:
.LFB17:
	.loc 1 1243 0
.LVL105:
	.loc 1 1254 0
	mov	%d2, -10
	.loc 1 1253 0
	jlt.u	%d4, 5, .L54
	.loc 1 1256 0
	ld.bu	%d15, [%a4]0
	.loc 1 1269 0
	mov	%d2, 0
	.loc 1 1256 0
	and	%d15, %d15, 1
	st.b	[%a5]0, %d15
	.loc 1 1258 0
	ld.bu	%d15, [%a4] 1
	and	%d15, %d15, 1
	st.b	[%a5] 1, %d15
	.loc 1 1260 0
	ld.bu	%d15, [%a4] 2
	and	%d15, %d15, 1
	st.b	[%a5] 2, %d15
	.loc 1 1262 0
	ld.bu	%d15, [%a4] 3
	and	%d15, %d15, 3
	st.b	[%a5] 3, %d15
	.loc 1 1265 0
	ld.bu	%d15, [%a4] 4
	.loc 1 1264 0
	st.b	[%a5] 4, %d15
.L54:
	.loc 1 1270 0
	ret
.LFE17:
	.size	VL53L1_i2c_encode_system_control, .-VL53L1_i2c_encode_system_control
.section .text.VL53L1_set_system_control,"ax",@progbits
	.align 1
	.global	VL53L1_set_system_control
	.type	VL53L1_set_system_control, @function
VL53L1_set_system_control:
.LFB18:
	.loc 1 1312 0
.LVL106:
.LBB4:
.LBB5:
	.loc 1 1256 0
	ld.bu	%d15, [%a5]0
.LBE5:
.LBE4:
	.loc 1 1312 0
	sub.a	%SP, 8
.LCFI7:
.LVL107:
.LBB9:
.LBB6:
	.loc 1 1256 0
	and	%d15, %d15, 1
.LBE6:
.LBE9:
	.loc 1 1330 0
	mov	%d4, 131
	mov	%d5, 5
.LBB10:
.LBB7:
	.loc 1 1256 0
	st.b	[%SP] 3, %d15
	.loc 1 1258 0
	ld.bu	%d15, [%a5] 1
	and	%d15, %d15, 1
	st.b	[%SP] 4, %d15
	.loc 1 1260 0
	ld.bu	%d15, [%a5] 2
	and	%d15, %d15, 1
	st.b	[%SP] 5, %d15
	.loc 1 1262 0
	ld.bu	%d15, [%a5] 3
	and	%d15, %d15, 3
	st.b	[%SP] 6, %d15
	.loc 1 1264 0
	ld.bu	%d15, [%a5] 4
.LBE7:
.LBE10:
	.loc 1 1330 0
	lea	%a5, [%SP] 3
.LVL108:
.LBB11:
.LBB8:
	.loc 1 1264 0
	st.b	[%SP] 7, %d15
.LBE8:
.LBE11:
	.loc 1 1339 0
	j	VL53L1_WriteMulti
.LVL109:
.LFE18:
	.size	VL53L1_set_system_control, .-VL53L1_set_system_control
.section .text.VL53L1_i2c_decode_system_results,"ax",@progbits
	.align 1
	.global	VL53L1_i2c_decode_system_results
	.type	VL53L1_i2c_decode_system_results, @function
VL53L1_i2c_decode_system_results:
.LFB19:
	.loc 1 1495 0
.LVL110:
	.loc 1 1505 0
	lt.u	%d4, %d4, 44
.LVL111:
	.loc 1 1506 0
	mov	%d2, -10
	.loc 1 1505 0
	jnz	%d4, .L58
	.loc 1 1508 0
	ld.bu	%d15, [%a4]0
	mov.aa	%a12, %a4
	and	%d15, %d15, 63
	.loc 1 1517 0
	mov	%d4, 2
	mov.aa	%a15, %a5
	.loc 1 1508 0
	st.b	[%a5]0, %d15
	.loc 1 1510 0
	ld.bu	%d15, [%a4] 1
	st.b	[%a5] 1, %d15
	.loc 1 1512 0
	ld.bu	%d15, [%a4] 2
	and	%d15, %d15, 15
	st.b	[%a5] 2, %d15
	.loc 1 1514 0
	ld.bu	%d15, [%a4] 3
	st.b	[%a5] 3, %d15
	.loc 1 1517 0
	add.a	%a4, 4
.LVL112:
	call	VL53L1_i2c_decode_uint16_t
.LVL113:
	.loc 1 1519 0
	mov	%d4, 2
	lea	%a4, [%a12] 6
	.loc 1 1516 0
	st.h	[%a15] 4, %d2
	.loc 1 1519 0
	call	VL53L1_i2c_decode_uint16_t
.LVL114:
	.loc 1 1521 0
	mov	%d4, 2
	lea	%a4, [%a12] 8
	.loc 1 1518 0
	st.h	[%a15] 6, %d2
	.loc 1 1521 0
	call	VL53L1_i2c_decode_uint16_t
.LVL115:
	.loc 1 1523 0
	mov	%d4, 2
	lea	%a4, [%a12] 10
	.loc 1 1520 0
	st.h	[%a15] 8, %d2
	.loc 1 1523 0
	call	VL53L1_i2c_decode_uint16_t
.LVL116:
	.loc 1 1525 0
	mov	%d4, 2
	lea	%a4, [%a12] 12
	.loc 1 1522 0
	st.h	[%a15] 10, %d2
	.loc 1 1525 0
	call	VL53L1_i2c_decode_uint16_t
.LVL117:
	.loc 1 1527 0
	mov	%d4, 2
	lea	%a4, [%a12] 14
	.loc 1 1524 0
	st.h	[%a15] 12, %d2
	.loc 1 1527 0
	call	VL53L1_i2c_decode_uint16_t
.LVL118:
	.loc 1 1529 0
	mov	%d4, 2
	lea	%a4, [%a12] 16
	.loc 1 1526 0
	st.h	[%a15] 14, %d2
	.loc 1 1529 0
	call	VL53L1_i2c_decode_uint16_t
.LVL119:
	.loc 1 1531 0
	mov	%d4, 2
	lea	%a4, [%a12] 18
	.loc 1 1528 0
	st.h	[%a15] 16, %d2
	.loc 1 1531 0
	call	VL53L1_i2c_decode_uint16_t
.LVL120:
	.loc 1 1533 0
	mov	%d4, 2
	lea	%a4, [%a12] 20
	.loc 1 1530 0
	st.h	[%a15] 18, %d2
	.loc 1 1533 0
	call	VL53L1_i2c_decode_uint16_t
.LVL121:
	.loc 1 1535 0
	mov	%d4, 2
	lea	%a4, [%a12] 22
	.loc 1 1532 0
	st.h	[%a15] 20, %d2
	.loc 1 1535 0
	call	VL53L1_i2c_decode_uint16_t
.LVL122:
	.loc 1 1537 0
	mov	%d4, 2
	lea	%a4, [%a12] 24
	.loc 1 1534 0
	st.h	[%a15] 22, %d2
	.loc 1 1537 0
	call	VL53L1_i2c_decode_uint16_t
.LVL123:
	.loc 1 1539 0
	mov	%d4, 2
	lea	%a4, [%a12] 26
	.loc 1 1536 0
	st.h	[%a15] 24, %d2
	.loc 1 1539 0
	call	VL53L1_i2c_decode_uint16_t
.LVL124:
	.loc 1 1541 0
	mov	%d4, 2
	lea	%a4, [%a12] 28
	.loc 1 1538 0
	st.h	[%a15] 26, %d2
	.loc 1 1541 0
	call	VL53L1_i2c_decode_uint16_t
.LVL125:
	.loc 1 1543 0
	mov	%d4, 2
	lea	%a4, [%a12] 30
	.loc 1 1540 0
	st.h	[%a15] 28, %d2
	.loc 1 1543 0
	call	VL53L1_i2c_decode_uint16_t
.LVL126:
	.loc 1 1545 0
	mov	%d4, 2
	lea	%a4, [%a12] 32
	.loc 1 1542 0
	st.h	[%a15] 30, %d2
	.loc 1 1545 0
	call	VL53L1_i2c_decode_uint16_t
.LVL127:
	.loc 1 1547 0
	mov	%d4, 2
	lea	%a4, [%a12] 34
	.loc 1 1544 0
	st.h	[%a15] 32, %d2
	.loc 1 1547 0
	call	VL53L1_i2c_decode_uint16_t
.LVL128:
	.loc 1 1549 0
	mov	%d4, 2
	lea	%a4, [%a12] 36
	.loc 1 1546 0
	st.h	[%a15] 34, %d2
	.loc 1 1549 0
	call	VL53L1_i2c_decode_uint16_t
.LVL129:
	.loc 1 1551 0
	mov	%d4, 2
	lea	%a4, [%a12] 38
	.loc 1 1548 0
	st.h	[%a15] 36, %d2
	.loc 1 1551 0
	call	VL53L1_i2c_decode_uint16_t
.LVL130:
	.loc 1 1550 0
	st.h	[%a15] 38, %d2
	.loc 1 1553 0
	mov	%d4, 2
	lea	%a4, [%a12] 40
	call	VL53L1_i2c_decode_uint16_t
.LVL131:
	.loc 1 1552 0
	st.h	[%a15] 40, %d2
	.loc 1 1554 0
	ld.bu	%d15, [%a12] 42
	st.b	[%a15] 42, %d15
	.loc 1 1556 0
	ld.bu	%d15, [%a12] 43
	st.b	[%a15] 43, %d15
	.loc 1 1561 0
	mov	%d2, 0
.LVL132:
.L58:
	.loc 1 1562 0
	ret
.LFE19:
	.size	VL53L1_i2c_decode_system_results, .-VL53L1_i2c_decode_system_results
.section .text.VL53L1_get_system_results,"ax",@progbits
	.align 1
	.global	VL53L1_get_system_results
	.type	VL53L1_get_system_results, @function
VL53L1_get_system_results:
.LFB20:
	.loc 1 1603 0
.LVL133:
	sub.a	%SP, 48
.LCFI8:
	.loc 1 1603 0
	mov.aa	%a15, %a5
	.loc 1 1615 0
	mov	%d4, 136
	lea	%a5, [%SP] 4
.LVL134:
	mov	%d5, 44
	call	VL53L1_ReadMulti
.LVL135:
	.loc 1 1621 0
	jz	%d2, .L62
	.loc 1 1630 0
	ret
.L62:
	.loc 1 1622 0
	mov	%d4, 44
	lea	%a4, [%SP] 4
	mov.aa	%a5, %a15
	call	VL53L1_i2c_decode_system_results
.LVL136:
	.loc 1 1630 0
	ret
.LFE20:
	.size	VL53L1_get_system_results, .-VL53L1_get_system_results
.section .text.VL53L1_i2c_decode_core_results,"ax",@progbits
	.align 1
	.global	VL53L1_i2c_decode_core_results
	.type	VL53L1_i2c_decode_core_results, @function
VL53L1_i2c_decode_core_results:
.LFB21:
	.loc 1 1697 0
.LVL137:
	.loc 1 1707 0
	lt.u	%d4, %d4, 33
.LVL138:
	.loc 1 1697 0
	mov.aa	%a12, %a4
	.loc 1 1708 0
	mov	%d2, -10
	.loc 1 1707 0
	jnz	%d4, .L64
	.loc 1 1711 0
	mov	%d4, 4
	mov.aa	%a15, %a5
	call	VL53L1_i2c_decode_uint32_t
.LVL139:
	.loc 1 1713 0
	mov	%d4, 4
	lea	%a4, [%a12] 4
	.loc 1 1710 0
	st.w	[%a15]0, %d2
	.loc 1 1713 0
	call	VL53L1_i2c_decode_uint32_t
.LVL140:
	.loc 1 1715 0
	mov	%d4, 4
	lea	%a4, [%a12] 8
	.loc 1 1712 0
	st.w	[%a15] 4, %d2
	.loc 1 1715 0
	call	VL53L1_i2c_decode_int32_t
.LVL141:
	.loc 1 1717 0
	mov	%d4, 4
	lea	%a4, [%a12] 12
	.loc 1 1714 0
	st.w	[%a15] 8, %d2
	.loc 1 1717 0
	call	VL53L1_i2c_decode_uint32_t
.LVL142:
	.loc 1 1719 0
	mov	%d4, 4
	lea	%a4, [%a12] 16
	.loc 1 1716 0
	st.w	[%a15] 12, %d2
	.loc 1 1719 0
	call	VL53L1_i2c_decode_uint32_t
.LVL143:
	.loc 1 1721 0
	mov	%d4, 4
	lea	%a4, [%a12] 20
	.loc 1 1718 0
	st.w	[%a15] 16, %d2
	.loc 1 1721 0
	call	VL53L1_i2c_decode_uint32_t
.LVL144:
	.loc 1 1723 0
	mov	%d4, 4
	lea	%a4, [%a12] 24
	.loc 1 1720 0
	st.w	[%a15] 20, %d2
	.loc 1 1723 0
	call	VL53L1_i2c_decode_int32_t
.LVL145:
	.loc 1 1722 0
	st.w	[%a15] 24, %d2
	.loc 1 1725 0
	mov	%d4, 4
	lea	%a4, [%a12] 28
	call	VL53L1_i2c_decode_uint32_t
.LVL146:
	.loc 1 1724 0
	st.w	[%a15] 28, %d2
	.loc 1 1726 0
	ld.bu	%d15, [%a12] 32
	st.b	[%a15] 32, %d15
	.loc 1 1731 0
	mov	%d2, 0
.LVL147:
.L64:
	.loc 1 1732 0
	ret
.LFE21:
	.size	VL53L1_i2c_decode_core_results, .-VL53L1_i2c_decode_core_results
.section .text.VL53L1_i2c_decode_debug_results,"ax",@progbits
	.align 1
	.global	VL53L1_i2c_decode_debug_results
	.type	VL53L1_i2c_decode_debug_results, @function
VL53L1_i2c_decode_debug_results:
.LFB22:
	.loc 1 1941 0
.LVL148:
	.loc 1 1951 0
	lt.u	%d4, %d4, 56
.LVL149:
	.loc 1 1941 0
	mov.aa	%a12, %a4
	.loc 1 1952 0
	mov	%d2, -10
	.loc 1 1951 0
	jnz	%d4, .L67
	.loc 1 1955 0
	mov	%d4, 2
	mov.aa	%a15, %a5
	call	VL53L1_i2c_decode_uint16_t
.LVL150:
	.loc 1 1954 0
	st.h	[%a15]0, %d2
	.loc 1 1956 0
	ld.bu	%d15, [%a12] 2
	.loc 1 1969 0
	mov	%d4, 2
	.loc 1 1956 0
	and	%d15, %d15, 127
	.loc 1 1969 0
	lea	%a4, [%a12] 8
	.loc 1 1956 0
	st.b	[%a15] 2, %d15
	.loc 1 1958 0
	ld.bu	%d15, [%a12] 3
	and	%d15, %d15, 63
	st.b	[%a15] 3, %d15
	.loc 1 1960 0
	ld.bu	%d15, [%a12] 4
	and	%d15, %d15, 3
	st.b	[%a15] 4, %d15
	.loc 1 1962 0
	ld.bu	%d15, [%a12] 5
	and	%d15, %d15, 1
	st.b	[%a15] 5, %d15
	.loc 1 1964 0
	ld.bu	%d15, [%a12] 6
	and	%d15, %d15, 63
	st.b	[%a15] 6, %d15
	.loc 1 1966 0
	ld.bu	%d15, [%a12] 7
	and	%d15, %d15, 63
	st.b	[%a15] 7, %d15
	.loc 1 1969 0
	call	VL53L1_i2c_decode_uint16_t
.LVL151:
	.loc 1 1968 0
	insert	%d2, %d2, 0, 10, 22
	.loc 1 1987 0
	mov	%d4, 2
	lea	%a4, [%a12] 18
	.loc 1 1968 0
	st.h	[%a15] 8, %d2
	.loc 1 1970 0
	ld.bu	%d15, [%a12] 10
	and	%d15, %d15, 3
	st.b	[%a15] 10, %d15
	.loc 1 1972 0
	ld.bu	%d15, [%a12] 11
	and	%d15, %d15, 3
	st.b	[%a15] 11, %d15
	.loc 1 1974 0
	ld.bu	%d15, [%a12] 12
	and	%d15, %d15, 15
	st.b	[%a15] 12, %d15
	.loc 1 1976 0
	ld.bu	%d15, [%a12] 13
	and	%d15, %d15, 7
	st.b	[%a15] 13, %d15
	.loc 1 1978 0
	ld.bu	%d15, [%a12] 14
	and	%d15, %d15, 1
	st.b	[%a15] 14, %d15
	.loc 1 1980 0
	ld.bu	%d15, [%a12] 15
	and	%d15, %d15, 3
	st.b	[%a15] 15, %d15
	.loc 1 1982 0
	ld.bu	%d15, [%a12] 16
	st.b	[%a15] 16, %d15
	.loc 1 1984 0
	ld.bu	%d15, [%a12] 17
	st.b	[%a15] 17, %d15
	.loc 1 1987 0
	call	VL53L1_i2c_decode_uint16_t
.LVL152:
	.loc 1 1986 0
	insert	%d2, %d2, 0, 12, 20
	.loc 1 1989 0
	mov	%d4, 2
	lea	%a4, [%a12] 22
	.loc 1 1986 0
	st.h	[%a15] 18, %d2
	.loc 1 1989 0
	call	VL53L1_i2c_decode_uint16_t
.LVL153:
	.loc 1 1991 0
	mov	%d4, 2
	lea	%a4, [%a12] 24
	.loc 1 1988 0
	st.h	[%a15] 20, %d2
	.loc 1 1991 0
	call	VL53L1_i2c_decode_uint16_t
.LVL154:
	.loc 1 1990 0
	st.h	[%a15] 22, %d2
	.loc 1 1992 0
	ld.bu	%d15, [%a12] 26
	.loc 1 2033 0
	mov	%d4, 4
	.loc 1 1992 0
	and	%d15, %d15, 1
	.loc 1 2033 0
	lea	%a4, [%a12] 46
	.loc 1 1992 0
	st.b	[%a15] 24, %d15
	.loc 1 1994 0
	ld.bu	%d15, [%a12] 27
	and	%d15, %d15, 7
	st.b	[%a15] 25, %d15
	.loc 1 1996 0
	ld.bu	%d15, [%a12] 28
	st.b	[%a15] 26, %d15
	.loc 1 1998 0
	ld.bu	%d15, [%a12] 29
	st.b	[%a15] 27, %d15
	.loc 1 2000 0
	ld.bu	%d15, [%a12] 30
	and	%d15, %d15, 127
	st.b	[%a15] 28, %d15
	.loc 1 2002 0
	ld.bu	%d15, [%a12] 31
	and	%d15, %d15, 127
	st.b	[%a15] 29, %d15
	.loc 1 2004 0
	ld.bu	%d15, [%a12] 32
	and	%d15, %d15, 3
	st.b	[%a15] 30, %d15
	.loc 1 2006 0
	ld.bu	%d15, [%a12] 33
	and	%d15, %d15, 15
	st.b	[%a15] 31, %d15
	.loc 1 2008 0
	ld.bu	%d15, [%a12] 34
	st.b	[%a15] 32, %d15
	.loc 1 2010 0
	ld.bu	%d15, [%a12] 35
	st.b	[%a15] 33, %d15
	.loc 1 2012 0
	ld.bu	%d15, [%a12] 36
	st.b	[%a15] 34, %d15
	.loc 1 2014 0
	ld.bu	%d15, [%a12] 37
	and	%d15, %d15, 1
	st.b	[%a15] 35, %d15
	.loc 1 2016 0
	ld.bu	%d15, [%a12] 38
	and	%d15, %d15, 3
	st.b	[%a15] 36, %d15
	.loc 1 2018 0
	ld.bu	%d15, [%a12] 39
	and	%d15, %d15, 31
	st.b	[%a15] 37, %d15
	.loc 1 2020 0
	ld.bu	%d15, [%a12] 40
	and	%d15, %d15, 31
	st.b	[%a15] 38, %d15
	.loc 1 2022 0
	ld.bu	%d15, [%a12] 41
	and	%d15, %d15, 31
	st.b	[%a15] 39, %d15
	.loc 1 2024 0
	ld.bu	%d15, [%a12] 42
	and	%d15, %d15, 1
	st.b	[%a15] 40, %d15
	.loc 1 2026 0
	ld.bu	%d15, [%a12] 43
	and	%d15, %d15, 1
	st.b	[%a15] 41, %d15
	.loc 1 2028 0
	ld.bu	%d15, [%a12] 44
	and	%d15, %d15, 3
	st.b	[%a15] 42, %d15
	.loc 1 2030 0
	ld.bu	%d15, [%a12] 45
	and	%d15, %d15, 63
	st.b	[%a15] 43, %d15
	.loc 1 2033 0
	call	VL53L1_i2c_decode_uint32_t
.LVL155:
	insert	%d2, %d2, 0, 18, 14
	.loc 1 2035 0
	mov	%d4, 4
	lea	%a4, [%a12] 50
	.loc 1 2032 0
	st.w	[%a15] 44, %d2
	.loc 1 2035 0
	call	VL53L1_i2c_decode_uint32_t
.LVL156:
	.loc 1 2034 0
	st.w	[%a15] 48, %d2
	.loc 1 2036 0
	ld.bu	%d15, [%a12] 54
	.loc 1 2043 0
	mov	%d2, 0
	.loc 1 2036 0
	and	%d15, %d15, 1
	st.b	[%a15] 52, %d15
	.loc 1 2038 0
	ld.bu	%d15, [%a12] 55
	and	%d15, %d15, 1
	st.b	[%a15] 53, %d15
.LVL157:
.L67:
	.loc 1 2044 0
	ret
.LFE22:
	.size	VL53L1_i2c_decode_debug_results, .-VL53L1_i2c_decode_debug_results
.section .text.VL53L1_i2c_decode_nvm_copy_data,"ax",@progbits
	.align 1
	.global	VL53L1_i2c_decode_nvm_copy_data
	.type	VL53L1_i2c_decode_nvm_copy_data, @function
VL53L1_i2c_decode_nvm_copy_data:
.LFB23:
	.loc 1 2249 0
.LVL158:
	.loc 1 2259 0
	lt.u	%d4, %d4, 49
.LVL159:
	.loc 1 2260 0
	mov	%d2, -10
	.loc 1 2259 0
	jnz	%d4, .L70
	.loc 1 2263 0
	ld.bu	%d15, [%a4]0
	.loc 1 2262 0
	st.b	[%a5]0, %d15
	.loc 1 2264 0
	ld.bu	%d15, [%a4] 1
	st.b	[%a5] 1, %d15
	.loc 1 2266 0
	ld.bu	%d15, [%a4] 2
	mov.aa	%a12, %a4
	st.b	[%a5] 2, %d15
	.loc 1 2269 0
	mov	%d4, 2
	add.a	%a4, 3
.LVL160:
	mov.aa	%a15, %a5
	call	VL53L1_i2c_decode_uint16_t
.LVL161:
	.loc 1 2268 0
	st.h	[%a15] 4, %d2
	.loc 1 2270 0
	ld.bu	%d15, [%a12] 5
	.loc 1 2361 0
	mov	%d2, 0
	.loc 1 2270 0
	and	%d15, %d15, 127
	st.b	[%a15] 6, %d15
	.loc 1 2272 0
	ld.bu	%d15, [%a12] 6
	and	%d15, %d15, 7
	st.b	[%a15] 7, %d15
	.loc 1 2274 0
	ld.bu	%d15, [%a12] 7
	and	%d15, %d15, 7
	st.b	[%a15] 8, %d15
	.loc 1 2276 0
	ld.bu	%d15, [%a12] 8
	and	%d15, %d15, 63
	st.b	[%a15] 9, %d15
	.loc 1 2278 0
	ld.bu	%d15, [%a12] 9
	and	%d15, %d15, 63
	st.b	[%a15] 10, %d15
	.loc 1 2280 0
	ld.bu	%d15, [%a12] 10
	and	%d15, %d15, 1
	st.b	[%a15] 11, %d15
	.loc 1 2282 0
	ld.bu	%d15, [%a12] 11
	and	%d15, %d15, 127
	st.b	[%a15] 12, %d15
	.loc 1 2284 0
	ld.bu	%d15, [%a12] 12
	and	%d15, %d15, 1
	st.b	[%a15] 13, %d15
	.loc 1 2286 0
	ld.bu	%d15, [%a12] 13
	and	%d15, %d15, 63
	st.b	[%a15] 14, %d15
	.loc 1 2288 0
	ld.bu	%d15, [%a12] 14
	and	%d15, %d15, 63
	st.b	[%a15] 15, %d15
	.loc 1 2290 0
	ld.bu	%d15, [%a12] 15
	st.b	[%a15] 16, %d15
	.loc 1 2292 0
	ld.bu	%d15, [%a12] 16
	st.b	[%a15] 17, %d15
	.loc 1 2294 0
	ld.bu	%d15, [%a12] 17
	st.b	[%a15] 18, %d15
	.loc 1 2296 0
	ld.bu	%d15, [%a12] 18
	st.b	[%a15] 19, %d15
	.loc 1 2298 0
	ld.bu	%d15, [%a12] 19
	st.b	[%a15] 20, %d15
	.loc 1 2300 0
	ld.bu	%d15, [%a12] 20
	st.b	[%a15] 21, %d15
	.loc 1 2302 0
	ld.bu	%d15, [%a12] 21
	st.b	[%a15] 22, %d15
	.loc 1 2304 0
	ld.bu	%d15, [%a12] 22
	st.b	[%a15] 23, %d15
	.loc 1 2306 0
	ld.bu	%d15, [%a12] 23
	st.b	[%a15] 24, %d15
	.loc 1 2308 0
	ld.bu	%d15, [%a12] 24
	st.b	[%a15] 25, %d15
	.loc 1 2310 0
	ld.bu	%d15, [%a12] 25
	st.b	[%a15] 26, %d15
	.loc 1 2312 0
	ld.bu	%d15, [%a12] 26
	st.b	[%a15] 27, %d15
	.loc 1 2314 0
	ld.bu	%d15, [%a12] 27
	st.b	[%a15] 28, %d15
	.loc 1 2316 0
	ld.bu	%d15, [%a12] 28
	st.b	[%a15] 29, %d15
	.loc 1 2318 0
	ld.bu	%d15, [%a12] 29
	st.b	[%a15] 30, %d15
	.loc 1 2320 0
	ld.bu	%d15, [%a12] 30
	st.b	[%a15] 31, %d15
	.loc 1 2322 0
	ld.bu	%d15, [%a12] 31
	st.b	[%a15] 32, %d15
	.loc 1 2324 0
	ld.bu	%d15, [%a12] 32
	st.b	[%a15] 33, %d15
	.loc 1 2326 0
	ld.bu	%d15, [%a12] 33
	st.b	[%a15] 34, %d15
	.loc 1 2328 0
	ld.bu	%d15, [%a12] 34
	st.b	[%a15] 35, %d15
	.loc 1 2330 0
	ld.bu	%d15, [%a12] 35
	st.b	[%a15] 36, %d15
	.loc 1 2332 0
	ld.bu	%d15, [%a12] 36
	st.b	[%a15] 37, %d15
	.loc 1 2334 0
	ld.bu	%d15, [%a12] 37
	st.b	[%a15] 38, %d15
	.loc 1 2336 0
	ld.bu	%d15, [%a12] 38
	st.b	[%a15] 39, %d15
	.loc 1 2338 0
	ld.bu	%d15, [%a12] 39
	st.b	[%a15] 40, %d15
	.loc 1 2340 0
	ld.bu	%d15, [%a12] 40
	st.b	[%a15] 41, %d15
	.loc 1 2342 0
	ld.bu	%d15, [%a12] 41
	st.b	[%a15] 42, %d15
	.loc 1 2344 0
	ld.bu	%d15, [%a12] 42
	st.b	[%a15] 43, %d15
	.loc 1 2346 0
	ld.bu	%d15, [%a12] 43
	st.b	[%a15] 44, %d15
	.loc 1 2348 0
	ld.bu	%d15, [%a12] 44
	st.b	[%a15] 45, %d15
	.loc 1 2350 0
	ld.bu	%d15, [%a12] 45
	st.b	[%a15] 46, %d15
	.loc 1 2352 0
	ld.bu	%d15, [%a12] 46
	st.b	[%a15] 47, %d15
	.loc 1 2354 0
	ld.bu	%d15, [%a12] 47
	st.b	[%a15] 48, %d15
	.loc 1 2356 0
	ld.bu	%d15, [%a12] 48
	st.b	[%a15] 49, %d15
.LVL162:
.L70:
	.loc 1 2362 0
	ret
.LFE23:
	.size	VL53L1_i2c_decode_nvm_copy_data, .-VL53L1_i2c_decode_nvm_copy_data
.section .text.VL53L1_get_nvm_copy_data,"ax",@progbits
	.align 1
	.global	VL53L1_get_nvm_copy_data
	.type	VL53L1_get_nvm_copy_data, @function
VL53L1_get_nvm_copy_data:
.LFB24:
	.loc 1 2408 0
.LVL163:
	sub.a	%SP, 56
.LCFI9:
	.loc 1 2408 0
	mov.aa	%a15, %a5
	.loc 1 2420 0
	mov	%d4, 271
	lea	%a5, [%SP] 7
.LVL164:
	mov	%d5, 49
	call	VL53L1_ReadMulti
.LVL165:
	.loc 1 2426 0
	jz	%d2, .L74
	.loc 1 2435 0
	ret
.L74:
	.loc 1 2427 0
	mov	%d4, 49
	lea	%a4, [%SP] 7
	mov.aa	%a5, %a15
	call	VL53L1_i2c_decode_nvm_copy_data
.LVL166:
	.loc 1 2435 0
	ret
.LFE24:
	.size	VL53L1_get_nvm_copy_data, .-VL53L1_get_nvm_copy_data
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.byte	0x4
	.uaword	.LCFI0-.LFB2
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.byte	0x4
	.uaword	.LCFI1-.LFB3
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.byte	0x4
	.uaword	.LCFI2-.LFB6
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.byte	0x4
	.uaword	.LCFI3-.LFB7
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.byte	0x4
	.uaword	.LCFI4-.LFB10
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB13
	.uaword	.LFE13-.LFB13
	.byte	0x4
	.uaword	.LCFI5-.LFB13
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.byte	0x4
	.uaword	.LCFI6-.LFB16
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.byte	0x4
	.uaword	.LCFI7-.LFB18
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.byte	0x4
	.uaword	.LCFI8-.LFB20
	.byte	0xe
	.uleb128 0x30
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.byte	0x4
	.uaword	.LCFI9-.LFB24
	.byte	0xe
	.uleb128 0x38
	.align 2
.LEFDE48:
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
	.file 10 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
	.file 11 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_platform.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x5a40
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.c"
	.string	"D:\\\\MinKyu_AurixRacer\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0x28
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"int8_t"
	.byte	0x2
	.byte	0x29
	.uaword	0x1ae
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.string	"uint8_t"
	.byte	0x2
	.byte	0x2a
	.uaword	0x1cc
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.string	"int16_t"
	.byte	0x2
	.byte	0x35
	.uaword	0x1ec
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.string	"uint16_t"
	.byte	0x2
	.byte	0x36
	.uaword	0x209
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.string	"int32_t"
	.byte	0x2
	.byte	0x4f
	.uaword	0x22e
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.string	"uint32_t"
	.byte	0x2
	.byte	0x50
	.uaword	0x24a
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
	.uaword	0x23a
	.uleb128 0x2
	.string	"VL53L1_DeviceState"
	.byte	0x4
	.byte	0x65
	.uaword	0x1bd
	.uleb128 0x2
	.string	"VL53L1_DevicePresetModes"
	.byte	0x4
	.byte	0x7d
	.uaword	0x1bd
	.uleb128 0x2
	.string	"VL53L1_DeviceMeasurementModes"
	.byte	0x4
	.byte	0x96
	.uaword	0x1bd
	.uleb128 0x2
	.string	"VL53L1_OffsetCalibrationMode"
	.byte	0x4
	.byte	0xa5
	.uaword	0x1bd
	.uleb128 0x2
	.string	"VL53L1_OffsetCorrectionMode"
	.byte	0x4
	.byte	0xb6
	.uaword	0x1bd
	.uleb128 0x4
	.string	"VL53L1_DeviceSscArray"
	.byte	0x4
	.uahalf	0x1b2
	.uaword	0x1bd
	.uleb128 0x4
	.string	"VL53L1_GPIO_Interrupt_Mode"
	.byte	0x4
	.uahalf	0x21c
	.uaword	0x1bd
	.uleb128 0x2
	.string	"VL53L1_Error"
	.byte	0x5
	.byte	0x59
	.uaword	0x1a0
	.uleb128 0x5
	.byte	0xc
	.byte	0x6
	.byte	0x80
	.uaword	0x534
	.uleb128 0x6
	.string	"i2c_slave__device_address"
	.byte	0x6
	.byte	0x81
	.uaword	0x1bd
	.byte	0
	.uleb128 0x6
	.string	"ana_config__vhv_ref_sel_vddpix"
	.byte	0x6
	.byte	0x8b
	.uaword	0x1bd
	.byte	0x1
	.uleb128 0x6
	.string	"ana_config__vhv_ref_sel_vquench"
	.byte	0x6
	.byte	0x95
	.uaword	0x1bd
	.byte	0x2
	.uleb128 0x6
	.string	"ana_config__reg_avdd1v2_sel"
	.byte	0x6
	.byte	0x9f
	.uaword	0x1bd
	.byte	0x3
	.uleb128 0x6
	.string	"ana_config__fast_osc__trim"
	.byte	0x6
	.byte	0xa9
	.uaword	0x1bd
	.byte	0x4
	.uleb128 0x6
	.string	"osc_measured__fast_osc__frequency"
	.byte	0x6
	.byte	0xb3
	.uaword	0x1f9
	.byte	0x6
	.uleb128 0x6
	.string	"vhv_config__timeout_macrop_loop_bound"
	.byte	0x6
	.byte	0xbd
	.uaword	0x1bd
	.byte	0x8
	.uleb128 0x6
	.string	"vhv_config__count_thresh"
	.byte	0x6
	.byte	0xc8
	.uaword	0x1bd
	.byte	0x9
	.uleb128 0x6
	.string	"vhv_config__offset"
	.byte	0x6
	.byte	0xd2
	.uaword	0x1bd
	.byte	0xa
	.uleb128 0x6
	.string	"vhv_config__init"
	.byte	0x6
	.byte	0xdc
	.uaword	0x1bd
	.byte	0xb
	.byte	0
	.uleb128 0x2
	.string	"VL53L1_static_nvm_managed_t"
	.byte	0x6
	.byte	0xe7
	.uaword	0x3c6
	.uleb128 0x5
	.byte	0x18
	.byte	0x6
	.byte	0xf3
	.uaword	0x7a9
	.uleb128 0x6
	.string	"global_config__spad_enables_ref_0"
	.byte	0x6
	.byte	0xf4
	.uaword	0x1bd
	.byte	0
	.uleb128 0x6
	.string	"global_config__spad_enables_ref_1"
	.byte	0x6
	.byte	0xfe
	.uaword	0x1bd
	.byte	0x1
	.uleb128 0x7
	.string	"global_config__spad_enables_ref_2"
	.byte	0x6
	.uahalf	0x108
	.uaword	0x1bd
	.byte	0x2
	.uleb128 0x7
	.string	"global_config__spad_enables_ref_3"
	.byte	0x6
	.uahalf	0x112
	.uaword	0x1bd
	.byte	0x3
	.uleb128 0x7
	.string	"global_config__spad_enables_ref_4"
	.byte	0x6
	.uahalf	0x11c
	.uaword	0x1bd
	.byte	0x4
	.uleb128 0x7
	.string	"global_config__spad_enables_ref_5"
	.byte	0x6
	.uahalf	0x126
	.uaword	0x1bd
	.byte	0x5
	.uleb128 0x7
	.string	"global_config__ref_en_start_select"
	.byte	0x6
	.uahalf	0x130
	.uaword	0x1bd
	.byte	0x6
	.uleb128 0x7
	.string	"ref_spad_man__num_requested_ref_spads"
	.byte	0x6
	.uahalf	0x13a
	.uaword	0x1bd
	.byte	0x7
	.uleb128 0x7
	.string	"ref_spad_man__ref_location"
	.byte	0x6
	.uahalf	0x144
	.uaword	0x1bd
	.byte	0x8
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x14e
	.uaword	0x1f9
	.byte	0xa
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x158
	.uaword	0x1dd
	.byte	0xc
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x162
	.uaword	0x1dd
	.byte	0xe
	.uleb128 0x7
	.string	"ref_spad_char__total_rate_target_mcps"
	.byte	0x6
	.uahalf	0x16c
	.uaword	0x1f9
	.byte	0x10
	.uleb128 0x7
	.string	"algo__part_to_part_range_offset_mm"
	.byte	0x6
	.uahalf	0x176
	.uaword	0x1dd
	.byte	0x12
	.uleb128 0x7
	.string	"mm_config__inner_offset_mm"
	.byte	0x6
	.uahalf	0x180
	.uaword	0x1dd
	.byte	0x14
	.uleb128 0x7
	.string	"mm_config__outer_offset_mm"
	.byte	0x6
	.uahalf	0x18a
	.uaword	0x1dd
	.byte	0x16
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_customer_nvm_managed_t"
	.byte	0x6
	.uahalf	0x194
	.uaword	0x557
	.uleb128 0x9
	.byte	0x20
	.byte	0x6
	.uahalf	0x1a0
	.uaword	0xc15
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x1a1
	.uaword	0x1f9
	.byte	0
	.uleb128 0x7
	.string	"debug__ctrl"
	.byte	0x6
	.uahalf	0x1ab
	.uaword	0x1bd
	.byte	0x2
	.uleb128 0x7
	.string	"test_mode__ctrl"
	.byte	0x6
	.uahalf	0x1b5
	.uaword	0x1bd
	.byte	0x3
	.uleb128 0x7
	.string	"clk_gating__ctrl"
	.byte	0x6
	.uahalf	0x1bf
	.uaword	0x1bd
	.byte	0x4
	.uleb128 0x7
	.string	"nvm_bist__ctrl"
	.byte	0x6
	.uahalf	0x1cc
	.uaword	0x1bd
	.byte	0x5
	.uleb128 0x7
	.string	"nvm_bist__num_nvm_words"
	.byte	0x6
	.uahalf	0x1d7
	.uaword	0x1bd
	.byte	0x6
	.uleb128 0x7
	.string	"nvm_bist__start_address"
	.byte	0x6
	.uahalf	0x1e1
	.uaword	0x1bd
	.byte	0x7
	.uleb128 0x7
	.string	"host_if__status"
	.byte	0x6
	.uahalf	0x1eb
	.uaword	0x1bd
	.byte	0x8
	.uleb128 0x7
	.string	"pad_i2c_hv__config"
	.byte	0x6
	.uahalf	0x1f5
	.uaword	0x1bd
	.byte	0x9
	.uleb128 0x7
	.string	"pad_i2c_hv__extsup_config"
	.byte	0x6
	.uahalf	0x204
	.uaword	0x1bd
	.byte	0xa
	.uleb128 0x7
	.string	"gpio_hv_pad__ctrl"
	.byte	0x6
	.uahalf	0x20e
	.uaword	0x1bd
	.byte	0xb
	.uleb128 0x7
	.string	"gpio_hv_mux__ctrl"
	.byte	0x6
	.uahalf	0x219
	.uaword	0x1bd
	.byte	0xc
	.uleb128 0x7
	.string	"gpio__tio_hv_status"
	.byte	0x6
	.uahalf	0x224
	.uaword	0x1bd
	.byte	0xd
	.uleb128 0x7
	.string	"gpio__fio_hv_status"
	.byte	0x6
	.uahalf	0x22f
	.uaword	0x1bd
	.byte	0xe
	.uleb128 0x7
	.string	"ana_config__spad_sel_pswidth"
	.byte	0x6
	.uahalf	0x239
	.uaword	0x1bd
	.byte	0xf
	.uleb128 0x7
	.string	"ana_config__vcsel_pulse_width_offset"
	.byte	0x6
	.uahalf	0x243
	.uaword	0x1bd
	.byte	0x10
	.uleb128 0x7
	.string	"ana_config__fast_osc__config_ctrl"
	.byte	0x6
	.uahalf	0x24d
	.uaword	0x1bd
	.byte	0x11
	.uleb128 0x7
	.string	"sigma_estimator__effective_pulse_width_ns"
	.byte	0x6
	.uahalf	0x257
	.uaword	0x1bd
	.byte	0x12
	.uleb128 0x7
	.string	"sigma_estimator__effective_ambient_width_ns"
	.byte	0x6
	.uahalf	0x261
	.uaword	0x1bd
	.byte	0x13
	.uleb128 0x7
	.string	"sigma_estimator__sigma_ref_mm"
	.byte	0x6
	.uahalf	0x26b
	.uaword	0x1bd
	.byte	0x14
	.uleb128 0x7
	.string	"algo__crosstalk_compensation_valid_height_mm"
	.byte	0x6
	.uahalf	0x275
	.uaword	0x1bd
	.byte	0x15
	.uleb128 0x7
	.string	"spare_host_config__static_config_spare_0"
	.byte	0x6
	.uahalf	0x27f
	.uaword	0x1bd
	.byte	0x16
	.uleb128 0x7
	.string	"spare_host_config__static_config_spare_1"
	.byte	0x6
	.uahalf	0x289
	.uaword	0x1bd
	.byte	0x17
	.uleb128 0x7
	.string	"algo__range_ignore_threshold_mcps"
	.byte	0x6
	.uahalf	0x293
	.uaword	0x1f9
	.byte	0x18
	.uleb128 0x7
	.string	"algo__range_ignore_valid_height_mm"
	.byte	0x6
	.uahalf	0x29d
	.uaword	0x1bd
	.byte	0x1a
	.uleb128 0x7
	.string	"algo__range_min_clip"
	.byte	0x6
	.uahalf	0x2a7
	.uaword	0x1bd
	.byte	0x1b
	.uleb128 0x7
	.string	"algo__consistency_check__tolerance"
	.byte	0x6
	.uahalf	0x2b2
	.uaword	0x1bd
	.byte	0x1c
	.uleb128 0x7
	.string	"spare_host_config__static_config_spare_2"
	.byte	0x6
	.uahalf	0x2bc
	.uaword	0x1bd
	.byte	0x1d
	.uleb128 0x7
	.string	"sd_config__reset_stages_msb"
	.byte	0x6
	.uahalf	0x2c6
	.uaword	0x1bd
	.byte	0x1e
	.uleb128 0x7
	.string	"sd_config__reset_stages_lsb"
	.byte	0x6
	.uahalf	0x2d0
	.uaword	0x1bd
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_static_config_t"
	.byte	0x6
	.uahalf	0x2db
	.uaword	0x7cf
	.uleb128 0x9
	.byte	0x16
	.byte	0x6
	.uahalf	0x2e7
	.uaword	0xe88
	.uleb128 0x7
	.string	"gph_config__stream_count_update_value"
	.byte	0x6
	.uahalf	0x2e8
	.uaword	0x1bd
	.byte	0
	.uleb128 0x7
	.string	"global_config__stream_divider"
	.byte	0x6
	.uahalf	0x2f2
	.uaword	0x1bd
	.byte	0x1
	.uleb128 0x7
	.string	"system__interrupt_config_gpio"
	.byte	0x6
	.uahalf	0x2fc
	.uaword	0x1bd
	.byte	0x2
	.uleb128 0x7
	.string	"cal_config__vcsel_start"
	.byte	0x6
	.uahalf	0x30b
	.uaword	0x1bd
	.byte	0x3
	.uleb128 0x7
	.string	"cal_config__repeat_rate"
	.byte	0x6
	.uahalf	0x315
	.uaword	0x1f9
	.byte	0x4
	.uleb128 0x7
	.string	"global_config__vcsel_width"
	.byte	0x6
	.uahalf	0x31f
	.uaword	0x1bd
	.byte	0x6
	.uleb128 0x7
	.string	"phasecal_config__timeout_macrop"
	.byte	0x6
	.uahalf	0x329
	.uaword	0x1bd
	.byte	0x7
	.uleb128 0x7
	.string	"phasecal_config__target"
	.byte	0x6
	.uahalf	0x333
	.uaword	0x1bd
	.byte	0x8
	.uleb128 0x7
	.string	"phasecal_config__override"
	.byte	0x6
	.uahalf	0x33d
	.uaword	0x1bd
	.byte	0x9
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x6
	.uahalf	0x347
	.uaword	0x1bd
	.byte	0xa
	.uleb128 0x7
	.string	"system__thresh_rate_high"
	.byte	0x6
	.uahalf	0x352
	.uaword	0x1f9
	.byte	0xc
	.uleb128 0x7
	.string	"system__thresh_rate_low"
	.byte	0x6
	.uahalf	0x35c
	.uaword	0x1f9
	.byte	0xe
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x366
	.uaword	0x1f9
	.byte	0x10
	.uleb128 0x7
	.string	"dss_config__manual_block_select"
	.byte	0x6
	.uahalf	0x370
	.uaword	0x1bd
	.byte	0x12
	.uleb128 0x7
	.string	"dss_config__aperture_attenuation"
	.byte	0x6
	.uahalf	0x37a
	.uaword	0x1bd
	.byte	0x13
	.uleb128 0x7
	.string	"dss_config__max_spads_limit"
	.byte	0x6
	.uahalf	0x384
	.uaword	0x1bd
	.byte	0x14
	.uleb128 0x7
	.string	"dss_config__min_spads_limit"
	.byte	0x6
	.uahalf	0x38e
	.uaword	0x1bd
	.byte	0x15
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_general_config_t"
	.byte	0x6
	.uahalf	0x398
	.uaword	0xc34
	.uleb128 0x9
	.byte	0x18
	.byte	0x6
	.uahalf	0x3a4
	.uaword	0x113e
	.uleb128 0x7
	.string	"mm_config__timeout_macrop_a_hi"
	.byte	0x6
	.uahalf	0x3a5
	.uaword	0x1bd
	.byte	0
	.uleb128 0x7
	.string	"mm_config__timeout_macrop_a_lo"
	.byte	0x6
	.uahalf	0x3af
	.uaword	0x1bd
	.byte	0x1
	.uleb128 0x7
	.string	"mm_config__timeout_macrop_b_hi"
	.byte	0x6
	.uahalf	0x3b9
	.uaword	0x1bd
	.byte	0x2
	.uleb128 0x7
	.string	"mm_config__timeout_macrop_b_lo"
	.byte	0x6
	.uahalf	0x3c3
	.uaword	0x1bd
	.byte	0x3
	.uleb128 0x7
	.string	"range_config__timeout_macrop_a_hi"
	.byte	0x6
	.uahalf	0x3cd
	.uaword	0x1bd
	.byte	0x4
	.uleb128 0x7
	.string	"range_config__timeout_macrop_a_lo"
	.byte	0x6
	.uahalf	0x3d7
	.uaword	0x1bd
	.byte	0x5
	.uleb128 0x7
	.string	"range_config__vcsel_period_a"
	.byte	0x6
	.uahalf	0x3e1
	.uaword	0x1bd
	.byte	0x6
	.uleb128 0x7
	.string	"range_config__timeout_macrop_b_hi"
	.byte	0x6
	.uahalf	0x3eb
	.uaword	0x1bd
	.byte	0x7
	.uleb128 0x7
	.string	"range_config__timeout_macrop_b_lo"
	.byte	0x6
	.uahalf	0x3f5
	.uaword	0x1bd
	.byte	0x8
	.uleb128 0x7
	.string	"range_config__vcsel_period_b"
	.byte	0x6
	.uahalf	0x3ff
	.uaword	0x1bd
	.byte	0x9
	.uleb128 0x7
	.string	"range_config__sigma_thresh"
	.byte	0x6
	.uahalf	0x409
	.uaword	0x1f9
	.byte	0xa
	.uleb128 0x7
	.string	"range_config__min_count_rate_rtn_limit_mcps"
	.byte	0x6
	.uahalf	0x413
	.uaword	0x1f9
	.byte	0xc
	.uleb128 0x7
	.string	"range_config__valid_phase_low"
	.byte	0x6
	.uahalf	0x41d
	.uaword	0x1bd
	.byte	0xe
	.uleb128 0x7
	.string	"range_config__valid_phase_high"
	.byte	0x6
	.uahalf	0x427
	.uaword	0x1bd
	.byte	0xf
	.uleb128 0x7
	.string	"system__intermeasurement_period"
	.byte	0x6
	.uahalf	0x431
	.uaword	0x23a
	.byte	0x10
	.uleb128 0x7
	.string	"system__fractional_enable"
	.byte	0x6
	.uahalf	0x43b
	.uaword	0x1bd
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_timing_config_t"
	.byte	0x6
	.uahalf	0x445
	.uaword	0xea8
	.uleb128 0x9
	.byte	0x14
	.byte	0x6
	.uahalf	0x451
	.uaword	0x13b0
	.uleb128 0x7
	.string	"system__grouped_parameter_hold_0"
	.byte	0x6
	.uahalf	0x452
	.uaword	0x1bd
	.byte	0
	.uleb128 0x7
	.string	"system__thresh_high"
	.byte	0x6
	.uahalf	0x45d
	.uaword	0x1f9
	.byte	0x2
	.uleb128 0x7
	.string	"system__thresh_low"
	.byte	0x6
	.uahalf	0x467
	.uaword	0x1f9
	.byte	0x4
	.uleb128 0x7
	.string	"system__enable_xtalk_per_quadrant"
	.byte	0x6
	.uahalf	0x471
	.uaword	0x1bd
	.byte	0x6
	.uleb128 0x7
	.string	"system__seed_config"
	.byte	0x6
	.uahalf	0x47b
	.uaword	0x1bd
	.byte	0x7
	.uleb128 0x7
	.string	"sd_config__woi_sd0"
	.byte	0x6
	.uahalf	0x486
	.uaword	0x1bd
	.byte	0x8
	.uleb128 0x7
	.string	"sd_config__woi_sd1"
	.byte	0x6
	.uahalf	0x490
	.uaword	0x1bd
	.byte	0x9
	.uleb128 0x7
	.string	"sd_config__initial_phase_sd0"
	.byte	0x6
	.uahalf	0x49a
	.uaword	0x1bd
	.byte	0xa
	.uleb128 0x7
	.string	"sd_config__initial_phase_sd1"
	.byte	0x6
	.uahalf	0x4a4
	.uaword	0x1bd
	.byte	0xb
	.uleb128 0x7
	.string	"system__grouped_parameter_hold_1"
	.byte	0x6
	.uahalf	0x4ae
	.uaword	0x1bd
	.byte	0xc
	.uleb128 0x7
	.string	"sd_config__first_order_select"
	.byte	0x6
	.uahalf	0x4b9
	.uaword	0x1bd
	.byte	0xd
	.uleb128 0x7
	.string	"sd_config__quantifier"
	.byte	0x6
	.uahalf	0x4c4
	.uaword	0x1bd
	.byte	0xe
	.uleb128 0x7
	.string	"roi_config__user_roi_centre_spad"
	.byte	0x6
	.uahalf	0x4ce
	.uaword	0x1bd
	.byte	0xf
	.uleb128 0x7
	.string	"roi_config__user_roi_requested_global_xy_size"
	.byte	0x6
	.uahalf	0x4d8
	.uaword	0x1bd
	.byte	0x10
	.uleb128 0x7
	.string	"system__sequence_config"
	.byte	0x6
	.uahalf	0x4e2
	.uaword	0x1bd
	.byte	0x11
	.uleb128 0x7
	.string	"system__grouped_parameter_hold"
	.byte	0x6
	.uahalf	0x4f3
	.uaword	0x1bd
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_dynamic_config_t"
	.byte	0x6
	.uahalf	0x4fe
	.uaword	0x115d
	.uleb128 0x9
	.byte	0x6
	.byte	0x6
	.uahalf	0x50a
	.uaword	0x147f
	.uleb128 0x7
	.string	"power_management__go1_power_force"
	.byte	0x6
	.uahalf	0x50b
	.uaword	0x1bd
	.byte	0
	.uleb128 0x7
	.string	"system__stream_count_ctrl"
	.byte	0x6
	.uahalf	0x515
	.uaword	0x1bd
	.byte	0x1
	.uleb128 0x7
	.string	"firmware__enable"
	.byte	0x6
	.uahalf	0x51f
	.uaword	0x1bd
	.byte	0x2
	.uleb128 0x7
	.string	"system__interrupt_clear"
	.byte	0x6
	.uahalf	0x529
	.uaword	0x1bd
	.byte	0x3
	.uleb128 0x7
	.string	"system__mode_start"
	.byte	0x6
	.uahalf	0x534
	.uaword	0x1bd
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_system_control_t"
	.byte	0x6
	.uahalf	0x543
	.uaword	0x13d0
	.uleb128 0x9
	.byte	0x2c
	.byte	0x6
	.uahalf	0x54f
	.uaword	0x188e
	.uleb128 0x7
	.string	"result__interrupt_status"
	.byte	0x6
	.uahalf	0x550
	.uaword	0x1bd
	.byte	0
	.uleb128 0x7
	.string	"result__range_status"
	.byte	0x6
	.uahalf	0x55c
	.uaword	0x1bd
	.byte	0x1
	.uleb128 0x7
	.string	"result__report_status"
	.byte	0x6
	.uahalf	0x569
	.uaword	0x1bd
	.byte	0x2
	.uleb128 0x7
	.string	"result__stream_count"
	.byte	0x6
	.uahalf	0x573
	.uaword	0x1bd
	.byte	0x3
	.uleb128 0x7
	.string	"result__dss_actual_effective_spads_sd0"
	.byte	0x6
	.uahalf	0x57d
	.uaword	0x1f9
	.byte	0x4
	.uleb128 0x7
	.string	"result__peak_signal_count_rate_mcps_sd0"
	.byte	0x6
	.uahalf	0x587
	.uaword	0x1f9
	.byte	0x6
	.uleb128 0x7
	.string	"result__ambient_count_rate_mcps_sd0"
	.byte	0x6
	.uahalf	0x591
	.uaword	0x1f9
	.byte	0x8
	.uleb128 0x7
	.string	"result__sigma_sd0"
	.byte	0x6
	.uahalf	0x59b
	.uaword	0x1f9
	.byte	0xa
	.uleb128 0x7
	.string	"result__phase_sd0"
	.byte	0x6
	.uahalf	0x5a5
	.uaword	0x1f9
	.byte	0xc
	.uleb128 0x7
	.string	"result__final_crosstalk_corrected_range_mm_sd0"
	.byte	0x6
	.uahalf	0x5af
	.uaword	0x1f9
	.byte	0xe
	.uleb128 0x7
	.string	"result__peak_signal_count_rate_crosstalk_corrected_mcps_sd0"
	.byte	0x6
	.uahalf	0x5b9
	.uaword	0x1f9
	.byte	0x10
	.uleb128 0x7
	.string	"result__mm_inner_actual_effective_spads_sd0"
	.byte	0x6
	.uahalf	0x5c3
	.uaword	0x1f9
	.byte	0x12
	.uleb128 0x7
	.string	"result__mm_outer_actual_effective_spads_sd0"
	.byte	0x6
	.uahalf	0x5cd
	.uaword	0x1f9
	.byte	0x14
	.uleb128 0x7
	.string	"result__avg_signal_count_rate_mcps_sd0"
	.byte	0x6
	.uahalf	0x5d7
	.uaword	0x1f9
	.byte	0x16
	.uleb128 0x7
	.string	"result__dss_actual_effective_spads_sd1"
	.byte	0x6
	.uahalf	0x5e1
	.uaword	0x1f9
	.byte	0x18
	.uleb128 0x7
	.string	"result__peak_signal_count_rate_mcps_sd1"
	.byte	0x6
	.uahalf	0x5eb
	.uaword	0x1f9
	.byte	0x1a
	.uleb128 0x7
	.string	"result__ambient_count_rate_mcps_sd1"
	.byte	0x6
	.uahalf	0x5f5
	.uaword	0x1f9
	.byte	0x1c
	.uleb128 0x7
	.string	"result__sigma_sd1"
	.byte	0x6
	.uahalf	0x5ff
	.uaword	0x1f9
	.byte	0x1e
	.uleb128 0x7
	.string	"result__phase_sd1"
	.byte	0x6
	.uahalf	0x609
	.uaword	0x1f9
	.byte	0x20
	.uleb128 0x7
	.string	"result__final_crosstalk_corrected_range_mm_sd1"
	.byte	0x6
	.uahalf	0x613
	.uaword	0x1f9
	.byte	0x22
	.uleb128 0x7
	.string	"result__spare_0_sd1"
	.byte	0x6
	.uahalf	0x61d
	.uaword	0x1f9
	.byte	0x24
	.uleb128 0x7
	.string	"result__spare_1_sd1"
	.byte	0x6
	.uahalf	0x627
	.uaword	0x1f9
	.byte	0x26
	.uleb128 0x7
	.string	"result__spare_2_sd1"
	.byte	0x6
	.uahalf	0x631
	.uaword	0x1f9
	.byte	0x28
	.uleb128 0x7
	.string	"result__spare_3_sd1"
	.byte	0x6
	.uahalf	0x63b
	.uaword	0x1bd
	.byte	0x2a
	.uleb128 0x7
	.string	"result__thresh_info"
	.byte	0x6
	.uahalf	0x645
	.uaword	0x1bd
	.byte	0x2b
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_system_results_t"
	.byte	0x6
	.uahalf	0x650
	.uaword	0x149f
	.uleb128 0x9
	.byte	0x24
	.byte	0x6
	.uahalf	0x65c
	.uaword	0x1a50
	.uleb128 0x7
	.string	"result_core__ambient_window_events_sd0"
	.byte	0x6
	.uahalf	0x65d
	.uaword	0x23a
	.byte	0
	.uleb128 0x7
	.string	"result_core__ranging_total_events_sd0"
	.byte	0x6
	.uahalf	0x667
	.uaword	0x23a
	.byte	0x4
	.uleb128 0x7
	.string	"result_core__signal_total_events_sd0"
	.byte	0x6
	.uahalf	0x671
	.uaword	0x21f
	.byte	0x8
	.uleb128 0x7
	.string	"result_core__total_periods_elapsed_sd0"
	.byte	0x6
	.uahalf	0x67b
	.uaword	0x23a
	.byte	0xc
	.uleb128 0x7
	.string	"result_core__ambient_window_events_sd1"
	.byte	0x6
	.uahalf	0x685
	.uaword	0x23a
	.byte	0x10
	.uleb128 0x7
	.string	"result_core__ranging_total_events_sd1"
	.byte	0x6
	.uahalf	0x68f
	.uaword	0x23a
	.byte	0x14
	.uleb128 0x7
	.string	"result_core__signal_total_events_sd1"
	.byte	0x6
	.uahalf	0x699
	.uaword	0x21f
	.byte	0x18
	.uleb128 0x7
	.string	"result_core__total_periods_elapsed_sd1"
	.byte	0x6
	.uahalf	0x6a3
	.uaword	0x23a
	.byte	0x1c
	.uleb128 0x7
	.string	"result_core__spare_0"
	.byte	0x6
	.uahalf	0x6ad
	.uaword	0x1bd
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_core_results_t"
	.byte	0x6
	.uahalf	0x6b7
	.uaword	0x18ae
	.uleb128 0x9
	.byte	0x38
	.byte	0x6
	.uahalf	0x6c3
	.uaword	0x20a3
	.uleb128 0x7
	.string	"phasecal_result__reference_phase"
	.byte	0x6
	.uahalf	0x6c4
	.uaword	0x1f9
	.byte	0
	.uleb128 0x7
	.string	"phasecal_result__vcsel_start"
	.byte	0x6
	.uahalf	0x6ce
	.uaword	0x1bd
	.byte	0x2
	.uleb128 0x7
	.string	"ref_spad_char_result__num_actual_ref_spads"
	.byte	0x6
	.uahalf	0x6d8
	.uaword	0x1bd
	.byte	0x3
	.uleb128 0x7
	.string	"ref_spad_char_result__ref_location"
	.byte	0x6
	.uahalf	0x6e2
	.uaword	0x1bd
	.byte	0x4
	.uleb128 0x7
	.string	"vhv_result__coldboot_status"
	.byte	0x6
	.uahalf	0x6ec
	.uaword	0x1bd
	.byte	0x5
	.uleb128 0x7
	.string	"vhv_result__search_result"
	.byte	0x6
	.uahalf	0x6f6
	.uaword	0x1bd
	.byte	0x6
	.uleb128 0x7
	.string	"vhv_result__latest_setting"
	.byte	0x6
	.uahalf	0x700
	.uaword	0x1bd
	.byte	0x7
	.uleb128 0x7
	.string	"result__osc_calibrate_val"
	.byte	0x6
	.uahalf	0x70a
	.uaword	0x1f9
	.byte	0x8
	.uleb128 0x7
	.string	"ana_config__powerdown_go1"
	.byte	0x6
	.uahalf	0x714
	.uaword	0x1bd
	.byte	0xa
	.uleb128 0x7
	.string	"ana_config__ref_bg_ctrl"
	.byte	0x6
	.uahalf	0x71f
	.uaword	0x1bd
	.byte	0xb
	.uleb128 0x7
	.string	"ana_config__regdvdd1v2_ctrl"
	.byte	0x6
	.uahalf	0x72a
	.uaword	0x1bd
	.byte	0xc
	.uleb128 0x7
	.string	"ana_config__osc_slow_ctrl"
	.byte	0x6
	.uahalf	0x736
	.uaword	0x1bd
	.byte	0xd
	.uleb128 0x7
	.string	"test_mode__status"
	.byte	0x6
	.uahalf	0x742
	.uaword	0x1bd
	.byte	0xe
	.uleb128 0x7
	.string	"firmware__system_status"
	.byte	0x6
	.uahalf	0x74c
	.uaword	0x1bd
	.byte	0xf
	.uleb128 0x7
	.string	"firmware__mode_status"
	.byte	0x6
	.uahalf	0x757
	.uaword	0x1bd
	.byte	0x10
	.uleb128 0x7
	.string	"firmware__secondary_mode_status"
	.byte	0x6
	.uahalf	0x761
	.uaword	0x1bd
	.byte	0x11
	.uleb128 0x7
	.string	"firmware__cal_repeat_rate_counter"
	.byte	0x6
	.uahalf	0x76b
	.uaword	0x1f9
	.byte	0x12
	.uleb128 0x7
	.string	"gph__system__thresh_high"
	.byte	0x6
	.uahalf	0x775
	.uaword	0x1f9
	.byte	0x14
	.uleb128 0x7
	.string	"gph__system__thresh_low"
	.byte	0x6
	.uahalf	0x77f
	.uaword	0x1f9
	.byte	0x16
	.uleb128 0x7
	.string	"gph__system__enable_xtalk_per_quadrant"
	.byte	0x6
	.uahalf	0x789
	.uaword	0x1bd
	.byte	0x18
	.uleb128 0x7
	.string	"gph__spare_0"
	.byte	0x6
	.uahalf	0x793
	.uaword	0x1bd
	.byte	0x19
	.uleb128 0x7
	.string	"gph__sd_config__woi_sd0"
	.byte	0x6
	.uahalf	0x79f
	.uaword	0x1bd
	.byte	0x1a
	.uleb128 0x7
	.string	"gph__sd_config__woi_sd1"
	.byte	0x6
	.uahalf	0x7a9
	.uaword	0x1bd
	.byte	0x1b
	.uleb128 0x7
	.string	"gph__sd_config__initial_phase_sd0"
	.byte	0x6
	.uahalf	0x7b3
	.uaword	0x1bd
	.byte	0x1c
	.uleb128 0x7
	.string	"gph__sd_config__initial_phase_sd1"
	.byte	0x6
	.uahalf	0x7bd
	.uaword	0x1bd
	.byte	0x1d
	.uleb128 0x7
	.string	"gph__sd_config__first_order_select"
	.byte	0x6
	.uahalf	0x7c7
	.uaword	0x1bd
	.byte	0x1e
	.uleb128 0x7
	.string	"gph__sd_config__quantifier"
	.byte	0x6
	.uahalf	0x7d2
	.uaword	0x1bd
	.byte	0x1f
	.uleb128 0x7
	.string	"gph__roi_config__user_roi_centre_spad"
	.byte	0x6
	.uahalf	0x7dc
	.uaword	0x1bd
	.byte	0x20
	.uleb128 0x7
	.string	"gph__roi_config__user_roi_requested_global_xy_size"
	.byte	0x6
	.uahalf	0x7e6
	.uaword	0x1bd
	.byte	0x21
	.uleb128 0x7
	.string	"gph__system__sequence_config"
	.byte	0x6
	.uahalf	0x7f0
	.uaword	0x1bd
	.byte	0x22
	.uleb128 0x7
	.string	"gph__gph_id"
	.byte	0x6
	.uahalf	0x801
	.uaword	0x1bd
	.byte	0x23
	.uleb128 0x7
	.string	"system__interrupt_set"
	.byte	0x6
	.uahalf	0x80b
	.uaword	0x1bd
	.byte	0x24
	.uleb128 0x7
	.string	"interrupt_manager__enables"
	.byte	0x6
	.uahalf	0x816
	.uaword	0x1bd
	.byte	0x25
	.uleb128 0x7
	.string	"interrupt_manager__clear"
	.byte	0x6
	.uahalf	0x824
	.uaword	0x1bd
	.byte	0x26
	.uleb128 0x7
	.string	"interrupt_manager__status"
	.byte	0x6
	.uahalf	0x832
	.uaword	0x1bd
	.byte	0x27
	.uleb128 0x7
	.string	"mcu_to_host_bank__wr_access_en"
	.byte	0x6
	.uahalf	0x840
	.uaword	0x1bd
	.byte	0x28
	.uleb128 0x7
	.string	"power_management__go1_reset_status"
	.byte	0x6
	.uahalf	0x84a
	.uaword	0x1bd
	.byte	0x29
	.uleb128 0x7
	.string	"pad_startup_mode__value_ro"
	.byte	0x6
	.uahalf	0x854
	.uaword	0x1bd
	.byte	0x2a
	.uleb128 0x7
	.string	"pad_startup_mode__value_ctrl"
	.byte	0x6
	.uahalf	0x85f
	.uaword	0x1bd
	.byte	0x2b
	.uleb128 0x7
	.string	"pll_period_us"
	.byte	0x6
	.uahalf	0x86c
	.uaword	0x23a
	.byte	0x2c
	.uleb128 0x7
	.string	"interrupt_scheduler__data_out"
	.byte	0x6
	.uahalf	0x876
	.uaword	0x23a
	.byte	0x30
	.uleb128 0x7
	.string	"nvm_bist__complete"
	.byte	0x6
	.uahalf	0x880
	.uaword	0x1bd
	.byte	0x34
	.uleb128 0x7
	.string	"nvm_bist__status"
	.byte	0x6
	.uahalf	0x88a
	.uaword	0x1bd
	.byte	0x35
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_debug_results_t"
	.byte	0x6
	.uahalf	0x894
	.uaword	0x1a6e
	.uleb128 0x9
	.byte	0x32
	.byte	0x6
	.uahalf	0x8a0
	.uaword	0x2874
	.uleb128 0x7
	.string	"identification__model_id"
	.byte	0x6
	.uahalf	0x8a1
	.uaword	0x1bd
	.byte	0
	.uleb128 0x7
	.string	"identification__module_type"
	.byte	0x6
	.uahalf	0x8ab
	.uaword	0x1bd
	.byte	0x1
	.uleb128 0x7
	.string	"identification__revision_id"
	.byte	0x6
	.uahalf	0x8b5
	.uaword	0x1bd
	.byte	0x2
	.uleb128 0x7
	.string	"identification__module_id"
	.byte	0x6
	.uahalf	0x8c0
	.uaword	0x1f9
	.byte	0x4
	.uleb128 0x7
	.string	"ana_config__fast_osc__trim_max"
	.byte	0x6
	.uahalf	0x8ca
	.uaword	0x1bd
	.byte	0x6
	.uleb128 0x7
	.string	"ana_config__fast_osc__freq_set"
	.byte	0x6
	.uahalf	0x8d4
	.uaword	0x1bd
	.byte	0x7
	.uleb128 0x7
	.string	"ana_config__vcsel_trim"
	.byte	0x6
	.uahalf	0x8de
	.uaword	0x1bd
	.byte	0x8
	.uleb128 0x7
	.string	"ana_config__vcsel_selion"
	.byte	0x6
	.uahalf	0x8e8
	.uaword	0x1bd
	.byte	0x9
	.uleb128 0x7
	.string	"ana_config__vcsel_selion_max"
	.byte	0x6
	.uahalf	0x8f2
	.uaword	0x1bd
	.byte	0xa
	.uleb128 0x7
	.string	"protected_laser_safety__lock_bit"
	.byte	0x6
	.uahalf	0x8fc
	.uaword	0x1bd
	.byte	0xb
	.uleb128 0x7
	.string	"laser_safety__key"
	.byte	0x6
	.uahalf	0x906
	.uaword	0x1bd
	.byte	0xc
	.uleb128 0x7
	.string	"laser_safety__key_ro"
	.byte	0x6
	.uahalf	0x910
	.uaword	0x1bd
	.byte	0xd
	.uleb128 0x7
	.string	"laser_safety__clip"
	.byte	0x6
	.uahalf	0x91a
	.uaword	0x1bd
	.byte	0xe
	.uleb128 0x7
	.string	"laser_safety__mult"
	.byte	0x6
	.uahalf	0x924
	.uaword	0x1bd
	.byte	0xf
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_0"
	.byte	0x6
	.uahalf	0x92e
	.uaword	0x1bd
	.byte	0x10
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_1"
	.byte	0x6
	.uahalf	0x938
	.uaword	0x1bd
	.byte	0x11
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_2"
	.byte	0x6
	.uahalf	0x942
	.uaword	0x1bd
	.byte	0x12
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_3"
	.byte	0x6
	.uahalf	0x94c
	.uaword	0x1bd
	.byte	0x13
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_4"
	.byte	0x6
	.uahalf	0x956
	.uaword	0x1bd
	.byte	0x14
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_5"
	.byte	0x6
	.uahalf	0x960
	.uaword	0x1bd
	.byte	0x15
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_6"
	.byte	0x6
	.uahalf	0x96a
	.uaword	0x1bd
	.byte	0x16
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_7"
	.byte	0x6
	.uahalf	0x974
	.uaword	0x1bd
	.byte	0x17
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_8"
	.byte	0x6
	.uahalf	0x97e
	.uaword	0x1bd
	.byte	0x18
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_9"
	.byte	0x6
	.uahalf	0x988
	.uaword	0x1bd
	.byte	0x19
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_10"
	.byte	0x6
	.uahalf	0x992
	.uaword	0x1bd
	.byte	0x1a
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_11"
	.byte	0x6
	.uahalf	0x99c
	.uaword	0x1bd
	.byte	0x1b
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_12"
	.byte	0x6
	.uahalf	0x9a6
	.uaword	0x1bd
	.byte	0x1c
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_13"
	.byte	0x6
	.uahalf	0x9b0
	.uaword	0x1bd
	.byte	0x1d
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_14"
	.byte	0x6
	.uahalf	0x9ba
	.uaword	0x1bd
	.byte	0x1e
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_15"
	.byte	0x6
	.uahalf	0x9c4
	.uaword	0x1bd
	.byte	0x1f
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_16"
	.byte	0x6
	.uahalf	0x9ce
	.uaword	0x1bd
	.byte	0x20
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_17"
	.byte	0x6
	.uahalf	0x9d8
	.uaword	0x1bd
	.byte	0x21
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_18"
	.byte	0x6
	.uahalf	0x9e2
	.uaword	0x1bd
	.byte	0x22
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_19"
	.byte	0x6
	.uahalf	0x9ec
	.uaword	0x1bd
	.byte	0x23
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_20"
	.byte	0x6
	.uahalf	0x9f6
	.uaword	0x1bd
	.byte	0x24
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_21"
	.byte	0x6
	.uahalf	0xa00
	.uaword	0x1bd
	.byte	0x25
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_22"
	.byte	0x6
	.uahalf	0xa0a
	.uaword	0x1bd
	.byte	0x26
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_23"
	.byte	0x6
	.uahalf	0xa14
	.uaword	0x1bd
	.byte	0x27
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_24"
	.byte	0x6
	.uahalf	0xa1e
	.uaword	0x1bd
	.byte	0x28
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_25"
	.byte	0x6
	.uahalf	0xa28
	.uaword	0x1bd
	.byte	0x29
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_26"
	.byte	0x6
	.uahalf	0xa32
	.uaword	0x1bd
	.byte	0x2a
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_27"
	.byte	0x6
	.uahalf	0xa3c
	.uaword	0x1bd
	.byte	0x2b
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_28"
	.byte	0x6
	.uahalf	0xa46
	.uaword	0x1bd
	.byte	0x2c
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_29"
	.byte	0x6
	.uahalf	0xa50
	.uaword	0x1bd
	.byte	0x2d
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_30"
	.byte	0x6
	.uahalf	0xa5a
	.uaword	0x1bd
	.byte	0x2e
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_31"
	.byte	0x6
	.uahalf	0xa64
	.uaword	0x1bd
	.byte	0x2f
	.uleb128 0x7
	.string	"roi_config__mode_roi_centre_spad"
	.byte	0x6
	.uahalf	0xa6e
	.uaword	0x1bd
	.byte	0x30
	.uleb128 0x7
	.string	"roi_config__mode_roi_xy_size"
	.byte	0x6
	.uahalf	0xa78
	.uaword	0x1bd
	.byte	0x31
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_nvm_copy_data_t"
	.byte	0x6
	.uahalf	0xa82
	.uaword	0x20c2
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.byte	0x9d
	.uaword	0x28e3
	.uleb128 0x6
	.string	"ll_revision"
	.byte	0x7
	.byte	0x9e
	.uaword	0x23a
	.byte	0
	.uleb128 0x6
	.string	"ll_major"
	.byte	0x7
	.byte	0x9f
	.uaword	0x1bd
	.byte	0x4
	.uleb128 0x6
	.string	"ll_minor"
	.byte	0x7
	.byte	0xa0
	.uaword	0x1bd
	.byte	0x5
	.uleb128 0x6
	.string	"ll_build"
	.byte	0x7
	.byte	0xa1
	.uaword	0x1bd
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.string	"VL53L1_ll_version_t"
	.byte	0x7
	.byte	0xa2
	.uaword	0x2893
	.uleb128 0x5
	.byte	0x10
	.byte	0x7
	.byte	0xa8
	.uaword	0x299b
	.uleb128 0x6
	.string	"device_test_mode"
	.byte	0x7
	.byte	0xaa
	.uaword	0x1bd
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x7
	.byte	0xab
	.uaword	0x1bd
	.byte	0x1
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.byte	0xac
	.uaword	0x23a
	.byte	0x4
	.uleb128 0x6
	.string	"target_count_rate_mcps"
	.byte	0x7
	.byte	0xad
	.uaword	0x1f9
	.byte	0x8
	.uleb128 0x6
	.string	"min_count_rate_limit_mcps"
	.byte	0x7
	.byte	0xaf
	.uaword	0x1f9
	.byte	0xa
	.uleb128 0x6
	.string	"max_count_rate_limit_mcps"
	.byte	0x7
	.byte	0xb1
	.uaword	0x1f9
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.string	"VL53L1_refspadchar_config_t"
	.byte	0x7
	.byte	0xb4
	.uaword	0x28fe
	.uleb128 0x5
	.byte	0xc
	.byte	0x7
	.byte	0xbb
	.uaword	0x2a34
	.uleb128 0x6
	.string	"array_select"
	.byte	0x7
	.byte	0xbd
	.uaword	0x371
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x7
	.byte	0xc1
	.uaword	0x1bd
	.byte	0x1
	.uleb128 0x6
	.string	"vcsel_start"
	.byte	0x7
	.byte	0xc3
	.uaword	0x1bd
	.byte	0x2
	.uleb128 0x6
	.string	"vcsel_width"
	.byte	0x7
	.byte	0xc5
	.uaword	0x1bd
	.byte	0x3
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.byte	0xc7
	.uaword	0x23a
	.byte	0x4
	.uleb128 0x6
	.string	"rate_limit_mcps"
	.byte	0x7
	.byte	0xc9
	.uaword	0x1f9
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.string	"VL53L1_ssc_config_t"
	.byte	0x7
	.byte	0xce
	.uaword	0x29be
	.uleb128 0x5
	.byte	0x18
	.byte	0x7
	.byte	0xd4
	.uaword	0x2bf4
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.byte	0xd7
	.uaword	0x23a
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x7
	.byte	0xd9
	.uaword	0x1dd
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x7
	.byte	0xdb
	.uaword	0x1dd
	.byte	0x6
	.uleb128 0x6
	.string	"nvm_default__crosstalk_compensation_plane_offset_kcps"
	.byte	0x7
	.byte	0xdd
	.uaword	0x23a
	.byte	0x8
	.uleb128 0x6
	.string	"nvm_default__crosstalk_compensation_x_plane_gradient_kcps"
	.byte	0x7
	.byte	0xdf
	.uaword	0x1dd
	.byte	0xc
	.uleb128 0x6
	.string	"nvm_default__crosstalk_compensation_y_plane_gradient_kcps"
	.byte	0x7
	.byte	0xe1
	.uaword	0x1dd
	.byte	0xe
	.uleb128 0x6
	.string	"global_crosstalk_compensation_enable"
	.byte	0x7
	.byte	0xe3
	.uaword	0x1bd
	.byte	0x10
	.uleb128 0x6
	.string	"lite_mode_crosstalk_margin_kcps"
	.byte	0x7
	.byte	0xe5
	.uaword	0x1dd
	.byte	0x12
	.uleb128 0x6
	.string	"crosstalk_range_ignore_threshold_mult"
	.byte	0x7
	.byte	0xeb
	.uaword	0x1bd
	.byte	0x14
	.uleb128 0x6
	.string	"crosstalk_range_ignore_threshold_rate_mcps"
	.byte	0x7
	.byte	0xed
	.uaword	0x1f9
	.byte	0x16
	.byte	0
	.uleb128 0x2
	.string	"VL53L1_xtalk_config_t"
	.byte	0x7
	.byte	0xf2
	.uaword	0x2a4f
	.uleb128 0x5
	.byte	0x4c
	.byte	0x7
	.byte	0xfe
	.uaword	0x3117
	.uleb128 0x7
	.string	"tp_tuning_parm_version"
	.byte	0x7
	.uahalf	0x101
	.uaword	0x1f9
	.byte	0
	.uleb128 0x7
	.string	"tp_tuning_parm_key_table_version"
	.byte	0x7
	.uahalf	0x104
	.uaword	0x1f9
	.byte	0x2
	.uleb128 0x7
	.string	"tp_tuning_parm_lld_version"
	.byte	0x7
	.uahalf	0x108
	.uaword	0x1f9
	.byte	0x4
	.uleb128 0x7
	.string	"tp_init_phase_rtn_lite_long"
	.byte	0x7
	.uahalf	0x10c
	.uaword	0x1bd
	.byte	0x6
	.uleb128 0x7
	.string	"tp_init_phase_rtn_lite_med"
	.byte	0x7
	.uahalf	0x110
	.uaword	0x1bd
	.byte	0x7
	.uleb128 0x7
	.string	"tp_init_phase_rtn_lite_short"
	.byte	0x7
	.uahalf	0x114
	.uaword	0x1bd
	.byte	0x8
	.uleb128 0x7
	.string	"tp_init_phase_ref_lite_long"
	.byte	0x7
	.uahalf	0x118
	.uaword	0x1bd
	.byte	0x9
	.uleb128 0x7
	.string	"tp_init_phase_ref_lite_med"
	.byte	0x7
	.uahalf	0x11c
	.uaword	0x1bd
	.byte	0xa
	.uleb128 0x7
	.string	"tp_init_phase_ref_lite_short"
	.byte	0x7
	.uahalf	0x120
	.uaword	0x1bd
	.byte	0xb
	.uleb128 0x7
	.string	"tp_consistency_lite_phase_tolerance"
	.byte	0x7
	.uahalf	0x125
	.uaword	0x1bd
	.byte	0xc
	.uleb128 0x7
	.string	"tp_phasecal_target"
	.byte	0x7
	.uahalf	0x129
	.uaword	0x1bd
	.byte	0xd
	.uleb128 0x7
	.string	"tp_cal_repeat_rate"
	.byte	0x7
	.uahalf	0x12c
	.uaword	0x1f9
	.byte	0xe
	.uleb128 0x7
	.string	"tp_lite_min_clip"
	.byte	0x7
	.uahalf	0x130
	.uaword	0x1bd
	.byte	0x10
	.uleb128 0x7
	.string	"tp_lite_long_sigma_thresh_mm"
	.byte	0x7
	.uahalf	0x135
	.uaword	0x1f9
	.byte	0x12
	.uleb128 0x7
	.string	"tp_lite_med_sigma_thresh_mm"
	.byte	0x7
	.uahalf	0x139
	.uaword	0x1f9
	.byte	0x14
	.uleb128 0x7
	.string	"tp_lite_short_sigma_thresh_mm"
	.byte	0x7
	.uahalf	0x13d
	.uaword	0x1f9
	.byte	0x16
	.uleb128 0x7
	.string	"tp_lite_long_min_count_rate_rtn_mcps"
	.byte	0x7
	.uahalf	0x142
	.uaword	0x1f9
	.byte	0x18
	.uleb128 0x7
	.string	"tp_lite_med_min_count_rate_rtn_mcps"
	.byte	0x7
	.uahalf	0x146
	.uaword	0x1f9
	.byte	0x1a
	.uleb128 0x7
	.string	"tp_lite_short_min_count_rate_rtn_mcps"
	.byte	0x7
	.uahalf	0x14a
	.uaword	0x1f9
	.byte	0x1c
	.uleb128 0x7
	.string	"tp_lite_sigma_est_pulse_width_ns"
	.byte	0x7
	.uahalf	0x14f
	.uaword	0x1bd
	.byte	0x1e
	.uleb128 0x7
	.string	"tp_lite_sigma_est_amb_width_ns"
	.byte	0x7
	.uahalf	0x152
	.uaword	0x1bd
	.byte	0x1f
	.uleb128 0x7
	.string	"tp_lite_sigma_ref_mm"
	.byte	0x7
	.uahalf	0x155
	.uaword	0x1bd
	.byte	0x20
	.uleb128 0x7
	.string	"tp_lite_seed_cfg"
	.byte	0x7
	.uahalf	0x158
	.uaword	0x1bd
	.byte	0x21
	.uleb128 0x7
	.string	"tp_timed_seed_cfg"
	.byte	0x7
	.uahalf	0x15b
	.uaword	0x1bd
	.byte	0x22
	.uleb128 0x7
	.string	"tp_lite_quantifier"
	.byte	0x7
	.uahalf	0x15f
	.uaword	0x1bd
	.byte	0x23
	.uleb128 0x7
	.string	"tp_lite_first_order_select"
	.byte	0x7
	.uahalf	0x162
	.uaword	0x1bd
	.byte	0x24
	.uleb128 0x7
	.string	"tp_dss_target_lite_mcps"
	.byte	0x7
	.uahalf	0x166
	.uaword	0x1f9
	.byte	0x26
	.uleb128 0x7
	.string	"tp_dss_target_timed_mcps"
	.byte	0x7
	.uahalf	0x169
	.uaword	0x1f9
	.byte	0x28
	.uleb128 0x7
	.string	"tp_phasecal_timeout_lite_us"
	.byte	0x7
	.uahalf	0x16d
	.uaword	0x23a
	.byte	0x2c
	.uleb128 0x7
	.string	"tp_phasecal_timeout_timed_us"
	.byte	0x7
	.uahalf	0x171
	.uaword	0x23a
	.byte	0x30
	.uleb128 0x7
	.string	"tp_mm_timeout_lite_us"
	.byte	0x7
	.uahalf	0x175
	.uaword	0x23a
	.byte	0x34
	.uleb128 0x7
	.string	"tp_mm_timeout_timed_us"
	.byte	0x7
	.uahalf	0x178
	.uaword	0x23a
	.byte	0x38
	.uleb128 0x7
	.string	"tp_mm_timeout_lpa_us"
	.byte	0x7
	.uahalf	0x17b
	.uaword	0x23a
	.byte	0x3c
	.uleb128 0x7
	.string	"tp_range_timeout_lite_us"
	.byte	0x7
	.uahalf	0x17f
	.uaword	0x23a
	.byte	0x40
	.uleb128 0x7
	.string	"tp_range_timeout_timed_us"
	.byte	0x7
	.uahalf	0x182
	.uaword	0x23a
	.byte	0x44
	.uleb128 0x7
	.string	"tp_range_timeout_lpa_us"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x23a
	.byte	0x48
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_tuning_parm_storage_t"
	.byte	0x7
	.uahalf	0x189
	.uaword	0x2c11
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.uahalf	0x191
	.uaword	0x3160
	.uleb128 0x8
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x193
	.uaword	0x1bd
	.byte	0
	.uleb128 0x8
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x194
	.uaword	0x1bd
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_optical_centre_t"
	.byte	0x7
	.uahalf	0x196
	.uaword	0x313c
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.uahalf	0x19d
	.uaword	0x31c3
	.uleb128 0x8
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x19f
	.uaword	0x1bd
	.byte	0
	.uleb128 0x8
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x1bd
	.byte	0x1
	.uleb128 0x7
	.string	"width"
	.byte	0x7
	.uahalf	0x1a1
	.uaword	0x1bd
	.byte	0x2
	.uleb128 0x7
	.string	"height"
	.byte	0x7
	.uahalf	0x1a2
	.uaword	0x1bd
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_user_zone_t"
	.byte	0x7
	.uahalf	0x1a4
	.uaword	0x3180
	.uleb128 0x9
	.byte	0xe
	.byte	0x7
	.uahalf	0x1ae
	.uaword	0x32ea
	.uleb128 0x7
	.string	"intr_mode_distance"
	.byte	0x7
	.uahalf	0x1b1
	.uaword	0x38f
	.byte	0
	.uleb128 0x7
	.string	"intr_mode_rate"
	.byte	0x7
	.uahalf	0x1b4
	.uaword	0x38f
	.byte	0x1
	.uleb128 0x7
	.string	"intr_new_measure_ready"
	.byte	0x7
	.uahalf	0x1b9
	.uaword	0x1bd
	.byte	0x2
	.uleb128 0x7
	.string	"intr_no_target"
	.byte	0x7
	.uahalf	0x1bc
	.uaword	0x1bd
	.byte	0x3
	.uleb128 0x7
	.string	"intr_combined_mode"
	.byte	0x7
	.uahalf	0x1c2
	.uaword	0x1bd
	.byte	0x4
	.uleb128 0x7
	.string	"threshold_distance_high"
	.byte	0x7
	.uahalf	0x1ca
	.uaword	0x1f9
	.byte	0x6
	.uleb128 0x7
	.string	"threshold_distance_low"
	.byte	0x7
	.uahalf	0x1cd
	.uaword	0x1f9
	.byte	0x8
	.uleb128 0x7
	.string	"threshold_rate_high"
	.byte	0x7
	.uahalf	0x1d0
	.uaword	0x1f9
	.byte	0xa
	.uleb128 0x7
	.string	"threshold_rate_low"
	.byte	0x7
	.uahalf	0x1d3
	.uaword	0x1f9
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_GPIO_interrupt_config_t"
	.byte	0x7
	.uahalf	0x1d5
	.uaword	0x31de
	.uleb128 0x9
	.byte	0x10
	.byte	0x7
	.uahalf	0x1e0
	.uaword	0x3431
	.uleb128 0x7
	.string	"vhv_loop_bound"
	.byte	0x7
	.uahalf	0x1e6
	.uaword	0x1bd
	.byte	0
	.uleb128 0x7
	.string	"is_low_power_auto_mode"
	.byte	0x7
	.uahalf	0x1e9
	.uaword	0x1bd
	.byte	0x1
	.uleb128 0x7
	.string	"low_power_auto_range_count"
	.byte	0x7
	.uahalf	0x1ed
	.uaword	0x1bd
	.byte	0x2
	.uleb128 0x7
	.string	"saved_interrupt_config"
	.byte	0x7
	.uahalf	0x1f0
	.uaword	0x1bd
	.byte	0x3
	.uleb128 0x7
	.string	"saved_vhv_init"
	.byte	0x7
	.uahalf	0x1f3
	.uaword	0x1bd
	.byte	0x4
	.uleb128 0x7
	.string	"saved_vhv_timeout"
	.byte	0x7
	.uahalf	0x1f6
	.uaword	0x1bd
	.byte	0x5
	.uleb128 0x7
	.string	"first_run_phasecal_result"
	.byte	0x7
	.uahalf	0x1f9
	.uaword	0x1bd
	.byte	0x6
	.uleb128 0x7
	.string	"dss__total_rate_per_spad_mcps"
	.byte	0x7
	.uahalf	0x1fc
	.uaword	0x23a
	.byte	0x8
	.uleb128 0x7
	.string	"dss__required_spads"
	.byte	0x7
	.uahalf	0x1ff
	.uaword	0x1f9
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_low_power_auto_data_t"
	.byte	0x7
	.uahalf	0x201
	.uaword	0x3311
	.uleb128 0x9
	.byte	0x40
	.byte	0x7
	.uahalf	0x20b
	.uaword	0x369a
	.uleb128 0x7
	.string	"range_id"
	.byte	0x7
	.uahalf	0x20f
	.uaword	0x1bd
	.byte	0
	.uleb128 0x7
	.string	"time_stamp"
	.byte	0x7
	.uahalf	0x211
	.uaword	0x23a
	.byte	0x4
	.uleb128 0x7
	.string	"width"
	.byte	0x7
	.uahalf	0x214
	.uaword	0x1f9
	.byte	0x8
	.uleb128 0x7
	.string	"woi"
	.byte	0x7
	.uahalf	0x216
	.uaword	0x1bd
	.byte	0xa
	.uleb128 0x7
	.string	"fast_osc_frequency"
	.byte	0x7
	.uahalf	0x219
	.uaword	0x1f9
	.byte	0xc
	.uleb128 0x7
	.string	"zero_distance_phase"
	.byte	0x7
	.uahalf	0x21b
	.uaword	0x1f9
	.byte	0xe
	.uleb128 0x7
	.string	"actual_effective_spads"
	.byte	0x7
	.uahalf	0x21d
	.uaword	0x1f9
	.byte	0x10
	.uleb128 0x7
	.string	"total_periods_elapsed"
	.byte	0x7
	.uahalf	0x220
	.uaword	0x23a
	.byte	0x14
	.uleb128 0x7
	.string	"peak_duration_us"
	.byte	0x7
	.uahalf	0x223
	.uaword	0x23a
	.byte	0x18
	.uleb128 0x7
	.string	"woi_duration_us"
	.byte	0x7
	.uahalf	0x226
	.uaword	0x23a
	.byte	0x1c
	.uleb128 0x7
	.string	"ambient_window_events"
	.byte	0x7
	.uahalf	0x22c
	.uaword	0x23a
	.byte	0x20
	.uleb128 0x7
	.string	"ranging_total_events"
	.byte	0x7
	.uahalf	0x22e
	.uaword	0x23a
	.byte	0x24
	.uleb128 0x7
	.string	"signal_total_events"
	.byte	0x7
	.uahalf	0x231
	.uaword	0x21f
	.byte	0x28
	.uleb128 0x7
	.string	"peak_signal_count_rate_mcps"
	.byte	0x7
	.uahalf	0x237
	.uaword	0x1f9
	.byte	0x2c
	.uleb128 0x7
	.string	"avg_signal_count_rate_mcps"
	.byte	0x7
	.uahalf	0x239
	.uaword	0x1f9
	.byte	0x2e
	.uleb128 0x7
	.string	"ambient_count_rate_mcps"
	.byte	0x7
	.uahalf	0x23b
	.uaword	0x1f9
	.byte	0x30
	.uleb128 0x7
	.string	"total_rate_per_spad_mcps"
	.byte	0x7
	.uahalf	0x23d
	.uaword	0x1f9
	.byte	0x32
	.uleb128 0x7
	.string	"peak_rate_per_spad_kcps"
	.byte	0x7
	.uahalf	0x23f
	.uaword	0x23a
	.byte	0x34
	.uleb128 0x8
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x244
	.uaword	0x1f9
	.byte	0x38
	.uleb128 0x7
	.string	"median_phase"
	.byte	0x7
	.uahalf	0x249
	.uaword	0x1f9
	.byte	0x3a
	.uleb128 0x8
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x24e
	.uaword	0x1dd
	.byte	0x3c
	.uleb128 0x7
	.string	"range_status"
	.byte	0x7
	.uahalf	0x255
	.uaword	0x1bd
	.byte	0x3e
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_range_data_t"
	.byte	0x7
	.uahalf	0x257
	.uaword	0x3456
	.uleb128 0x9
	.byte	0x84
	.byte	0x7
	.uahalf	0x260
	.uaword	0x3715
	.uleb128 0x8
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x262
	.uaword	0x2cb
	.byte	0
	.uleb128 0x8
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x264
	.uaword	0x2cb
	.byte	0x1
	.uleb128 0x7
	.string	"stream_count"
	.byte	0x7
	.uahalf	0x266
	.uaword	0x1bd
	.byte	0x2
	.uleb128 0x7
	.string	"device_status"
	.byte	0x7
	.uahalf	0x269
	.uaword	0x1bd
	.byte	0x3
	.uleb128 0x7
	.string	"data"
	.byte	0x7
	.uahalf	0x26c
	.uaword	0x3715
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.uaword	0x369a
	.uaword	0x3725
	.uleb128 0xc
	.uaword	0x2a1
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_range_results_t"
	.byte	0x7
	.uahalf	0x26f
	.uaword	0x36b6
	.uleb128 0x9
	.byte	0x1c
	.byte	0x7
	.uahalf	0x279
	.uaword	0x37e5
	.uleb128 0x8
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x27b
	.uaword	0x1bd
	.byte	0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x27d
	.uaword	0x1bd
	.byte	0x1
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x27f
	.uaword	0x1f9
	.byte	0x2
	.uleb128 0x7
	.string	"no_of_samples"
	.byte	0x7
	.uahalf	0x281
	.uaword	0x1bd
	.byte	0x4
	.uleb128 0x7
	.string	"effective_spads"
	.byte	0x7
	.uahalf	0x283
	.uaword	0x23a
	.byte	0x8
	.uleb128 0x8
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x285
	.uaword	0x23a
	.byte	0xc
	.uleb128 0x8
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x287
	.uaword	0x23a
	.byte	0x10
	.uleb128 0x8
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x289
	.uaword	0x21f
	.byte	0x14
	.uleb128 0x7
	.string	"range_mm_offset"
	.byte	0x7
	.uahalf	0x28c
	.uaword	0x21f
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_offset_range_data_t"
	.byte	0x7
	.uahalf	0x28f
	.uaword	0x3744
	.uleb128 0x9
	.byte	0x5c
	.byte	0x7
	.uahalf	0x299
	.uaword	0x3882
	.uleb128 0x8
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x29b
	.uaword	0x1dd
	.byte	0
	.uleb128 0x7
	.string	"cal_status"
	.byte	0x7
	.uahalf	0x29d
	.uaword	0x3b2
	.byte	0x2
	.uleb128 0x7
	.string	"cal_report"
	.byte	0x7
	.uahalf	0x29f
	.uaword	0x1bd
	.byte	0x3
	.uleb128 0x7
	.string	"max_results"
	.byte	0x7
	.uahalf	0x2a1
	.uaword	0x1bd
	.byte	0x4
	.uleb128 0x7
	.string	"active_results"
	.byte	0x7
	.uahalf	0x2a4
	.uaword	0x1bd
	.byte	0x5
	.uleb128 0x7
	.string	"data"
	.byte	0x7
	.uahalf	0x2a6
	.uaword	0x3882
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.uaword	0x37e5
	.uaword	0x3892
	.uleb128 0xc
	.uaword	0x2a1
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_offset_range_results_t"
	.byte	0x7
	.uahalf	0x2a9
	.uaword	0x3808
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.uahalf	0x2b4
	.uaword	0x398e
	.uleb128 0x7
	.string	"result__mm_inner_actual_effective_spads"
	.byte	0x7
	.uahalf	0x2b6
	.uaword	0x1f9
	.byte	0
	.uleb128 0x7
	.string	"result__mm_outer_actual_effective_spads"
	.byte	0x7
	.uahalf	0x2b8
	.uaword	0x1f9
	.byte	0x2
	.uleb128 0x7
	.string	"result__mm_inner_peak_signal_count_rtn_mcps"
	.byte	0x7
	.uahalf	0x2ba
	.uaword	0x1f9
	.byte	0x4
	.uleb128 0x7
	.string	"result__mm_outer_peak_signal_count_rtn_mcps"
	.byte	0x7
	.uahalf	0x2bc
	.uaword	0x1f9
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_additional_offset_cal_data_t"
	.byte	0x7
	.uahalf	0x2bf
	.uaword	0x38b8
	.uleb128 0x9
	.byte	0x3a
	.byte	0x7
	.uahalf	0x2ca
	.uaword	0x3a12
	.uleb128 0x8
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x2cc
	.uaword	0x1dd
	.byte	0
	.uleb128 0x7
	.string	"max_samples"
	.byte	0x7
	.uahalf	0x2ce
	.uaword	0x1f9
	.byte	0x2
	.uleb128 0x7
	.string	"width"
	.byte	0x7
	.uahalf	0x2d0
	.uaword	0x1f9
	.byte	0x4
	.uleb128 0x7
	.string	"height"
	.byte	0x7
	.uahalf	0x2d2
	.uaword	0x1f9
	.byte	0x6
	.uleb128 0x8
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x2d4
	.uaword	0x3a12
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.uaword	0x1f9
	.uaword	0x3a22
	.uleb128 0xc
	.uaword	0x2a1
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_cal_peak_rate_map_t"
	.byte	0x7
	.uahalf	0x2d7
	.uaword	0x39ba
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.uahalf	0x2e1
	.uaword	0x3a75
	.uleb128 0x7
	.string	"standard_ranging_gain_factor"
	.byte	0x7
	.uahalf	0x2e3
	.uaword	0x1f9
	.byte	0
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_gain_calibration_data_t"
	.byte	0x7
	.uahalf	0x2e6
	.uaword	0x3a45
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.uahalf	0x2f0
	.uaword	0x3b4f
	.uleb128 0x8
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x2f2
	.uaword	0x2cb
	.byte	0
	.uleb128 0x7
	.string	"cfg_stream_count"
	.byte	0x7
	.uahalf	0x2f4
	.uaword	0x1bd
	.byte	0x1
	.uleb128 0x7
	.string	"cfg_gph_id"
	.byte	0x7
	.uahalf	0x2f7
	.uaword	0x1bd
	.byte	0x2
	.uleb128 0x7
	.string	"cfg_timing_status"
	.byte	0x7
	.uahalf	0x2f9
	.uaword	0x1bd
	.byte	0x3
	.uleb128 0x8
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x2fc
	.uaword	0x2cb
	.byte	0x4
	.uleb128 0x7
	.string	"rd_stream_count"
	.byte	0x7
	.uahalf	0x2fe
	.uaword	0x1bd
	.byte	0x5
	.uleb128 0x7
	.string	"rd_gph_id"
	.byte	0x7
	.uahalf	0x300
	.uaword	0x1bd
	.byte	0x6
	.uleb128 0x7
	.string	"rd_timing_status"
	.byte	0x7
	.uahalf	0x302
	.uaword	0x1bd
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_ll_driver_state_t"
	.byte	0x7
	.uahalf	0x305
	.uaword	0x3a9c
	.uleb128 0x9
	.byte	0x14
	.byte	0x7
	.uahalf	0x30a
	.uaword	0x3c02
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x30c
	.uaword	0x1f9
	.byte	0
	.uleb128 0x8
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x30f
	.uaword	0x23a
	.byte	0x4
	.uleb128 0x8
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x312
	.uaword	0x23a
	.byte	0x8
	.uleb128 0x8
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x315
	.uaword	0x23a
	.byte	0xc
	.uleb128 0x7
	.string	"pre_num_of_samples"
	.byte	0x7
	.uahalf	0x319
	.uaword	0x1bd
	.byte	0x10
	.uleb128 0x7
	.string	"mm1_num_of_samples"
	.byte	0x7
	.uahalf	0x31c
	.uaword	0x1bd
	.byte	0x11
	.uleb128 0x7
	.string	"mm2_num_of_samples"
	.byte	0x7
	.uahalf	0x31f
	.uaword	0x1bd
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_offsetcal_config_t"
	.byte	0x7
	.uahalf	0x323
	.uaword	0x3b70
	.uleb128 0xd
	.uahalf	0x2f4
	.byte	0x7
	.uahalf	0x32e
	.uaword	0x3f94
	.uleb128 0x7
	.string	"wait_method"
	.byte	0x7
	.uahalf	0x330
	.uaword	0x1bd
	.byte	0
	.uleb128 0x8
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x332
	.uaword	0x2e5
	.byte	0x1
	.uleb128 0x7
	.string	"measurement_mode"
	.byte	0x7
	.uahalf	0x334
	.uaword	0x305
	.byte	0x2
	.uleb128 0x7
	.string	"offset_calibration_mode"
	.byte	0x7
	.uahalf	0x336
	.uaword	0x32a
	.byte	0x3
	.uleb128 0x7
	.string	"offset_correction_mode"
	.byte	0x7
	.uahalf	0x338
	.uaword	0x34e
	.byte	0x4
	.uleb128 0x8
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x33a
	.uaword	0x23a
	.byte	0x8
	.uleb128 0x8
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x33c
	.uaword	0x23a
	.byte	0xc
	.uleb128 0x8
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x33e
	.uaword	0x23a
	.byte	0x10
	.uleb128 0x7
	.string	"inter_measurement_period_ms"
	.byte	0x7
	.uahalf	0x340
	.uaword	0x23a
	.byte	0x14
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x342
	.uaword	0x1f9
	.byte	0x18
	.uleb128 0x7
	.string	"fw_ready_poll_duration_ms"
	.byte	0x7
	.uahalf	0x345
	.uaword	0x23a
	.byte	0x1c
	.uleb128 0x7
	.string	"fw_ready"
	.byte	0x7
	.uahalf	0x347
	.uaword	0x1bd
	.byte	0x20
	.uleb128 0x7
	.string	"debug_mode"
	.byte	0x7
	.uahalf	0x349
	.uaword	0x1bd
	.byte	0x21
	.uleb128 0x7
	.string	"version"
	.byte	0x7
	.uahalf	0x34d
	.uaword	0x28e3
	.byte	0x24
	.uleb128 0x7
	.string	"ll_state"
	.byte	0x7
	.uahalf	0x350
	.uaword	0x3b4f
	.byte	0x2c
	.uleb128 0x7
	.string	"gpio_interrupt_config"
	.byte	0x7
	.uahalf	0x353
	.uaword	0x32ea
	.byte	0x34
	.uleb128 0x7
	.string	"customer"
	.byte	0x7
	.uahalf	0x356
	.uaword	0x7a9
	.byte	0x42
	.uleb128 0x7
	.string	"cal_peak_rate_map"
	.byte	0x7
	.uahalf	0x357
	.uaword	0x3a22
	.byte	0x5a
	.uleb128 0x7
	.string	"add_off_cal_data"
	.byte	0x7
	.uahalf	0x358
	.uaword	0x398e
	.byte	0x94
	.uleb128 0x7
	.string	"gain_cal"
	.byte	0x7
	.uahalf	0x359
	.uaword	0x3a75
	.byte	0x9c
	.uleb128 0x7
	.string	"mm_roi"
	.byte	0x7
	.uahalf	0x35a
	.uaword	0x31c3
	.byte	0x9e
	.uleb128 0x7
	.string	"optical_centre"
	.byte	0x7
	.uahalf	0x35b
	.uaword	0x3160
	.byte	0xa2
	.uleb128 0x7
	.string	"tuning_parms"
	.byte	0x7
	.uahalf	0x35e
	.uaword	0x3117
	.byte	0xa4
	.uleb128 0x7
	.string	"rtn_good_spads"
	.byte	0x7
	.uahalf	0x361
	.uaword	0x3f94
	.byte	0xf0
	.uleb128 0xe
	.string	"refspadchar"
	.byte	0x7
	.uahalf	0x364
	.uaword	0x299b
	.uahalf	0x110
	.uleb128 0xe
	.string	"ssc_cfg"
	.byte	0x7
	.uahalf	0x365
	.uaword	0x2a34
	.uahalf	0x120
	.uleb128 0xe
	.string	"xtalk_cfg"
	.byte	0x7
	.uahalf	0x366
	.uaword	0x2bf4
	.uahalf	0x12c
	.uleb128 0xe
	.string	"offsetcal_cfg"
	.byte	0x7
	.uahalf	0x367
	.uaword	0x3c02
	.uahalf	0x144
	.uleb128 0xe
	.string	"stat_nvm"
	.byte	0x7
	.uahalf	0x36a
	.uaword	0x534
	.uahalf	0x158
	.uleb128 0xe
	.string	"stat_cfg"
	.byte	0x7
	.uahalf	0x36b
	.uaword	0xc15
	.uahalf	0x164
	.uleb128 0xe
	.string	"gen_cfg"
	.byte	0x7
	.uahalf	0x36c
	.uaword	0xe88
	.uahalf	0x184
	.uleb128 0xe
	.string	"tim_cfg"
	.byte	0x7
	.uahalf	0x36d
	.uaword	0x113e
	.uahalf	0x19c
	.uleb128 0xe
	.string	"dyn_cfg"
	.byte	0x7
	.uahalf	0x36e
	.uaword	0x13b0
	.uahalf	0x1b4
	.uleb128 0xe
	.string	"sys_ctrl"
	.byte	0x7
	.uahalf	0x36f
	.uaword	0x147f
	.uahalf	0x1c8
	.uleb128 0xe
	.string	"sys_results"
	.byte	0x7
	.uahalf	0x370
	.uaword	0x188e
	.uahalf	0x1ce
	.uleb128 0xe
	.string	"nvm_copy_data"
	.byte	0x7
	.uahalf	0x371
	.uaword	0x2874
	.uahalf	0x1fa
	.uleb128 0xe
	.string	"offset_results"
	.byte	0x7
	.uahalf	0x374
	.uaword	0x3892
	.uahalf	0x22c
	.uleb128 0xe
	.string	"core_results"
	.byte	0x7
	.uahalf	0x377
	.uaword	0x1a50
	.uahalf	0x288
	.uleb128 0xe
	.string	"dbg_results"
	.byte	0x7
	.uahalf	0x378
	.uaword	0x20a3
	.uahalf	0x2ac
	.uleb128 0xe
	.string	"low_power_auto_data"
	.byte	0x7
	.uahalf	0x37c
	.uaword	0x3431
	.uahalf	0x2e4
	.byte	0
	.uleb128 0xb
	.uaword	0x1bd
	.uaword	0x3fa4
	.uleb128 0xc
	.uaword	0x2a1
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_LLDriverData_t"
	.byte	0x7
	.uahalf	0x388
	.uaword	0x3c24
	.uleb128 0x9
	.byte	0x84
	.byte	0x7
	.uahalf	0x392
	.uaword	0x3fe3
	.uleb128 0x7
	.string	"range_results"
	.byte	0x7
	.uahalf	0x395
	.uaword	0x3725
	.byte	0
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_LLDriverResults_t"
	.byte	0x7
	.uahalf	0x397
	.uaword	0x3fc2
	.uleb128 0x2
	.string	"VL53L1_PresetModes"
	.byte	0x8
	.byte	0x88
	.uaword	0x1bd
	.uleb128 0x2
	.string	"VL53L1_DistanceModes"
	.byte	0x8
	.byte	0x96
	.uaword	0x1bd
	.uleb128 0x9
	.byte	0x1c
	.byte	0x8
	.uahalf	0x11e
	.uaword	0x413e
	.uleb128 0x7
	.string	"PresetMode"
	.byte	0x8
	.uahalf	0x11f
	.uaword	0x4004
	.byte	0
	.uleb128 0x7
	.string	"DistanceMode"
	.byte	0x8
	.uahalf	0x121
	.uaword	0x401e
	.byte	0x1
	.uleb128 0x7
	.string	"InternalDistanceMode"
	.byte	0x8
	.uahalf	0x123
	.uaword	0x401e
	.byte	0x2
	.uleb128 0x7
	.string	"NewDistanceMode"
	.byte	0x8
	.uahalf	0x127
	.uaword	0x401e
	.byte	0x3
	.uleb128 0x7
	.string	"MeasurementTimingBudgetMicroSeconds"
	.byte	0x8
	.uahalf	0x12b
	.uaword	0x23a
	.byte	0x4
	.uleb128 0x7
	.string	"LimitChecksEnable"
	.byte	0x8
	.uahalf	0x12d
	.uaword	0x413e
	.byte	0x8
	.uleb128 0x7
	.string	"LimitChecksStatus"
	.byte	0x8
	.uahalf	0x12f
	.uaword	0x413e
	.byte	0xa
	.uleb128 0x7
	.string	"LimitChecksValue"
	.byte	0x8
	.uahalf	0x133
	.uaword	0x414e
	.byte	0xc
	.uleb128 0x7
	.string	"LimitChecksCurrent"
	.byte	0x8
	.uahalf	0x135
	.uaword	0x414e
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.uaword	0x1bd
	.uaword	0x414e
	.uleb128 0xc
	.uaword	0x2a1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.uaword	0x2b5
	.uaword	0x415e
	.uleb128 0xc
	.uaword	0x2a1
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_DeviceParameters_t"
	.byte	0x8
	.uahalf	0x139
	.uaword	0x403a
	.uleb128 0x4
	.string	"VL53L1_State"
	.byte	0x8
	.uahalf	0x141
	.uaword	0x1bd
	.uleb128 0xd
	.uahalf	0x398
	.byte	0x8
	.uahalf	0x222
	.uaword	0x41f3
	.uleb128 0x7
	.string	"LLData"
	.byte	0x8
	.uahalf	0x223
	.uaword	0x3fa4
	.byte	0
	.uleb128 0xe
	.string	"llresults"
	.byte	0x8
	.uahalf	0x226
	.uaword	0x3fe3
	.uahalf	0x2f4
	.uleb128 0xe
	.string	"PalState"
	.byte	0x8
	.uahalf	0x229
	.uaword	0x4180
	.uahalf	0x378
	.uleb128 0xe
	.string	"CurrentParameters"
	.byte	0x8
	.uahalf	0x22a
	.uaword	0x415e
	.uahalf	0x37c
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_DevData_t"
	.byte	0x8
	.uahalf	0x22d
	.uaword	0x4195
	.uleb128 0x5
	.byte	0x4
	.byte	0x9
	.byte	0x4a
	.uaword	0x4223
	.uleb128 0x6
	.string	"dummy"
	.byte	0x9
	.byte	0x4b
	.uaword	0x23a
	.byte	0
	.byte	0
	.uleb128 0x2
	.string	"I2C_HandleTypeDef"
	.byte	0x9
	.byte	0x4c
	.uaword	0x420c
	.uleb128 0xf
	.uahalf	0x3a4
	.byte	0x9
	.byte	0x4e
	.uaword	0x42d0
	.uleb128 0x6
	.string	"Data"
	.byte	0x9
	.byte	0x50
	.uaword	0x41f3
	.byte	0
	.uleb128 0x10
	.string	"I2cDevAddr"
	.byte	0x9
	.byte	0x52
	.uaword	0x1bd
	.uahalf	0x398
	.uleb128 0x10
	.string	"comms_type"
	.byte	0x9
	.byte	0x53
	.uaword	0x1bd
	.uahalf	0x399
	.uleb128 0x10
	.string	"comms_speed_khz"
	.byte	0x9
	.byte	0x54
	.uaword	0x1f9
	.uahalf	0x39a
	.uleb128 0x10
	.string	"new_data_ready_poll_duration_ms"
	.byte	0x9
	.byte	0x55
	.uaword	0x23a
	.uahalf	0x39c
	.uleb128 0x10
	.string	"I2cHandle"
	.byte	0x9
	.byte	0x56
	.uaword	0x42d0
	.uahalf	0x3a0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x4223
	.uleb128 0x2
	.string	"VL53L1_Dev_t"
	.byte	0x9
	.byte	0x58
	.uaword	0x423c
	.uleb128 0x2
	.string	"VL53L1_DEV"
	.byte	0x9
	.byte	0x5a
	.uaword	0x42fc
	.uleb128 0x11
	.byte	0x4
	.uaword	0x42d6
	.uleb128 0x12
	.byte	0x1
	.string	"VL53L1_i2c_encode_system_control"
	.byte	0x1
	.uahalf	0x4d7
	.byte	0x1
	.uaword	0x3b2
	.byte	0x1
	.uaword	0x4363
	.uleb128 0x13
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x4d8
	.uaword	0x4363
	.uleb128 0x13
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x4d9
	.uaword	0x1f9
	.uleb128 0x13
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x4da
	.uaword	0x4369
	.uleb128 0x14
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x4e1
	.uaword	0x3b2
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x147f
	.uleb128 0x11
	.byte	0x4
	.uaword	0x1bd
	.uleb128 0x15
	.byte	0x1
	.string	"VL53L1_i2c_encode_static_nvm_managed"
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.uaword	0x3b2
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x43fb
	.uleb128 0x16
	.uaword	.LASF20
	.byte	0x1
	.byte	0x55
	.uaword	0x43fb
	.uaword	.LLST0
	.uleb128 0x16
	.uaword	.LASF21
	.byte	0x1
	.byte	0x56
	.uaword	0x1f9
	.uaword	.LLST1
	.uleb128 0x16
	.uaword	.LASF22
	.byte	0x1
	.byte	0x57
	.uaword	0x4369
	.uaword	.LLST2
	.uleb128 0x17
	.uaword	.LASF23
	.byte	0x1
	.byte	0x5e
	.uaword	0x3b2
	.byte	0
	.uleb128 0x18
	.uaword	.LVL3
	.uaword	0x5870
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 5
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x534
	.uleb128 0x15
	.byte	0x1
	.string	"VL53L1_i2c_decode_static_nvm_managed"
	.byte	0x1
	.byte	0x82
	.byte	0x1
	.uaword	0x3b2
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x448d
	.uleb128 0x16
	.uaword	.LASF21
	.byte	0x1
	.byte	0x83
	.uaword	0x1f9
	.uaword	.LLST3
	.uleb128 0x16
	.uaword	.LASF22
	.byte	0x1
	.byte	0x84
	.uaword	0x4369
	.uaword	.LLST4
	.uleb128 0x16
	.uaword	.LASF20
	.byte	0x1
	.byte	0x85
	.uaword	0x43fb
	.uaword	.LLST5
	.uleb128 0x17
	.uaword	.LASF23
	.byte	0x1
	.byte	0x8c
	.uaword	0x3b2
	.byte	0
	.uleb128 0x18
	.uaword	.LVL8
	.uaword	0x58a5
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 5
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"VL53L1_set_static_nvm_managed"
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.uaword	0x3b2
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x453f
	.uleb128 0x1a
	.string	"Dev"
	.byte	0x1
	.byte	0xaf
	.uaword	0x42ea
	.uaword	.LLST6
	.uleb128 0x16
	.uaword	.LASF20
	.byte	0x1
	.byte	0xb0
	.uaword	0x43fb
	.uaword	.LLST7
	.uleb128 0x1b
	.uaword	.LASF23
	.byte	0x1
	.byte	0xb7
	.uaword	0x3b2
	.uaword	.LLST8
	.uleb128 0x1c
	.uaword	.LASF24
	.byte	0x1
	.byte	0xb8
	.uaword	0x453f
	.byte	0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x1d
	.uaword	.LVL13
	.uaword	0x436f
	.uaword	0x451e
	.uleb128 0x19
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3b
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0
	.uleb128 0x18
	.uaword	.LVL14
	.uaword	0x58d9
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x3b
	.uleb128 0x19
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.uaword	0x1bd
	.uaword	0x454f
	.uleb128 0xc
	.uaword	0x2a1
	.byte	0xa
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"VL53L1_get_static_nvm_managed"
	.byte	0x1
	.byte	0xcf
	.byte	0x1
	.uaword	0x3b2
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4601
	.uleb128 0x1a
	.string	"Dev"
	.byte	0x1
	.byte	0xd0
	.uaword	0x42ea
	.uaword	.LLST9
	.uleb128 0x16
	.uaword	.LASF20
	.byte	0x1
	.byte	0xd1
	.uaword	0x43fb
	.uaword	.LLST10
	.uleb128 0x1b
	.uaword	.LASF23
	.byte	0x1
	.byte	0xd8
	.uaword	0x3b2
	.uaword	.LLST11
	.uleb128 0x1c
	.uaword	.LASF24
	.byte	0x1
	.byte	0xd9
	.uaword	0x453f
	.byte	0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x1d
	.uaword	.LVL17
	.uaword	0x590e
	.uaword	0x45e5
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x3b
	.uleb128 0x19
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.uleb128 0x18
	.uaword	.LVL18
	.uaword	0x4401
	.uleb128 0x19
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3b
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"VL53L1_i2c_encode_customer_nvm_managed"
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.uaword	0x3b2
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4725
	.uleb128 0x16
	.uaword	.LASF20
	.byte	0x1
	.byte	0xf1
	.uaword	0x4725
	.uaword	.LLST12
	.uleb128 0x16
	.uaword	.LASF21
	.byte	0x1
	.byte	0xf2
	.uaword	0x1f9
	.uaword	.LLST13
	.uleb128 0x16
	.uaword	.LASF22
	.byte	0x1
	.byte	0xf3
	.uaword	0x4369
	.uaword	.LLST14
	.uleb128 0x17
	.uaword	.LASF23
	.byte	0x1
	.byte	0xfa
	.uaword	0x3b2
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL22
	.uaword	0x5870
	.uaword	0x4692
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 9
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL23
	.uaword	0x5942
	.uaword	0x46ab
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 11
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL24
	.uaword	0x5942
	.uaword	0x46c4
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 13
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL25
	.uaword	0x5870
	.uaword	0x46dd
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 15
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL26
	.uaword	0x5942
	.uaword	0x46f6
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 17
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL27
	.uaword	0x5942
	.uaword	0x470f
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 19
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x18
	.uaword	.LVL28
	.uaword	0x5942
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 21
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x7a9
	.uleb128 0x1e
	.byte	0x1
	.string	"VL53L1_i2c_decode_customer_nvm_managed"
	.byte	0x1
	.uahalf	0x136
	.byte	0x1
	.uaword	0x3b2
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4854
	.uleb128 0x1f
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x137
	.uaword	0x1f9
	.uaword	.LLST15
	.uleb128 0x1f
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x138
	.uaword	0x4369
	.uaword	.LLST16
	.uleb128 0x1f
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x139
	.uaword	0x4725
	.uaword	.LLST17
	.uleb128 0x20
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x140
	.uaword	0x3b2
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL33
	.uaword	0x58a5
	.uaword	0x47c1
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 9
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL34
	.uaword	0x5976
	.uaword	0x47da
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 11
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL35
	.uaword	0x5976
	.uaword	0x47f3
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 13
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL36
	.uaword	0x58a5
	.uaword	0x480c
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 15
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL37
	.uaword	0x5976
	.uaword	0x4825
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 17
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL38
	.uaword	0x5976
	.uaword	0x483e
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 19
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x18
	.uaword	.LVL39
	.uaword	0x5976
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 21
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"VL53L1_set_customer_nvm_managed"
	.byte	0x1
	.uahalf	0x16e
	.byte	0x1
	.uaword	0x3b2
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x490d
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x16f
	.uaword	0x42ea
	.uaword	.LLST18
	.uleb128 0x1f
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x170
	.uaword	0x4725
	.uaword	.LLST19
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x177
	.uaword	0x3b2
	.uaword	.LLST20
	.uleb128 0x23
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x178
	.uaword	0x490d
	.byte	0x2
	.byte	0x91
	.sleb128 -23
	.uleb128 0x1d
	.uaword	.LVL44
	.uaword	0x4601
	.uaword	0x48ec
	.uleb128 0x19
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -23
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x47
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0
	.uleb128 0x18
	.uaword	.LVL45
	.uaword	0x58d9
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x47
	.uleb128 0x19
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -23
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.uaword	0x1bd
	.uaword	0x491d
	.uleb128 0xc
	.uaword	0x2a1
	.byte	0x16
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"VL53L1_get_customer_nvm_managed"
	.byte	0x1
	.uahalf	0x18f
	.byte	0x1
	.uaword	0x3b2
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x49d6
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x190
	.uaword	0x42ea
	.uaword	.LLST21
	.uleb128 0x1f
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x191
	.uaword	0x4725
	.uaword	.LLST22
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x198
	.uaword	0x3b2
	.uaword	.LLST23
	.uleb128 0x23
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x199
	.uaword	0x490d
	.byte	0x2
	.byte	0x91
	.sleb128 -23
	.uleb128 0x1d
	.uaword	.LVL48
	.uaword	0x590e
	.uaword	0x49ba
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x47
	.uleb128 0x19
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -23
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.uleb128 0x18
	.uaword	.LVL49
	.uaword	0x472b
	.uleb128 0x19
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -23
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x47
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"VL53L1_i2c_encode_static_config"
	.byte	0x1
	.uahalf	0x1b0
	.byte	0x1
	.uaword	0x3b2
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4a7b
	.uleb128 0x1f
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x1b1
	.uaword	0x4a7b
	.uaword	.LLST24
	.uleb128 0x1f
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x1b2
	.uaword	0x1f9
	.uaword	.LLST25
	.uleb128 0x1f
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x1b3
	.uaword	0x4369
	.uaword	.LLST26
	.uleb128 0x20
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x1ba
	.uaword	0x3b2
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL53
	.uaword	0x5870
	.uaword	0x4a65
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x18
	.uaword	.LVL54
	.uaword	0x5870
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 24
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0xc15
	.uleb128 0x1e
	.byte	0x1
	.string	"VL53L1_i2c_decode_static_config"
	.byte	0x1
	.uahalf	0x208
	.byte	0x1
	.uaword	0x3b2
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4b26
	.uleb128 0x1f
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x209
	.uaword	0x1f9
	.uaword	.LLST27
	.uleb128 0x1f
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x20a
	.uaword	0x4369
	.uaword	.LLST28
	.uleb128 0x1f
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x20b
	.uaword	0x4a7b
	.uaword	.LLST29
	.uleb128 0x20
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x212
	.uaword	0x3b2
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL58
	.uaword	0x58a5
	.uaword	0x4b10
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x18
	.uaword	.LVL59
	.uaword	0x58a5
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 24
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"VL53L1_set_static_config"
	.byte	0x1
	.uahalf	0x25c
	.byte	0x1
	.uaword	0x3b2
	.uaword	.LFB10
	.uaword	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4bdb
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x25d
	.uaword	0x42ea
	.uaword	.LLST30
	.uleb128 0x1f
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x25e
	.uaword	0x4a7b
	.uaword	.LLST31
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x265
	.uaword	0x3b2
	.uaword	.LLST32
	.uleb128 0x23
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x266
	.uaword	0x3f94
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.uaword	.LVL64
	.uaword	0x49d6
	.uaword	0x4bb8
	.uleb128 0x19
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0
	.uleb128 0x18
	.uaword	.LVL65
	.uaword	0x58d9
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x19
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x24
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"VL53L1_i2c_encode_general_config"
	.byte	0x1
	.uahalf	0x2a0
	.byte	0x1
	.uaword	0x3b2
	.uaword	.LFB11
	.uaword	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4cb3
	.uleb128 0x1f
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x2a1
	.uaword	0x4cb3
	.uaword	.LLST33
	.uleb128 0x1f
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x2a2
	.uaword	0x1f9
	.uaword	.LLST34
	.uleb128 0x1f
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x2a3
	.uaword	0x4369
	.uaword	.LLST35
	.uleb128 0x20
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x2aa
	.uaword	0x3b2
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL69
	.uaword	0x5870
	.uaword	0x4c6b
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 4
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL70
	.uaword	0x5870
	.uaword	0x4c84
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 12
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL71
	.uaword	0x5870
	.uaword	0x4c9d
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 14
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x18
	.uaword	.LVL72
	.uaword	0x5870
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 16
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0xe88
	.uleb128 0x1e
	.byte	0x1
	.string	"VL53L1_i2c_decode_general_config"
	.byte	0x1
	.uahalf	0x2e2
	.byte	0x1
	.uaword	0x3b2
	.uaword	.LFB12
	.uaword	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4d91
	.uleb128 0x1f
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x2e3
	.uaword	0x1f9
	.uaword	.LLST36
	.uleb128 0x1f
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x2e4
	.uaword	0x4369
	.uaword	.LLST37
	.uleb128 0x1f
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x2e5
	.uaword	0x4cb3
	.uaword	.LLST38
	.uleb128 0x20
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x2ec
	.uaword	0x3b2
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL77
	.uaword	0x58a5
	.uaword	0x4d49
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 4
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL78
	.uaword	0x58a5
	.uaword	0x4d62
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 12
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL79
	.uaword	0x58a5
	.uaword	0x4d7b
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 14
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x18
	.uaword	.LVL80
	.uaword	0x58a5
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 16
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"VL53L1_set_general_config"
	.byte	0x1
	.uahalf	0x31c
	.byte	0x1
	.uaword	0x3b2
	.uaword	.LFB13
	.uaword	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4e45
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x31d
	.uaword	0x42ea
	.uaword	.LLST39
	.uleb128 0x1f
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x31e
	.uaword	0x4cb3
	.uaword	.LLST40
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x325
	.uaword	0x3b2
	.uaword	.LLST41
	.uleb128 0x23
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x326
	.uaword	0x4e45
	.byte	0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1d
	.uaword	.LVL85
	.uaword	0x4bdb
	.uaword	0x4e23
	.uleb128 0x19
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x46
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0
	.uleb128 0x18
	.uaword	.LVL86
	.uaword	0x58d9
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x46
	.uleb128 0x19
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x44
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.uaword	0x1bd
	.uaword	0x4e55
	.uleb128 0xc
	.uaword	0x2a1
	.byte	0x15
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"VL53L1_i2c_encode_timing_config"
	.byte	0x1
	.uahalf	0x360
	.byte	0x1
	.uaword	0x3b2
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4f13
	.uleb128 0x1f
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x361
	.uaword	0x4f13
	.uaword	.LLST42
	.uleb128 0x1f
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x362
	.uaword	0x1f9
	.uaword	.LLST43
	.uleb128 0x1f
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x363
	.uaword	0x4369
	.uaword	.LLST44
	.uleb128 0x20
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x36a
	.uaword	0x3b2
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL90
	.uaword	0x5870
	.uaword	0x4ee4
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 10
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL91
	.uaword	0x5870
	.uaword	0x4efd
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 12
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x18
	.uaword	.LVL92
	.uaword	0x59a9
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 18
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x113e
	.uleb128 0x1e
	.byte	0x1
	.string	"VL53L1_i2c_encode_dynamic_config"
	.byte	0x1
	.uahalf	0x41e
	.byte	0x1
	.uaword	0x3b2
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4fbf
	.uleb128 0x1f
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x41f
	.uaword	0x4fbf
	.uaword	.LLST45
	.uleb128 0x1f
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x420
	.uaword	0x1f9
	.uaword	.LLST46
	.uleb128 0x1f
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x421
	.uaword	0x4369
	.uaword	.LLST47
	.uleb128 0x20
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x428
	.uaword	0x3b2
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL97
	.uaword	0x5870
	.uaword	0x4fa9
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x18
	.uaword	.LVL98
	.uaword	0x5870
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 3
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x13b0
	.uleb128 0x1e
	.byte	0x1
	.string	"VL53L1_set_dynamic_config"
	.byte	0x1
	.uahalf	0x493
	.byte	0x1
	.uaword	0x3b2
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5079
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x494
	.uaword	0x42ea
	.uaword	.LLST48
	.uleb128 0x1f
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x495
	.uaword	0x4fbf
	.uaword	.LLST49
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x49c
	.uaword	0x3b2
	.uaword	.LLST50
	.uleb128 0x23
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x49d
	.uaword	0x5079
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1d
	.uaword	.LVL103
	.uaword	0x4f19
	.uaword	0x5057
	.uleb128 0x19
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x42
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0
	.uleb128 0x18
	.uaword	.LVL104
	.uaword	0x58d9
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x42
	.uleb128 0x19
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x71
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xb
	.uaword	0x1bd
	.uaword	0x5089
	.uleb128 0xc
	.uaword	0x2a1
	.byte	0x11
	.byte	0
	.uleb128 0x24
	.uaword	0x4302
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x50b9
	.uleb128 0x25
	.uaword	0x4332
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.uaword	0x433e
	.byte	0x1
	.byte	0x54
	.uleb128 0x25
	.uaword	0x434a
	.byte	0x1
	.byte	0x65
	.uleb128 0x26
	.uaword	0x4356
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"VL53L1_set_system_control"
	.byte	0x1
	.uahalf	0x51d
	.byte	0x1
	.uaword	0x3b2
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5185
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x51e
	.uaword	0x42ea
	.uaword	.LLST51
	.uleb128 0x1f
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x51f
	.uaword	0x4363
	.uaword	.LLST52
	.uleb128 0x20
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x526
	.uaword	0x3b2
	.byte	0
	.uleb128 0x23
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x527
	.uaword	0x5185
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x27
	.uaword	0x4302
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x52c
	.uaword	0x5161
	.uleb128 0x28
	.uaword	0x434a
	.uaword	.LLST53
	.uleb128 0x29
	.uaword	0x433e
	.byte	0x5
	.uleb128 0x28
	.uaword	0x4332
	.uaword	.LLST52
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x26
	.uaword	0x4356
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL109
	.byte	0x1
	.uaword	0x58d9
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x35
	.uleb128 0x19
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x83
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0xb
	.uaword	0x1bd
	.uaword	0x5195
	.uleb128 0xc
	.uaword	0x2a1
	.byte	0x4
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"VL53L1_i2c_decode_system_results"
	.byte	0x1
	.uahalf	0x5d3
	.byte	0x1
	.uaword	0x3b2
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x53e4
	.uleb128 0x1f
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x5d4
	.uaword	0x1f9
	.uaword	.LLST55
	.uleb128 0x1f
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x5d5
	.uaword	0x4369
	.uaword	.LLST56
	.uleb128 0x1f
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x5d6
	.uaword	0x53e4
	.uaword	.LLST57
	.uleb128 0x20
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x5dd
	.uaword	0x3b2
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL113
	.uaword	0x58a5
	.uaword	0x5225
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 4
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL114
	.uaword	0x58a5
	.uaword	0x523e
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 6
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL115
	.uaword	0x58a5
	.uaword	0x5257
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 8
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL116
	.uaword	0x58a5
	.uaword	0x5270
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 10
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL117
	.uaword	0x58a5
	.uaword	0x5289
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 12
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL118
	.uaword	0x58a5
	.uaword	0x52a2
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 14
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL119
	.uaword	0x58a5
	.uaword	0x52bb
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 16
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL120
	.uaword	0x58a5
	.uaword	0x52d4
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 18
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL121
	.uaword	0x58a5
	.uaword	0x52ed
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 20
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL122
	.uaword	0x58a5
	.uaword	0x5306
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 22
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL123
	.uaword	0x58a5
	.uaword	0x531f
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 24
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL124
	.uaword	0x58a5
	.uaword	0x5338
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 26
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL125
	.uaword	0x58a5
	.uaword	0x5351
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 28
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL126
	.uaword	0x58a5
	.uaword	0x536a
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 30
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL127
	.uaword	0x58a5
	.uaword	0x5383
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 32
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL128
	.uaword	0x58a5
	.uaword	0x539c
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 34
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL129
	.uaword	0x58a5
	.uaword	0x53b5
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 36
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL130
	.uaword	0x58a5
	.uaword	0x53ce
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 38
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x18
	.uaword	.LVL131
	.uaword	0x58a5
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 40
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x188e
	.uleb128 0x1e
	.byte	0x1
	.string	"VL53L1_get_system_results"
	.byte	0x1
	.uahalf	0x640
	.byte	0x1
	.uaword	0x3b2
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x54a0
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x641
	.uaword	0x42ea
	.uaword	.LLST58
	.uleb128 0x1f
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x642
	.uaword	0x53e4
	.uaword	.LLST59
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x649
	.uaword	0x3b2
	.uaword	.LLST60
	.uleb128 0x23
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x64a
	.uaword	0x54a0
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.uaword	.LVL135
	.uaword	0x590e
	.uaword	0x5483
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x2c
	.uleb128 0x19
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x88
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.uleb128 0x18
	.uaword	.LVL136
	.uaword	0x5195
	.uleb128 0x19
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0xb
	.uaword	0x1bd
	.uaword	0x54b0
	.uleb128 0xc
	.uaword	0x2a1
	.byte	0x2b
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"VL53L1_i2c_decode_core_results"
	.byte	0x1
	.uahalf	0x69d
	.byte	0x1
	.uaword	0x3b2
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x55ea
	.uleb128 0x1f
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x69e
	.uaword	0x1f9
	.uaword	.LLST61
	.uleb128 0x1f
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x69f
	.uaword	0x4369
	.uaword	.LLST62
	.uleb128 0x1f
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x6a0
	.uaword	0x55ea
	.uaword	.LLST63
	.uleb128 0x20
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x6a7
	.uaword	0x3b2
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL139
	.uaword	0x59de
	.uaword	0x553e
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL140
	.uaword	0x59de
	.uaword	0x5557
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 4
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL141
	.uaword	0x5a13
	.uaword	0x5570
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 8
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL142
	.uaword	0x59de
	.uaword	0x5589
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 12
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL143
	.uaword	0x59de
	.uaword	0x55a2
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 16
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL144
	.uaword	0x59de
	.uaword	0x55bb
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 20
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL145
	.uaword	0x5a13
	.uaword	0x55d4
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 24
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x18
	.uaword	.LVL146
	.uaword	0x59de
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 28
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x1a50
	.uleb128 0x1e
	.byte	0x1
	.string	"VL53L1_i2c_decode_debug_results"
	.byte	0x1
	.uahalf	0x791
	.byte	0x1
	.uaword	0x3b2
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5712
	.uleb128 0x1f
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x792
	.uaword	0x1f9
	.uaword	.LLST64
	.uleb128 0x1f
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x793
	.uaword	0x4369
	.uaword	.LLST65
	.uleb128 0x1f
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x794
	.uaword	0x5712
	.uaword	.LLST66
	.uleb128 0x20
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x79b
	.uaword	0x3b2
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL150
	.uaword	0x58a5
	.uaword	0x567f
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL151
	.uaword	0x58a5
	.uaword	0x5698
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 8
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL152
	.uaword	0x58a5
	.uaword	0x56b1
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 18
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL153
	.uaword	0x58a5
	.uaword	0x56ca
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 22
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL154
	.uaword	0x58a5
	.uaword	0x56e3
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 24
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL155
	.uaword	0x59de
	.uaword	0x56fc
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 46
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.uleb128 0x18
	.uaword	.LVL156
	.uaword	0x59de
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 50
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x20a3
	.uleb128 0x1e
	.byte	0x1
	.string	"VL53L1_i2c_decode_nvm_copy_data"
	.byte	0x1
	.uahalf	0x8c5
	.byte	0x1
	.uaword	0x3b2
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x57a4
	.uleb128 0x1f
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x8c6
	.uaword	0x1f9
	.uaword	.LLST67
	.uleb128 0x1f
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x8c7
	.uaword	0x4369
	.uaword	.LLST68
	.uleb128 0x1f
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x8c8
	.uaword	0x57a4
	.uaword	.LLST69
	.uleb128 0x20
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x8cf
	.uaword	0x3b2
	.byte	0
	.uleb128 0x18
	.uaword	.LVL161
	.uaword	0x58a5
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 3
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x2874
	.uleb128 0x1e
	.byte	0x1
	.string	"VL53L1_get_nvm_copy_data"
	.byte	0x1
	.uahalf	0x965
	.byte	0x1
	.uaword	0x3b2
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5860
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x966
	.uaword	0x42ea
	.uaword	.LLST70
	.uleb128 0x1f
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x967
	.uaword	0x57a4
	.uaword	.LLST71
	.uleb128 0x22
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x96e
	.uaword	0x3b2
	.uaword	.LLST72
	.uleb128 0x23
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x96f
	.uaword	0x5860
	.byte	0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x1d
	.uaword	.LVL165
	.uaword	0x590e
	.uaword	0x5843
	.uleb128 0x19
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x31
	.uleb128 0x19
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x10f
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.uleb128 0x18
	.uaword	.LVL166
	.uaword	0x5718
	.uleb128 0x19
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x19
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x19
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xb
	.uaword	0x1bd
	.uaword	0x5870
	.uleb128 0xc
	.uaword	0x2a1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"VL53L1_i2c_encode_uint16_t"
	.byte	0xa
	.byte	0xbb
	.byte	0x1
	.byte	0x1
	.uaword	0x58a5
	.uleb128 0x2d
	.uaword	0x1f9
	.uleb128 0x2d
	.uaword	0x1f9
	.uleb128 0x2d
	.uaword	0x4369
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"VL53L1_i2c_decode_uint16_t"
	.byte	0xa
	.byte	0xcc
	.byte	0x1
	.uaword	0x1f9
	.byte	0x1
	.uaword	0x58d9
	.uleb128 0x2d
	.uaword	0x1f9
	.uleb128 0x2d
	.uaword	0x4369
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"VL53L1_WriteMulti"
	.byte	0xb
	.byte	0x58
	.byte	0x1
	.uaword	0x3b2
	.byte	0x1
	.uaword	0x590e
	.uleb128 0x2d
	.uaword	0x42fc
	.uleb128 0x2d
	.uaword	0x1f9
	.uleb128 0x2d
	.uaword	0x4369
	.uleb128 0x2d
	.uaword	0x23a
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"VL53L1_ReadMulti"
	.byte	0xb
	.byte	0x5e
	.byte	0x1
	.uaword	0x3b2
	.byte	0x1
	.uaword	0x5942
	.uleb128 0x2d
	.uaword	0x42fc
	.uleb128 0x2d
	.uaword	0x1f9
	.uleb128 0x2d
	.uaword	0x4369
	.uleb128 0x2d
	.uaword	0x23a
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"VL53L1_i2c_encode_int16_t"
	.byte	0xa
	.byte	0xdb
	.byte	0x1
	.byte	0x1
	.uaword	0x5976
	.uleb128 0x2d
	.uaword	0x1dd
	.uleb128 0x2d
	.uaword	0x1f9
	.uleb128 0x2d
	.uaword	0x4369
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"VL53L1_i2c_decode_int16_t"
	.byte	0xa
	.byte	0xec
	.byte	0x1
	.uaword	0x1dd
	.byte	0x1
	.uaword	0x59a9
	.uleb128 0x2d
	.uaword	0x1f9
	.uleb128 0x2d
	.uaword	0x4369
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"VL53L1_i2c_encode_uint32_t"
	.byte	0xa
	.byte	0xfb
	.byte	0x1
	.byte	0x1
	.uaword	0x59de
	.uleb128 0x2d
	.uaword	0x23a
	.uleb128 0x2d
	.uaword	0x1f9
	.uleb128 0x2d
	.uaword	0x4369
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"VL53L1_i2c_decode_uint32_t"
	.byte	0xa
	.uahalf	0x10c
	.byte	0x1
	.uaword	0x23a
	.byte	0x1
	.uaword	0x5a13
	.uleb128 0x2d
	.uaword	0x1f9
	.uleb128 0x2d
	.uaword	0x4369
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"VL53L1_i2c_decode_int32_t"
	.byte	0xa
	.uahalf	0x142
	.byte	0x1
	.uaword	0x21f
	.byte	0x1
	.uleb128 0x2d
	.uaword	0x1f9
	.uleb128 0x2d
	.uaword	0x4369
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL4
	.uaword	.LFE0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LFE0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL3-1
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL4
	.uaword	.LFE0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LFE1
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL9
	.uaword	.LFE1
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL5
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL8-1
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL9
	.uaword	.LFE1
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL11
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL12
	.uaword	.LVL13-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL13-1
	.uaword	.LFE2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL14
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL15
	.uaword	.LVL17-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL17-1
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL16
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL18
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL21
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL29
	.uaword	.LFE4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20
	.uaword	.LFE4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL19
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL22-1
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL29
	.uaword	.LFE4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL31
	.uaword	.LFE5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL32
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL40
	.uaword	.LFE5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL30
	.uaword	.LVL33-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL33-1
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL40
	.uaword	.LFE5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL42
	.uaword	.LFE6
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL43
	.uaword	.LVL44-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL44-1
	.uaword	.LFE6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL41
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL45-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL45
	.uaword	.LFE6
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL46
	.uaword	.LVL48-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL48-1
	.uaword	.LFE7
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL47
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL49
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL50
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL52
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL55
	.uaword	.LFE8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL51
	.uaword	.LFE8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL50
	.uaword	.LVL53-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL53-1
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL55
	.uaword	.LFE8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL57
	.uaword	.LFE9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL56
	.uaword	.LVL58-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL58-1
	.uaword	.LFE9
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL56
	.uaword	.LVL58-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL58-1
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL60
	.uaword	.LFE9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL62
	.uaword	.LFE10
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL61
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL63
	.uaword	.LVL64-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL64-1
	.uaword	.LFE10
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL61
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LVL65-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL65
	.uaword	.LFE10
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL66
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL68
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL73
	.uaword	.LFE11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL67
	.uaword	.LFE11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL66
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL69-1
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL73
	.uaword	.LFE11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL75
	.uaword	.LFE12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL74
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL76
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL81
	.uaword	.LFE12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL74
	.uaword	.LVL77-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL77-1
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL81
	.uaword	.LFE12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL83
	.uaword	.LFE13
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL82
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL84
	.uaword	.LVL85-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL85-1
	.uaword	.LFE13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL82
	.uaword	.LVL85
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LVL86-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL86
	.uaword	.LFE13
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL87
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL89
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL93
	.uaword	.LFE14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL88
	.uaword	.LFE14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL87
	.uaword	.LVL90-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL90-1
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL93
	.uaword	.LFE14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL94
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL96
	.uaword	.LVL99
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL99
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL94
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL95
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL94
	.uaword	.LVL97-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL97-1
	.uaword	.LVL99
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL99
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL101
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL100
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL102
	.uaword	.LVL103-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL103-1
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL100
	.uaword	.LVL103
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL104-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL104
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL106
	.uaword	.LVL109-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL109-1
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL106
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL108
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x3
	.byte	0x91
	.sleb128 -5
	.byte	0x9f
	.uaword	.LVL108
	.uaword	.LVL109-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL109-1
	.uaword	.LFE18
	.uahalf	0x3
	.byte	0x91
	.sleb128 -5
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL111
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL110
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL112
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL132
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL110
	.uaword	.LVL113-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL113-1
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL132
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL133
	.uaword	.LVL135-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL135-1
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL133
	.uaword	.LVL134
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL134
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL133
	.uaword	.LVL135
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL135
	.uaword	.LVL136-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL136
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL137
	.uaword	.LVL138
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL138
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL137
	.uaword	.LVL139-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL139-1
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL137
	.uaword	.LVL139-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL139-1
	.uaword	.LVL147
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL147
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL148
	.uaword	.LVL149
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL149
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL148
	.uaword	.LVL150-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL150-1
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL148
	.uaword	.LVL150-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL150-1
	.uaword	.LVL157
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL157
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL158
	.uaword	.LVL159
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL159
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL158
	.uaword	.LVL160
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL160
	.uaword	.LVL162
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL162
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL158
	.uaword	.LVL161-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL161-1
	.uaword	.LVL162
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL162
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL163
	.uaword	.LVL165-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL165-1
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL163
	.uaword	.LVL164
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL164
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL163
	.uaword	.LVL165
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL165
	.uaword	.LVL166-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL166
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0xdc
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	.LBB9
	.uaword	.LBE9
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB11
	.uaword	.LBE11
	.uaword	0
	.uaword	0
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF17:
	.string	"phasecal_config_timeout_us"
.LASF11:
	.string	"median_range_mm"
.LASF12:
	.string	"cfg_device_state"
.LASF16:
	.string	"cal_distance_mm"
.LASF24:
	.string	"comms_buffer"
.LASF9:
	.string	"y_centre"
.LASF2:
	.string	"algo__crosstalk_compensation_y_plane_gradient_kcps"
.LASF23:
	.string	"status"
.LASF20:
	.string	"pdata"
.LASF21:
	.string	"buf_size"
.LASF15:
	.string	"peak_rate_mcps"
.LASF13:
	.string	"rd_device_state"
.LASF8:
	.string	"x_centre"
.LASF5:
	.string	"dss_config__manual_effective_spads_select"
.LASF7:
	.string	"timeout_us"
.LASF19:
	.string	"mm_config_timeout_us"
.LASF1:
	.string	"algo__crosstalk_compensation_x_plane_gradient_kcps"
.LASF22:
	.string	"pbuffer"
.LASF10:
	.string	"sigma_mm"
.LASF3:
	.string	"dss_config__target_total_rate_mcps"
.LASF6:
	.string	"vcsel_period"
.LASF14:
	.string	"preset_mode"
.LASF18:
	.string	"range_config_timeout_us"
.LASF4:
	.string	"dss_config__roi_mode_control"
.LASF0:
	.string	"algo__crosstalk_compensation_plane_offset_kcps"
	.extern	VL53L1_i2c_decode_int32_t,STT_FUNC,0
	.extern	VL53L1_i2c_decode_uint32_t,STT_FUNC,0
	.extern	VL53L1_i2c_encode_uint32_t,STT_FUNC,0
	.extern	VL53L1_i2c_decode_int16_t,STT_FUNC,0
	.extern	VL53L1_i2c_encode_int16_t,STT_FUNC,0
	.extern	VL53L1_ReadMulti,STT_FUNC,0
	.extern	VL53L1_WriteMulti,STT_FUNC,0
	.extern	VL53L1_i2c_decode_uint16_t,STT_FUNC,0
	.extern	VL53L1_i2c_encode_uint16_t,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
