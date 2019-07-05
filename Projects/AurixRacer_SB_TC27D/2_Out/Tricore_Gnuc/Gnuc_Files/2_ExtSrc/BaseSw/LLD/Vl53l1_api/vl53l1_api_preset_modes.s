	.file	"vl53l1_api_preset_modes.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.VL53L1_init_refspadchar_config_struct,"ax",@progbits
	.align 1
	.global	VL53L1_init_refspadchar_config_struct
	.type	VL53L1_init_refspadchar_config_struct, @function
VL53L1_init_refspadchar_config_struct:
.LFB0:
	.file 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_preset_modes.c"
	.loc 1 89 0
.LVL0:
	.loc 1 107 0
	mov	%d15, 8
	.loc 1 123 0
	mov	%d2, 0
	.loc 1 107 0
	st.b	[%a4]0, %d15
	.loc 1 109 0
	mov	%d15, 11
	st.b	[%a4] 1, %d15
	.loc 1 111 0
	mov	%d15, 1000
	st.w	[%a4] 4, %d15
	.loc 1 113 0
	mov	%d15, 2560
	st.h	[%a4] 8, %d15
	.loc 1 115 0
	mov	%d15, 1280
	st.h	[%a4] 10, %d15
	.loc 1 117 0
	mov	%d15, 5120
	st.h	[%a4] 12, %d15
	.loc 1 123 0
	ret
.LFE0:
	.size	VL53L1_init_refspadchar_config_struct, .-VL53L1_init_refspadchar_config_struct
.section .text.VL53L1_init_ssc_config_struct,"ax",@progbits
	.align 1
	.global	VL53L1_init_ssc_config_struct
	.type	VL53L1_init_ssc_config_struct, @function
VL53L1_init_ssc_config_struct:
.LFB1:
	.loc 1 130 0
.LVL1:
	.loc 1 144 0
	mov	%d15, 0
	.loc 1 170 0
	mov	%d2, 0
	.loc 1 144 0
	st.b	[%a4]0, %d15
	.loc 1 147 0
	mov	%d15, 18
	st.b	[%a4] 1, %d15
	.loc 1 151 0
	mov	%d15, 15
	st.b	[%a4] 2, %d15
	.loc 1 155 0
	mov	%d15, 2
	st.b	[%a4] 3, %d15
	.loc 1 158 0
	mov.u	%d15, 36000
	st.w	[%a4] 4, %d15
	.loc 1 164 0
	mov	%d15, 12
	st.h	[%a4] 8, %d15
	.loc 1 170 0
	ret
.LFE1:
	.size	VL53L1_init_ssc_config_struct, .-VL53L1_init_ssc_config_struct
.section .text.VL53L1_init_xtalk_config_struct,"ax",@progbits
	.align 1
	.global	VL53L1_init_xtalk_config_struct
	.type	VL53L1_init_xtalk_config_struct, @function
VL53L1_init_xtalk_config_struct:
.LFB2:
	.loc 1 177 0
.LVL2:
	.loc 1 215 0
	mov	%d15, 0
	.loc 1 220 0
	mov	%d2, 64
	.loc 1 199 0
	ld.hu	%d4, [%a4] 10
	.loc 1 202 0
	ld.h	%d5, [%a4] 12
	.loc 1 204 0
	ld.h	%d6, [%a4] 14
	.loc 1 199 0
	st.w	[%a5]0, %d4
	.loc 1 201 0
	st.h	[%a5] 4, %d5
	.loc 1 203 0
	st.h	[%a5] 6, %d6
	.loc 1 208 0
	st.w	[%a5] 8, %d4
	.loc 1 210 0
	st.h	[%a5] 12, %d5
	.loc 1 212 0
	st.h	[%a5] 14, %d6
	.loc 1 215 0
	st.h	[%a5] 18, %d15
	.loc 1 220 0
	st.b	[%a5] 20, %d2
	.loc 1 223 0
	jnz	%d4, .L4
	.loc 1 225 0
	ld.w	%d2, [%a5] 4
	jz	%d2, .L7
.L4:
	.loc 1 228 0
	mov	%d15, 1
	.loc 1 234 0
	mov	%d7, 64
	mov.aa	%a15, %a5
	.loc 1 228 0
	st.b	[%a5] 16, %d15
	.loc 1 234 0
	call	VL53L1_calc_range_ignore_threshold
.LVL3:
	.loc 1 233 0
	st.h	[%a15] 22, %d2
	.loc 1 246 0
	mov	%d2, 0
	ret
.LVL4:
.L7:
	.loc 1 240 0
	st.h	[%a5] 22, %d2
	.loc 1 226 0
	st.b	[%a5] 16, %d15
	.loc 1 246 0
	mov	%d2, 0
	ret
.LFE2:
	.size	VL53L1_init_xtalk_config_struct, .-VL53L1_init_xtalk_config_struct
.section .text.VL53L1_init_offset_cal_config_struct,"ax",@progbits
	.align 1
	.global	VL53L1_init_offset_cal_config_struct
	.type	VL53L1_init_offset_cal_config_struct, @function
VL53L1_init_offset_cal_config_struct:
.LFB3:
	.loc 1 251 0
.LVL5:
	.loc 1 263 0
	mov	%d15, 2560
	.loc 1 288 0
	mov	%d2, 0
	.loc 1 263 0
	st.h	[%a4]0, %d15
	.loc 1 266 0
	mov	%d15, 1000
	st.w	[%a4] 4, %d15
	.loc 1 269 0
	mov	%d15, 13000
	st.w	[%a4] 8, %d15
	.loc 1 272 0
	st.w	[%a4] 12, %d15
	.loc 1 278 0
	mov	%d15, 8
	st.b	[%a4] 16, %d15
	.loc 1 280 0
	mov	%d15, 40
	st.b	[%a4] 17, %d15
	.loc 1 282 0
	mov	%d15, 9
	st.b	[%a4] 18, %d15
	.loc 1 288 0
	ret
.LFE3:
	.size	VL53L1_init_offset_cal_config_struct, .-VL53L1_init_offset_cal_config_struct
.section .text.VL53L1_init_tuning_parm_storage_struct,"ax",@progbits
	.align 1
	.global	VL53L1_init_tuning_parm_storage_struct
	.type	VL53L1_init_tuning_parm_storage_struct, @function
VL53L1_init_tuning_parm_storage_struct:
.LFB4:
	.loc 1 293 0
.LVL6:
	.loc 1 308 0
	mov	%d15, -32765
	.loc 1 314 0
	mov	%d3, 14
	.loc 1 316 0
	mov	%d2, 10
	.loc 1 308 0
	st.h	[%a4]0, %d15
	.loc 1 310 0
	mov	%d15, -32767
	.loc 1 314 0
	st.b	[%a4] 6, %d3
	.loc 1 316 0
	st.b	[%a4] 7, %d2
	.loc 1 310 0
	st.h	[%a4] 2, %d15
	.loc 1 312 0
	mov	%d15, -32703
	.loc 1 320 0
	st.b	[%a4] 9, %d3
	.loc 1 322 0
	st.b	[%a4] 10, %d2
	.loc 1 312 0
	st.h	[%a4] 4, %d15
	.loc 1 318 0
	mov	%d15, 6
	.loc 1 326 0
	mov	%d3, 2
	.loc 1 330 0
	mov	%d2, 0
	.loc 1 318 0
	st.b	[%a4] 8, %d15
	.loc 1 324 0
	st.b	[%a4] 11, %d15
	.loc 1 328 0
	mov	%d15, 33
	.loc 1 330 0
	st.h	[%a4] 14, %d2
	.loc 1 332 0
	st.b	[%a4] 16, %d2
	.loc 1 328 0
	st.b	[%a4] 13, %d15
	.loc 1 334 0
	mov	%d15, 360
	.loc 1 358 0
	st.b	[%a4] 36, %d2
	.loc 1 326 0
	st.b	[%a4] 12, %d3
	.loc 1 334 0
	st.h	[%a4] 18, %d15
	.loc 1 336 0
	st.h	[%a4] 20, %d15
	.loc 1 338 0
	st.h	[%a4] 22, %d15
	.loc 1 340 0
	mov	%d15, 192
	.loc 1 352 0
	st.b	[%a4] 33, %d3
	.loc 1 356 0
	st.b	[%a4] 35, %d3
	.loc 1 340 0
	st.h	[%a4] 24, %d15
	.loc 1 342 0
	st.h	[%a4] 26, %d15
	.loc 1 344 0
	st.h	[%a4] 28, %d15
	.loc 1 346 0
	mov	%d15, 8
	.loc 1 392 0
	mov	%d2, 0
	.loc 1 346 0
	st.b	[%a4] 30, %d15
	.loc 1 348 0
	mov	%d15, 16
	st.b	[%a4] 31, %d15
	.loc 1 350 0
	mov	%d15, 1
	st.b	[%a4] 32, %d15
	.loc 1 354 0
	st.b	[%a4] 34, %d15
	.loc 1 364 0
	mov	%d15, 2560
	st.h	[%a4] 38, %d15
	.loc 1 366 0
	st.h	[%a4] 40, %d15
	.loc 1 368 0
	mov.u	%d15, 32816
	st.w	[%a4] 44, %d15
	.loc 1 370 0
	mov	%d15, 1000
	st.w	[%a4] 48, %d15
	.loc 1 372 0
	mov	%d15, 2000
	st.w	[%a4] 52, %d15
	.loc 1 374 0
	st.w	[%a4] 56, %d15
	.loc 1 376 0
	mov.u	%d15, 63000
	st.w	[%a4] 64, %d15
	.loc 1 378 0
	mov	%d15, 13000
	st.w	[%a4] 68, %d15
	.loc 1 383 0
	mov	%d15, 1
	st.w	[%a4] 60, %d15
	.loc 1 385 0
	mov	%d15, 8000
	st.w	[%a4] 72, %d15
	.loc 1 392 0
	ret
.LFE4:
	.size	VL53L1_init_tuning_parm_storage_struct, .-VL53L1_init_tuning_parm_storage_struct
.section .text.VL53L1_preset_mode_standard_ranging,"ax",@progbits
	.align 1
	.global	VL53L1_preset_mode_standard_ranging
	.type	VL53L1_preset_mode_standard_ranging, @function
VL53L1_preset_mode_standard_ranging:
.LFB5:
	.loc 1 402 0
.LVL7:
	.loc 1 421 0
	mov	%d15, 2560
	.loc 1 448 0
	mov	%d3, 2
	.loc 1 451 0
	mov	%d6, 8
	.loc 1 421 0
	st.h	[%a4]0, %d15
	.loc 1 444 0
	mov	%d2, 17
	.loc 1 422 0
	mov	%d15, 0
	.loc 1 402 0
	ld.a	%a15, [%SP] 4
	.loc 1 451 0
	st.b	[%a4] 16, %d6
	.loc 1 422 0
	st.b	[%a4] 2, %d15
	.loc 1 423 0
	st.b	[%a4] 3, %d15
	.loc 1 424 0
	st.b	[%a4] 4, %d15
	.loc 1 425 0
	st.b	[%a4] 5, %d15
	.loc 1 426 0
	st.b	[%a4] 6, %d15
	.loc 1 427 0
	st.b	[%a4] 7, %d15
	.loc 1 428 0
	st.b	[%a4] 8, %d15
	.loc 1 429 0
	st.b	[%a4] 9, %d15
	.loc 1 430 0
	st.b	[%a4] 10, %d15
	.loc 1 436 0
	st.b	[%a4] 11, %d15
	.loc 1 449 0
	st.b	[%a4] 14, %d15
	.loc 1 452 0
	st.b	[%a4] 17, %d15
	.loc 1 444 0
	st.b	[%a4] 12, %d2
	.loc 1 448 0
	st.b	[%a4] 13, %d3
	.loc 1 450 0
	st.b	[%a4] 15, %d3
	.loc 1 455 0
	ld.bu	%d2, [%a15] 30
	.loc 1 454 0
	st.b	[%a4] 18, %d2
	.loc 1 457 0
	ld.bu	%d2, [%a15] 31
	.loc 1 456 0
	st.b	[%a4] 19, %d2
	.loc 1 459 0
	ld.bu	%d2, [%a15] 32
	.loc 1 458 0
	st.b	[%a4] 20, %d2
	.loc 1 462 0
	st.b	[%a4] 22, %d15
	.loc 1 461 0
	mov	%d2, 1
	.loc 1 463 0
	st.b	[%a4] 23, %d15
	.loc 1 468 0
	mov	%d4, -1
	.loc 1 465 0
	mov	%d15, 0
	.loc 1 461 0
	st.b	[%a4] 21, %d2
	.loc 1 468 0
	st.b	[%a4] 26, %d4
	.loc 1 465 0
	st.h	[%a4] 24, %d15
	.loc 1 470 0
	ld.bu	%d5, [%a15] 16
	.loc 1 469 0
	st.b	[%a4] 27, %d5
	.loc 1 477 0
	ld.bu	%d5, [%a15] 12
	.loc 1 402 0
	ld.a	%a2, [%SP]0
	.loc 1 484 0
	mov	%d7, 32
	.loc 1 476 0
	st.b	[%a4] 28, %d5
	.loc 1 486 0
	mov	%d5, 11
	.loc 1 478 0
	st.b	[%a4] 29, %d15
	.loc 1 479 0
	st.b	[%a4] 30, %d15
	.loc 1 480 0
	st.b	[%a4] 31, %d15
	.loc 1 482 0
	st.b	[%a5]0, %d15
	.loc 1 483 0
	st.b	[%a5] 1, %d15
	.loc 1 484 0
	st.b	[%a5] 2, %d7
	.loc 1 486 0
	st.b	[%a5] 3, %d5
	.loc 1 494 0
	ld.h	%d0, [%a15] 14
	st.h	[%a5] 4, %d0
	.loc 1 498 0
	mov	%d0, 13
	.loc 1 496 0
	st.b	[%a5] 6, %d3
	.loc 1 498 0
	st.b	[%a5] 7, %d0
	.loc 1 501 0
	ld.bu	%d0, [%a15] 13
	.loc 1 500 0
	st.b	[%a5] 8, %d0
	.loc 1 509 0
	mov	%d0, -29696
	.loc 1 502 0
	st.b	[%a5] 9, %d15
	.loc 1 503 0
	st.b	[%a5] 10, %d2
	.loc 1 509 0
	st.h	[%a5] 16, %d0
	.loc 1 518 0
	mov	%d0, 56
	.loc 1 510 0
	st.b	[%a5] 18, %d15
	.loc 1 519 0
	st.b	[%a5] 20, %d4
	.loc 1 518 0
	st.b	[%a5] 19, %d0
	.loc 1 520 0
	st.b	[%a5] 21, %d2
	.loc 1 506 0
	st.h	[%a5] 12, %d15
	.loc 1 507 0
	st.h	[%a5] 14, %d15
	.loc 1 528 0
	st.b	[%a6] 3, %d7
	.loc 1 531 0
	mov	%d7, -52
	.loc 1 526 0
	mov	%d0, 26
	.loc 1 525 0
	st.b	[%a6]0, %d15
	.loc 1 531 0
	st.b	[%a6] 5, %d7
	.loc 1 536 0
	mov	%d7, -11
	.loc 1 527 0
	st.b	[%a6] 2, %d15
	.loc 1 530 0
	st.b	[%a6] 4, %d2
	.loc 1 536 0
	st.b	[%a6] 8, %d7
	.loc 1 538 0
	mov	%d7, 9
	.loc 1 533 0
	st.b	[%a6] 6, %d5
	.loc 1 535 0
	st.b	[%a6] 7, %d2
	.loc 1 526 0
	st.b	[%a6] 1, %d0
	.loc 1 538 0
	st.b	[%a6] 9, %d7
	.loc 1 545 0
	ld.h	%d0, [%a15] 20
	st.h	[%a6] 10, %d0
	.loc 1 552 0
	ld.h	%d0, [%a15] 26
	.loc 1 559 0
	st.b	[%a6] 14, %d6
	.loc 1 560 0
	mov	%d6, 120
	.loc 1 562 0
	st.b	[%a6] 20, %d15
	.loc 1 552 0
	st.h	[%a6] 12, %d0
	.loc 1 560 0
	st.b	[%a6] 15, %d6
	.loc 1 561 0
	mov	%d6, 0
	st.w	[%a6] 16, %d6
	.loc 1 566 0
	st.b	[%a7]0, %d2
	.loc 1 570 0
	st.b	[%a7] 6, %d15
	.loc 1 568 0
	st.h	[%a7] 2, %d6
	.loc 1 569 0
	st.h	[%a7] 4, %d6
	.loc 1 572 0
	ld.bu	%d6, [%a15] 33
	.loc 1 571 0
	st.b	[%a7] 7, %d6
	.loc 1 575 0
	st.b	[%a7] 8, %d5
	.loc 1 577 0
	st.b	[%a7] 9, %d7
	.loc 1 580 0
	ld.bu	%d5, [%a15] 7
	.loc 1 579 0
	st.b	[%a7] 10, %d5
	.loc 1 582 0
	ld.bu	%d5, [%a15] 10
	.loc 1 581 0
	st.b	[%a7] 11, %d5
	.loc 1 584 0
	st.b	[%a7] 12, %d2
	.loc 1 613 0
	ld.bu	%d5, [%a15] 36
	.loc 1 612 0
	st.b	[%a7] 13, %d5
	.loc 1 615 0
	ld.bu	%d5, [%a15] 35
	.loc 1 614 0
	st.b	[%a7] 14, %d5
	.loc 1 623 0
	st.b	[%a7] 16, %d4
	.loc 1 621 0
	mov	%d5, -57
	.loc 1 626 0
	mov	%d4, -37
	.loc 1 634 0
	st.b	[%a7] 18, %d3
	.loc 1 621 0
	st.b	[%a7] 15, %d5
	.loc 1 626 0
	st.b	[%a7] 17, %d4
	.loc 1 639 0
	st.b	[%a2] 1, %d15
	.loc 1 644 0
	mov	%d15, 33
	.loc 1 640 0
	st.b	[%a2] 2, %d2
	.loc 1 641 0
	st.b	[%a2] 3, %d2
	.loc 1 644 0
	st.b	[%a2] 4, %d15
	.loc 1 652 0
	mov	%d2, 0
	ret
.LFE5:
	.size	VL53L1_preset_mode_standard_ranging, .-VL53L1_preset_mode_standard_ranging
.section .text.VL53L1_preset_mode_standard_ranging_short_range,"ax",@progbits
	.align 1
	.global	VL53L1_preset_mode_standard_ranging_short_range
	.type	VL53L1_preset_mode_standard_ranging_short_range, @function
VL53L1_preset_mode_standard_ranging_short_range:
.LFB6:
	.loc 1 662 0
.LVL8:
	sub.a	%SP, 8
.LCFI0:
	.loc 1 662 0
	ld.a	%a12, [%SP] 12
	.loc 1 681 0
	ld.w	%d15, [%SP] 8
	st.w	[%SP]0, %d15
	st.a	[%SP] 4, %a12
	.loc 1 662 0
	mov.aa	%a15, %a6
	mov.aa	%a13, %a7
.LVL9:
	.loc 1 681 0
	call	VL53L1_preset_mode_standard_ranging
.LVL10:
	.loc 1 691 0
	jnz	%d2, .L12
.LVL11:
.LBB4:
.LBB5:
	.loc 1 704 0
	mov	%d15, 5
	.loc 1 703 0
	mov	%d3, 7
	.loc 1 704 0
	st.b	[%a15] 9, %d15
	.loc 1 703 0
	st.b	[%a15] 6, %d3
	.loc 1 705 0
	ld.h	%d4, [%a12] 22
	st.h	[%a15] 10, %d4
	.loc 1 707 0
	ld.h	%d4, [%a12] 28
	st.h	[%a15] 12, %d4
	.loc 1 709 0
	mov	%d4, 8
	st.b	[%a15] 14, %d4
	.loc 1 710 0
	mov	%d4, 56
	st.b	[%a15] 15, %d4
	.loc 1 717 0
	st.b	[%a13] 8, %d3
	.loc 1 718 0
	st.b	[%a13] 9, %d15
	.loc 1 720 0
	ld.bu	%d15, [%a12] 8
	.loc 1 719 0
	st.b	[%a13] 10, %d15
	.loc 1 722 0
	ld.bu	%d15, [%a12] 11
	.loc 1 721 0
	st.b	[%a13] 11, %d15
.LVL12:
.L12:
.LBE5:
.LBE4:
	.loc 1 728 0
	ret
.LFE6:
	.size	VL53L1_preset_mode_standard_ranging_short_range, .-VL53L1_preset_mode_standard_ranging_short_range
.section .text.VL53L1_preset_mode_standard_ranging_long_range,"ax",@progbits
	.align 1
	.global	VL53L1_preset_mode_standard_ranging_long_range
	.type	VL53L1_preset_mode_standard_ranging_long_range, @function
VL53L1_preset_mode_standard_ranging_long_range:
.LFB7:
	.loc 1 738 0
.LVL13:
	sub.a	%SP, 8
.LCFI1:
	.loc 1 738 0
	ld.a	%a12, [%SP] 12
	.loc 1 757 0
	ld.w	%d15, [%SP] 8
	st.w	[%SP]0, %d15
	st.a	[%SP] 4, %a12
	.loc 1 738 0
	mov.aa	%a15, %a6
	mov.aa	%a13, %a7
.LVL14:
	.loc 1 757 0
	call	VL53L1_preset_mode_standard_ranging
.LVL15:
	.loc 1 767 0
	jnz	%d2, .L14
.LVL16:
.LBB8:
.LBB9:
	.loc 1 780 0
	mov	%d15, 13
	.loc 1 779 0
	mov	%d3, 15
	.loc 1 780 0
	st.b	[%a15] 9, %d15
	.loc 1 779 0
	st.b	[%a15] 6, %d3
	.loc 1 781 0
	ld.h	%d4, [%a12] 18
	st.h	[%a15] 10, %d4
	.loc 1 783 0
	ld.h	%d4, [%a12] 24
	st.h	[%a15] 12, %d4
	.loc 1 785 0
	mov	%d4, 8
	st.b	[%a15] 14, %d4
	.loc 1 786 0
	mov	%d4, -72
	st.b	[%a15] 15, %d4
	.loc 1 793 0
	st.b	[%a13] 8, %d3
	.loc 1 794 0
	st.b	[%a13] 9, %d15
	.loc 1 796 0
	ld.bu	%d15, [%a12] 6
	.loc 1 795 0
	st.b	[%a13] 10, %d15
	.loc 1 798 0
	ld.bu	%d15, [%a12] 9
	.loc 1 797 0
	st.b	[%a13] 11, %d15
.LVL17:
.L14:
.LBE9:
.LBE8:
	.loc 1 804 0
	ret
.LFE7:
	.size	VL53L1_preset_mode_standard_ranging_long_range, .-VL53L1_preset_mode_standard_ranging_long_range
.section .text.VL53L1_preset_mode_standard_ranging_mm1_cal,"ax",@progbits
	.align 1
	.global	VL53L1_preset_mode_standard_ranging_mm1_cal
	.type	VL53L1_preset_mode_standard_ranging_mm1_cal, @function
VL53L1_preset_mode_standard_ranging_mm1_cal:
.LFB8:
	.loc 1 815 0
.LVL18:
	sub.a	%SP, 8
.LCFI2:
	.loc 1 833 0
	ld.w	%d15, [%SP] 8
	st.w	[%SP]0, %d15
	ld.w	%d15, [%SP] 12
	st.w	[%SP] 4, %d15
	.loc 1 815 0
	mov.aa	%a12, %a5
	mov.aa	%a15, %a7
	.loc 1 833 0
	call	VL53L1_preset_mode_standard_ranging
.LVL19:
	.loc 1 843 0
	jnz	%d2, .L16
	.loc 1 845 0
	mov	%d15, 2
	st.b	[%a12] 10, %d15
	.loc 1 848 0
	mov	%d15, 59
	st.b	[%a15] 17, %d15
.L16:
	.loc 1 859 0
	ret
.LFE8:
	.size	VL53L1_preset_mode_standard_ranging_mm1_cal, .-VL53L1_preset_mode_standard_ranging_mm1_cal
.section .text.VL53L1_preset_mode_standard_ranging_mm2_cal,"ax",@progbits
	.align 1
	.global	VL53L1_preset_mode_standard_ranging_mm2_cal
	.type	VL53L1_preset_mode_standard_ranging_mm2_cal, @function
VL53L1_preset_mode_standard_ranging_mm2_cal:
.LFB9:
	.loc 1 869 0
.LVL20:
	sub.a	%SP, 8
.LCFI3:
	.loc 1 887 0
	ld.w	%d15, [%SP] 8
	st.w	[%SP]0, %d15
	ld.w	%d15, [%SP] 12
	st.w	[%SP] 4, %d15
	.loc 1 869 0
	mov.aa	%a12, %a5
	mov.aa	%a15, %a7
	.loc 1 887 0
	call	VL53L1_preset_mode_standard_ranging
.LVL21:
	.loc 1 897 0
	jnz	%d2, .L18
	.loc 1 899 0
	mov	%d15, 2
	st.b	[%a12] 10, %d15
	.loc 1 902 0
	mov	%d15, 91
	st.b	[%a15] 17, %d15
.L18:
	.loc 1 913 0
	ret
.LFE9:
	.size	VL53L1_preset_mode_standard_ranging_mm2_cal, .-VL53L1_preset_mode_standard_ranging_mm2_cal
.section .text.VL53L1_preset_mode_timed_ranging,"ax",@progbits
	.align 1
	.global	VL53L1_preset_mode_timed_ranging
	.type	VL53L1_preset_mode_timed_ranging, @function
VL53L1_preset_mode_timed_ranging:
.LFB10:
	.loc 1 925 0
.LVL22:
	sub.a	%SP, 8
.LCFI4:
	.loc 1 945 0
	ld.w	%d15, [%SP] 8
	st.w	[%SP]0, %d15
	ld.w	%d15, [%SP] 12
	st.w	[%SP] 4, %d15
	.loc 1 925 0
	mov.aa	%a15, %a6
	mov.aa	%a12, %a7
	.loc 1 945 0
	call	VL53L1_preset_mode_standard_ranging
.LVL23:
	.loc 1 955 0
	jnz	%d2, .L20
.LVL24:
.LBB12:
.LBB13:
	.loc 1 964 0
	mov	%d15, -79
	.loc 1 960 0
	st.b	[%a12] 18, %d2
	.loc 1 963 0
	st.b	[%a15] 4, %d2
	.loc 1 964 0
	st.b	[%a15] 5, %d15
	.loc 1 967 0
	mov	%d15, -44
	.loc 1 966 0
	st.b	[%a15] 7, %d2
	.loc 1 967 0
	st.b	[%a15] 8, %d15
	.loc 1 971 0
	mov	%d15, 1536
	st.w	[%a15] 16, %d15
	.loc 1 973 0
	ld.a	%a15, [%SP] 12
.LVL25:
	ld.bu	%d15, [%a15] 34
	.loc 1 972 0
	st.b	[%a12] 7, %d15
	.loc 1 978 0
	ld.a	%a15, [%SP] 8
	mov	%d15, 64
	st.b	[%a15] 4, %d15
.LVL26:
.L20:
.LBE13:
.LBE12:
	.loc 1 987 0
	ret
.LFE10:
	.size	VL53L1_preset_mode_timed_ranging, .-VL53L1_preset_mode_timed_ranging
.section .text.VL53L1_preset_mode_timed_ranging_short_range,"ax",@progbits
	.align 1
	.global	VL53L1_preset_mode_timed_ranging_short_range
	.type	VL53L1_preset_mode_timed_ranging_short_range, @function
VL53L1_preset_mode_timed_ranging_short_range:
.LFB11:
	.loc 1 997 0
.LVL27:
	sub.a	%SP, 8
.LCFI5:
	.loc 1 1017 0
	ld.w	%d15, [%SP] 8
	st.w	[%SP]0, %d15
	ld.w	%d15, [%SP] 12
	st.w	[%SP] 4, %d15
	.loc 1 997 0
	mov.aa	%a15, %a6
	mov.aa	%a12, %a7
	.loc 1 1017 0
	call	VL53L1_preset_mode_standard_ranging_short_range
.LVL28:
	.loc 1 1027 0
	jnz	%d2, .L22
.LVL29:
.LBB16:
.LBB17:
	.loc 1 1038 0
	mov	%d15, 1
	.loc 1 1032 0
	st.b	[%a12] 18, %d2
	.loc 1 1039 0
	mov	%d3, -124
	.loc 1 1038 0
	st.b	[%a15] 4, %d15
	.loc 1 1041 0
	st.b	[%a15] 7, %d15
	.loc 1 1042 0
	mov	%d15, -79
	.loc 1 1039 0
	st.b	[%a15] 5, %d3
	.loc 1 1042 0
	st.b	[%a15] 8, %d15
	.loc 1 1044 0
	mov	%d15, 1536
	st.w	[%a15] 16, %d15
	.loc 1 1046 0
	ld.a	%a15, [%SP] 12
.LVL30:
	ld.bu	%d15, [%a15] 34
	.loc 1 1045 0
	st.b	[%a12] 7, %d15
	.loc 1 1051 0
	ld.a	%a15, [%SP] 8
	mov	%d15, 64
	st.b	[%a15] 4, %d15
.LVL31:
.L22:
.LBE17:
.LBE16:
	.loc 1 1060 0
	ret
.LFE11:
	.size	VL53L1_preset_mode_timed_ranging_short_range, .-VL53L1_preset_mode_timed_ranging_short_range
.section .text.VL53L1_preset_mode_timed_ranging_long_range,"ax",@progbits
	.align 1
	.global	VL53L1_preset_mode_timed_ranging_long_range
	.type	VL53L1_preset_mode_timed_ranging_long_range, @function
VL53L1_preset_mode_timed_ranging_long_range:
.LFB12:
	.loc 1 1070 0
.LVL32:
	sub.a	%SP, 8
.LCFI6:
	.loc 1 1090 0
	ld.w	%d15, [%SP] 8
	st.w	[%SP]0, %d15
	ld.w	%d15, [%SP] 12
	st.w	[%SP] 4, %d15
	.loc 1 1070 0
	mov.aa	%a15, %a6
	mov.aa	%a12, %a7
	.loc 1 1090 0
	call	VL53L1_preset_mode_standard_ranging_long_range
.LVL33:
	.loc 1 1100 0
	jnz	%d2, .L24
.LVL34:
.LBB20:
.LBB21:
	.loc 1 1112 0
	mov	%d15, -105
	.loc 1 1105 0
	st.b	[%a12] 18, %d2
	.loc 1 1111 0
	st.b	[%a15] 4, %d2
	.loc 1 1112 0
	st.b	[%a15] 5, %d15
	.loc 1 1115 0
	mov	%d15, -79
	.loc 1 1114 0
	st.b	[%a15] 7, %d2
	.loc 1 1115 0
	st.b	[%a15] 8, %d15
	.loc 1 1117 0
	mov	%d15, 1536
	st.w	[%a15] 16, %d15
	.loc 1 1119 0
	ld.a	%a15, [%SP] 12
.LVL35:
	ld.bu	%d15, [%a15] 34
	.loc 1 1118 0
	st.b	[%a12] 7, %d15
	.loc 1 1124 0
	ld.a	%a15, [%SP] 8
	mov	%d15, 64
	st.b	[%a15] 4, %d15
.LVL36:
.L24:
.LBE21:
.LBE20:
	.loc 1 1133 0
	ret
.LFE12:
	.size	VL53L1_preset_mode_timed_ranging_long_range, .-VL53L1_preset_mode_timed_ranging_long_range
.section .text.VL53L1_preset_mode_low_power_auto_ranging,"ax",@progbits
	.align 1
	.global	VL53L1_preset_mode_low_power_auto_ranging
	.type	VL53L1_preset_mode_low_power_auto_ranging, @function
VL53L1_preset_mode_low_power_auto_ranging:
.LFB13:
	.loc 1 1145 0
.LVL37:
	sub.a	%SP, 8
.LCFI7:
	.loc 1 1166 0
	ld.w	%d15, [%SP] 8
	st.w	[%SP]0, %d15
	ld.w	%d15, [%SP] 12
	st.w	[%SP] 4, %d15
	.loc 1 1145 0
	mov.aa	%a12, %a5
	mov.aa	%a15, %a7
	ld.a	%a13, [%SP] 16
	.loc 1 1166 0
	call	VL53L1_preset_mode_timed_ranging
.LVL38:
	.loc 1 1176 0
	jz	%d2, .L27
	.loc 1 1187 0
	ret
.L27:
	.loc 1 1177 0
	mov.aa	%a4, %a12
	mov.aa	%a5, %a15
	mov.aa	%a6, %a13
	.loc 1 1187 0
	lea	%SP, [%SP] 8
.LVL39:
	.loc 1 1177 0
	j	VL53L1_config_low_power_auto_mode
.LVL40:
.LFE13:
	.size	VL53L1_preset_mode_low_power_auto_ranging, .-VL53L1_preset_mode_low_power_auto_ranging
.section .text.VL53L1_preset_mode_low_power_auto_short_ranging,"ax",@progbits
	.align 1
	.global	VL53L1_preset_mode_low_power_auto_short_ranging
	.type	VL53L1_preset_mode_low_power_auto_short_ranging, @function
VL53L1_preset_mode_low_power_auto_short_ranging:
.LFB14:
	.loc 1 1198 0
.LVL41:
	sub.a	%SP, 8
.LCFI8:
	.loc 1 1219 0
	ld.w	%d15, [%SP] 8
	st.w	[%SP]0, %d15
	ld.w	%d15, [%SP] 12
	st.w	[%SP] 4, %d15
	.loc 1 1198 0
	mov.aa	%a12, %a5
	mov.aa	%a15, %a7
	ld.a	%a13, [%SP] 16
	.loc 1 1219 0
	call	VL53L1_preset_mode_timed_ranging_short_range
.LVL42:
	.loc 1 1229 0
	jz	%d2, .L30
	.loc 1 1240 0
	ret
.L30:
	.loc 1 1230 0
	mov.aa	%a4, %a12
	mov.aa	%a5, %a15
	mov.aa	%a6, %a13
	.loc 1 1240 0
	lea	%SP, [%SP] 8
.LVL43:
	.loc 1 1230 0
	j	VL53L1_config_low_power_auto_mode
.LVL44:
.LFE14:
	.size	VL53L1_preset_mode_low_power_auto_short_ranging, .-VL53L1_preset_mode_low_power_auto_short_ranging
.section .text.VL53L1_preset_mode_low_power_auto_long_ranging,"ax",@progbits
	.align 1
	.global	VL53L1_preset_mode_low_power_auto_long_ranging
	.type	VL53L1_preset_mode_low_power_auto_long_ranging, @function
VL53L1_preset_mode_low_power_auto_long_ranging:
.LFB15:
	.loc 1 1251 0
.LVL45:
	sub.a	%SP, 8
.LCFI9:
	.loc 1 1272 0
	ld.w	%d15, [%SP] 8
	st.w	[%SP]0, %d15
	ld.w	%d15, [%SP] 12
	st.w	[%SP] 4, %d15
	.loc 1 1251 0
	mov.aa	%a12, %a5
	mov.aa	%a15, %a7
	ld.a	%a13, [%SP] 16
	.loc 1 1272 0
	call	VL53L1_preset_mode_timed_ranging_long_range
.LVL46:
	.loc 1 1282 0
	jz	%d2, .L33
	.loc 1 1293 0
	ret
.L33:
	.loc 1 1283 0
	mov.aa	%a4, %a12
	mov.aa	%a5, %a15
	mov.aa	%a6, %a13
	.loc 1 1293 0
	lea	%SP, [%SP] 8
.LVL47:
	.loc 1 1283 0
	j	VL53L1_config_low_power_auto_mode
.LVL48:
.LFE15:
	.size	VL53L1_preset_mode_low_power_auto_long_ranging, .-VL53L1_preset_mode_low_power_auto_long_ranging
.section .text.VL53L1_preset_mode_singleshot_ranging,"ax",@progbits
	.align 1
	.global	VL53L1_preset_mode_singleshot_ranging
	.type	VL53L1_preset_mode_singleshot_ranging, @function
VL53L1_preset_mode_singleshot_ranging:
.LFB16:
	.loc 1 1305 0
.LVL49:
	sub.a	%SP, 8
.LCFI10:
	.loc 1 1323 0
	ld.w	%d15, [%SP] 8
	st.w	[%SP]0, %d15
	ld.w	%d15, [%SP] 12
	st.w	[%SP] 4, %d15
	.loc 1 1305 0
	mov.aa	%a15, %a6
	mov.aa	%a12, %a7
	.loc 1 1323 0
	call	VL53L1_preset_mode_standard_ranging
.LVL50:
	.loc 1 1333 0
	jnz	%d2, .L35
	.loc 1 1344 0
	mov	%d15, -79
	.loc 1 1338 0
	st.b	[%a12] 18, %d2
	.loc 1 1343 0
	st.b	[%a15] 4, %d2
	.loc 1 1344 0
	st.b	[%a15] 5, %d15
	.loc 1 1347 0
	mov	%d15, -44
	.loc 1 1346 0
	st.b	[%a15] 7, %d2
	.loc 1 1347 0
	st.b	[%a15] 8, %d15
	.loc 1 1350 0
	ld.a	%a15, [%SP] 12
.LVL51:
	ld.bu	%d15, [%a15] 34
	.loc 1 1349 0
	st.b	[%a12] 7, %d15
	.loc 1 1355 0
	ld.a	%a15, [%SP] 8
	mov	%d15, 16
	st.b	[%a15] 4, %d15
.L35:
	.loc 1 1364 0
	ret
.LFE16:
	.size	VL53L1_preset_mode_singleshot_ranging, .-VL53L1_preset_mode_singleshot_ranging
.section .text.VL53L1_preset_mode_olt,"ax",@progbits
	.align 1
	.global	VL53L1_preset_mode_olt
	.type	VL53L1_preset_mode_olt, @function
VL53L1_preset_mode_olt:
.LFB17:
	.loc 1 1374 0
.LVL52:
	sub.a	%SP, 8
.LCFI11:
	.loc 1 1388 0
	ld.w	%d15, [%SP] 8
	st.w	[%SP]0, %d15
	ld.w	%d15, [%SP] 12
	st.w	[%SP] 4, %d15
	call	VL53L1_preset_mode_standard_ranging
.LVL53:
	.loc 1 1398 0
	jnz	%d2, .L37
	.loc 1 1401 0
	mov	%d15, 1
	ld.a	%a15, [%SP] 8
	st.b	[%a15] 1, %d15
.L37:
	.loc 1 1407 0
	ret
.LFE17:
	.size	VL53L1_preset_mode_olt, .-VL53L1_preset_mode_olt
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
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
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
	.uaword	.LCFI0-.LFB6
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.byte	0x4
	.uaword	.LCFI1-.LFB7
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.byte	0x4
	.uaword	.LCFI2-.LFB8
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.byte	0x4
	.uaword	.LCFI3-.LFB9
	.byte	0xe
	.uleb128 0x8
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
	.uleb128 0x8
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.byte	0x4
	.uaword	.LCFI5-.LFB11
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.byte	0x4
	.uaword	.LCFI6-.LFB12
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB13
	.uaword	.LFE13-.LFB13
	.byte	0x4
	.uaword	.LCFI7-.LFB13
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.byte	0x4
	.uaword	.LCFI8-.LFB14
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.byte	0x4
	.uaword	.LCFI9-.LFB15
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.byte	0x4
	.uaword	.LCFI10-.LFB16
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.byte	0x4
	.uaword	.LCFI11-.LFB17
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE34:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdint.h"
	.file 3 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_device.h"
	.file 4 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_error_codes.h"
	.file 5 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
	.file 6 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h"
	.file 7 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x2e95
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_preset_modes.c"
	.string	"D:\\\\MinKyu_AurixRacer\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"int8_t"
	.byte	0x2
	.byte	0x29
	.uaword	0x1b0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.string	"uint8_t"
	.byte	0x2
	.byte	0x2a
	.uaword	0x1ce
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.string	"int16_t"
	.byte	0x2
	.byte	0x35
	.uaword	0x1ee
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.string	"uint16_t"
	.byte	0x2
	.byte	0x36
	.uaword	0x20b
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.string	"uint32_t"
	.byte	0x2
	.byte	0x50
	.uaword	0x23d
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
	.string	"VL53L1_DeviceMeasurementModes"
	.byte	0x3
	.byte	0x96
	.uaword	0x1bf
	.uleb128 0x2
	.string	"VL53L1_DeviceInterruptPolarity"
	.byte	0x3
	.byte	0xd9
	.uaword	0x1bf
	.uleb128 0x2
	.string	"VL53L1_DeviceGpioMode"
	.byte	0x3
	.byte	0xe8
	.uaword	0x1bf
	.uleb128 0x4
	.string	"VL53L1_DeviceDssMode"
	.byte	0x3
	.uahalf	0x13a
	.uaword	0x1bf
	.uleb128 0x4
	.string	"VL53L1_DeviceSscArray"
	.byte	0x3
	.uahalf	0x1b2
	.uaword	0x1bf
	.uleb128 0x4
	.string	"VL53L1_TuningParms"
	.byte	0x3
	.uahalf	0x233
	.uaword	0x1fb
	.uleb128 0x2
	.string	"VL53L1_Error"
	.byte	0x4
	.byte	0x59
	.uaword	0x1a2
	.uleb128 0x5
	.byte	0x18
	.byte	0x5
	.byte	0xf3
	.uaword	0x5cc
	.uleb128 0x6
	.string	"global_config__spad_enables_ref_0"
	.byte	0x5
	.byte	0xf4
	.uaword	0x1bf
	.byte	0
	.uleb128 0x6
	.string	"global_config__spad_enables_ref_1"
	.byte	0x5
	.byte	0xfe
	.uaword	0x1bf
	.byte	0x1
	.uleb128 0x7
	.string	"global_config__spad_enables_ref_2"
	.byte	0x5
	.uahalf	0x108
	.uaword	0x1bf
	.byte	0x2
	.uleb128 0x7
	.string	"global_config__spad_enables_ref_3"
	.byte	0x5
	.uahalf	0x112
	.uaword	0x1bf
	.byte	0x3
	.uleb128 0x7
	.string	"global_config__spad_enables_ref_4"
	.byte	0x5
	.uahalf	0x11c
	.uaword	0x1bf
	.byte	0x4
	.uleb128 0x7
	.string	"global_config__spad_enables_ref_5"
	.byte	0x5
	.uahalf	0x126
	.uaword	0x1bf
	.byte	0x5
	.uleb128 0x7
	.string	"global_config__ref_en_start_select"
	.byte	0x5
	.uahalf	0x130
	.uaword	0x1bf
	.byte	0x6
	.uleb128 0x7
	.string	"ref_spad_man__num_requested_ref_spads"
	.byte	0x5
	.uahalf	0x13a
	.uaword	0x1bf
	.byte	0x7
	.uleb128 0x7
	.string	"ref_spad_man__ref_location"
	.byte	0x5
	.uahalf	0x144
	.uaword	0x1bf
	.byte	0x8
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x5
	.uahalf	0x14e
	.uaword	0x1fb
	.byte	0xa
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x5
	.uahalf	0x158
	.uaword	0x1df
	.byte	0xc
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x5
	.uahalf	0x162
	.uaword	0x1df
	.byte	0xe
	.uleb128 0x7
	.string	"ref_spad_char__total_rate_target_mcps"
	.byte	0x5
	.uahalf	0x16c
	.uaword	0x1fb
	.byte	0x10
	.uleb128 0x7
	.string	"algo__part_to_part_range_offset_mm"
	.byte	0x5
	.uahalf	0x176
	.uaword	0x1df
	.byte	0x12
	.uleb128 0x7
	.string	"mm_config__inner_offset_mm"
	.byte	0x5
	.uahalf	0x180
	.uaword	0x1df
	.byte	0x14
	.uleb128 0x7
	.string	"mm_config__outer_offset_mm"
	.byte	0x5
	.uahalf	0x18a
	.uaword	0x1df
	.byte	0x16
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_customer_nvm_managed_t"
	.byte	0x5
	.uahalf	0x194
	.uaword	0x37a
	.uleb128 0x9
	.byte	0x20
	.byte	0x5
	.uahalf	0x1a0
	.uaword	0xa38
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x5
	.uahalf	0x1a1
	.uaword	0x1fb
	.byte	0
	.uleb128 0x7
	.string	"debug__ctrl"
	.byte	0x5
	.uahalf	0x1ab
	.uaword	0x1bf
	.byte	0x2
	.uleb128 0x7
	.string	"test_mode__ctrl"
	.byte	0x5
	.uahalf	0x1b5
	.uaword	0x1bf
	.byte	0x3
	.uleb128 0x7
	.string	"clk_gating__ctrl"
	.byte	0x5
	.uahalf	0x1bf
	.uaword	0x1bf
	.byte	0x4
	.uleb128 0x7
	.string	"nvm_bist__ctrl"
	.byte	0x5
	.uahalf	0x1cc
	.uaword	0x1bf
	.byte	0x5
	.uleb128 0x7
	.string	"nvm_bist__num_nvm_words"
	.byte	0x5
	.uahalf	0x1d7
	.uaword	0x1bf
	.byte	0x6
	.uleb128 0x7
	.string	"nvm_bist__start_address"
	.byte	0x5
	.uahalf	0x1e1
	.uaword	0x1bf
	.byte	0x7
	.uleb128 0x7
	.string	"host_if__status"
	.byte	0x5
	.uahalf	0x1eb
	.uaword	0x1bf
	.byte	0x8
	.uleb128 0x7
	.string	"pad_i2c_hv__config"
	.byte	0x5
	.uahalf	0x1f5
	.uaword	0x1bf
	.byte	0x9
	.uleb128 0x7
	.string	"pad_i2c_hv__extsup_config"
	.byte	0x5
	.uahalf	0x204
	.uaword	0x1bf
	.byte	0xa
	.uleb128 0x7
	.string	"gpio_hv_pad__ctrl"
	.byte	0x5
	.uahalf	0x20e
	.uaword	0x1bf
	.byte	0xb
	.uleb128 0x7
	.string	"gpio_hv_mux__ctrl"
	.byte	0x5
	.uahalf	0x219
	.uaword	0x1bf
	.byte	0xc
	.uleb128 0x7
	.string	"gpio__tio_hv_status"
	.byte	0x5
	.uahalf	0x224
	.uaword	0x1bf
	.byte	0xd
	.uleb128 0x7
	.string	"gpio__fio_hv_status"
	.byte	0x5
	.uahalf	0x22f
	.uaword	0x1bf
	.byte	0xe
	.uleb128 0x7
	.string	"ana_config__spad_sel_pswidth"
	.byte	0x5
	.uahalf	0x239
	.uaword	0x1bf
	.byte	0xf
	.uleb128 0x7
	.string	"ana_config__vcsel_pulse_width_offset"
	.byte	0x5
	.uahalf	0x243
	.uaword	0x1bf
	.byte	0x10
	.uleb128 0x7
	.string	"ana_config__fast_osc__config_ctrl"
	.byte	0x5
	.uahalf	0x24d
	.uaword	0x1bf
	.byte	0x11
	.uleb128 0x7
	.string	"sigma_estimator__effective_pulse_width_ns"
	.byte	0x5
	.uahalf	0x257
	.uaword	0x1bf
	.byte	0x12
	.uleb128 0x7
	.string	"sigma_estimator__effective_ambient_width_ns"
	.byte	0x5
	.uahalf	0x261
	.uaword	0x1bf
	.byte	0x13
	.uleb128 0x7
	.string	"sigma_estimator__sigma_ref_mm"
	.byte	0x5
	.uahalf	0x26b
	.uaword	0x1bf
	.byte	0x14
	.uleb128 0x7
	.string	"algo__crosstalk_compensation_valid_height_mm"
	.byte	0x5
	.uahalf	0x275
	.uaword	0x1bf
	.byte	0x15
	.uleb128 0x7
	.string	"spare_host_config__static_config_spare_0"
	.byte	0x5
	.uahalf	0x27f
	.uaword	0x1bf
	.byte	0x16
	.uleb128 0x7
	.string	"spare_host_config__static_config_spare_1"
	.byte	0x5
	.uahalf	0x289
	.uaword	0x1bf
	.byte	0x17
	.uleb128 0x7
	.string	"algo__range_ignore_threshold_mcps"
	.byte	0x5
	.uahalf	0x293
	.uaword	0x1fb
	.byte	0x18
	.uleb128 0x7
	.string	"algo__range_ignore_valid_height_mm"
	.byte	0x5
	.uahalf	0x29d
	.uaword	0x1bf
	.byte	0x1a
	.uleb128 0x7
	.string	"algo__range_min_clip"
	.byte	0x5
	.uahalf	0x2a7
	.uaword	0x1bf
	.byte	0x1b
	.uleb128 0x7
	.string	"algo__consistency_check__tolerance"
	.byte	0x5
	.uahalf	0x2b2
	.uaword	0x1bf
	.byte	0x1c
	.uleb128 0x7
	.string	"spare_host_config__static_config_spare_2"
	.byte	0x5
	.uahalf	0x2bc
	.uaword	0x1bf
	.byte	0x1d
	.uleb128 0x7
	.string	"sd_config__reset_stages_msb"
	.byte	0x5
	.uahalf	0x2c6
	.uaword	0x1bf
	.byte	0x1e
	.uleb128 0x7
	.string	"sd_config__reset_stages_lsb"
	.byte	0x5
	.uahalf	0x2d0
	.uaword	0x1bf
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_static_config_t"
	.byte	0x5
	.uahalf	0x2db
	.uaword	0x5f2
	.uleb128 0x9
	.byte	0x16
	.byte	0x5
	.uahalf	0x2e7
	.uaword	0xcea
	.uleb128 0x7
	.string	"gph_config__stream_count_update_value"
	.byte	0x5
	.uahalf	0x2e8
	.uaword	0x1bf
	.byte	0
	.uleb128 0x7
	.string	"global_config__stream_divider"
	.byte	0x5
	.uahalf	0x2f2
	.uaword	0x1bf
	.byte	0x1
	.uleb128 0x7
	.string	"system__interrupt_config_gpio"
	.byte	0x5
	.uahalf	0x2fc
	.uaword	0x1bf
	.byte	0x2
	.uleb128 0x7
	.string	"cal_config__vcsel_start"
	.byte	0x5
	.uahalf	0x30b
	.uaword	0x1bf
	.byte	0x3
	.uleb128 0x7
	.string	"cal_config__repeat_rate"
	.byte	0x5
	.uahalf	0x315
	.uaword	0x1fb
	.byte	0x4
	.uleb128 0x7
	.string	"global_config__vcsel_width"
	.byte	0x5
	.uahalf	0x31f
	.uaword	0x1bf
	.byte	0x6
	.uleb128 0x7
	.string	"phasecal_config__timeout_macrop"
	.byte	0x5
	.uahalf	0x329
	.uaword	0x1bf
	.byte	0x7
	.uleb128 0x7
	.string	"phasecal_config__target"
	.byte	0x5
	.uahalf	0x333
	.uaword	0x1bf
	.byte	0x8
	.uleb128 0x7
	.string	"phasecal_config__override"
	.byte	0x5
	.uahalf	0x33d
	.uaword	0x1bf
	.byte	0x9
	.uleb128 0x7
	.string	"dss_config__roi_mode_control"
	.byte	0x5
	.uahalf	0x347
	.uaword	0x1bf
	.byte	0xa
	.uleb128 0x7
	.string	"system__thresh_rate_high"
	.byte	0x5
	.uahalf	0x352
	.uaword	0x1fb
	.byte	0xc
	.uleb128 0x7
	.string	"system__thresh_rate_low"
	.byte	0x5
	.uahalf	0x35c
	.uaword	0x1fb
	.byte	0xe
	.uleb128 0x7
	.string	"dss_config__manual_effective_spads_select"
	.byte	0x5
	.uahalf	0x366
	.uaword	0x1fb
	.byte	0x10
	.uleb128 0x7
	.string	"dss_config__manual_block_select"
	.byte	0x5
	.uahalf	0x370
	.uaword	0x1bf
	.byte	0x12
	.uleb128 0x7
	.string	"dss_config__aperture_attenuation"
	.byte	0x5
	.uahalf	0x37a
	.uaword	0x1bf
	.byte	0x13
	.uleb128 0x7
	.string	"dss_config__max_spads_limit"
	.byte	0x5
	.uahalf	0x384
	.uaword	0x1bf
	.byte	0x14
	.uleb128 0x7
	.string	"dss_config__min_spads_limit"
	.byte	0x5
	.uahalf	0x38e
	.uaword	0x1bf
	.byte	0x15
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_general_config_t"
	.byte	0x5
	.uahalf	0x398
	.uaword	0xa57
	.uleb128 0x9
	.byte	0x18
	.byte	0x5
	.uahalf	0x3a4
	.uaword	0xfa0
	.uleb128 0x7
	.string	"mm_config__timeout_macrop_a_hi"
	.byte	0x5
	.uahalf	0x3a5
	.uaword	0x1bf
	.byte	0
	.uleb128 0x7
	.string	"mm_config__timeout_macrop_a_lo"
	.byte	0x5
	.uahalf	0x3af
	.uaword	0x1bf
	.byte	0x1
	.uleb128 0x7
	.string	"mm_config__timeout_macrop_b_hi"
	.byte	0x5
	.uahalf	0x3b9
	.uaword	0x1bf
	.byte	0x2
	.uleb128 0x7
	.string	"mm_config__timeout_macrop_b_lo"
	.byte	0x5
	.uahalf	0x3c3
	.uaword	0x1bf
	.byte	0x3
	.uleb128 0x7
	.string	"range_config__timeout_macrop_a_hi"
	.byte	0x5
	.uahalf	0x3cd
	.uaword	0x1bf
	.byte	0x4
	.uleb128 0x7
	.string	"range_config__timeout_macrop_a_lo"
	.byte	0x5
	.uahalf	0x3d7
	.uaword	0x1bf
	.byte	0x5
	.uleb128 0x7
	.string	"range_config__vcsel_period_a"
	.byte	0x5
	.uahalf	0x3e1
	.uaword	0x1bf
	.byte	0x6
	.uleb128 0x7
	.string	"range_config__timeout_macrop_b_hi"
	.byte	0x5
	.uahalf	0x3eb
	.uaword	0x1bf
	.byte	0x7
	.uleb128 0x7
	.string	"range_config__timeout_macrop_b_lo"
	.byte	0x5
	.uahalf	0x3f5
	.uaword	0x1bf
	.byte	0x8
	.uleb128 0x7
	.string	"range_config__vcsel_period_b"
	.byte	0x5
	.uahalf	0x3ff
	.uaword	0x1bf
	.byte	0x9
	.uleb128 0x7
	.string	"range_config__sigma_thresh"
	.byte	0x5
	.uahalf	0x409
	.uaword	0x1fb
	.byte	0xa
	.uleb128 0x7
	.string	"range_config__min_count_rate_rtn_limit_mcps"
	.byte	0x5
	.uahalf	0x413
	.uaword	0x1fb
	.byte	0xc
	.uleb128 0x7
	.string	"range_config__valid_phase_low"
	.byte	0x5
	.uahalf	0x41d
	.uaword	0x1bf
	.byte	0xe
	.uleb128 0x7
	.string	"range_config__valid_phase_high"
	.byte	0x5
	.uahalf	0x427
	.uaword	0x1bf
	.byte	0xf
	.uleb128 0x7
	.string	"system__intermeasurement_period"
	.byte	0x5
	.uahalf	0x431
	.uaword	0x22d
	.byte	0x10
	.uleb128 0x7
	.string	"system__fractional_enable"
	.byte	0x5
	.uahalf	0x43b
	.uaword	0x1bf
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_timing_config_t"
	.byte	0x5
	.uahalf	0x445
	.uaword	0xd0a
	.uleb128 0x9
	.byte	0x14
	.byte	0x5
	.uahalf	0x451
	.uaword	0x1212
	.uleb128 0x7
	.string	"system__grouped_parameter_hold_0"
	.byte	0x5
	.uahalf	0x452
	.uaword	0x1bf
	.byte	0
	.uleb128 0x7
	.string	"system__thresh_high"
	.byte	0x5
	.uahalf	0x45d
	.uaword	0x1fb
	.byte	0x2
	.uleb128 0x7
	.string	"system__thresh_low"
	.byte	0x5
	.uahalf	0x467
	.uaword	0x1fb
	.byte	0x4
	.uleb128 0x7
	.string	"system__enable_xtalk_per_quadrant"
	.byte	0x5
	.uahalf	0x471
	.uaword	0x1bf
	.byte	0x6
	.uleb128 0x7
	.string	"system__seed_config"
	.byte	0x5
	.uahalf	0x47b
	.uaword	0x1bf
	.byte	0x7
	.uleb128 0x7
	.string	"sd_config__woi_sd0"
	.byte	0x5
	.uahalf	0x486
	.uaword	0x1bf
	.byte	0x8
	.uleb128 0x7
	.string	"sd_config__woi_sd1"
	.byte	0x5
	.uahalf	0x490
	.uaword	0x1bf
	.byte	0x9
	.uleb128 0x7
	.string	"sd_config__initial_phase_sd0"
	.byte	0x5
	.uahalf	0x49a
	.uaword	0x1bf
	.byte	0xa
	.uleb128 0x7
	.string	"sd_config__initial_phase_sd1"
	.byte	0x5
	.uahalf	0x4a4
	.uaword	0x1bf
	.byte	0xb
	.uleb128 0x7
	.string	"system__grouped_parameter_hold_1"
	.byte	0x5
	.uahalf	0x4ae
	.uaword	0x1bf
	.byte	0xc
	.uleb128 0x7
	.string	"sd_config__first_order_select"
	.byte	0x5
	.uahalf	0x4b9
	.uaword	0x1bf
	.byte	0xd
	.uleb128 0x7
	.string	"sd_config__quantifier"
	.byte	0x5
	.uahalf	0x4c4
	.uaword	0x1bf
	.byte	0xe
	.uleb128 0x7
	.string	"roi_config__user_roi_centre_spad"
	.byte	0x5
	.uahalf	0x4ce
	.uaword	0x1bf
	.byte	0xf
	.uleb128 0x7
	.string	"roi_config__user_roi_requested_global_xy_size"
	.byte	0x5
	.uahalf	0x4d8
	.uaword	0x1bf
	.byte	0x10
	.uleb128 0x7
	.string	"system__sequence_config"
	.byte	0x5
	.uahalf	0x4e2
	.uaword	0x1bf
	.byte	0x11
	.uleb128 0x7
	.string	"system__grouped_parameter_hold"
	.byte	0x5
	.uahalf	0x4f3
	.uaword	0x1bf
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_dynamic_config_t"
	.byte	0x5
	.uahalf	0x4fe
	.uaword	0xfbf
	.uleb128 0x9
	.byte	0x6
	.byte	0x5
	.uahalf	0x50a
	.uaword	0x12e1
	.uleb128 0x7
	.string	"power_management__go1_power_force"
	.byte	0x5
	.uahalf	0x50b
	.uaword	0x1bf
	.byte	0
	.uleb128 0x7
	.string	"system__stream_count_ctrl"
	.byte	0x5
	.uahalf	0x515
	.uaword	0x1bf
	.byte	0x1
	.uleb128 0x7
	.string	"firmware__enable"
	.byte	0x5
	.uahalf	0x51f
	.uaword	0x1bf
	.byte	0x2
	.uleb128 0x7
	.string	"system__interrupt_clear"
	.byte	0x5
	.uahalf	0x529
	.uaword	0x1bf
	.byte	0x3
	.uleb128 0x7
	.string	"system__mode_start"
	.byte	0x5
	.uahalf	0x534
	.uaword	0x1bf
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_system_control_t"
	.byte	0x5
	.uahalf	0x543
	.uaword	0x1232
	.uleb128 0x5
	.byte	0x10
	.byte	0x6
	.byte	0xa8
	.uaword	0x139e
	.uleb128 0x6
	.string	"device_test_mode"
	.byte	0x6
	.byte	0xaa
	.uaword	0x1bf
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x6
	.byte	0xab
	.uaword	0x1bf
	.byte	0x1
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x6
	.byte	0xac
	.uaword	0x22d
	.byte	0x4
	.uleb128 0x6
	.string	"target_count_rate_mcps"
	.byte	0x6
	.byte	0xad
	.uaword	0x1fb
	.byte	0x8
	.uleb128 0x6
	.string	"min_count_rate_limit_mcps"
	.byte	0x6
	.byte	0xaf
	.uaword	0x1fb
	.byte	0xa
	.uleb128 0x6
	.string	"max_count_rate_limit_mcps"
	.byte	0x6
	.byte	0xb1
	.uaword	0x1fb
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.string	"VL53L1_refspadchar_config_t"
	.byte	0x6
	.byte	0xb4
	.uaword	0x1301
	.uleb128 0x5
	.byte	0xc
	.byte	0x6
	.byte	0xbb
	.uaword	0x1437
	.uleb128 0x6
	.string	"array_select"
	.byte	0x6
	.byte	0xbd
	.uaword	0x32d
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x6
	.byte	0xc1
	.uaword	0x1bf
	.byte	0x1
	.uleb128 0x6
	.string	"vcsel_start"
	.byte	0x6
	.byte	0xc3
	.uaword	0x1bf
	.byte	0x2
	.uleb128 0x6
	.string	"vcsel_width"
	.byte	0x6
	.byte	0xc5
	.uaword	0x1bf
	.byte	0x3
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x6
	.byte	0xc7
	.uaword	0x22d
	.byte	0x4
	.uleb128 0x6
	.string	"rate_limit_mcps"
	.byte	0x6
	.byte	0xc9
	.uaword	0x1fb
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.string	"VL53L1_ssc_config_t"
	.byte	0x6
	.byte	0xce
	.uaword	0x13c1
	.uleb128 0x5
	.byte	0x18
	.byte	0x6
	.byte	0xd4
	.uaword	0x15f7
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x6
	.byte	0xd7
	.uaword	0x22d
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x6
	.byte	0xd9
	.uaword	0x1df
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x6
	.byte	0xdb
	.uaword	0x1df
	.byte	0x6
	.uleb128 0x6
	.string	"nvm_default__crosstalk_compensation_plane_offset_kcps"
	.byte	0x6
	.byte	0xdd
	.uaword	0x22d
	.byte	0x8
	.uleb128 0x6
	.string	"nvm_default__crosstalk_compensation_x_plane_gradient_kcps"
	.byte	0x6
	.byte	0xdf
	.uaword	0x1df
	.byte	0xc
	.uleb128 0x6
	.string	"nvm_default__crosstalk_compensation_y_plane_gradient_kcps"
	.byte	0x6
	.byte	0xe1
	.uaword	0x1df
	.byte	0xe
	.uleb128 0x6
	.string	"global_crosstalk_compensation_enable"
	.byte	0x6
	.byte	0xe3
	.uaword	0x1bf
	.byte	0x10
	.uleb128 0x6
	.string	"lite_mode_crosstalk_margin_kcps"
	.byte	0x6
	.byte	0xe5
	.uaword	0x1df
	.byte	0x12
	.uleb128 0x6
	.string	"crosstalk_range_ignore_threshold_mult"
	.byte	0x6
	.byte	0xeb
	.uaword	0x1bf
	.byte	0x14
	.uleb128 0x6
	.string	"crosstalk_range_ignore_threshold_rate_mcps"
	.byte	0x6
	.byte	0xed
	.uaword	0x1fb
	.byte	0x16
	.byte	0
	.uleb128 0x2
	.string	"VL53L1_xtalk_config_t"
	.byte	0x6
	.byte	0xf2
	.uaword	0x1452
	.uleb128 0x5
	.byte	0x4c
	.byte	0x6
	.byte	0xfe
	.uaword	0x1b1a
	.uleb128 0x7
	.string	"tp_tuning_parm_version"
	.byte	0x6
	.uahalf	0x101
	.uaword	0x1fb
	.byte	0
	.uleb128 0x7
	.string	"tp_tuning_parm_key_table_version"
	.byte	0x6
	.uahalf	0x104
	.uaword	0x1fb
	.byte	0x2
	.uleb128 0x7
	.string	"tp_tuning_parm_lld_version"
	.byte	0x6
	.uahalf	0x108
	.uaword	0x1fb
	.byte	0x4
	.uleb128 0x7
	.string	"tp_init_phase_rtn_lite_long"
	.byte	0x6
	.uahalf	0x10c
	.uaword	0x1bf
	.byte	0x6
	.uleb128 0x7
	.string	"tp_init_phase_rtn_lite_med"
	.byte	0x6
	.uahalf	0x110
	.uaword	0x1bf
	.byte	0x7
	.uleb128 0x7
	.string	"tp_init_phase_rtn_lite_short"
	.byte	0x6
	.uahalf	0x114
	.uaword	0x1bf
	.byte	0x8
	.uleb128 0x7
	.string	"tp_init_phase_ref_lite_long"
	.byte	0x6
	.uahalf	0x118
	.uaword	0x1bf
	.byte	0x9
	.uleb128 0x7
	.string	"tp_init_phase_ref_lite_med"
	.byte	0x6
	.uahalf	0x11c
	.uaword	0x1bf
	.byte	0xa
	.uleb128 0x7
	.string	"tp_init_phase_ref_lite_short"
	.byte	0x6
	.uahalf	0x120
	.uaword	0x1bf
	.byte	0xb
	.uleb128 0x7
	.string	"tp_consistency_lite_phase_tolerance"
	.byte	0x6
	.uahalf	0x125
	.uaword	0x1bf
	.byte	0xc
	.uleb128 0x7
	.string	"tp_phasecal_target"
	.byte	0x6
	.uahalf	0x129
	.uaword	0x1bf
	.byte	0xd
	.uleb128 0x7
	.string	"tp_cal_repeat_rate"
	.byte	0x6
	.uahalf	0x12c
	.uaword	0x1fb
	.byte	0xe
	.uleb128 0x7
	.string	"tp_lite_min_clip"
	.byte	0x6
	.uahalf	0x130
	.uaword	0x1bf
	.byte	0x10
	.uleb128 0x7
	.string	"tp_lite_long_sigma_thresh_mm"
	.byte	0x6
	.uahalf	0x135
	.uaword	0x1fb
	.byte	0x12
	.uleb128 0x7
	.string	"tp_lite_med_sigma_thresh_mm"
	.byte	0x6
	.uahalf	0x139
	.uaword	0x1fb
	.byte	0x14
	.uleb128 0x7
	.string	"tp_lite_short_sigma_thresh_mm"
	.byte	0x6
	.uahalf	0x13d
	.uaword	0x1fb
	.byte	0x16
	.uleb128 0x7
	.string	"tp_lite_long_min_count_rate_rtn_mcps"
	.byte	0x6
	.uahalf	0x142
	.uaword	0x1fb
	.byte	0x18
	.uleb128 0x7
	.string	"tp_lite_med_min_count_rate_rtn_mcps"
	.byte	0x6
	.uahalf	0x146
	.uaword	0x1fb
	.byte	0x1a
	.uleb128 0x7
	.string	"tp_lite_short_min_count_rate_rtn_mcps"
	.byte	0x6
	.uahalf	0x14a
	.uaword	0x1fb
	.byte	0x1c
	.uleb128 0x7
	.string	"tp_lite_sigma_est_pulse_width_ns"
	.byte	0x6
	.uahalf	0x14f
	.uaword	0x1bf
	.byte	0x1e
	.uleb128 0x7
	.string	"tp_lite_sigma_est_amb_width_ns"
	.byte	0x6
	.uahalf	0x152
	.uaword	0x1bf
	.byte	0x1f
	.uleb128 0x7
	.string	"tp_lite_sigma_ref_mm"
	.byte	0x6
	.uahalf	0x155
	.uaword	0x1bf
	.byte	0x20
	.uleb128 0x7
	.string	"tp_lite_seed_cfg"
	.byte	0x6
	.uahalf	0x158
	.uaword	0x1bf
	.byte	0x21
	.uleb128 0x7
	.string	"tp_timed_seed_cfg"
	.byte	0x6
	.uahalf	0x15b
	.uaword	0x1bf
	.byte	0x22
	.uleb128 0x7
	.string	"tp_lite_quantifier"
	.byte	0x6
	.uahalf	0x15f
	.uaword	0x1bf
	.byte	0x23
	.uleb128 0x7
	.string	"tp_lite_first_order_select"
	.byte	0x6
	.uahalf	0x162
	.uaword	0x1bf
	.byte	0x24
	.uleb128 0x7
	.string	"tp_dss_target_lite_mcps"
	.byte	0x6
	.uahalf	0x166
	.uaword	0x1fb
	.byte	0x26
	.uleb128 0x7
	.string	"tp_dss_target_timed_mcps"
	.byte	0x6
	.uahalf	0x169
	.uaword	0x1fb
	.byte	0x28
	.uleb128 0x7
	.string	"tp_phasecal_timeout_lite_us"
	.byte	0x6
	.uahalf	0x16d
	.uaword	0x22d
	.byte	0x2c
	.uleb128 0x7
	.string	"tp_phasecal_timeout_timed_us"
	.byte	0x6
	.uahalf	0x171
	.uaword	0x22d
	.byte	0x30
	.uleb128 0x7
	.string	"tp_mm_timeout_lite_us"
	.byte	0x6
	.uahalf	0x175
	.uaword	0x22d
	.byte	0x34
	.uleb128 0x7
	.string	"tp_mm_timeout_timed_us"
	.byte	0x6
	.uahalf	0x178
	.uaword	0x22d
	.byte	0x38
	.uleb128 0x7
	.string	"tp_mm_timeout_lpa_us"
	.byte	0x6
	.uahalf	0x17b
	.uaword	0x22d
	.byte	0x3c
	.uleb128 0x7
	.string	"tp_range_timeout_lite_us"
	.byte	0x6
	.uahalf	0x17f
	.uaword	0x22d
	.byte	0x40
	.uleb128 0x7
	.string	"tp_range_timeout_timed_us"
	.byte	0x6
	.uahalf	0x182
	.uaword	0x22d
	.byte	0x44
	.uleb128 0x7
	.string	"tp_range_timeout_lpa_us"
	.byte	0x6
	.uahalf	0x185
	.uaword	0x22d
	.byte	0x48
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_tuning_parm_storage_t"
	.byte	0x6
	.uahalf	0x189
	.uaword	0x1614
	.uleb128 0x9
	.byte	0x10
	.byte	0x6
	.uahalf	0x1e0
	.uaword	0x1c5f
	.uleb128 0x7
	.string	"vhv_loop_bound"
	.byte	0x6
	.uahalf	0x1e6
	.uaword	0x1bf
	.byte	0
	.uleb128 0x7
	.string	"is_low_power_auto_mode"
	.byte	0x6
	.uahalf	0x1e9
	.uaword	0x1bf
	.byte	0x1
	.uleb128 0x7
	.string	"low_power_auto_range_count"
	.byte	0x6
	.uahalf	0x1ed
	.uaword	0x1bf
	.byte	0x2
	.uleb128 0x7
	.string	"saved_interrupt_config"
	.byte	0x6
	.uahalf	0x1f0
	.uaword	0x1bf
	.byte	0x3
	.uleb128 0x7
	.string	"saved_vhv_init"
	.byte	0x6
	.uahalf	0x1f3
	.uaword	0x1bf
	.byte	0x4
	.uleb128 0x7
	.string	"saved_vhv_timeout"
	.byte	0x6
	.uahalf	0x1f6
	.uaword	0x1bf
	.byte	0x5
	.uleb128 0x7
	.string	"first_run_phasecal_result"
	.byte	0x6
	.uahalf	0x1f9
	.uaword	0x1bf
	.byte	0x6
	.uleb128 0x7
	.string	"dss__total_rate_per_spad_mcps"
	.byte	0x6
	.uahalf	0x1fc
	.uaword	0x22d
	.byte	0x8
	.uleb128 0x7
	.string	"dss__required_spads"
	.byte	0x6
	.uahalf	0x1ff
	.uaword	0x1fb
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_low_power_auto_data_t"
	.byte	0x6
	.uahalf	0x201
	.uaword	0x1b3f
	.uleb128 0x9
	.byte	0x14
	.byte	0x6
	.uahalf	0x30a
	.uaword	0x1d52
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x30c
	.uaword	0x1fb
	.byte	0
	.uleb128 0x7
	.string	"phasecal_config_timeout_us"
	.byte	0x6
	.uahalf	0x30f
	.uaword	0x22d
	.byte	0x4
	.uleb128 0x7
	.string	"range_config_timeout_us"
	.byte	0x6
	.uahalf	0x312
	.uaword	0x22d
	.byte	0x8
	.uleb128 0x7
	.string	"mm_config_timeout_us"
	.byte	0x6
	.uahalf	0x315
	.uaword	0x22d
	.byte	0xc
	.uleb128 0x7
	.string	"pre_num_of_samples"
	.byte	0x6
	.uahalf	0x319
	.uaword	0x1bf
	.byte	0x10
	.uleb128 0x7
	.string	"mm1_num_of_samples"
	.byte	0x6
	.uahalf	0x31c
	.uaword	0x1bf
	.byte	0x11
	.uleb128 0x7
	.string	"mm2_num_of_samples"
	.byte	0x6
	.uahalf	0x31f
	.uaword	0x1bf
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_offsetcal_config_t"
	.byte	0x6
	.uahalf	0x323
	.uaword	0x1c84
	.uleb128 0xb
	.byte	0x1
	.string	"VL53L1_preset_mode_standard_ranging_short_range"
	.byte	0x1
	.uahalf	0x28f
	.byte	0x1
	.uaword	0x366
	.byte	0x1
	.uaword	0x1e08
	.uleb128 0xc
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x290
	.uaword	0x1e08
	.uleb128 0xc
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x291
	.uaword	0x1e0e
	.uleb128 0xc
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x292
	.uaword	0x1e14
	.uleb128 0xc
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x293
	.uaword	0x1e1a
	.uleb128 0xc
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x294
	.uaword	0x1e20
	.uleb128 0xc
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x295
	.uaword	0x1e26
	.uleb128 0xd
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x2a1
	.uaword	0x366
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0xa38
	.uleb128 0xe
	.byte	0x4
	.uaword	0xcea
	.uleb128 0xe
	.byte	0x4
	.uaword	0xfa0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1212
	.uleb128 0xe
	.byte	0x4
	.uaword	0x12e1
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1b1a
	.uleb128 0xb
	.byte	0x1
	.string	"VL53L1_preset_mode_standard_ranging_long_range"
	.byte	0x1
	.uahalf	0x2db
	.byte	0x1
	.uaword	0x366
	.byte	0x1
	.uaword	0x1ebf
	.uleb128 0xc
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x2dc
	.uaword	0x1e08
	.uleb128 0xc
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x2dd
	.uaword	0x1e0e
	.uleb128 0xc
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x2de
	.uaword	0x1e14
	.uleb128 0xc
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x2df
	.uaword	0x1e1a
	.uleb128 0xc
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x2e0
	.uaword	0x1e20
	.uleb128 0xc
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x2e1
	.uaword	0x1e26
	.uleb128 0xd
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x2ed
	.uaword	0x366
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"VL53L1_preset_mode_timed_ranging"
	.byte	0x1
	.uahalf	0x395
	.byte	0x1
	.uaword	0x366
	.byte	0x1
	.uaword	0x1f44
	.uleb128 0xc
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x397
	.uaword	0x1e08
	.uleb128 0xc
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x398
	.uaword	0x1e0e
	.uleb128 0xc
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x399
	.uaword	0x1e14
	.uleb128 0xc
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x39a
	.uaword	0x1e1a
	.uleb128 0xc
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x39b
	.uaword	0x1e20
	.uleb128 0xc
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x39c
	.uaword	0x1e26
	.uleb128 0xd
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x3ab
	.uaword	0x366
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"VL53L1_preset_mode_timed_ranging_short_range"
	.byte	0x1
	.uahalf	0x3dd
	.byte	0x1
	.uaword	0x366
	.byte	0x1
	.uaword	0x1fd5
	.uleb128 0xc
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x3df
	.uaword	0x1e08
	.uleb128 0xc
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x3e0
	.uaword	0x1e0e
	.uleb128 0xc
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x3e1
	.uaword	0x1e14
	.uleb128 0xc
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x3e2
	.uaword	0x1e1a
	.uleb128 0xc
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x3e3
	.uaword	0x1e20
	.uleb128 0xc
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x3e4
	.uaword	0x1e26
	.uleb128 0xd
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x3f3
	.uaword	0x366
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"VL53L1_preset_mode_timed_ranging_long_range"
	.byte	0x1
	.uahalf	0x426
	.byte	0x1
	.uaword	0x366
	.byte	0x1
	.uaword	0x2065
	.uleb128 0xc
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x428
	.uaword	0x1e08
	.uleb128 0xc
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x429
	.uaword	0x1e0e
	.uleb128 0xc
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x42a
	.uaword	0x1e14
	.uleb128 0xc
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x42b
	.uaword	0x1e1a
	.uleb128 0xc
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x42c
	.uaword	0x1e20
	.uleb128 0xc
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x42d
	.uaword	0x1e26
	.uleb128 0xd
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x43c
	.uaword	0x366
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"VL53L1_init_refspadchar_config_struct"
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.uaword	0x366
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x20bd
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0x1
	.byte	0x58
	.uaword	0x20bd
	.byte	0x1
	.byte	0x64
	.uleb128 0x11
	.uaword	.LASF12
	.byte	0x1
	.byte	0x5e
	.uaword	0x366
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x139e
	.uleb128 0xf
	.byte	0x1
	.string	"VL53L1_init_ssc_config_struct"
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.uaword	0x366
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2113
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0x1
	.byte	0x81
	.uaword	0x2113
	.byte	0x1
	.byte	0x64
	.uleb128 0x11
	.uaword	.LASF12
	.byte	0x1
	.byte	0x87
	.uaword	0x366
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1437
	.uleb128 0xf
	.byte	0x1
	.string	"VL53L1_init_xtalk_config_struct"
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.uaword	0x366
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x218d
	.uleb128 0x12
	.string	"pnvm"
	.byte	0x1
	.byte	0xaf
	.uaword	0x218d
	.uaword	.LLST0
	.uleb128 0x13
	.uaword	.LASF13
	.byte	0x1
	.byte	0xb0
	.uaword	0x2193
	.uaword	.LLST1
	.uleb128 0x11
	.uaword	.LASF12
	.byte	0x1
	.byte	0xb6
	.uaword	0x366
	.byte	0
	.uleb128 0x14
	.uaword	.LVL3
	.uaword	0x2e14
	.uleb128 0x15
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x5cc
	.uleb128 0xe
	.byte	0x4
	.uaword	0x15f7
	.uleb128 0xf
	.byte	0x1
	.string	"VL53L1_init_offset_cal_config_struct"
	.byte	0x1
	.byte	0xf9
	.byte	0x1
	.uaword	0x366
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x21f1
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0x1
	.byte	0xfa
	.uaword	0x21f1
	.byte	0x1
	.byte	0x64
	.uleb128 0x16
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x101
	.uaword	0x366
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1d52
	.uleb128 0x17
	.byte	0x1
	.string	"VL53L1_init_tuning_parm_storage_struct"
	.byte	0x1
	.uahalf	0x123
	.byte	0x1
	.uaword	0x366
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2253
	.uleb128 0x18
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x124
	.uaword	0x1e26
	.byte	0x1
	.byte	0x64
	.uleb128 0x16
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x12a
	.uaword	0x366
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"VL53L1_preset_mode_standard_ranging"
	.byte	0x1
	.uahalf	0x18b
	.byte	0x1
	.uaword	0x366
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x22f4
	.uleb128 0x18
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x18c
	.uaword	0x1e08
	.byte	0x1
	.byte	0x64
	.uleb128 0x18
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x18d
	.uaword	0x1e0e
	.byte	0x1
	.byte	0x65
	.uleb128 0x18
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x18e
	.uaword	0x1e14
	.byte	0x1
	.byte	0x66
	.uleb128 0x18
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x18f
	.uaword	0x1e1a
	.byte	0x1
	.byte	0x67
	.uleb128 0x18
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x190
	.uaword	0x1e20
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x191
	.uaword	0x1e26
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x19e
	.uaword	0x366
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x1d74
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x23cd
	.uleb128 0x1a
	.uaword	0x1db3
	.uaword	.LLST2
	.uleb128 0x1a
	.uaword	0x1dbf
	.uaword	.LLST3
	.uleb128 0x1a
	.uaword	0x1dcb
	.uaword	.LLST4
	.uleb128 0x1a
	.uaword	0x1dd7
	.uaword	.LLST5
	.uleb128 0x1b
	.uaword	0x1de3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.uaword	0x1def
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.uaword	0x1dfb
	.uaword	.LLST6
	.uleb128 0x1d
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	0x2398
	.uleb128 0x1a
	.uaword	0x1db3
	.uaword	.LLST7
	.uleb128 0x1a
	.uaword	0x1dbf
	.uaword	.LLST7
	.uleb128 0x1a
	.uaword	0x1de3
	.uaword	.LLST9
	.uleb128 0x1a
	.uaword	0x1def
	.uaword	.LLST10
	.uleb128 0x1a
	.uaword	0x1dd7
	.uaword	.LLST11
	.uleb128 0x1a
	.uaword	0x1dcb
	.uaword	.LLST12
	.uleb128 0x1e
	.uaword	.LBB5
	.uaword	.LBE5
	.uleb128 0x1f
	.uaword	0x1dfb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	.LVL10
	.uaword	0x2253
	.uleb128 0x15
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x1e2c
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x24a6
	.uleb128 0x1a
	.uaword	0x1e6a
	.uaword	.LLST13
	.uleb128 0x1a
	.uaword	0x1e76
	.uaword	.LLST14
	.uleb128 0x1a
	.uaword	0x1e82
	.uaword	.LLST15
	.uleb128 0x1a
	.uaword	0x1e8e
	.uaword	.LLST16
	.uleb128 0x1b
	.uaword	0x1e9a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.uaword	0x1ea6
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.uaword	0x1eb2
	.uaword	.LLST17
	.uleb128 0x1d
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	0x2471
	.uleb128 0x1a
	.uaword	0x1e6a
	.uaword	.LLST18
	.uleb128 0x1a
	.uaword	0x1e76
	.uaword	.LLST18
	.uleb128 0x1a
	.uaword	0x1e9a
	.uaword	.LLST20
	.uleb128 0x1a
	.uaword	0x1ea6
	.uaword	.LLST21
	.uleb128 0x1a
	.uaword	0x1e8e
	.uaword	.LLST22
	.uleb128 0x1a
	.uaword	0x1e82
	.uaword	.LLST23
	.uleb128 0x1e
	.uaword	.LBB9
	.uaword	.LBE9
	.uleb128 0x1f
	.uaword	0x1eb2
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	.LVL15
	.uaword	0x2253
	.uleb128 0x15
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"VL53L1_preset_mode_standard_ranging_mm1_cal"
	.byte	0x1
	.uahalf	0x328
	.byte	0x1
	.uaword	0x366
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x258e
	.uleb128 0x20
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x329
	.uaword	0x1e08
	.uaword	.LLST24
	.uleb128 0x20
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x32a
	.uaword	0x1e0e
	.uaword	.LLST25
	.uleb128 0x20
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x32b
	.uaword	0x1e14
	.uaword	.LLST26
	.uleb128 0x20
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x32c
	.uaword	0x1e1a
	.uaword	.LLST27
	.uleb128 0x18
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x32d
	.uaword	0x1e20
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x32e
	.uaword	0x1e26
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x339
	.uaword	0x366
	.uaword	.LLST28
	.uleb128 0x14
	.uaword	.LVL19
	.uaword	0x2253
	.uleb128 0x15
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x15
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"VL53L1_preset_mode_standard_ranging_mm2_cal"
	.byte	0x1
	.uahalf	0x35e
	.byte	0x1
	.uaword	0x366
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2676
	.uleb128 0x20
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x35f
	.uaword	0x1e08
	.uaword	.LLST29
	.uleb128 0x20
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x360
	.uaword	0x1e0e
	.uaword	.LLST30
	.uleb128 0x20
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x361
	.uaword	0x1e14
	.uaword	.LLST31
	.uleb128 0x20
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x362
	.uaword	0x1e1a
	.uaword	.LLST32
	.uleb128 0x18
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x363
	.uaword	0x1e20
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x364
	.uaword	0x1e26
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x36f
	.uaword	0x366
	.uaword	.LLST33
	.uleb128 0x14
	.uaword	.LVL21
	.uaword	0x2253
	.uleb128 0x15
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x15
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x1ebf
	.uaword	.LFB10
	.uaword	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x274f
	.uleb128 0x1a
	.uaword	0x1eef
	.uaword	.LLST34
	.uleb128 0x1a
	.uaword	0x1efb
	.uaword	.LLST35
	.uleb128 0x1a
	.uaword	0x1f07
	.uaword	.LLST36
	.uleb128 0x1a
	.uaword	0x1f13
	.uaword	.LLST37
	.uleb128 0x1b
	.uaword	0x1f1f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.uaword	0x1f2b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.uaword	0x1f37
	.uaword	.LLST38
	.uleb128 0x1d
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	0x271a
	.uleb128 0x1a
	.uaword	0x1eef
	.uaword	.LLST39
	.uleb128 0x1a
	.uaword	0x1efb
	.uaword	.LLST39
	.uleb128 0x1a
	.uaword	0x1f2b
	.uaword	.LLST41
	.uleb128 0x1a
	.uaword	0x1f1f
	.uaword	.LLST42
	.uleb128 0x1a
	.uaword	0x1f13
	.uaword	.LLST43
	.uleb128 0x1a
	.uaword	0x1f07
	.uaword	.LLST44
	.uleb128 0x1e
	.uaword	.LBB13
	.uaword	.LBE13
	.uleb128 0x1f
	.uaword	0x1f37
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	.LVL23
	.uaword	0x2253
	.uleb128 0x15
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x1f44
	.uaword	.LFB11
	.uaword	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2828
	.uleb128 0x1a
	.uaword	0x1f80
	.uaword	.LLST45
	.uleb128 0x1a
	.uaword	0x1f8c
	.uaword	.LLST46
	.uleb128 0x1a
	.uaword	0x1f98
	.uaword	.LLST47
	.uleb128 0x1a
	.uaword	0x1fa4
	.uaword	.LLST48
	.uleb128 0x1b
	.uaword	0x1fb0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.uaword	0x1fbc
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.uaword	0x1fc8
	.uaword	.LLST49
	.uleb128 0x1d
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	0x27f3
	.uleb128 0x1a
	.uaword	0x1f80
	.uaword	.LLST50
	.uleb128 0x1a
	.uaword	0x1f8c
	.uaword	.LLST50
	.uleb128 0x1a
	.uaword	0x1fbc
	.uaword	.LLST52
	.uleb128 0x1a
	.uaword	0x1fb0
	.uaword	.LLST53
	.uleb128 0x1a
	.uaword	0x1fa4
	.uaword	.LLST54
	.uleb128 0x1a
	.uaword	0x1f98
	.uaword	.LLST55
	.uleb128 0x1e
	.uaword	.LBB17
	.uaword	.LBE17
	.uleb128 0x1f
	.uaword	0x1fc8
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	.LVL28
	.uaword	0x1d74
	.uleb128 0x15
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x1fd5
	.uaword	.LFB12
	.uaword	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2901
	.uleb128 0x1a
	.uaword	0x2010
	.uaword	.LLST56
	.uleb128 0x1a
	.uaword	0x201c
	.uaword	.LLST57
	.uleb128 0x1a
	.uaword	0x2028
	.uaword	.LLST58
	.uleb128 0x1a
	.uaword	0x2034
	.uaword	.LLST59
	.uleb128 0x1b
	.uaword	0x2040
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.uaword	0x204c
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.uaword	0x2058
	.uaword	.LLST60
	.uleb128 0x1d
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	0x28cc
	.uleb128 0x1a
	.uaword	0x2010
	.uaword	.LLST61
	.uleb128 0x1a
	.uaword	0x201c
	.uaword	.LLST61
	.uleb128 0x1a
	.uaword	0x204c
	.uaword	.LLST63
	.uleb128 0x1a
	.uaword	0x2040
	.uaword	.LLST64
	.uleb128 0x1a
	.uaword	0x2034
	.uaword	.LLST65
	.uleb128 0x1a
	.uaword	0x2028
	.uaword	.LLST66
	.uleb128 0x1e
	.uaword	.LBB21
	.uaword	.LBE21
	.uleb128 0x1f
	.uaword	0x2058
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	.LVL33
	.uaword	0x1e2c
	.uleb128 0x15
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"VL53L1_preset_mode_low_power_auto_ranging"
	.byte	0x1
	.uahalf	0x470
	.byte	0x1
	.uaword	0x366
	.uaword	.LFB13
	.uaword	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2a1a
	.uleb128 0x20
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x472
	.uaword	0x1e08
	.uaword	.LLST67
	.uleb128 0x20
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x473
	.uaword	0x1e0e
	.uaword	.LLST68
	.uleb128 0x20
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x474
	.uaword	0x1e14
	.uaword	.LLST69
	.uleb128 0x20
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x475
	.uaword	0x1e1a
	.uaword	.LLST70
	.uleb128 0x20
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x476
	.uaword	0x1e20
	.uaword	.LLST71
	.uleb128 0x20
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x477
	.uaword	0x1e26
	.uaword	.LLST72
	.uleb128 0x20
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x478
	.uaword	0x2a1a
	.uaword	.LLST73
	.uleb128 0x21
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x488
	.uaword	0x366
	.uaword	.LLST74
	.uleb128 0x22
	.uaword	.LVL38
	.uaword	0x1ebf
	.uaword	0x29fc
	.uleb128 0x15
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x15
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x23
	.uaword	.LVL40
	.byte	0x1
	.uaword	0x2e5b
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.uaword	0x1c5f
	.uleb128 0x17
	.byte	0x1
	.string	"VL53L1_preset_mode_low_power_auto_short_ranging"
	.byte	0x1
	.uahalf	0x4a5
	.byte	0x1
	.uaword	0x366
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2b3f
	.uleb128 0x20
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x4a7
	.uaword	0x1e08
	.uaword	.LLST75
	.uleb128 0x20
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x4a8
	.uaword	0x1e0e
	.uaword	.LLST76
	.uleb128 0x20
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x4a9
	.uaword	0x1e14
	.uaword	.LLST77
	.uleb128 0x20
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x4aa
	.uaword	0x1e1a
	.uaword	.LLST78
	.uleb128 0x20
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x4ab
	.uaword	0x1e20
	.uaword	.LLST79
	.uleb128 0x20
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x4ac
	.uaword	0x1e26
	.uaword	.LLST80
	.uleb128 0x20
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x4ad
	.uaword	0x2a1a
	.uaword	.LLST81
	.uleb128 0x21
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x4bd
	.uaword	0x366
	.uaword	.LLST82
	.uleb128 0x22
	.uaword	.LVL42
	.uaword	0x1f44
	.uaword	0x2b21
	.uleb128 0x15
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x15
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x23
	.uaword	.LVL44
	.byte	0x1
	.uaword	0x2e5b
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"VL53L1_preset_mode_low_power_auto_long_ranging"
	.byte	0x1
	.uahalf	0x4da
	.byte	0x1
	.uaword	0x366
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2c5d
	.uleb128 0x20
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x4dc
	.uaword	0x1e08
	.uaword	.LLST83
	.uleb128 0x20
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x4dd
	.uaword	0x1e0e
	.uaword	.LLST84
	.uleb128 0x20
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x4de
	.uaword	0x1e14
	.uaword	.LLST85
	.uleb128 0x20
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x4df
	.uaword	0x1e1a
	.uaword	.LLST86
	.uleb128 0x20
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x4e0
	.uaword	0x1e20
	.uaword	.LLST87
	.uleb128 0x20
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x4e1
	.uaword	0x1e26
	.uaword	.LLST88
	.uleb128 0x20
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x4e2
	.uaword	0x2a1a
	.uaword	.LLST89
	.uleb128 0x21
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x4f2
	.uaword	0x366
	.uaword	.LLST90
	.uleb128 0x22
	.uaword	.LVL46
	.uaword	0x1fd5
	.uaword	0x2c3f
	.uleb128 0x15
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x15
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x23
	.uaword	.LVL48
	.byte	0x1
	.uaword	0x2e5b
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"VL53L1_preset_mode_singleshot_ranging"
	.byte	0x1
	.uahalf	0x511
	.byte	0x1
	.uaword	0x366
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2d3f
	.uleb128 0x20
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x513
	.uaword	0x1e08
	.uaword	.LLST91
	.uleb128 0x20
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x514
	.uaword	0x1e0e
	.uaword	.LLST92
	.uleb128 0x20
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x515
	.uaword	0x1e14
	.uaword	.LLST93
	.uleb128 0x20
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x516
	.uaword	0x1e1a
	.uaword	.LLST94
	.uleb128 0x18
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x517
	.uaword	0x1e20
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x518
	.uaword	0x1e26
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x525
	.uaword	0x366
	.uaword	.LLST95
	.uleb128 0x14
	.uaword	.LVL50
	.uaword	0x2253
	.uleb128 0x15
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"VL53L1_preset_mode_olt"
	.byte	0x1
	.uahalf	0x557
	.byte	0x1
	.uaword	0x366
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x2e14
	.uleb128 0x20
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x558
	.uaword	0x1e08
	.uaword	.LLST96
	.uleb128 0x20
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x559
	.uaword	0x1e0e
	.uaword	.LLST97
	.uleb128 0x20
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x55a
	.uaword	0x1e14
	.uaword	.LLST98
	.uleb128 0x20
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x55b
	.uaword	0x1e1a
	.uaword	.LLST99
	.uleb128 0x18
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x55c
	.uaword	0x1e20
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x55d
	.uaword	0x1e26
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x566
	.uaword	0x366
	.uaword	.LLST100
	.uleb128 0x14
	.uaword	.LVL53
	.uaword	0x2253
	.uleb128 0x15
	.byte	0x1
	.byte	0x67
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x67
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x15
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x15
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"VL53L1_calc_range_ignore_threshold"
	.byte	0x7
	.uahalf	0x1fc
	.byte	0x1
	.uaword	0x1fb
	.byte	0x1
	.uaword	0x2e5b
	.uleb128 0x25
	.uaword	0x22d
	.uleb128 0x25
	.uaword	0x1df
	.uleb128 0x25
	.uaword	0x1df
	.uleb128 0x25
	.uaword	0x1bf
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.string	"VL53L1_config_low_power_auto_mode"
	.byte	0x7
	.uahalf	0x41b
	.byte	0x1
	.uaword	0x366
	.byte	0x1
	.uleb128 0x25
	.uaword	0x1e0e
	.uleb128 0x25
	.uaword	0x1e1a
	.uleb128 0x25
	.uaword	0x2a1a
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL2
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL3-1
	.uaword	.LVL4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL3-1
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL4
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL8
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL10-1
	.uaword	.LFE6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL10-1
	.uaword	.LFE6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL8
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL10-1
	.uaword	.LFE6
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL8
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL10-1
	.uaword	.LFE6
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LFE6
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x91
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL13
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL15-1
	.uaword	.LFE7
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL13
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL15-1
	.uaword	.LFE7
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL13
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL15-1
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL13
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL15-1
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x91
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL18
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL19-1
	.uaword	.LFE8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL18
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL19-1
	.uaword	.LFE8
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL18
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL19-1
	.uaword	.LFE8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL18
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL19-1
	.uaword	.LFE8
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LFE8
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL21-1
	.uaword	.LFE9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL21-1
	.uaword	.LFE9
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL21-1
	.uaword	.LFE9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL21-1
	.uaword	.LFE9
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LFE9
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL22
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL23-1
	.uaword	.LFE10
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL22
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL23-1
	.uaword	.LFE10
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL22
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL23-1
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL25
	.uaword	.LFE10
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL22
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL23-1
	.uaword	.LFE10
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LFE10
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x91
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL27
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL28-1
	.uaword	.LFE11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL27
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL28-1
	.uaword	.LFE11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL27
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL28-1
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL30
	.uaword	.LFE11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL27
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL28-1
	.uaword	.LFE11
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LFE11
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x91
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL32
	.uaword	.LVL33-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL33-1
	.uaword	.LFE12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL32
	.uaword	.LVL33-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL33-1
	.uaword	.LFE12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL32
	.uaword	.LVL33-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL33-1
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL35
	.uaword	.LFE12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL32
	.uaword	.LVL33-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL33-1
	.uaword	.LFE12
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LFE12
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x91
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL37
	.uaword	.LVL38-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL38-1
	.uaword	.LFE13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL37
	.uaword	.LVL38-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL38-1
	.uaword	.LFE13
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL37
	.uaword	.LVL38-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL38-1
	.uaword	.LFE13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL37
	.uaword	.LVL38-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL38-1
	.uaword	.LFE13
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	.LVL39
	.uaword	.LFE13
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x91
	.sleb128 4
	.uaword	.LVL39
	.uaword	.LFE13
	.uahalf	0x2
	.byte	0x8a
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x91
	.sleb128 8
	.uaword	.LVL39
	.uaword	.LFE13
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL40-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL41
	.uaword	.LVL42-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL42-1
	.uaword	.LFE14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL41
	.uaword	.LVL42-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL42-1
	.uaword	.LFE14
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL41
	.uaword	.LVL42-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL42-1
	.uaword	.LFE14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL41
	.uaword	.LVL42-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL42-1
	.uaword	.LFE14
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	.LVL43
	.uaword	.LFE14
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x91
	.sleb128 4
	.uaword	.LVL43
	.uaword	.LFE14
	.uahalf	0x2
	.byte	0x8a
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x91
	.sleb128 8
	.uaword	.LVL43
	.uaword	.LFE14
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL44-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL45
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL46-1
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL45
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL46-1
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL45
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL46-1
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL45
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL46-1
	.uaword	.LFE15
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL45
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	.LVL47
	.uaword	.LFE15
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL45
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x91
	.sleb128 4
	.uaword	.LVL47
	.uaword	.LFE15
	.uahalf	0x2
	.byte	0x8a
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL45
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x91
	.sleb128 8
	.uaword	.LVL47
	.uaword	.LFE15
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL48-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL49
	.uaword	.LVL50-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL50-1
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL49
	.uaword	.LVL50-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL50-1
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL49
	.uaword	.LVL50-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL50-1
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL51
	.uaword	.LFE16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL49
	.uaword	.LVL50-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL50-1
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL52
	.uaword	.LVL53-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL53-1
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL52
	.uaword	.LVL53-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL53-1
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL52
	.uaword	.LVL53-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL53-1
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL52
	.uaword	.LVL53-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL53-1
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x67
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0xa4
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF10:
	.string	"psystem"
.LASF9:
	.string	"pdynamic"
.LASF4:
	.string	"vcsel_period"
.LASF2:
	.string	"algo__crosstalk_compensation_y_plane_gradient_kcps"
.LASF12:
	.string	"status"
.LASF8:
	.string	"ptiming"
.LASF5:
	.string	"timeout_us"
.LASF0:
	.string	"algo__crosstalk_compensation_plane_offset_kcps"
.LASF6:
	.string	"pstatic"
.LASF13:
	.string	"pdata"
.LASF14:
	.string	"plpadata"
.LASF1:
	.string	"algo__crosstalk_compensation_x_plane_gradient_kcps"
.LASF7:
	.string	"pgeneral"
.LASF11:
	.string	"ptuning_parms"
.LASF3:
	.string	"dss_config__target_total_rate_mcps"
	.extern	VL53L1_config_low_power_auto_mode,STT_FUNC,0
	.extern	VL53L1_calc_range_ignore_threshold,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
