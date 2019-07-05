	.file	"vl53l1_api_core.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.VL53L1_software_reset,"ax",@progbits
	.align 1
	.global	VL53L1_software_reset
	.type	VL53L1_software_reset, @function
VL53L1_software_reset:
.LFB2:
	.file 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_core.c"
	.loc 1 408 0
.LVL0:
	.loc 1 420 0
	mov	%e4, 0
	.loc 1 408 0
	mov.aa	%a15, %a4
	.loc 1 420 0
	call	VL53L1_WrByte
.LVL1:
	.loc 1 426 0
	jz	%d2, .L5
.LVL2:
.L3:
	.loc 1 446 0
	ret
.L5:
	.loc 1 427 0
	mov.aa	%a4, %a15
	mov	%d4, 100
	call	VL53L1_WaitUs
.LVL3:
	.loc 1 433 0
	jnz	%d2, .L3
	.loc 1 434 0
	mov.aa	%a4, %a15
	mov	%d4, 0
	mov	%d5, 1
	call	VL53L1_WrByte
.LVL4:
	.loc 1 440 0
	jnz	%d2, .L3
	.loc 1 441 0
	mov.aa	%a4, %a15
	j	VL53L1_wait_for_boot_completion
.LVL5:
.LFE2:
	.size	VL53L1_software_reset, .-VL53L1_software_reset
.section .text.VL53L1_set_part_to_part_data,"ax",@progbits
	.align 1
	.global	VL53L1_set_part_to_part_data
	.type	VL53L1_set_part_to_part_data, @function
VL53L1_set_part_to_part_data:
.LFB3:
	.loc 1 452 0
.LVL6:
	.loc 1 464 0
	movh	%d15, 60587
	ld.w	%d3, [%a5]0
	addi	%d15, %d15, 258
	.loc 1 466 0
	mov	%d2, -4
	.loc 1 464 0
	jne	%d3, %d15, .L16
	.loc 1 472 0
	lea	%a2, [%a5] 4
	lea	%a15, [%a4] 66
		# #chunks=24, chunksize=1, remains=0
	lea	%a3, 24-1
	0:
	ld.bu	%d15, [%a2+]1
	st.b	[%a15+]1, %d15
	loop	%a3, 0b
	.loc 1 478 0
	lea	%a2, [%a5] 28
	lea	%a15, [%a4] 148
		# #chunks=8, chunksize=1, remains=0
	lea	%a3, 8-1
	0:
	ld.bu	%d15, [%a2+]1
	st.b	[%a15+]1, %d15
	loop	%a3, 0b
	.loc 1 490 0
	lea	%a15, [%a4] 90
	.loc 1 484 0
	ld.bu	%d15, [%a5] 38
	st.b	[%a4] 156, %d15
	ld.bu	%d15, [%a5] 39
	st.b	[%a4] 157, %d15
	.loc 1 490 0
	lea	%a5, [%a5] 40
.LVL7:
		# #chunks=58, chunksize=1, remains=0
	lea	%a2, 58-1
	0:
	ld.bu	%d15, [%a5+]1
	st.b	[%a15+]1, %d15
	loop	%a2, 0b
.LVL8:
	.loc 1 501 0
	ld.h	%d15, [%a4] 78
	st.h	[%a4] 304, %d15
	.loc 1 503 0
	ld.h	%d15, [%a4] 80
	.loc 1 499 0
	ld.hu	%d4, [%a4] 76
	.loc 1 503 0
	st.h	[%a4] 306, %d15
	.loc 1 508 0
	ld.bu	%d15, [%a4] 316
	.loc 1 499 0
	st.w	[%a4] 300, %d4
	.loc 1 508 0
	jnz	%d15, .L17
	.loc 1 509 0
	st.h	[%a4] 76, %d15
	.loc 1 511 0
	st.h	[%a4] 78, %d15
	.loc 1 513 0
	st.h	[%a4] 80, %d15
	.loc 1 457 0
	mov	%d2, 0
	ret
.L17:
	.loc 1 516 0
	ld.h	%d5, [%a4] 318
	mov.aa	%a15, %a4
	call	VL53L1_calc_crosstalk_plane_offset_with_margin
.LVL9:
	sat.hu	%d2, %d2
.LVL10:
	.loc 1 523 0
	st.h	[%a15] 76, %d2
	.loc 1 457 0
	mov	%d2, 0
.LVL11:
	ret
.LVL12:
.L16:
	ret
.LFE3:
	.size	VL53L1_set_part_to_part_data, .-VL53L1_set_part_to_part_data
.section .text.VL53L1_get_part_to_part_data,"ax",@progbits
	.align 1
	.global	VL53L1_get_part_to_part_data
	.type	VL53L1_get_part_to_part_data, @function
VL53L1_get_part_to_part_data:
.LFB4:
	.loc 1 536 0
.LVL13:
	.loc 1 546 0
	movh	%d15, 60587
	addi	%d15, %d15, 258
	mov.aa	%a15, %a5
	.loc 1 550 0
	lea	%a2, [%a4] 66
	.loc 1 546 0
	st.w	[%a15+]4, %d15
	.loc 1 550 0
		# #chunks=24, chunksize=1, remains=0
	lea	%a3, 24-1
	0:
	ld.bu	%d15, [%a2+]1
	st.b	[%a15+]1, %d15
	loop	%a3, 0b
	.loc 1 558 0
	movh	%d2, 1
	ld.w	%d15, [%a4] 300
	jge.u	%d15, %d2, .L21
	.loc 1 563 0
	st.h	[%a5] 14, %d15
.L20:
	.loc 1 565 0
	ld.h	%d15, [%a4] 304
	st.h	[%a5] 16, %d15
	.loc 1 567 0
	ld.h	%d15, [%a4] 306
	st.h	[%a5] 18, %d15
	.loc 1 571 0
	lea	%a15, [%a5] 28
	lea	%a2, [%a4] 148
		# #chunks=8, chunksize=1, remains=0
	lea	%a3, 8-1
	0:
	ld.bu	%d15, [%a2+]1
	st.b	[%a15+]1, %d15
	loop	%a3, 0b
	.loc 1 597 0
	mov	%d2, 0
	.loc 1 577 0
	ld.bu	%d15, [%a4] 162
	st.b	[%a5] 36, %d15
	ld.bu	%d15, [%a4] 163
	st.b	[%a5] 37, %d15
	.loc 1 583 0
	ld.bu	%d15, [%a4] 156
	st.b	[%a5] 38, %d15
	ld.bu	%d15, [%a4] 157
	st.b	[%a5] 39, %d15
	.loc 1 589 0
	lea	%a4, [%a4] 90
.LVL14:
	lea	%a5, [%a5] 40
.LVL15:
		# #chunks=58, chunksize=1, remains=0
	lea	%a15, 58-1
	0:
	ld.bu	%d15, [%a4+]1
	st.b	[%a5+]1, %d15
	loop	%a15, 0b
.LVL16:
	.loc 1 597 0
	ret
.LVL17:
.L21:
	.loc 1 559 0
	mov	%d15, -1
	st.h	[%a5] 14, %d15
	j	.L20
.LFE4:
	.size	VL53L1_get_part_to_part_data, .-VL53L1_get_part_to_part_data
.section .text.VL53L1_set_inter_measurement_period_ms,"ax",@progbits
	.align 1
	.global	VL53L1_set_inter_measurement_period_ms
	.type	VL53L1_set_inter_measurement_period_ms, @function
VL53L1_set_inter_measurement_period_ms:
.LFB5:
	.loc 1 603 0
.LVL18:
	.loc 1 613 0
	ld.hu	%d15, [%a4] 692
	jz	%d15, .L26
	.loc 1 617 0
	st.w	[%a4] 20, %d4
	.loc 1 619 0
	mul	%d4, %d15
.LVL19:
	.loc 1 608 0
	mov	%d2, 0
	.loc 1 618 0
	st.w	[%a4] 428, %d4
	.loc 1 626 0
	ret
.LVL20:
.L26:
	.loc 1 614 0
	mov	%d2, -15
	ret
.LFE5:
	.size	VL53L1_set_inter_measurement_period_ms, .-VL53L1_set_inter_measurement_period_ms
.section .text.VL53L1_get_inter_measurement_period_ms,"ax",@progbits
	.align 1
	.global	VL53L1_get_inter_measurement_period_ms
	.type	VL53L1_get_inter_measurement_period_ms, @function
VL53L1_get_inter_measurement_period_ms:
.LFB6:
	.loc 1 632 0
.LVL21:
	.loc 1 642 0
	ld.hu	%d15, [%a4] 692
	jz	%d15, .L31
	.loc 1 647 0
	ld.w	%d2, [%a4] 428
	div.u	%e2, %d2, %d15
	.loc 1 646 0
	st.w	[%a5]0, %d2
	.loc 1 637 0
	mov	%d2, 0
	.loc 1 654 0
	ret
.L31:
	.loc 1 643 0
	mov	%d2, -15
	ret
.LFE6:
	.size	VL53L1_get_inter_measurement_period_ms, .-VL53L1_get_inter_measurement_period_ms
.section .text.VL53L1_set_timeouts_us,"ax",@progbits
	.align 1
	.global	VL53L1_set_timeouts_us
	.type	VL53L1_set_timeouts_us, @function
VL53L1_set_timeouts_us:
.LFB7:
	.loc 1 662 0
.LVL22:
	.loc 1 674 0
	ld.hu	%d7, [%a4] 350
	.loc 1 662 0
	mov.aa	%a5, %a4
	mov	%e2, %d4, %d5
	.loc 1 674 0
	jz	%d7, .L34
	.loc 1 679 0
	st.w	[%a4] 8, %d3
	.loc 1 680 0
	st.w	[%a4] 12, %d2
	.loc 1 681 0
	st.w	[%a5] 16, %d6
	.loc 1 683 0
	lea	%a4, [%a4] 388
.LVL23:
	lea	%a5, [%a5] 412
.LVL24:
	j	VL53L1_calc_timeout_register_values
.LVL25:
.L34:
	.loc 1 696 0
	mov	%d2, -15
.LVL26:
	ret
.LFE7:
	.size	VL53L1_set_timeouts_us, .-VL53L1_set_timeouts_us
.section .text.VL53L1_get_timeouts_us,"ax",@progbits
	.align 1
	.global	VL53L1_get_timeouts_us
	.type	VL53L1_get_timeouts_us, @function
VL53L1_get_timeouts_us:
.LFB8:
	.loc 1 704 0
.LVL27:
	.loc 1 719 0
	ld.hu	%d4, [%a4] 350
	jz	%d4, .L39
	.loc 1 725 0
	ld.bu	%d5, [%a4] 418
	mov.aa	%a14, %a5
	mov.aa	%a15, %a4
	mov.aa	%a12, %a7
	mov.aa	%a13, %a6
	call	VL53L1_calc_macro_period_us
.LVL28:
	.loc 1 733 0
	ld.bu	%d4, [%a15] 395
	mov	%d5, %d2
	.loc 1 725 0
	mov	%d15, %d2
.LVL29:
	.loc 1 733 0
	call	VL53L1_calc_timeout_us
.LVL30:
	.loc 1 732 0
	st.w	[%a14]0, %d2
.LVL31:
	.loc 1 739 0
	ld.bu	%d4, [%a15] 412
	.loc 1 741 0
	ld.bu	%d2, [%a15] 413
	sh	%d4, %d4, 8
.LVL32:
	add	%d4, %d2
.LVL33:
	.loc 1 745 0
	extr.u	%d4, %d4, 0, 16
	mov	%d5, %d15
	call	VL53L1_calc_decoded_timeout_us
.LVL34:
	.loc 1 744 0
	st.w	[%a13]0, %d2
.LVL35:
	.loc 1 751 0
	ld.bu	%d4, [%a15] 416
	.loc 1 753 0
	ld.bu	%d2, [%a15] 417
	sh	%d4, %d4, 8
.LVL36:
	add	%d4, %d2
.LVL37:
	.loc 1 757 0
	extr.u	%d4, %d4, 0, 16
	mov	%d5, %d15
	call	VL53L1_calc_decoded_timeout_us
.LVL38:
	.loc 1 756 0
	st.w	[%a12]0, %d2
	.loc 1 761 0
	ld.w	%d15, [%a14]0
.LVL39:
	st.w	[%a15] 8, %d15
	.loc 1 762 0
	ld.w	%d15, [%a13]0
	st.w	[%a15] 12, %d15
	.loc 1 763 0
	ld.w	%d15, [%a12]0
	st.w	[%a15] 16, %d15
	.loc 1 710 0
	mov	%d2, 0
	.loc 1 770 0
	ret
.LVL40:
.L39:
	.loc 1 720 0
	mov	%d2, -15
	ret
.LFE8:
	.size	VL53L1_get_timeouts_us, .-VL53L1_get_timeouts_us
.section .text.VL53L1_set_calibration_repeat_period,"ax",@progbits
	.align 1
	.global	VL53L1_set_calibration_repeat_period
	.type	VL53L1_set_calibration_repeat_period, @function
VL53L1_set_calibration_repeat_period:
.LFB9:
	.loc 1 776 0
.LVL41:
	.loc 1 785 0
	st.h	[%a4] 392, %d4
	.loc 1 789 0
	mov	%d2, 0
	ret
.LFE9:
	.size	VL53L1_set_calibration_repeat_period, .-VL53L1_set_calibration_repeat_period
.section .text.VL53L1_get_calibration_repeat_period,"ax",@progbits
	.align 1
	.global	VL53L1_get_calibration_repeat_period
	.type	VL53L1_get_calibration_repeat_period, @function
VL53L1_get_calibration_repeat_period:
.LFB10:
	.loc 1 795 0
.LVL42:
	.loc 1 804 0
	ld.hu	%d15, [%a4] 392
	st.h	[%a5]0, %d15
	.loc 1 808 0
	mov	%d2, 0
	ret
.LFE10:
	.size	VL53L1_get_calibration_repeat_period, .-VL53L1_get_calibration_repeat_period
.section .text.VL53L1_set_sequence_config_bit,"ax",@progbits
	.align 1
	.global	VL53L1_set_sequence_config_bit
	.type	VL53L1_set_sequence_config_bit, @function
VL53L1_set_sequence_config_bit:
.LFB11:
	.loc 1 815 0
.LVL43:
	.loc 1 827 0
	and	%d5, %d5, 1
.LVL44:
	.loc 1 842 0
	mov	%d2, -4
	.loc 1 829 0
	jge.u	%d4, 8, .L43
	.loc 1 826 0
	mov	%d15, 254
	.loc 1 831 0
	jz	%d4, .L44
.LVL45:
	.loc 1 832 0
	mov	%d15, 1
	sh	%d15, %d15, %d4
	.loc 1 833 0
	sh	%d5, %d5, %d4
.LVL46:
	.loc 1 834 0
	not	%d15
	.loc 1 833 0
	and	%d5, %d5, 255
.LVL47:
	.loc 1 834 0
	and	%d15, 255
.LVL48:
.L44:
	.loc 1 837 0
	ld.bu	%d2, [%a4] 453
	and	%d15, %d2
.LVL49:
	or	%d5, %d15
.LVL50:
	.loc 1 821 0
	mov	%d2, 0
	.loc 1 837 0
	st.b	[%a4] 453, %d5
.L43:
.LVL51:
	.loc 1 847 0
	ret
.LFE11:
	.size	VL53L1_set_sequence_config_bit, .-VL53L1_set_sequence_config_bit
.section .text.VL53L1_get_sequence_config_bit,"ax",@progbits
	.align 1
	.global	VL53L1_get_sequence_config_bit
	.type	VL53L1_get_sequence_config_bit, @function
VL53L1_get_sequence_config_bit:
.LFB12:
	.loc 1 854 0
.LVL52:
	.loc 1 880 0
	mov	%d2, -4
	.loc 1 866 0
	jge.u	%d4, 8, .L52
	.loc 1 868 0
	jz	%d4, .L50
.LVL53:
	.loc 1 872 0
	ld.bu	%d2, [%a4] 453
	.loc 1 869 0
	mov	%d15, 1
	sh	%d15, %d15, %d4
	.loc 1 876 0
	and	%d15, %d2
	rsub	%d2, %d4, 0
	shas	%d2, %d15, %d2
	st.b	[%a5]0, %d2
	.loc 1 860 0
	mov	%d2, 0
	ret
.LVL54:
.L50:
	.loc 1 872 0
	ld.bu	%d15, [%a4] 453
	.loc 1 860 0
	mov	%d2, 0
.LVL55:
	.loc 1 872 0
	and	%d15, %d15, 1
	st.b	[%a5]0, %d15
.LVL56:
.L52:
	.loc 1 884 0
	ret
.LFE12:
	.size	VL53L1_get_sequence_config_bit, .-VL53L1_get_sequence_config_bit
.section .text.VL53L1_set_interrupt_polarity,"ax",@progbits
	.align 1
	.global	VL53L1_set_interrupt_polarity
	.type	VL53L1_set_interrupt_polarity, @function
VL53L1_set_interrupt_polarity:
.LFB13:
	.loc 1 890 0
.LVL57:
	.loc 1 899 0
	ld.bu	%d15, [%a4] 368
	sh	%d4, -4
.LVL58:
	insert	%d4, %d15, %d4, 4, 1
	.loc 1 907 0
	mov	%d2, 0
	.loc 1 899 0
	st.b	[%a4] 368, %d4
	.loc 1 907 0
	ret
.LFE13:
	.size	VL53L1_set_interrupt_polarity, .-VL53L1_set_interrupt_polarity
.section .text.VL53L1_set_refspadchar_config_struct,"ax",@progbits
	.align 1
	.global	VL53L1_set_refspadchar_config_struct
	.type	VL53L1_set_refspadchar_config_struct, @function
VL53L1_set_refspadchar_config_struct:
.LFB14:
	.loc 1 914 0
.LVL59:
	.loc 1 925 0
	ld.bu	%d15, [%a5]0
	st.b	[%a4] 272, %d15
	.loc 1 926 0
	ld.bu	%d15, [%a5] 1
	st.b	[%a4] 273, %d15
	.loc 1 927 0
	ld.w	%d15, [%a5] 4
	st.w	[%a4] 276, %d15
	.loc 1 929 0
	ld.hu	%d15, [%a5] 8
	.loc 1 928 0
	st.h	[%a4] 280, %d15
	.loc 1 931 0
	ld.hu	%d15, [%a5] 10
	.loc 1 930 0
	st.h	[%a4] 282, %d15
	.loc 1 933 0
	ld.hu	%d15, [%a5] 12
	.loc 1 932 0
	st.h	[%a4] 284, %d15
	.loc 1 938 0
	mov	%d2, 0
	ret
.LFE14:
	.size	VL53L1_set_refspadchar_config_struct, .-VL53L1_set_refspadchar_config_struct
.section .text.VL53L1_get_refspadchar_config_struct,"ax",@progbits
	.align 1
	.global	VL53L1_get_refspadchar_config_struct
	.type	VL53L1_get_refspadchar_config_struct, @function
VL53L1_get_refspadchar_config_struct:
.LFB15:
	.loc 1 945 0
.LVL60:
	.loc 1 956 0
	ld.bu	%d15, [%a4] 272
	st.b	[%a5]0, %d15
	.loc 1 957 0
	ld.bu	%d15, [%a4] 273
	st.b	[%a5] 1, %d15
	.loc 1 958 0
	ld.w	%d15, [%a4] 276
	st.w	[%a5] 4, %d15
	.loc 1 959 0
	ld.hu	%d15, [%a4] 280
	st.h	[%a5] 8, %d15
	.loc 1 961 0
	ld.hu	%d15, [%a4] 282
	.loc 1 960 0
	st.h	[%a5] 10, %d15
	.loc 1 963 0
	ld.hu	%d15, [%a4] 284
	.loc 1 962 0
	st.h	[%a5] 12, %d15
	.loc 1 968 0
	mov	%d2, 0
	ret
.LFE15:
	.size	VL53L1_get_refspadchar_config_struct, .-VL53L1_get_refspadchar_config_struct
.section .text.VL53L1_set_range_ignore_threshold,"ax",@progbits
	.align 1
	.global	VL53L1_set_range_ignore_threshold
	.type	VL53L1_set_range_ignore_threshold, @function
VL53L1_set_range_ignore_threshold:
.LFB16:
	.loc 1 976 0
.LVL61:
	.loc 1 985 0
	st.h	[%a4] 322, %d5
	.loc 1 988 0
	st.b	[%a4] 320, %d4
	.loc 1 993 0
	mov	%d2, 0
	ret
.LFE16:
	.size	VL53L1_set_range_ignore_threshold, .-VL53L1_set_range_ignore_threshold
.section .text.VL53L1_get_range_ignore_threshold,"ax",@progbits
	.align 1
	.global	VL53L1_get_range_ignore_threshold
	.type	VL53L1_get_range_ignore_threshold, @function
VL53L1_get_range_ignore_threshold:
.LFB17:
	.loc 1 1000 0
.LVL62:
	.loc 1 1015 0
	ld.bu	%d15, [%a4] 320
	.loc 1 1014 0
	st.b	[%a5]0, %d15
	.loc 1 1018 0
	ld.hu	%d15, [%a4] 380
	.loc 1 1017 0
	st.h	[%a7]0, %d15
	.loc 1 1021 0
	ld.hu	%d15, [%a4] 322
	.loc 1 1020 0
	st.h	[%a6]0, %d15
	.loc 1 1025 0
	mov	%d2, 0
	ret
.LFE17:
	.size	VL53L1_get_range_ignore_threshold, .-VL53L1_get_range_ignore_threshold
.section .text.VL53L1_get_interrupt_polarity,"ax",@progbits
	.align 1
	.global	VL53L1_get_interrupt_polarity
	.type	VL53L1_get_interrupt_polarity, @function
VL53L1_get_interrupt_polarity:
.LFB18:
	.loc 1 1032 0
.LVL63:
	.loc 1 1041 0
	ld.bu	%d15, [%a4] 368
	.loc 1 1047 0
	mov	%d2, 0
	.loc 1 1041 0
	and	%d15, %d15, 16
	st.b	[%a5]0, %d15
	.loc 1 1047 0
	ret
.LFE18:
	.size	VL53L1_get_interrupt_polarity, .-VL53L1_get_interrupt_polarity
.section .text.VL53L1_set_user_zone,"ax",@progbits
	.align 1
	.global	VL53L1_set_user_zone
	.type	VL53L1_set_user_zone, @function
VL53L1_set_user_zone:
.LFB19:
	.loc 1 1053 0
.LVL64:
	.loc 1 1064 0
	ld.bu	%d4, [%a5] 1
	ld.bu	%d5, [%a5]0
	.loc 1 1053 0
	mov.aa	%a12, %a4
	.loc 1 1064 0
	lea	%a4, [%a4] 451
.LVL65:
	.loc 1 1053 0
	mov.aa	%a15, %a5
	.loc 1 1064 0
	call	VL53L1_encode_row_col
.LVL66:
	.loc 1 1070 0
	ld.bu	%d4, [%a15] 2
	ld.bu	%d5, [%a15] 3
	lea	%a4, [%a12] 452
	call	VL53L1_encode_zone_size
.LVL67:
	.loc 1 1080 0
	mov	%d2, 0
	ret
.LFE19:
	.size	VL53L1_set_user_zone, .-VL53L1_set_user_zone
.section .text.VL53L1_get_user_zone,"ax",@progbits
	.align 1
	.global	VL53L1_get_user_zone
	.type	VL53L1_get_user_zone, @function
VL53L1_get_user_zone:
.LFB20:
	.loc 1 1086 0
.LVL68:
	.loc 1 1097 0
	ld.bu	%d4, [%a4] 451
	.loc 1 1086 0
	mov.aa	%a12, %a4
	.loc 1 1097 0
	lea	%a4, [%a5] 1
.LVL69:
	.loc 1 1086 0
	mov.aa	%a15, %a5
	.loc 1 1097 0
	call	VL53L1_decode_row_col
.LVL70:
	.loc 1 1103 0
	ld.bu	%d4, [%a12] 452
	lea	%a4, [%a15] 2
	lea	%a5, [%a15] 3
	call	VL53L1_decode_zone_size
.LVL71:
	.loc 1 1111 0
	mov	%d2, 0
	ret
.LFE20:
	.size	VL53L1_get_user_zone, .-VL53L1_get_user_zone
.section .text.VL53L1_get_mode_mitigation_roi,"ax",@progbits
	.align 1
	.global	VL53L1_get_mode_mitigation_roi
	.type	VL53L1_get_mode_mitigation_roi, @function
VL53L1_get_mode_mitigation_roi:
.LFB21:
	.loc 1 1118 0
.LVL72:
	.loc 1 1126 0
	mov	%d15, 0
	.loc 1 1118 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 1118 0
	mov.aa	%a12, %a4
.LVL73:
	.loc 1 1133 0
	ld.bu	%d4, [%a12] 554
	.loc 1 1127 0
	lea	%a4, [%SP] 8
.LVL74:
	.loc 1 1118 0
	mov.aa	%a15, %a5
	.loc 1 1127 0
	st.b	[+%a4]-1, %d15
.LVL75:
	.loc 1 1133 0
	lea	%a5, [%SP] 6
.LVL76:
	.loc 1 1126 0
	st.b	[%SP] 6, %d15
	.loc 1 1133 0
	call	VL53L1_decode_row_col
.LVL77:
	.loc 1 1138 0
	ld.bu	%d15, [%SP] 6
	st.b	[%a15]0, %d15
	.loc 1 1139 0
	ld.bu	%d15, [%SP] 7
	st.b	[%a15] 1, %d15
	.loc 1 1149 0
	ld.bu	%d15, [%a12] 555
.LVL78:
	.loc 1 1151 0
	sh	%d2, %d15, -4
	.loc 1 1152 0
	and	%d15, %d15, 15
	.loc 1 1151 0
	st.b	[%a15] 3, %d2
.LVL79:
	.loc 1 1152 0
	st.b	[%a15] 2, %d15
	.loc 1 1157 0
	mov	%d2, 0
	ret
.LFE21:
	.size	VL53L1_get_mode_mitigation_roi, .-VL53L1_get_mode_mitigation_roi
.section .text.VL53L1_read_p2p_data,"ax",@progbits
	.align 1
	.global	VL53L1_read_p2p_data
	.type	VL53L1_read_p2p_data, @function
VL53L1_read_p2p_data:
.LFB1:
	.loc 1 315 0
.LVL80:
	.loc 1 331 0
	lea	%a5, [%a4] 344
	.loc 1 315 0
	mov.aa	%a15, %a4
	.loc 1 331 0
	call	VL53L1_get_static_nvm_managed
.LVL81:
	.loc 1 335 0
	jz	%d2, .L69
.LVL82:
.L63:
	.loc 1 368 0
	ld.hu	%d15, [%a15] 350
	mov	%d3, 4096
	jlt.u	%d15, %d3, .L67
.LVL83:
.L65:
	.loc 1 392 0
	ld.w	%d15, [%a15] 160
	insert	%d15, %d15, 0, 0, 16
	jnz	%d15, .L68
.LVL84:
.L70:
	.loc 1 394 0
	ld.bu	%d15, [%a15] 158
	sh	%d15, 4
	st.b	[%a15] 162, %d15
	.loc 1 396 0
	ld.bu	%d15, [%a15] 159
	sh	%d15, 4
	st.b	[%a15] 163, %d15
	ret
.LVL85:
.L69:
	.loc 1 336 0
	mov.aa	%a4, %a15
	lea	%a5, [%a15] 66
	call	VL53L1_get_customer_nvm_managed
.LVL86:
	.loc 1 340 0
	jnz	%d2, .L63
	.loc 1 342 0
	lea	%a12, [%a15] 506
	mov.aa	%a4, %a15
	mov.aa	%a5, %a12
	call	VL53L1_get_nvm_copy_data
.LVL87:
	.loc 1 347 0
	jnz	%d2, .L63
	.loc 1 348 0
	mov.aa	%a4, %a12
	lea	%a5, [%a15] 240
	call	VL53L1_copy_rtn_good_spads_to_buffer
.LVL88:
	.loc 1 358 0
	mov.aa	%a4, %a15
	mov	%d4, 222
	lea	%a5, [%a15] 692
	call	VL53L1_RdWord
.LVL89:
	.loc 1 368 0
	ld.hu	%d15, [%a15] 350
	mov	%d3, 4096
	jge.u	%d15, %d3, .L64
.LVL90:
.L67:
	.loc 1 375 0
	mov	%d15, -17204
	st.h	[%a15] 350, %d15
.L64:
	.loc 1 382 0
	jnz	%d2, .L65
	.loc 1 383 0
	mov.aa	%a4, %a15
	lea	%a5, [%a15] 158
	call	VL53L1_get_mode_mitigation_roi
.LVL91:
	.loc 1 392 0
	ld.w	%d15, [%a15] 160
	insert	%d15, %d15, 0, 0, 16
	jz	%d15, .L70
.LVL92:
.L68:
	.loc 1 403 0
	ret
.LFE1:
	.size	VL53L1_read_p2p_data, .-VL53L1_read_p2p_data
.section .text.VL53L1_get_preset_mode_timing_cfg,"ax",@progbits
	.align 1
	.global	VL53L1_get_preset_mode_timing_cfg
	.type	VL53L1_get_preset_mode_timing_cfg, @function
VL53L1_get_preset_mode_timing_cfg:
.LFB22:
	.loc 1 1166 0
.LVL93:
	.loc 1 1173 0
	add	%d4, -1
.LVL94:
	ge.u	%d15, %d4, 38
	.loc 1 1166 0
	sub.a	%SP, 16
.LCFI1:
	.loc 1 1173 0
	jz	%d15, .L78
.L77:
	.loc 1 1219 0
	mov	%d2, -4
.LVL95:
	.loc 1 1227 0
	ret
.LVL96:
.L78:
	.loc 1 1173 0
	movh.a	%a15, hi:.L74
	lea	%a15, [%a15] lo:.L74
	addsc.a	%a15, %a15, %d4, 2
	ji	%a15
	.align 2
	.align 2
.L74:
	.code32
	j	.L73
	.code32
	j	.L73
	.code32
	j	.L73
	.code32
	j	.L73
	.code32
	j	.L73
	.code32
	j	.L75
	.code32
	j	.L75
	.code32
	j	.L75
	.code32
	j	.L77
	.code32
	j	.L77
	.code32
	j	.L77
	.code32
	j	.L77
	.code32
	j	.L77
	.code32
	j	.L77
	.code32
	j	.L77
	.code32
	j	.L77
	.code32
	j	.L73
	.code32
	j	.L75
	.code32
	j	.L77
	.code32
	j	.L77
	.code32
	j	.L77
	.code32
	j	.L77
	.code32
	j	.L77
	.code32
	j	.L77
	.code32
	j	.L77
	.code32
	j	.L77
	.code32
	j	.L77
	.code32
	j	.L77
	.code32
	j	.L77
	.code32
	j	.L77
	.code32
	j	.L77
	.code32
	j	.L77
	.code32
	j	.L77
	.code32
	j	.L77
	.code32
	j	.L77
	.code32
	j	.L76
	.code32
	j	.L76
	.code32
	j	.L76
.L76:
	.loc 1 1209 0
	ld.hu	%d15, [%a4] 204
	.loc 1 1208 0
	st.h	[%a5]0, %d15
	.loc 1 1210 0
	ld.w	%d15, [%a4] 212
	st.w	[%a6]0, %d15
	.loc 1 1212 0
	ld.w	%d15, [%a4] 224
	.loc 1 1214 0
	ld.a	%a15, [%SP] 16
	.loc 1 1212 0
	st.w	[%a7]0, %d15
	.loc 1 1215 0
	ld.w	%d15, [%a4] 236
	.loc 1 1214 0
	st.w	[%a15]0, %d15
	.loc 1 1167 0
	mov	%d2, 0
	.loc 1 1216 0
	ret
.L75:
	.loc 1 1196 0
	ld.hu	%d15, [%a4] 204
	.loc 1 1195 0
	st.h	[%a5]0, %d15
	.loc 1 1197 0
	ld.w	%d15, [%a4] 212
	st.w	[%a6]0, %d15
	.loc 1 1199 0
	ld.w	%d15, [%a4] 220
	.loc 1 1201 0
	ld.a	%a15, [%SP] 16
	.loc 1 1199 0
	st.w	[%a7]0, %d15
	.loc 1 1202 0
	ld.w	%d15, [%a4] 232
	.loc 1 1201 0
	st.w	[%a15]0, %d15
	.loc 1 1167 0
	mov	%d2, 0
	.loc 1 1203 0
	ret
.L73:
	.loc 1 1182 0
	ld.hu	%d15, [%a4] 202
	.loc 1 1181 0
	st.h	[%a5]0, %d15
	.loc 1 1183 0
	ld.w	%d15, [%a4] 208
	st.w	[%a6]0, %d15
	.loc 1 1185 0
	ld.w	%d15, [%a4] 216
	.loc 1 1187 0
	ld.a	%a15, [%SP] 16
	.loc 1 1185 0
	st.w	[%a7]0, %d15
	.loc 1 1188 0
	ld.w	%d15, [%a4] 228
	.loc 1 1187 0
	st.w	[%a15]0, %d15
	.loc 1 1167 0
	mov	%d2, 0
	.loc 1 1189 0
	ret
.LFE22:
	.size	VL53L1_get_preset_mode_timing_cfg, .-VL53L1_get_preset_mode_timing_cfg
.section .text.VL53L1_set_preset_mode,"ax",@progbits
	.align 1
	.global	VL53L1_set_preset_mode
	.type	VL53L1_set_preset_mode, @function
VL53L1_set_preset_mode:
.LFB23:
	.loc 1 1238 0
.LVL97:
	.loc 1 1249 0
	mov.d	%d2, %a4
	.loc 1 1238 0
	sub.a	%SP, 16
.LCFI2:
	.loc 1 1238 0
	mov.aa	%a15, %a4
	.loc 1 1260 0
	st.b	[%a15] 1, %d4
	.loc 1 1261 0
	st.w	[%a15] 12, %d7
	.loc 1 1262 0
	ld.w	%d3, [%SP] 16
	.loc 1 1249 0
	addi	%d15, %d2, 388
	.loc 1 1252 0
	addi	%d9, %d2, 456
	.loc 1 1253 0
	addi	%d8, %d2, 164
	.loc 1 1254 0
	addi	%d14, %d2, 740
	.loc 1 1263 0
	ld.w	%d2, [%SP] 20
	.loc 1 1238 0
	mov	%d10, %d4
	.loc 1 1263 0
	st.w	[%a4] 20, %d2
	.loc 1 1250 0
	lea	%a14, [%a4] 412
	.loc 1 1262 0
	st.w	[%a4] 16, %d3
	.loc 1 1267 0
	mov	%d4, 3
.LVL98:
	.loc 1 1238 0
	mov	%e12, %d6, %d5
	mov	%d11, %d7
	.loc 1 1248 0
	lea	%a12, [%a4] 356
.LVL99:
	.loc 1 1251 0
	lea	%a13, [%a4] 436
.LVL100:
	.loc 1 1273 0
	add	%d10, -1
	.loc 1 1267 0
	call	VL53L1_init_ll_driver_state
.LVL101:
	.loc 1 1273 0
	ge.u	%d2, %d10, 38
	jz	%d2, .L100
.L98:
	.loc 1 1411 0
	mov	%d2, -4
.LVL102:
	ret
.LVL103:
.L100:
	.loc 1 1273 0
	movh.a	%a2, hi:.L82
	lea	%a2, [%a2] lo:.L82
	addsc.a	%a2, %a2, %d10, 2
	ji	%a2
	.align 2
	.align 2
.L82:
	.code32
	j	.L81
	.code32
	j	.L83
	.code32
	j	.L84
	.code32
	j	.L85
	.code32
	j	.L86
	.code32
	j	.L87
	.code32
	j	.L88
	.code32
	j	.L89
	.code32
	j	.L98
	.code32
	j	.L98
	.code32
	j	.L98
	.code32
	j	.L98
	.code32
	j	.L98
	.code32
	j	.L98
	.code32
	j	.L98
	.code32
	j	.L98
	.code32
	j	.L90
	.code32
	j	.L91
	.code32
	j	.L98
	.code32
	j	.L98
	.code32
	j	.L98
	.code32
	j	.L98
	.code32
	j	.L98
	.code32
	j	.L98
	.code32
	j	.L98
	.code32
	j	.L98
	.code32
	j	.L98
	.code32
	j	.L98
	.code32
	j	.L98
	.code32
	j	.L98
	.code32
	j	.L98
	.code32
	j	.L98
	.code32
	j	.L98
	.code32
	j	.L98
	.code32
	j	.L98
	.code32
	j	.L92
	.code32
	j	.L93
	.code32
	j	.L94
.L94:
	.loc 1 1400 0
	mov.a	%a5, %d15
	st.w	[%SP]0, %d9
	st.w	[%SP] 4, %d8
	st.w	[%SP] 8, %d14
	mov.aa	%a4, %a12
	mov.aa	%a6, %a14
	mov.aa	%a7, %a13
	call	VL53L1_preset_mode_low_power_auto_long_ranging
.LVL104:
.L95:
	.loc 1 1418 0
	jnz	%d2, .L99
.LVL105:
.L101:
	.loc 1 1433 0
	ld.w	%d6, [%SP] 16
	.loc 1 1420 0
	st.h	[%a15] 356, %d12
	.loc 1 1422 0
	st.h	[%a15] 24, %d12
	.loc 1 1433 0
	mov.aa	%a4, %a15
	mov	%e4, %d11, %d13
	call	VL53L1_set_timeouts_us
.LVL106:
	.loc 1 1440 0
	jnz	%d2, .L99
.LVL107:
.LBB6:
.LBB7:
	.loc 1 613 0
	ld.hu	%d15, [%a15] 692
.LVL108:
	jnz	%d15, .L97
	.loc 1 614 0
	mov	%d2, -15
.LVL109:
	ret
.LVL110:
.L81:
.LBE7:
.LBE6:
	.loc 1 1276 0
	mov.a	%a5, %d15
	st.w	[%SP]0, %d9
	st.w	[%SP] 4, %d8
	mov.aa	%a4, %a12
	mov.aa	%a6, %a14
	mov.aa	%a7, %a13
	call	VL53L1_preset_mode_standard_ranging
.LVL111:
	.loc 1 1418 0
	jz	%d2, .L101
.LVL112:
.L99:
	.loc 1 1449 0
	ret
.LVL113:
.L83:
	.loc 1 1286 0
	mov.a	%a5, %d15
	st.w	[%SP]0, %d9
	st.w	[%SP] 4, %d8
	mov.aa	%a4, %a12
	mov.aa	%a6, %a14
	mov.aa	%a7, %a13
	call	VL53L1_preset_mode_standard_ranging_short_range
.LVL114:
	.loc 1 1293 0
	j	.L95
.LVL115:
.L84:
	.loc 1 1296 0
	mov.a	%a5, %d15
	st.w	[%SP]0, %d9
	st.w	[%SP] 4, %d8
	mov.aa	%a4, %a12
	mov.aa	%a6, %a14
	mov.aa	%a7, %a13
	call	VL53L1_preset_mode_standard_ranging_long_range
.LVL116:
	.loc 1 1303 0
	j	.L95
.LVL117:
.L85:
	.loc 1 1307 0
	mov.a	%a5, %d15
	st.w	[%SP]0, %d9
	st.w	[%SP] 4, %d8
	mov.aa	%a4, %a12
	mov.aa	%a6, %a14
	mov.aa	%a7, %a13
	call	VL53L1_preset_mode_standard_ranging_mm1_cal
.LVL118:
	.loc 1 1314 0
	j	.L95
.LVL119:
.L86:
	.loc 1 1317 0
	mov.a	%a5, %d15
	st.w	[%SP]0, %d9
	st.w	[%SP] 4, %d8
	mov.aa	%a4, %a12
	mov.aa	%a6, %a14
	mov.aa	%a7, %a13
	call	VL53L1_preset_mode_standard_ranging_mm2_cal
.LVL120:
	.loc 1 1324 0
	j	.L95
.LVL121:
.L87:
	.loc 1 1328 0
	mov.a	%a5, %d15
	st.w	[%SP]0, %d9
	st.w	[%SP] 4, %d8
	mov.aa	%a4, %a12
	mov.aa	%a6, %a14
	mov.aa	%a7, %a13
	call	VL53L1_preset_mode_timed_ranging
.LVL122:
	.loc 1 1335 0
	j	.L95
.LVL123:
.L88:
	.loc 1 1338 0
	mov.a	%a5, %d15
	st.w	[%SP]0, %d9
	st.w	[%SP] 4, %d8
	mov.aa	%a4, %a12
	mov.aa	%a6, %a14
	mov.aa	%a7, %a13
	call	VL53L1_preset_mode_timed_ranging_short_range
.LVL124:
	.loc 1 1345 0
	j	.L95
.LVL125:
.L89:
	.loc 1 1348 0
	mov.a	%a5, %d15
	st.w	[%SP]0, %d9
	st.w	[%SP] 4, %d8
	mov.aa	%a4, %a12
	mov.aa	%a6, %a14
	mov.aa	%a7, %a13
	call	VL53L1_preset_mode_timed_ranging_long_range
.LVL126:
	.loc 1 1355 0
	j	.L95
.LVL127:
.L90:
	.loc 1 1358 0
	mov.a	%a5, %d15
	st.w	[%SP]0, %d9
	st.w	[%SP] 4, %d8
	mov.aa	%a4, %a12
	mov.aa	%a6, %a14
	mov.aa	%a7, %a13
	call	VL53L1_preset_mode_olt
.LVL128:
	.loc 1 1365 0
	j	.L95
.LVL129:
.L91:
	.loc 1 1368 0
	mov.a	%a5, %d15
	st.w	[%SP]0, %d9
	st.w	[%SP] 4, %d8
	mov.aa	%a4, %a12
	mov.aa	%a6, %a14
	mov.aa	%a7, %a13
	call	VL53L1_preset_mode_singleshot_ranging
.LVL130:
	.loc 1 1375 0
	j	.L95
.LVL131:
.L92:
	.loc 1 1378 0
	mov.a	%a5, %d15
	st.w	[%SP]0, %d9
	st.w	[%SP] 4, %d8
	st.w	[%SP] 8, %d14
	mov.aa	%a4, %a12
	mov.aa	%a6, %a14
	mov.aa	%a7, %a13
	call	VL53L1_preset_mode_low_power_auto_short_ranging
.LVL132:
	.loc 1 1386 0
	j	.L95
.LVL133:
.L93:
	.loc 1 1389 0
	mov.a	%a5, %d15
	st.w	[%SP]0, %d9
	st.w	[%SP] 4, %d8
	st.w	[%SP] 8, %d14
	mov.aa	%a4, %a12
	mov.aa	%a6, %a14
	mov.aa	%a7, %a13
	call	VL53L1_preset_mode_low_power_auto_ranging
.LVL134:
	.loc 1 1397 0
	j	.L95
.LVL135:
.L97:
.LBB9:
.LBB8:
	.loc 1 617 0
	ld.w	%d3, [%SP] 20
	st.w	[%a15] 20, %d3
	.loc 1 619 0
	mul	%d15, %d3
	.loc 1 618 0
	st.w	[%a15] 428, %d15
.LBE8:
.LBE9:
	.loc 1 1449 0
	ret
.LFE23:
	.size	VL53L1_set_preset_mode, .-VL53L1_set_preset_mode
.section .text.VL53L1_data_init,"ax",@progbits
	.align 1
	.global	VL53L1_data_init
	.type	VL53L1_data_init, @function
VL53L1_data_init:
.LFB0:
	.loc 1 155 0
.LVL136:
	sub.a	%SP, 8
.LCFI3:
	.loc 1 155 0
	mov	%d8, %d4
	.loc 1 164 0
	mov	%d4, 98
.LVL137:
	.loc 1 155 0
	mov.aa	%a15, %a4
.LVL138:
	.loc 1 164 0
	call	VL53L1_init_ll_driver_state
.LVL139:
	.loc 1 169 0
	mov	%d2, 1
	.loc 1 168 0
	mov	%d15, 0
	.loc 1 192 0
	mov.aa	%a4, %a15
	.loc 1 169 0
	st.b	[%a15] 1, %d2
	.loc 1 172 0
	st.b	[%a15] 3, %d2
	.loc 1 174 0
	st.b	[%a15] 4, %d2
	.loc 1 177 0
	mov	%d2, 1000
	.loc 1 168 0
	st.b	[%a15]0, %d15
	.loc 1 170 0
	st.b	[%a15] 2, %d15
	.loc 1 177 0
	st.w	[%a15] 8, %d2
	.loc 1 178 0
	mov	%d2, 2000
	.loc 1 182 0
	st.b	[%a15] 33, %d15
	.loc 1 186 0
	mov	%d15, 2011
	.loc 1 178 0
	st.w	[%a15] 12, %d2
	.loc 1 179 0
	mov	%d2, 13000
	.loc 1 186 0
	st.h	[%a15] 156, %d15
	.loc 1 179 0
	st.w	[%a15] 16, %d2
	.loc 1 180 0
	mov	%d2, 100
	st.w	[%a15] 20, %d2
	.loc 1 181 0
	mov	%d2, 2560
	st.h	[%a15] 24, %d2
	.loc 1 192 0
	call	VL53L1_init_version
.LVL140:
	.loc 1 202 0
	jz	%d8, .L103
	.loc 1 203 0
	mov.aa	%a4, %a15
	call	VL53L1_read_p2p_data
.LVL141:
.L103:
	.loc 1 207 0
	lea	%a4, [%a15] 272
	call	VL53L1_init_refspadchar_config_struct
.LVL142:
	.loc 1 214 0
	lea	%a4, [%a15] 288
	call	VL53L1_init_ssc_config_struct
.LVL143:
	.loc 1 222 0
	lea	%a5, [%a15] 300
	lea	%a4, [%a15] 66
	call	VL53L1_init_xtalk_config_struct
.LVL144:
	.loc 1 230 0
	lea	%a4, [%a15] 324
	call	VL53L1_init_offset_cal_config_struct
.LVL145:
	.loc 1 238 0
	lea	%a4, [%a15] 164
	call	VL53L1_init_tuning_parm_storage_struct
.LVL146:
.LBB10:
.LBB11:
	.loc 1 1810 0
	ld.bu	%d15, [%a15] 352
.LBE11:
.LBE10:
	.loc 1 251 0
	ld.bu	%d4, [%a15] 1
.LBB14:
.LBB12:
	.loc 1 1810 0
	and	%d15, %d15, 3
	addi	%d15, %d15, -128
.LBE12:
.LBE14:
	.loc 1 251 0
	ld.hu	%d5, [%a15] 24
	ld.w	%d6, [%a15] 8
.LBB15:
.LBB13:
	.loc 1 1810 0
	st.b	[%a15] 352, %d15
.LBE13:
.LBE15:
	.loc 1 251 0
	ld.w	%d15, [%a15] 16
	st.w	[%SP]0, %d15
	ld.w	%d7, [%a15] 12
	ld.w	%d15, [%a15] 20
	st.w	[%SP] 4, %d15
	mov.aa	%a4, %a15
	call	VL53L1_set_preset_mode
.LVL147:
	.loc 1 262 0
	mov.aa	%a4, %a15
	.loc 1 251 0
	mov	%d15, %d2
.LVL148:
	.loc 1 262 0
	call	VL53L1_low_power_auto_data_init
.LVL149:
	.loc 1 310 0
	mov	%d2, %d15
	ret
.LFE0:
	.size	VL53L1_data_init, .-VL53L1_data_init
.section .text.VL53L1_enable_xtalk_compensation,"ax",@progbits
	.align 1
	.global	VL53L1_enable_xtalk_compensation
	.type	VL53L1_enable_xtalk_compensation, @function
VL53L1_enable_xtalk_compensation:
.LFB24:
	.loc 1 1454 0
.LVL150:
	.loc 1 1469 0
	ld.w	%d4, [%a4] 300
	ld.h	%d5, [%a4] 318
	.loc 1 1454 0
	mov.aa	%a15, %a4
	.loc 1 1469 0
	call	VL53L1_calc_crosstalk_plane_offset_with_margin
.LVL151:
	sat.hu	%d2, %d2
.LVL152:
	.loc 1 1485 0
	mov	%d15, 1
	.loc 1 1479 0
	ld.h	%d5, [%a15] 304
	.loc 1 1482 0
	ld.h	%d6, [%a15] 306
	.loc 1 1491 0
	ld.w	%d4, [%a15] 300
	ld.bu	%d7, [%a15] 320
	.loc 1 1476 0
	st.h	[%a15] 76, %d2
	.loc 1 1478 0
	st.h	[%a15] 78, %d5
	.loc 1 1481 0
	st.h	[%a15] 80, %d6
	.loc 1 1485 0
	st.b	[%a15] 316, %d15
	.loc 1 1491 0
	call	VL53L1_calc_range_ignore_threshold
.LVL153:
	.loc 1 1490 0
	st.h	[%a15] 322, %d2
	.loc 1 1501 0
	mov.aa	%a4, %a15
	lea	%a5, [%a15] 66
	j	VL53L1_set_customer_nvm_managed
.LVL154:
.LFE24:
	.size	VL53L1_enable_xtalk_compensation, .-VL53L1_enable_xtalk_compensation
.section .text.VL53L1_get_xtalk_compensation_enable,"ax",@progbits
	.align 1
	.global	VL53L1_get_xtalk_compensation_enable
	.type	VL53L1_get_xtalk_compensation_enable, @function
VL53L1_get_xtalk_compensation_enable:
.LFB25:
	.loc 1 1515 0
.LVL155:
	.loc 1 1534 0
	ld.bu	%d15, [%a4] 316
	.loc 1 1533 0
	st.b	[%a5]0, %d15
	ret
.LFE25:
	.size	VL53L1_get_xtalk_compensation_enable, .-VL53L1_get_xtalk_compensation_enable
.section .text.VL53L1_get_lite_xtalk_margin_kcps,"ax",@progbits
	.align 1
	.global	VL53L1_get_lite_xtalk_margin_kcps
	.type	VL53L1_get_lite_xtalk_margin_kcps, @function
VL53L1_get_lite_xtalk_margin_kcps:
.LFB26:
	.loc 1 1542 0
.LVL156:
	.loc 1 1554 0
	ld.h	%d15, [%a4] 318
	st.h	[%a5]0, %d15
	.loc 1 1560 0
	mov	%d2, 0
	ret
.LFE26:
	.size	VL53L1_get_lite_xtalk_margin_kcps, .-VL53L1_get_lite_xtalk_margin_kcps
.section .text.VL53L1_set_lite_xtalk_margin_kcps,"ax",@progbits
	.align 1
	.global	VL53L1_set_lite_xtalk_margin_kcps
	.type	VL53L1_set_lite_xtalk_margin_kcps, @function
VL53L1_set_lite_xtalk_margin_kcps:
.LFB27:
	.loc 1 1565 0
.LVL157:
	.loc 1 1577 0
	st.h	[%a4] 318, %d4
	.loc 1 1582 0
	mov	%d2, 0
	ret
.LFE27:
	.size	VL53L1_set_lite_xtalk_margin_kcps, .-VL53L1_set_lite_xtalk_margin_kcps
.section .text.VL53L1_restore_xtalk_nvm_default,"ax",@progbits
	.align 1
	.global	VL53L1_restore_xtalk_nvm_default
	.type	VL53L1_restore_xtalk_nvm_default, @function
VL53L1_restore_xtalk_nvm_default:
.LFB28:
	.loc 1 1587 0
.LVL158:
	.loc 1 1599 0
	ld.w	%d15, [%a4] 308
	st.w	[%a4] 300, %d15
	.loc 1 1601 0
	ld.h	%d15, [%a4] 312
	st.h	[%a4] 304, %d15
	.loc 1 1603 0
	ld.h	%d15, [%a4] 314
	st.h	[%a4] 306, %d15
	.loc 1 1609 0
	mov	%d2, 0
	ret
.LFE28:
	.size	VL53L1_restore_xtalk_nvm_default, .-VL53L1_restore_xtalk_nvm_default
.section .text.VL53L1_disable_xtalk_compensation,"ax",@progbits
	.align 1
	.global	VL53L1_disable_xtalk_compensation
	.type	VL53L1_disable_xtalk_compensation, @function
VL53L1_disable_xtalk_compensation:
.LFB29:
	.loc 1 1613 0
.LVL159:
	.loc 1 1627 0
	mov	%d15, 0
	.loc 1 1650 0
	lea	%a5, [%a4] 66
	.loc 1 1627 0
	st.h	[%a4] 76, %d15
	.loc 1 1630 0
	st.h	[%a4] 78, %d15
	.loc 1 1633 0
	st.h	[%a4] 80, %d15
	.loc 1 1638 0
	st.b	[%a4] 316, %d15
	.loc 1 1643 0
	st.h	[%a4] 322, %d15
	.loc 1 1650 0
	j	VL53L1_set_customer_nvm_managed
.LVL160:
.LFE29:
	.size	VL53L1_disable_xtalk_compensation, .-VL53L1_disable_xtalk_compensation
.section .text.VL53L1_get_lite_sigma_threshold,"ax",@progbits
	.align 1
	.global	VL53L1_get_lite_sigma_threshold
	.type	VL53L1_get_lite_sigma_threshold, @function
VL53L1_get_lite_sigma_threshold:
.LFB30:
	.loc 1 1664 0
.LVL161:
	.loc 1 1679 0
	ld.hu	%d15, [%a4] 422
	.loc 1 1678 0
	st.h	[%a5]0, %d15
	.loc 1 1685 0
	mov	%d2, 0
	ret
.LFE30:
	.size	VL53L1_get_lite_sigma_threshold, .-VL53L1_get_lite_sigma_threshold
.section .text.VL53L1_set_lite_sigma_threshold,"ax",@progbits
	.align 1
	.global	VL53L1_set_lite_sigma_threshold
	.type	VL53L1_set_lite_sigma_threshold, @function
VL53L1_set_lite_sigma_threshold:
.LFB31:
	.loc 1 1690 0
.LVL162:
	.loc 1 1704 0
	st.h	[%a4] 422, %d4
	.loc 1 1710 0
	mov	%d2, 0
	ret
.LFE31:
	.size	VL53L1_set_lite_sigma_threshold, .-VL53L1_set_lite_sigma_threshold
.section .text.VL53L1_get_lite_min_count_rate,"ax",@progbits
	.align 1
	.global	VL53L1_get_lite_min_count_rate
	.type	VL53L1_get_lite_min_count_rate, @function
VL53L1_get_lite_min_count_rate:
.LFB32:
	.loc 1 1715 0
.LVL163:
	.loc 1 1730 0
	ld.hu	%d15, [%a4] 424
	.loc 1 1729 0
	st.h	[%a5]0, %d15
	.loc 1 1736 0
	mov	%d2, 0
	ret
.LFE32:
	.size	VL53L1_get_lite_min_count_rate, .-VL53L1_get_lite_min_count_rate
.section .text.VL53L1_set_lite_min_count_rate,"ax",@progbits
	.align 1
	.global	VL53L1_set_lite_min_count_rate
	.type	VL53L1_set_lite_min_count_rate, @function
VL53L1_set_lite_min_count_rate:
.LFB33:
	.loc 1 1741 0
.LVL164:
	.loc 1 1755 0
	st.h	[%a4] 424, %d4
	.loc 1 1762 0
	mov	%d2, 0
	ret
.LFE33:
	.size	VL53L1_set_lite_min_count_rate, .-VL53L1_set_lite_min_count_rate
.section .text.VL53L1_get_vhv_loopbound,"ax",@progbits
	.align 1
	.global	VL53L1_get_vhv_loopbound
	.type	VL53L1_get_vhv_loopbound, @function
VL53L1_get_vhv_loopbound:
.LFB34:
	.loc 1 1767 0
.LVL165:
	.loc 1 1780 0
	ld.bu	%d15, [%a4] 352
	.loc 1 1786 0
	mov	%d2, 0
	.loc 1 1780 0
	sh	%d15, -2
	st.b	[%a5]0, %d15
	.loc 1 1786 0
	ret
.LFE34:
	.size	VL53L1_get_vhv_loopbound, .-VL53L1_get_vhv_loopbound
.section .text.VL53L1_set_vhv_loopbound,"ax",@progbits
	.align 1
	.global	VL53L1_set_vhv_loopbound
	.type	VL53L1_set_vhv_loopbound, @function
VL53L1_set_vhv_loopbound:
.LFB35:
	.loc 1 1793 0
.LVL166:
	.loc 1 1810 0
	ld.bu	%d15, [%a4] 352
	.loc 1 1818 0
	mov	%d2, 0
	.loc 1 1810 0
	and	%d15, %d15, 3
	madd	%d4, %d15, %d4, 4
.LVL167:
	st.b	[%a4] 352, %d4
	.loc 1 1818 0
	ret
.LFE35:
	.size	VL53L1_set_vhv_loopbound, .-VL53L1_set_vhv_loopbound
.section .text.VL53L1_get_vhv_config,"ax",@progbits
	.align 1
	.global	VL53L1_get_vhv_config
	.type	VL53L1_get_vhv_config, @function
VL53L1_get_vhv_config:
.LFB36:
	.loc 1 1826 0
.LVL168:
	.loc 1 1849 0
	ld.bu	%d15, [%a4] 355
	.loc 1 1857 0
	mov	%d2, 0
	.loc 1 1849 0
	sh	%d15, -7
	st.b	[%a5]0, %d15
	.loc 1 1850 0
	ld.bu	%d15, [%a4] 355
	and	%d15, %d15, 127
	st.b	[%a6]0, %d15
	.loc 1 1857 0
	ret
.LFE36:
	.size	VL53L1_get_vhv_config, .-VL53L1_get_vhv_config
.section .text.VL53L1_set_vhv_config,"ax",@progbits
	.align 1
	.global	VL53L1_set_vhv_config
	.type	VL53L1_set_vhv_config, @function
VL53L1_set_vhv_config:
.LFB37:
	.loc 1 1865 0
.LVL169:
	.loc 1 1877 0
	and	%d5, %d5, 127
.LVL170:
	madd	%d4, %d5, %d4, 128
.LVL171:
	.loc 1 1885 0
	mov	%d2, 0
	.loc 1 1877 0
	st.b	[%a4] 355, %d4
	.loc 1 1885 0
	ret
.LFE37:
	.size	VL53L1_set_vhv_config, .-VL53L1_set_vhv_config
.section .text.VL53L1_init_and_start_range,"ax",@progbits
	.align 1
	.global	VL53L1_init_and_start_range
	.type	VL53L1_init_and_start_range, @function
VL53L1_init_and_start_range:
.LFB38:
	.loc 1 1893 0
.LVL172:
	.loc 1 1934 0
	ld.bu	%d15, [%a4] 460
	.loc 1 1930 0
	st.b	[%a4] 2, %d4
	.loc 1 1934 0
	and	%d15, %d15, 15
	or	%d4, %d15
.LVL173:
	.loc 1 1941 0
	ld.h	%d15, [%a4] 322
	st.h	[%a4] 380, %d15
	.loc 1 1949 0
	ld.bu	%d15, [%a4] 742
	.loc 1 1934 0
	st.b	[%a4] 460, %d4
	.loc 1 1949 0
	ne	%d15, %d15, 255
	.loc 1 1893 0
	lea	%SP, [%SP] -256
.LCFI4:
.LVL174:
	.loc 1 1893 0
	mov.aa	%a15, %a4
	.loc 1 1949 0
	jz	%d15, .L167
.L122:
	.loc 1 1954 0
	ld.w	%d2, [%a15] 740
	insert	%d15, %d2, 0, 8, 16
	xor	%d15, %d2
	mov	%d2, 256
	jeq	%d15, %d2, .L168
.L123:
	.loc 1 1979 0
	movh	%d2, 1
	addi	%d2, %d2, 256
	jeq	%d15, %d2, .L169
	add	%d15, %d5, -1
	and	%d15, 255
	ge.u	%d10, %d5, 5
	ge.u	%d11, %d5, 4
	ge.u	%d12, %d5, 3
	ge.u	%d13, %d5, 2
	ne	%d14, %d5, 0
	.loc 1 2021 0
	mov	%d8, 5
	.loc 1 1979 0
	mov	%d9, 131
	jlt.u	%d15, 6, .L128
.LVL175:
.L130:
	.loc 1 1979 0 is_stmt 0 discriminator 3
	mov	%d15, 0
	.loc 1 2030 0 is_stmt 1 discriminator 3
	mov	%d3, 0
.LVL176:
.L132:
	addsc.a	%a2, %SP, %d15, 0
	add	%d15, 1
.LVL177:
	.loc 1 2029 0 discriminator 3
	extr.u	%d2, %d15, 0, 16
	.loc 1 2030 0 discriminator 3
	st.b	[%a2]0, %d3
.LVL178:
	.loc 1 2029 0 discriminator 3
	jlt.u	%d2, %d8, .L132
.LVL179:
.L131:
	mov	%d15, 1
	.loc 1 1906 0
	mov	%d2, 0
	.loc 1 2035 0
	jge.u	%d5, 6, .L170
.LVL180:
.L133:
	.loc 1 2048 0
	and	%d10, %d15
	jnz	%d10, .L171
.LVL181:
.L134:
	.loc 1 2061 0
	and	%d11, %d15
	jnz	%d11, .L172
.LVL182:
.L135:
	.loc 1 2074 0
	and	%d12, %d15
	jnz	%d12, .L173
.LVL183:
.L136:
	.loc 1 2087 0
	and	%d13, %d15
	jnz	%d13, .L174
.LVL184:
.L137:
	.loc 1 2100 0
	and	%d15, %d14
	jz	%d15, .L138
	.loc 1 2107 0
	ld.bu	%d15, [%a15] 460
	.loc 1 2103 0
	rsub	%d2, %d9, 113
.LVL185:
	extr.u	%d2, %d2, 0, 16
.LVL186:
	.loc 1 2107 0
	jz.t	%d15, 5, .L139
	.loc 1 2110 0
	ld.bu	%d3, [%a15] 46
	.loc 1 2112 0
	st.b	[%a15] 454, %d3
	.loc 1 2110 0
	or	%d15, %d3, 1
	st.b	[%a15] 436, %d15
	.loc 1 2111 0
	st.b	[%a15] 448, %d15
.L139:
	.loc 1 2114 0
	addsc.a	%a5, %SP, %d2, 0
	lea	%a4, [%a15] 436
	mov	%d4, 18
	call	VL53L1_i2c_encode_dynamic_config
.LVL187:
.L138:
	.loc 1 2121 0
	jz	%d2, .L175
.LVL188:
.L152:
	.loc 1 2156 0
	ret
.LVL189:
.L169:
	ld.bu	%d15, [%a15] 743
.LVL190:
.L143:
	.loc 1 1982 0
	st.b	[%a15] 390, %d15
.LVL191:
	mov	%d13, 1
	mov	%d12, 1
	mov	%d11, 1
	mov	%d10, 1
	mov	%d15, 5
	.loc 1 1986 0
	mov	%d5, 6
.LVL192:
.L128:
	movh.a	%a2, hi:CSWTCH.48
	lea	%a2, [%a2] lo:CSWTCH.48
	addsc.a	%a2, %a2, %d15, 1
	.loc 1 2029 0
	mov	%d14, 1
	ld.hu	%d9, [%a2]0
.LVL193:
	.loc 1 2021 0
	rsub	%d8, %d9, 136
	extr.u	%d8, %d8, 0, 16
.LVL194:
	.loc 1 2029 0
	jnz	%d8, .L130
	j	.L131
.LVL195:
.L175:
	.loc 1 2123 0
	rsub	%d15, %d9, 131
	.loc 1 2130 0
	extr.u	%d15, %d15, 0, 16
	.loc 1 2126 0
	lea	%a4, [%a15] 456
	addsc.a	%a5, %SP, %d15, 0
	mov	%d4, 5
	call	VL53L1_i2c_encode_system_control
.LVL196:
	.loc 1 2135 0
	jnz	%d2, .L152
	.loc 1 2136 0
	mov.aa	%a4, %a15
	mov	%d4, %d9
	mov.aa	%a5, %SP
	mov	%d5, %d8
	call	VL53L1_WriteMulti
.LVL197:
	.loc 1 2147 0
	jnz	%d2, .L152
	.loc 1 2148 0
	mov.aa	%a4, %a15
	call	VL53L1_update_ll_driver_rd_state
.LVL198:
	.loc 1 2150 0
	jnz	%d2, .L152
	.loc 1 2151 0
	mov.aa	%a4, %a15
	j	VL53L1_update_ll_driver_cfg_state
.LVL199:
.L174:
	.loc 1 2090 0
	rsub	%d15, %d9, 90
	.loc 1 2097 0
	extr.u	%d15, %d15, 0, 16
	.loc 1 2093 0
	lea	%a4, [%a15] 412
	addsc.a	%a5, %SP, %d15, 0
	mov	%d4, 23
	call	VL53L1_i2c_encode_timing_config
.LVL200:
	eq	%d15, %d2, 0
	j	.L137
.LVL201:
.L173:
	.loc 1 2077 0
	rsub	%d15, %d9, 68
	.loc 1 2084 0
	extr.u	%d15, %d15, 0, 16
	.loc 1 2080 0
	lea	%a4, [%a15] 388
	addsc.a	%a5, %SP, %d15, 0
	mov	%d4, 22
	call	VL53L1_i2c_encode_general_config
.LVL202:
	eq	%d15, %d2, 0
	j	.L136
.LVL203:
.L172:
	.loc 1 2064 0
	rsub	%d15, %d9, 36
	.loc 1 2071 0
	extr.u	%d15, %d15, 0, 16
	.loc 1 2067 0
	lea	%a4, [%a15] 356
	addsc.a	%a5, %SP, %d15, 0
	mov	%d4, 32
	call	VL53L1_i2c_encode_static_config
.LVL204:
	eq	%d15, %d2, 0
	j	.L135
.LVL205:
.L171:
	.loc 1 2051 0
	rsub	%d15, %d9, 13
	.loc 1 2058 0
	extr.u	%d15, %d15, 0, 16
	.loc 1 2054 0
	lea	%a4, [%a15] 66
	addsc.a	%a5, %SP, %d15, 0
	mov	%d4, 23
	call	VL53L1_i2c_encode_customer_nvm_managed
.LVL206:
	eq	%d15, %d2, 0
	j	.L134
.LVL207:
.L170:
	.loc 1 2038 0
	rsub	%d15, %d9, 1
	.loc 1 2045 0
	extr.u	%d15, %d15, 0, 16
	.loc 1 2041 0
	lea	%a4, [%a15] 344
.LVL208:
	addsc.a	%a5, %SP, %d15, 0
	mov	%d4, 11
	call	VL53L1_i2c_encode_static_nvm_managed
.LVL209:
	eq	%d15, %d2, 0
	j	.L133
.LVL210:
.L168:
	.loc 1 1960 0
	mov	%d2, 32
	.loc 1 1958 0
	ld.bu	%d15, [%a15] 390
	.loc 1 1957 0
	st.b	[%a15] 743, %d15
	.loc 1 1960 0
	st.b	[%a15] 390, %d2
	.loc 1 1962 0
	ld.bu	%d2, [%a15] 453
	and	%d2, %d2, 96
	jnz	%d2, .L124
	.loc 1 1965 0
	ld.h	%d2, [%a15] 88
	sh	%d2, 2
	st.h	[%a15] 84, %d2
	.loc 1 1972 0
	jlt.u	%d5, 5, .L126
.L176:
	ld.w	%d2, [%a15] 740
	insert	%d15, %d2, 0, 8, 16
	xor	%d15, %d2
	j	.L123
.L167:
	.loc 1 1950 0
	st.b	[%a4] 742, %d15
	j	.L122
.L124:
	.loc 1 1968 0
	mov	%d2, 0
	st.h	[%a15] 84, %d2
	.loc 1 1972 0
	jge.u	%d5, 5, .L176
.L126:
.LVL211:
	.loc 1 1979 0
	ld.w	%d3, [%a15] 740
	insert	%d2, %d3, 0, 8, 16
	xor	%d2, %d3
	movh	%d3, 1
	addi	%d3, %d3, 256
	jeq	%d2, %d3, .L143
	mov	%d13, 1
	mov	%d12, 1
	mov	%d11, 1
	mov	%d10, 1
	mov	%d15, 4
	.loc 1 1974 0
	mov	%d5, 5
	j	.L128
.LFE38:
	.size	VL53L1_init_and_start_range, .-VL53L1_init_and_start_range
.section .text.VL53L1_stop_range,"ax",@progbits
	.align 1
	.global	VL53L1_stop_range
	.type	VL53L1_stop_range, @function
VL53L1_stop_range:
.LFB39:
	.loc 1 2161 0
.LVL212:
	.loc 1 2174 0
	ld.bu	%d15, [%a4] 460
	.loc 1 2178 0
	lea	%a5, [%a4] 456
	.loc 1 2174 0
	and	%d15, %d15, 15
	orn	%d15, %d15, ~(-128)
	.loc 1 2161 0
	mov.aa	%a15, %a4
	.loc 1 2174 0
	st.b	[%a4] 460, %d15
	.loc 1 2178 0
	call	VL53L1_set_system_control
.LVL213:
	mov	%d15, %d2
.LVL214:
	.loc 1 2183 0
	ld.bu	%d2, [%a15] 460
.LVL215:
	.loc 1 2187 0
	mov.aa	%a4, %a15
	.loc 1 2183 0
	and	%d2, %d2, 15
	.loc 1 2187 0
	mov	%d4, 3
	.loc 1 2183 0
	st.b	[%a15] 460, %d2
	.loc 1 2187 0
	call	VL53L1_init_ll_driver_state
.LVL216:
	.loc 1 2192 0
	ld.bu	%d2, [%a15] 741
	jeq	%d2, 1, .L179
	.loc 1 2196 0
	mov	%d2, %d15
	ret
.L179:
	.loc 1 2193 0
	mov.aa	%a4, %a15
	call	VL53L1_low_power_auto_data_stop_range
.LVL217:
	.loc 1 2196 0
	mov	%d2, %d15
	ret
.LFE39:
	.size	VL53L1_stop_range, .-VL53L1_stop_range
.section .text.VL53L1_get_measurement_results,"ax",@progbits
	.align 1
	.global	VL53L1_get_measurement_results
	.type	VL53L1_get_measurement_results, @function
VL53L1_get_measurement_results:
.LFB40:
	.loc 1 2202 0
.LVL218:
	lea	%SP, [%SP] -256
.LCFI5:
	.loc 1 2202 0
	mov.aa	%a12, %a4
	mov	%d15, %d4
	.loc 1 2225 0
	jeq	%d4, 1, .L182
.LVL219:
	eq	%d2, %d4, 2
	.loc 1 2248 0
	mov	%d5, 134
	mov	%d4, 136
.LVL220:
	mov.aa	%a5, %SP
	sel	%d5, %d2, %d5, 20
	call	VL53L1_ReadMulti
.LVL221:
	.loc 1 2257 0
	ge.u	%d4, %d15, 2
	and.eq	%d4, %d2, 0
	eq	%d3, %d2, 0
	jnz	%d4, .L195
	.loc 1 2270 0
	ne	%d15, %d15, 0
	and	%d15, %d3
	jnz	%d15, .L196
.LVL222:
.L185:
	.loc 1 2283 0
	jz	%d2, .L197
.LVL223:
.L190:
	.loc 1 2296 0
	ret
.L196:
.LVL224:
	.loc 1 2276 0
	mov	%d4, 33
	lea	%a4, [%SP] 44
	lea	%a5, [%a12] 648
	call	VL53L1_i2c_decode_core_results
.LVL225:
	.loc 1 2283 0
	jnz	%d2, .L190
.LVL226:
.L197:
	.loc 1 2286 0
	mov	%d4, 44
	mov.aa	%a4, %SP
	lea	%a5, [%a12] 462
	j	VL53L1_i2c_decode_system_results
.LVL227:
.L195:
	.loc 1 2263 0
	mov	%d4, 56
	lea	%a4, [%SP] 78
	lea	%a5, [%a12] 684
	call	VL53L1_i2c_decode_debug_results
.LVL228:
	eq	%d3, %d2, 0
	.loc 1 2270 0
	ne	%d15, %d15, 0
	and	%d15, %d3
	jz	%d15, .L185
	j	.L196
.LVL229:
.L182:
	.loc 1 2248 0
	mov	%d4, 136
.LVL230:
	mov.aa	%a5, %SP
	mov	%d5, 77
	call	VL53L1_ReadMulti
.LVL231:
	.loc 1 2258 0
	eq	%d3, %d2, 0
	.loc 1 2270 0
	ne	%d15, %d15, 0
	and	%d15, %d3
	jz	%d15, .L185
	j	.L196
.LFE40:
	.size	VL53L1_get_measurement_results, .-VL53L1_get_measurement_results
.section .text.VL53L1_clear_interrupt_and_enable_next_range,"ax",@progbits
	.align 1
	.global	VL53L1_clear_interrupt_and_enable_next_range
	.type	VL53L1_clear_interrupt_and_enable_next_range, @function
VL53L1_clear_interrupt_and_enable_next_range:
.LFB42:
	.loc 1 2401 0
.LVL232:
	.loc 1 2422 0
	mov	%d5, 3
	j	VL53L1_init_and_start_range
.LVL233:
.LFE42:
	.size	VL53L1_clear_interrupt_and_enable_next_range, .-VL53L1_clear_interrupt_and_enable_next_range
.section .text.VL53L1_copy_sys_and_core_results_to_range_results,"ax",@progbits
	.align 1
	.global	VL53L1_copy_sys_and_core_results_to_range_results
	.type	VL53L1_copy_sys_and_core_results_to_range_results, @function
VL53L1_copy_sys_and_core_results_to_range_results:
.LFB43:
	.loc 1 2438 0
.LVL234:
	.loc 1 2451 0
	mov	%d3, 0
	.loc 1 2456 0
	mov	%d5, 0
	and	%d2, %d3, 255
	.loc 1 2449 0
	ld.bu	%d15, [%a4] 3
	st.b	[%a6] 2, %d15
	.loc 1 2451 0
	lea	%a15, [%a6] 4
.LVL235:
	.loc 1 2455 0
	st.b	[%a15]0, %d2
	.loc 1 2456 0
	st.w	[%a15] 4, %d5
	.loc 1 2458 0
	ld.bu	%d15, [%a4] 3
	.loc 1 2461 0
	mov	%d7, 19
	.loc 1 2458 0
	jnz	%d15, .L200
.LVL236:
.L220:
	.loc 1 2459 0 discriminator 1
	ld.bu	%d15, [%a4] 1
	and	%d15, %d15, 31
	.loc 1 2458 0 discriminator 1
	ne	%d6, %d15, 9
	jz	%d6, .L215
.L201:
	.loc 1 2463 0
	st.b	[%a15] 62, %d15
.L202:
	.loc 1 2467 0
	jne	%d2, 1, .L216
	.loc 1 2524 0
	ld.h	%d15, [%a4] 24
	st.h	[%a15] 16, %d15
	.loc 1 2526 0
	ld.h	%d15, [%a4] 26
	st.h	[%a15] 44, %d15
	.loc 1 2528 0
	mov	%d15, -1
	st.h	[%a15] 46, %d15
	.loc 1 2530 0
	ld.h	%d15, [%a4] 28
	st.h	[%a15] 48, %d15
	.loc 1 2536 0
	ld.hu	%d15, [%a4] 30
	sh	%d15, 5
.LVL237:
	sat.hu	%d15, %d15
.LVL238:
	.loc 1 2540 0
	st.h	[%a15] 56, %d15
	.loc 1 2544 0
	ld.h	%d15, [%a4] 32
.LVL239:
	st.h	[%a15] 58, %d15
	.loc 1 2547 0
	ld.hu	%d15, [%a4] 34
.LVL240:
	.loc 1 2551 0
	mul	%d4, %d15
.LVL241:
	.loc 1 2552 0
	addi	%d15, %d4, 1024
.LVL242:
	.loc 1 2553 0
	ge	%d2, %d15, 0
	addi	%d4, %d4, 3071
	sel	%d15, %d2, %d15, %d4
.LVL243:
	sha	%d15, %d15, -11
	.loc 1 2555 0
	st.h	[%a15] 60, %d15
	.loc 1 2557 0
	ld.w	%d15, [%a5] 20
	st.w	[%a15] 36, %d15
	.loc 1 2559 0
	ld.w	%d15, [%a5] 24
	st.w	[%a15] 40, %d15
	.loc 1 2561 0
	ld.w	%d15, [%a5] 28
	st.w	[%a15] 20, %d15
	.loc 1 2563 0
	ld.w	%d15, [%a5] 16
	st.w	[%a15] 32, %d15
.LVL244:
.L209:
	.loc 1 2576 0
	mov	%d3, 0
	st.b	[%a6] 3, %d3
	.loc 1 2584 0
	ld.bu	%d15, [%a4] 1
	and	%d4, %d15, 31
	addi	%d2, %d4, -1
	and	%d2, %d2, 255
	ge.u	%d15, %d2, 17
	jnz	%d15, .L199
	movh	%d15, 1
	addi	%d15, %d15, 4103
	extr.u	%d2, %d15, %d2, 1
	jnz	%d2, .L217
.L199:
	ret
.LVL245:
.L216:
	.loc 1 2471 0
	ld.bu	%d15, [%a4] 2
	jeq	%d15, 7, .L218
	.loc 1 2474 0
	ne	%d15, %d15, 8
	jz	%d15, .L219
	.loc 1 2478 0
	ld.h	%d15, [%a4] 4
	st.h	[%a15] 16, %d15
.L206:
	.loc 1 2481 0
	ld.h	%d15, [%a4] 16
	st.h	[%a15] 44, %d15
	.loc 1 2483 0
	ld.h	%d15, [%a4] 22
	st.h	[%a15] 46, %d15
	.loc 1 2485 0
	ld.h	%d15, [%a4] 8
	st.h	[%a15] 48, %d15
	.loc 1 2491 0
	ld.hu	%d15, [%a4] 10
	sh	%d15, 5
.LVL246:
	sat.hu	%d15, %d15
.LVL247:
	.loc 1 2495 0
	st.h	[%a15] 56, %d15
	.loc 1 2499 0
	ld.h	%d15, [%a4] 12
.LVL248:
	st.h	[%a15] 58, %d15
	.loc 1 2502 0
	ld.hu	%d15, [%a4] 14
.LVL249:
	.loc 1 2506 0
	mul	%d2, %d15, %d4
.LVL250:
	.loc 1 2507 0
	addi	%d15, %d2, 1024
.LVL251:
	.loc 1 2508 0
	ge	%d6, %d15, 0
	addi	%d2, %d2, 3071
	sel	%d15, %d6, %d15, %d2
.LVL252:
	sha	%d15, %d15, -11
	.loc 1 2510 0
	st.h	[%a15] 60, %d15
	.loc 1 2512 0
	ld.w	%d15, [%a5] 4
	st.w	[%a15] 36, %d15
	.loc 1 2514 0
	ld.w	%d15, [%a5] 8
	st.w	[%a15] 40, %d15
	.loc 1 2516 0
	ld.w	%d15, [%a5] 12
	st.w	[%a15] 20, %d15
	.loc 1 2518 0
	ld.w	%d15, [%a5]0
	st.w	[%a15] 32, %d15
.LVL253:
	.loc 1 2569 0
	lea	%a15, [%a15] 64
.LVL254:
	.loc 1 2453 0
	jeq	%d3, 1, .L209
	mov	%d3, 1
.LVL255:
	and	%d2, %d3, 255
.LVL256:
	.loc 1 2456 0
	st.w	[%a15] 4, %d5
	.loc 1 2455 0
	st.b	[%a15]0, %d2
.LVL257:
	.loc 1 2458 0
	ld.bu	%d15, [%a4] 3
	jz	%d15, .L220
.LVL258:
.L200:
	ld.bu	%d15, [%a4] 1
	and	%d15, %d15, 31
	j	.L201
.LVL259:
.L217:
	.loc 1 2593 0
	st.b	[%a6] 3, %d4
	.loc 1 2596 0
	st.b	[%a6] 66, %d3
	ret
.LVL260:
.L215:
	.loc 1 2461 0
	st.b	[%a15] 62, %d7
	j	.L202
.L219:
	.loc 1 2475 0
	ld.h	%d15, [%a4] 20
	st.h	[%a15] 16, %d15
	j	.L206
.L218:
	.loc 1 2472 0
	ld.h	%d15, [%a4] 18
	st.h	[%a15] 16, %d15
	j	.L206
.LFE43:
	.size	VL53L1_copy_sys_and_core_results_to_range_results, .-VL53L1_copy_sys_and_core_results_to_range_results
.section .text.VL53L1_get_device_results,"ax",@progbits
	.align 1
	.global	VL53L1_get_device_results
	.type	VL53L1_get_device_results, @function
VL53L1_get_device_results:
.LFB41:
	.loc 1 2303 0
.LVL261:
	.loc 1 2303 0
	mov.aa	%a15, %a4
	mov.aa	%a13, %a5
	.loc 1 2321 0
	lea	%a12, [%a4] 756
.LVL262:
	.loc 1 2328 0
	call	VL53L1_get_measurement_results
.LVL263:
	.loc 1 2332 0
	jz	%d2, .L239
	.loc 1 2341 0
	ld.bu	%d15, [%a15] 741
	jeq	%d15, 1, .L240
.LVL264:
.L237:
	.loc 1 2366 0
	ld.bu	%d15, [%a15] 44
	st.b	[%a15] 756, %d15
	.loc 1 2367 0
	ld.bu	%d15, [%a15] 48
	st.b	[%a12] 1, %d15
	.loc 1 2371 0
		# #chunks=132, chunksize=1, remains=0
	lea	%a15, 132-1
	0:
	ld.bu	%d15, [%a12+]1
	st.b	[%a13+]1, %d15
	loop	%a15, 0b
.LVL265:
.L235:
	.loc 1 2395 0
	ret
.LVL266:
.L239:
	.loc 1 2333 0
	ld.hu	%d4, [%a15] 156
	lea	%a4, [%a15] 462
	lea	%a5, [%a15] 648
	mov.aa	%a6, %a12
	call	VL53L1_copy_sys_and_core_results_to_range_results
.LVL267:
	.loc 1 2341 0
	ld.bu	%d8, [%a15] 741
	jeq	%d8, 1, .L241
.L223:
.LVL268:
	.loc 1 2366 0
	ld.bu	%d15, [%a15] 44
	st.b	[%a15] 756, %d15
	.loc 1 2367 0
	ld.bu	%d15, [%a15] 48
	st.b	[%a12] 1, %d15
	.loc 1 2371 0
		# #chunks=132, chunksize=1, remains=0
	lea	%a2, 132-1
	0:
	ld.bu	%d15, [%a12+]1
	st.b	[%a13+]1, %d15
	loop	%a2, 0b
.LVL269:
.L234:
	.loc 1 2382 0
	mov.aa	%a4, %a15
	j	VL53L1_check_ll_driver_rd_state
.LVL270:
.L241:
	.loc 1 2345 0 discriminator 1
	ld.bu	%d15, [%a15] 742
	.loc 1 2344 0 discriminator 1
	jz	%d15, .L242
	.loc 1 2349 0 discriminator 1
	jeq	%d15, 1, .L243
.LVL271:
	.loc 1 2355 0
	ne	%d15, %d15, 255
	jz	%d15, .L223
.LVL272:
.L226:
	.loc 1 2357 0
	mov.aa	%a4, %a15
	call	VL53L1_low_power_auto_update_DSS
.LVL273:
	.loc 1 2366 0
	ld.bu	%d15, [%a15] 44
	st.b	[%a15] 756, %d15
	.loc 1 2367 0
	ld.bu	%d15, [%a15] 48
	st.b	[%a12] 1, %d15
	.loc 1 2371 0
		# #chunks=132, chunksize=1, remains=0
	lea	%a2, 132-1
	0:
	ld.bu	%d15, [%a12+]1
	st.b	[%a13+]1, %d15
	loop	%a2, 0b
.LVL274:
	.loc 1 2381 0
	jz	%d2, .L234
	j	.L235
.LVL275:
.L240:
	.loc 1 2355 0
	ld.bu	%d15, [%a15] 742
	eq	%d15, %d15, 255
	jz	%d15, .L237
	.loc 1 2366 0
	ld.bu	%d15, [%a15] 44
	st.b	[%a15] 756, %d15
	.loc 1 2367 0
	ld.bu	%d15, [%a15] 48
	st.b	[%a12] 1, %d15
	.loc 1 2371 0
		# #chunks=132, chunksize=1, remains=0
	lea	%a2, 132-1
	0:
	ld.bu	%d15, [%a12+]1
	st.b	[%a13+]1, %d15
	loop	%a2, 0b
.LVL276:
	ret
.LVL277:
.L242:
	.loc 1 2346 0
	mov.aa	%a4, %a15
	call	VL53L1_low_power_auto_setup_manual_calibration
.LVL278:
	.loc 1 2348 0
	st.b	[%a15] 742, %d8
	.loc 1 2355 0
	jnz	%d2, .L237
	j	.L226
.LVL279:
.L243:
	.loc 1 2351 0
	mov	%d15, 2
	st.b	[%a15] 742, %d15
.LVL280:
	j	.L226
.LFE41:
	.size	VL53L1_get_device_results, .-VL53L1_get_device_results
.section .text.VL53L1_set_GPIO_interrupt_config,"ax",@progbits
	.align 1
	.global	VL53L1_set_GPIO_interrupt_config
	.type	VL53L1_set_GPIO_interrupt_config, @function
VL53L1_set_GPIO_interrupt_config:
.LFB44:
	.loc 1 2620 0
.LVL281:
	.loc 1 2620 0
	ld.bu	%d1, [%SP]0
	ld.hu	%d0, [%SP] 4
	ld.hu	%d3, [%SP] 8
	ld.hu	%d2, [%SP] 12
	ld.hu	%d15, [%SP] 16
	.loc 1 2624 0
	lea	%a12, [%a4] 52
.LVL282:
	.loc 1 2620 0
	mov.aa	%a15, %a4
	.loc 1 2629 0
	st.b	[%a4] 52, %d4
	.loc 1 2630 0
	st.b	[%a4] 53, %d5
	.loc 1 2631 0
	st.b	[%a4] 54, %d6
	.loc 1 2632 0
	st.b	[%a4] 55, %d7
	.loc 1 2633 0
	st.b	[%a4] 56, %d1
	.loc 1 2634 0
	st.h	[%a4] 58, %d0
	.loc 1 2635 0
	st.h	[%a4] 60, %d3
	.loc 1 2636 0
	st.h	[%a4] 62, %d2
	.loc 1 2637 0
	st.h	[%a4] 64, %d15
	.loc 1 2641 0
	mov.aa	%a4, %a12
.LVL283:
	call	VL53L1_encode_GPIO_interrupt_config
.LVL284:
	.loc 1 2640 0
	st.b	[%a15] 390, %d2
	.loc 1 2645 0
	mov.aa	%a4, %a15
	mov.aa	%a5, %a12
	j	VL53L1_set_GPIO_thresholds_from_struct
.LVL285:
.LFE44:
	.size	VL53L1_set_GPIO_interrupt_config, .-VL53L1_set_GPIO_interrupt_config
.section .text.VL53L1_set_GPIO_interrupt_config_struct,"ax",@progbits
	.align 1
	.global	VL53L1_set_GPIO_interrupt_config_struct
	.type	VL53L1_set_GPIO_interrupt_config_struct, @function
VL53L1_set_GPIO_interrupt_config_struct:
.LFB45:
	.loc 1 2660 0
.LVL286:
	sub.a	%SP, 16
.LCFI6:
	.loc 1 2657 0
	lea	%a2, [%SP] 2
	.loc 1 2660 0
	mov.aa	%a15, %a4
	.loc 1 2657 0
	mov.aa	%a3, %a2
		# #chunks=7, chunksize=2, remains=0
	lea	%a4, 7-1
	0:
	ld.h	%d15, [%a5+]2
	st.h	[%a3+]2, %d15
	loop	%a4, 0b
.LVL287:
	.loc 1 2664 0
	lea	%a12, [%a15] 52
.LVL288:
	.loc 1 2669 0
	mov.aa	%a3, %a12
		# #chunks=14, chunksize=1, remains=0
	lea	%a4, 14-1
	0:
	ld.bu	%d15, [%a2+]1
	st.b	[%a3+]1, %d15
	loop	%a4, 0b
	.loc 1 2673 0
	mov.aa	%a4, %a12
	call	VL53L1_encode_GPIO_interrupt_config
.LVL289:
	.loc 1 2672 0
	st.b	[%a15] 390, %d2
	.loc 1 2682 0
	.loc 1 2676 0
	mov.aa	%a4, %a15
	mov.aa	%a5, %a12
	.loc 1 2682 0
	lea	%SP, [%SP] 16
	.loc 1 2676 0
	j	VL53L1_set_GPIO_thresholds_from_struct
.LVL290:
.LFE45:
	.size	VL53L1_set_GPIO_interrupt_config_struct, .-VL53L1_set_GPIO_interrupt_config_struct
.section .text.VL53L1_get_GPIO_interrupt_config,"ax",@progbits
	.align 1
	.global	VL53L1_get_GPIO_interrupt_config
	.type	VL53L1_get_GPIO_interrupt_config, @function
VL53L1_get_GPIO_interrupt_config:
.LFB46:
	.loc 1 2691 0
.LVL291:
	mov.aa	%a15, %a4
.LVL292:
	sub.a	%SP, 16
.LCFI7:
	.loc 1 2702 0
	ld.bu	%d4, [%a15] 390
	mov.aa	%a4, %SP
.LVL293:
	.loc 1 2691 0
	mov.aa	%a12, %a5
	.loc 1 2702 0
	call	VL53L1_decode_GPIO_interrupt_config
.LVL294:
	lea	%a2, [%a15] 52
	mov.aa	%a13, %SP
	mov.aa	%a3, %a2
		# #chunks=7, chunksize=2, remains=0
	lea	%a4, 7-1
	0:
	ld.h	%d15, [%a13+]2
	st.h	[%a3+]2, %d15
	loop	%a4, 0b
	.loc 1 2708 0
	ld.h	%d15, [%a15] 438
	st.h	[%a15] 58, %d15
	.loc 1 2710 0
	ld.h	%d15, [%a15] 440
	st.h	[%a15] 60, %d15
	.loc 1 2713 0
	ld.h	%d15, [%a15] 400
	st.h	[%a15] 62, %d15
	.loc 1 2715 0
	ld.h	%d15, [%a15] 402
	st.h	[%a15] 64, %d15
	.loc 1 2718 0
	jeq.a	%a2, %a12, .L247
	.loc 1 2723 0
		# #chunks=14, chunksize=1, remains=0
	lea	%a15, 14-1
	0:
	ld.bu	%d15, [%a2+]1
	st.b	[%a12+]1, %d15
	loop	%a15, 0b
.LVL295:
.L247:
	.loc 1 2729 0
	mov	%d2, 0
	ret
.LFE46:
	.size	VL53L1_get_GPIO_interrupt_config, .-VL53L1_get_GPIO_interrupt_config
.section .text.VL53L1_set_offset_calibration_mode,"ax",@progbits
	.align 1
	.global	VL53L1_set_offset_calibration_mode
	.type	VL53L1_set_offset_calibration_mode, @function
VL53L1_set_offset_calibration_mode:
.LFB47:
	.loc 1 2734 0
.LVL296:
	.loc 1 2746 0
	st.b	[%a4] 3, %d4
	.loc 1 2751 0
	mov	%d2, 0
	ret
.LFE47:
	.size	VL53L1_set_offset_calibration_mode, .-VL53L1_set_offset_calibration_mode
.section .text.VL53L1_get_offset_calibration_mode,"ax",@progbits
	.align 1
	.global	VL53L1_get_offset_calibration_mode
	.type	VL53L1_get_offset_calibration_mode, @function
VL53L1_get_offset_calibration_mode:
.LFB48:
	.loc 1 2757 0
.LVL297:
	.loc 1 2769 0
	ld.bu	%d15, [%a4] 3
	st.b	[%a5]0, %d15
	.loc 1 2774 0
	mov	%d2, 0
	ret
.LFE48:
	.size	VL53L1_get_offset_calibration_mode, .-VL53L1_get_offset_calibration_mode
.section .text.VL53L1_set_offset_correction_mode,"ax",@progbits
	.align 1
	.global	VL53L1_set_offset_correction_mode
	.type	VL53L1_set_offset_correction_mode, @function
VL53L1_set_offset_correction_mode:
.LFB49:
	.loc 1 2780 0
.LVL298:
	.loc 1 2792 0
	st.b	[%a4] 4, %d4
	.loc 1 2797 0
	mov	%d2, 0
	ret
.LFE49:
	.size	VL53L1_set_offset_correction_mode, .-VL53L1_set_offset_correction_mode
.section .text.VL53L1_get_offset_correction_mode,"ax",@progbits
	.align 1
	.global	VL53L1_get_offset_correction_mode
	.type	VL53L1_get_offset_correction_mode, @function
VL53L1_get_offset_correction_mode:
.LFB50:
	.loc 1 2803 0
.LVL299:
	.loc 1 2815 0
	ld.bu	%d15, [%a4] 4
	st.b	[%a5]0, %d15
	.loc 1 2820 0
	mov	%d2, 0
	ret
.LFE50:
	.size	VL53L1_get_offset_correction_mode, .-VL53L1_get_offset_correction_mode
.section .text.VL53L1_get_tuning_parm,"ax",@progbits
	.align 1
	.global	VL53L1_get_tuning_parm
	.type	VL53L1_get_tuning_parm, @function
VL53L1_get_tuning_parm:
.LFB51:
	.loc 1 3009 0
.LVL300:
	.loc 1 3023 0
	addi	%d4, %d4, -32768
.LVL301:
	ge.u	%d15, %d4, 57
	jz	%d15, .L313
	.loc 1 3256 0
	mov	%d15, -1
	sh	%d15, -1
	.loc 1 3257 0
	mov	%d2, -4
	.loc 1 3256 0
	st.w	[%a5]0, %d15
.LVL302:
	.loc 1 3265 0
	ret
.LVL303:
.L313:
	.loc 1 3023 0
	movh.a	%a15, hi:.L255
	lea	%a15, [%a15] lo:.L255
	addsc.a	%a15, %a15, %d4, 2
	ji	%a15
	.align 2
	.align 2
.L255:
	.code32
	j	.L254
	.code32
	j	.L256
	.code32
	j	.L257
	.code32
	j	.L258
	.code32
	j	.L259
	.code32
	j	.L260
	.code32
	j	.L261
	.code32
	j	.L262
	.code32
	j	.L263
	.code32
	j	.L264
	.code32
	j	.L265
	.code32
	j	.L266
	.code32
	j	.L267
	.code32
	j	.L268
	.code32
	j	.L269
	.code32
	j	.L270
	.code32
	j	.L271
	.code32
	j	.L272
	.code32
	j	.L273
	.code32
	j	.L274
	.code32
	j	.L275
	.code32
	j	.L276
	.code32
	j	.L277
	.code32
	j	.L278
	.code32
	j	.L279
	.code32
	j	.L280
	.code32
	j	.L281
	.code32
	j	.L282
	.code32
	j	.L283
	.code32
	j	.L284
	.code32
	j	.L285
	.code32
	j	.L286
	.code32
	j	.L287
	.code32
	j	.L288
	.code32
	j	.L289
	.code32
	j	.L290
	.code32
	j	.L291
	.code32
	j	.L292
	.code32
	j	.L293
	.code32
	j	.L294
	.code32
	j	.L295
	.code32
	j	.L296
	.code32
	j	.L297
	.code32
	j	.L298
	.code32
	j	.L299
	.code32
	j	.L300
	.code32
	j	.L301
	.code32
	j	.L302
	.code32
	j	.L303
	.code32
	j	.L304
	.code32
	j	.L305
	.code32
	j	.L306
	.code32
	j	.L307
	.code32
	j	.L308
	.code32
	j	.L309
	.code32
	j	.L310
	.code32
	j	.L311
.L310:
	.loc 1 3246 0
	ld.w	%d15, [%a4] 224
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3248 0
	ret
.L309:
	.loc 1 3243 0
	ld.bu	%d15, [%a4] 740
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3244 0
	ret
.L308:
	.loc 1 3238 0
	ld.w	%d15, [%a4] 232
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3240 0
	ret
.L307:
	.loc 1 3234 0
	ld.w	%d15, [%a4] 228
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3236 0
	ret
.L306:
	.loc 1 3230 0
	ld.w	%d15, [%a4] 220
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3232 0
	ret
.L305:
	.loc 1 3226 0
	ld.w	%d15, [%a4] 216
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3228 0
	ret
.L304:
	.loc 1 3222 0
	ld.w	%d15, [%a4] 212
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3224 0
	ret
.L303:
	.loc 1 3218 0
	ld.w	%d15, [%a4] 208
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3220 0
	ret
.L302:
	.loc 1 3215 0
	ld.hu	%d15, [%a4] 204
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3216 0
	ret
.L301:
	.loc 1 3211 0
	ld.hu	%d15, [%a4] 202
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3212 0
	ret
.L300:
	.loc 1 3207 0
	ld.hu	%d15, [%a4] 296
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3208 0
	ret
.L299:
	.loc 1 3203 0
	ld.bu	%d15, [%a4] 290
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3204 0
	ret
.L298:
	.loc 1 3199 0
	ld.bu	%d15, [%a4] 289
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3200 0
	ret
.L297:
	.loc 1 3195 0
	ld.bu	%d15, [%a4] 342
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3196 0
	ret
.L296:
	.loc 1 3191 0
	ld.bu	%d15, [%a4] 341
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3192 0
	ret
.L295:
	.loc 1 3187 0
	ld.bu	%d15, [%a4] 340
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3188 0
	ret
.L294:
	.loc 1 3182 0
	ld.w	%d15, [%a4] 332
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3184 0
	ret
.L293:
	.loc 1 3178 0
	ld.w	%d15, [%a4] 336
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3180 0
	ret
.L292:
	.loc 1 3174 0
	ld.w	%d15, [%a4] 328
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3176 0
	ret
.L291:
	.loc 1 3171 0
	ld.hu	%d15, [%a4] 324
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3172 0
	ret
.L290:
	.loc 1 3167 0
	ld.hu	%d15, [%a4] 284
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3168 0
	ret
.L289:
	.loc 1 3163 0
	ld.hu	%d15, [%a4] 282
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3164 0
	ret
.L288:
	.loc 1 3159 0
	ld.hu	%d15, [%a4] 280
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3160 0
	ret
.L287:
	.loc 1 3154 0
	ld.w	%d15, [%a4] 276
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3156 0
	ret
.L286:
	.loc 1 3151 0
	ld.bu	%d15, [%a4] 273
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3152 0
	ret
.L285:
	.loc 1 3147 0
	ld.bu	%d15, [%a4] 272
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3148 0
	ret
.L284:
	.loc 1 3143 0
	ld.bu	%d15, [%a4] 352
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3144 0
	ret
.L283:
	.loc 1 3139 0
	ld.bu	%d15, [%a4] 198
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3140 0
	ret
.L282:
	.loc 1 3135 0
	ld.bu	%d15, [%a4] 175
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3136 0
	ret
.L281:
	.loc 1 3131 0
	ld.bu	%d15, [%a4] 174
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3132 0
	ret
.L280:
	.loc 1 3127 0
	ld.bu	%d15, [%a4] 173
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3128 0
	ret
.L279:
	.loc 1 3123 0
	ld.bu	%d15, [%a4] 172
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3124 0
	ret
.L278:
	.loc 1 3119 0
	ld.bu	%d15, [%a4] 171
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3120 0
	ret
.L277:
	.loc 1 3115 0
	ld.bu	%d15, [%a4] 170
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3116 0
	ret
.L276:
	.loc 1 3111 0
	ld.h	%d15, [%a4] 318
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3112 0
	ret
.L275:
	.loc 1 3107 0
	ld.bu	%d15, [%a4] 200
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3108 0
	ret
.L274:
	.loc 1 3103 0
	ld.bu	%d15, [%a4] 199
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3104 0
	ret
.L273:
	.loc 1 3099 0
	ld.bu	%d15, [%a4] 197
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3100 0
	ret
.L272:
	.loc 1 3095 0
	ld.bu	%d15, [%a4] 320
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3096 0
	ret
.L271:
	.loc 1 3091 0
	ld.bu	%d15, [%a4] 196
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3092 0
	ret
.L270:
	.loc 1 3087 0
	ld.bu	%d15, [%a4] 195
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3088 0
	ret
.L269:
	.loc 1 3083 0
	ld.bu	%d15, [%a4] 194
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3084 0
	ret
.L268:
	.loc 1 3079 0
	ld.hu	%d15, [%a4] 192
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3080 0
	ret
.L267:
	.loc 1 3075 0
	ld.hu	%d15, [%a4] 190
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3076 0
	ret
.L266:
	.loc 1 3071 0
	ld.hu	%d15, [%a4] 188
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3072 0
	ret
.L265:
	.loc 1 3067 0
	ld.hu	%d15, [%a4] 186
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3068 0
	ret
.L264:
	.loc 1 3063 0
	ld.hu	%d15, [%a4] 184
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3064 0
	ret
.L263:
	.loc 1 3059 0
	ld.hu	%d15, [%a4] 182
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3060 0
	ret
.L262:
	.loc 1 3055 0
	ld.bu	%d15, [%a4] 180
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3056 0
	ret
.L261:
	.loc 1 3051 0
	ld.hu	%d15, [%a4] 156
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3052 0
	ret
.L260:
	.loc 1 3047 0
	ld.hu	%d15, [%a4] 178
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3048 0
	ret
.L259:
	.loc 1 3043 0
	ld.bu	%d15, [%a4] 177
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3044 0
	ret
.L258:
	.loc 1 3039 0
	ld.bu	%d15, [%a4] 176
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3040 0
	ret
.L257:
	.loc 1 3035 0
	ld.hu	%d15, [%a4] 168
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3036 0
	ret
.L256:
	.loc 1 3031 0
	ld.hu	%d15, [%a4] 166
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3032 0
	ret
.L254:
	.loc 1 3027 0
	ld.hu	%d15, [%a4] 164
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3028 0
	ret
.L311:
	.loc 1 3250 0
	ld.w	%d15, [%a4] 236
	st.w	[%a5]0, %d15
	.loc 1 3017 0
	mov	%d2, 0
	.loc 1 3252 0
	ret
.LFE51:
	.size	VL53L1_get_tuning_parm, .-VL53L1_get_tuning_parm
.section .text.VL53L1_set_tuning_parm,"ax",@progbits
	.align 1
	.global	VL53L1_set_tuning_parm
	.type	VL53L1_set_tuning_parm, @function
VL53L1_set_tuning_parm:
.LFB52:
	.loc 1 3271 0
.LVL304:
	.loc 1 3285 0
	addi	%d4, %d4, -32768
.LVL305:
	ge.u	%d15, %d4, 57
	.loc 1 3531 0
	mov	%d2, -4
	.loc 1 3285 0
	jnz	%d15, .L315
	movh.a	%a15, hi:.L317
	lea	%a15, [%a15] lo:.L317
	addsc.a	%a15, %a15, %d4, 2
	ji	%a15
	.align 2
	.align 2
.L317:
	.code32
	j	.L316
	.code32
	j	.L318
	.code32
	j	.L319
	.code32
	j	.L320
	.code32
	j	.L321
	.code32
	j	.L322
	.code32
	j	.L323
	.code32
	j	.L324
	.code32
	j	.L325
	.code32
	j	.L326
	.code32
	j	.L327
	.code32
	j	.L328
	.code32
	j	.L329
	.code32
	j	.L330
	.code32
	j	.L331
	.code32
	j	.L332
	.code32
	j	.L333
	.code32
	j	.L334
	.code32
	j	.L335
	.code32
	j	.L336
	.code32
	j	.L337
	.code32
	j	.L338
	.code32
	j	.L339
	.code32
	j	.L340
	.code32
	j	.L341
	.code32
	j	.L342
	.code32
	j	.L343
	.code32
	j	.L344
	.code32
	j	.L345
	.code32
	j	.L346
	.code32
	j	.L347
	.code32
	j	.L348
	.code32
	j	.L349
	.code32
	j	.L350
	.code32
	j	.L351
	.code32
	j	.L352
	.code32
	j	.L353
	.code32
	j	.L354
	.code32
	j	.L355
	.code32
	j	.L356
	.code32
	j	.L357
	.code32
	j	.L358
	.code32
	j	.L359
	.code32
	j	.L360
	.code32
	j	.L361
	.code32
	j	.L362
	.code32
	j	.L363
	.code32
	j	.L364
	.code32
	j	.L365
	.code32
	j	.L366
	.code32
	j	.L367
	.code32
	j	.L368
	.code32
	j	.L369
	.code32
	j	.L370
	.code32
	j	.L371
	.code32
	j	.L372
	.code32
	j	.L373
.L373:
	.loc 1 3525 0
	st.w	[%a4] 236, %d5
	.loc 1 3279 0
	mov	%d2, 0
.L315:
.LVL306:
	.loc 1 3539 0
	ret
.LVL307:
.L372:
	.loc 1 3521 0
	st.w	[%a4] 224, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3523 0
	ret
.L371:
	.loc 1 3518 0
	st.b	[%a4] 740, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3519 0
	ret
.L370:
	.loc 1 3513 0
	st.w	[%a4] 232, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3515 0
	ret
.L369:
	.loc 1 3509 0
	st.w	[%a4] 228, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3511 0
	ret
.L368:
	.loc 1 3505 0
	st.w	[%a4] 220, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3507 0
	ret
.L367:
	.loc 1 3501 0
	st.w	[%a4] 216, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3503 0
	ret
.L366:
	.loc 1 3497 0
	st.w	[%a4] 212, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3499 0
	ret
.L365:
	.loc 1 3493 0
	st.w	[%a4] 208, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3495 0
	ret
.L364:
	.loc 1 3490 0
	st.h	[%a4] 204, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3491 0
	ret
.L363:
	.loc 1 3486 0
	st.h	[%a4] 202, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3487 0
	ret
.L362:
	.loc 1 3482 0
	st.h	[%a4] 296, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3483 0
	ret
.L361:
	.loc 1 3478 0
	st.b	[%a4] 290, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3479 0
	ret
.L360:
	.loc 1 3474 0
	st.b	[%a4] 289, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3475 0
	ret
.L359:
	.loc 1 3470 0
	st.b	[%a4] 342, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3471 0
	ret
.L358:
	.loc 1 3466 0
	st.b	[%a4] 341, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3467 0
	ret
.L357:
	.loc 1 3462 0
	st.b	[%a4] 340, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3463 0
	ret
.L356:
	.loc 1 3457 0
	st.w	[%a4] 332, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3459 0
	ret
.L355:
	.loc 1 3453 0
	st.w	[%a4] 336, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3455 0
	ret
.L354:
	.loc 1 3449 0
	st.w	[%a4] 328, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3451 0
	ret
.L353:
	.loc 1 3446 0
	st.h	[%a4] 324, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3447 0
	ret
.L352:
	.loc 1 3442 0
	st.h	[%a4] 284, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3443 0
	ret
.L351:
	.loc 1 3438 0
	st.h	[%a4] 282, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3439 0
	ret
.L350:
	.loc 1 3434 0
	st.h	[%a4] 280, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3435 0
	ret
.L349:
	.loc 1 3429 0
	st.w	[%a4] 276, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3431 0
	ret
.L348:
	.loc 1 3426 0
	st.b	[%a4] 273, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3427 0
	ret
.L347:
	.loc 1 3422 0
	st.b	[%a4] 272, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3423 0
	ret
.L346:
	.loc 1 3418 0
	st.b	[%a4] 352, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3419 0
	ret
.L345:
	.loc 1 3414 0
	st.b	[%a4] 198, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3415 0
	ret
.L344:
	.loc 1 3410 0
	st.b	[%a4] 175, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3411 0
	ret
.L343:
	.loc 1 3406 0
	st.b	[%a4] 174, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3407 0
	ret
.L342:
	.loc 1 3402 0
	st.b	[%a4] 173, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3403 0
	ret
.L341:
	.loc 1 3398 0
	st.b	[%a4] 172, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3399 0
	ret
.L340:
	.loc 1 3394 0
	st.b	[%a4] 171, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3395 0
	ret
.L339:
	.loc 1 3390 0
	st.b	[%a4] 170, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3391 0
	ret
.L338:
	.loc 1 3386 0
	st.h	[%a4] 318, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3387 0
	ret
.L337:
	.loc 1 3382 0
	st.b	[%a4] 200, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3383 0
	ret
.L336:
	.loc 1 3378 0
	st.b	[%a4] 199, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3379 0
	ret
.L335:
	.loc 1 3374 0
	st.b	[%a4] 197, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3375 0
	ret
.L334:
	.loc 1 3370 0
	st.b	[%a4] 320, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3371 0
	ret
.L333:
	.loc 1 3366 0
	st.b	[%a4] 196, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3367 0
	ret
.L332:
	.loc 1 3362 0
	st.b	[%a4] 195, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3363 0
	ret
.L331:
	.loc 1 3358 0
	st.b	[%a4] 194, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3359 0
	ret
.L330:
	.loc 1 3354 0
	st.h	[%a4] 192, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3355 0
	ret
.L329:
	.loc 1 3350 0
	st.h	[%a4] 190, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3351 0
	ret
.L328:
	.loc 1 3346 0
	st.h	[%a4] 188, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3347 0
	ret
.L327:
	.loc 1 3342 0
	st.h	[%a4] 186, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3343 0
	ret
.L326:
	.loc 1 3338 0
	st.h	[%a4] 184, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3339 0
	ret
.L325:
	.loc 1 3334 0
	st.h	[%a4] 182, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3335 0
	ret
.L324:
	.loc 1 3330 0
	st.b	[%a4] 180, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3331 0
	ret
.L323:
	.loc 1 3326 0
	st.h	[%a4] 156, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3327 0
	ret
.L322:
	.loc 1 3322 0
	st.h	[%a4] 178, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3323 0
	ret
.L321:
	.loc 1 3318 0
	st.b	[%a4] 177, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3319 0
	ret
.L320:
	.loc 1 3314 0
	st.b	[%a4] 176, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3315 0
	ret
.L319:
	.loc 1 3310 0
	st.h	[%a4] 168, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3311 0
	ret
.L318:
	.loc 1 3293 0
	extr.u	%d5, %d5, 0, 16
.LVL308:
	.loc 1 3303 0
	mov.u	%d2, 32769
	.loc 1 3305 0
	mov	%d15, 0
	.loc 1 3292 0
	st.h	[%a4] 166, %d5
	.loc 1 3305 0
	eq	%d5, %d5, %d2
	sel	%d2, %d5, %d15, -27
	ret
.LVL309:
.L316:
	.loc 1 3289 0
	st.h	[%a4] 164, %d5
	.loc 1 3279 0
	mov	%d2, 0
	.loc 1 3290 0
	ret
.LFE52:
	.size	VL53L1_set_tuning_parm, .-VL53L1_set_tuning_parm
.section .rodata.CSWTCH.48,"a",@progbits
	.align 1
	.type	CSWTCH.48, @object
	.size	CSWTCH.48, 12
CSWTCH.48:
	.short	113
	.short	90
	.short	68
	.short	36
	.short	13
	.short	1
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
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB13
	.uaword	.LFE13-.LFB13
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.byte	0x4
	.uaword	.LCFI0-.LFB21
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.byte	0x4
	.uaword	.LCFI1-.LFB22
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.byte	0x4
	.uaword	.LCFI2-.LFB23
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.byte	0x4
	.uaword	.LCFI3-.LFB0
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE52:
.LSFDE54:
	.uaword	.LEFDE54-.LASFDE54
.LASFDE54:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.align 2
.LEFDE54:
.LSFDE56:
	.uaword	.LEFDE56-.LASFDE56
.LASFDE56:
	.uaword	.Lframe0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.align 2
.LEFDE56:
.LSFDE58:
	.uaword	.LEFDE58-.LASFDE58
.LASFDE58:
	.uaword	.Lframe0
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.align 2
.LEFDE58:
.LSFDE60:
	.uaword	.LEFDE60-.LASFDE60
.LASFDE60:
	.uaword	.Lframe0
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.align 2
.LEFDE60:
.LSFDE62:
	.uaword	.LEFDE62-.LASFDE62
.LASFDE62:
	.uaword	.Lframe0
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.align 2
.LEFDE62:
.LSFDE64:
	.uaword	.LEFDE64-.LASFDE64
.LASFDE64:
	.uaword	.Lframe0
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.align 2
.LEFDE64:
.LSFDE66:
	.uaword	.LEFDE66-.LASFDE66
.LASFDE66:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.align 2
.LEFDE66:
.LSFDE68:
	.uaword	.LEFDE68-.LASFDE68
.LASFDE68:
	.uaword	.Lframe0
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.align 2
.LEFDE68:
.LSFDE70:
	.uaword	.LEFDE70-.LASFDE70
.LASFDE70:
	.uaword	.Lframe0
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.align 2
.LEFDE70:
.LSFDE72:
	.uaword	.LEFDE72-.LASFDE72
.LASFDE72:
	.uaword	.Lframe0
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.align 2
.LEFDE72:
.LSFDE74:
	.uaword	.LEFDE74-.LASFDE74
.LASFDE74:
	.uaword	.Lframe0
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.align 2
.LEFDE74:
.LSFDE76:
	.uaword	.LEFDE76-.LASFDE76
.LASFDE76:
	.uaword	.Lframe0
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.byte	0x4
	.uaword	.LCFI4-.LFB38
	.byte	0xe
	.uleb128 0x100
	.align 2
.LEFDE76:
.LSFDE78:
	.uaword	.LEFDE78-.LASFDE78
.LASFDE78:
	.uaword	.Lframe0
	.uaword	.LFB39
	.uaword	.LFE39-.LFB39
	.align 2
.LEFDE78:
.LSFDE80:
	.uaword	.LEFDE80-.LASFDE80
.LASFDE80:
	.uaword	.Lframe0
	.uaword	.LFB40
	.uaword	.LFE40-.LFB40
	.byte	0x4
	.uaword	.LCFI5-.LFB40
	.byte	0xe
	.uleb128 0x100
	.align 2
.LEFDE80:
.LSFDE82:
	.uaword	.LEFDE82-.LASFDE82
.LASFDE82:
	.uaword	.Lframe0
	.uaword	.LFB42
	.uaword	.LFE42-.LFB42
	.align 2
.LEFDE82:
.LSFDE84:
	.uaword	.LEFDE84-.LASFDE84
.LASFDE84:
	.uaword	.Lframe0
	.uaword	.LFB43
	.uaword	.LFE43-.LFB43
	.align 2
.LEFDE84:
.LSFDE86:
	.uaword	.LEFDE86-.LASFDE86
.LASFDE86:
	.uaword	.Lframe0
	.uaword	.LFB41
	.uaword	.LFE41-.LFB41
	.align 2
.LEFDE86:
.LSFDE88:
	.uaword	.LEFDE88-.LASFDE88
.LASFDE88:
	.uaword	.Lframe0
	.uaword	.LFB44
	.uaword	.LFE44-.LFB44
	.align 2
.LEFDE88:
.LSFDE90:
	.uaword	.LEFDE90-.LASFDE90
.LASFDE90:
	.uaword	.Lframe0
	.uaword	.LFB45
	.uaword	.LFE45-.LFB45
	.byte	0x4
	.uaword	.LCFI6-.LFB45
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE90:
.LSFDE92:
	.uaword	.LEFDE92-.LASFDE92
.LASFDE92:
	.uaword	.Lframe0
	.uaword	.LFB46
	.uaword	.LFE46-.LFB46
	.byte	0x4
	.uaword	.LCFI7-.LFB46
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE92:
.LSFDE94:
	.uaword	.LEFDE94-.LASFDE94
.LASFDE94:
	.uaword	.Lframe0
	.uaword	.LFB47
	.uaword	.LFE47-.LFB47
	.align 2
.LEFDE94:
.LSFDE96:
	.uaword	.LEFDE96-.LASFDE96
.LASFDE96:
	.uaword	.Lframe0
	.uaword	.LFB48
	.uaword	.LFE48-.LFB48
	.align 2
.LEFDE96:
.LSFDE98:
	.uaword	.LEFDE98-.LASFDE98
.LASFDE98:
	.uaword	.Lframe0
	.uaword	.LFB49
	.uaword	.LFE49-.LFB49
	.align 2
.LEFDE98:
.LSFDE100:
	.uaword	.LEFDE100-.LASFDE100
.LASFDE100:
	.uaword	.Lframe0
	.uaword	.LFB50
	.uaword	.LFE50-.LFB50
	.align 2
.LEFDE100:
.LSFDE102:
	.uaword	.LEFDE102-.LASFDE102
.LASFDE102:
	.uaword	.Lframe0
	.uaword	.LFB51
	.uaword	.LFE51-.LFB51
	.align 2
.LEFDE102:
.LSFDE104:
	.uaword	.LEFDE104-.LASFDE104
.LASFDE104:
	.uaword	.Lframe0
	.uaword	.LFB52
	.uaword	.LFE52-.LFB52
	.align 2
.LEFDE104:
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
	.file 11 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_wait.h"
	.file 12 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
	.file 13 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core_support.h"
	.file 14 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
	.file 15 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_preset_modes.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x7cf0
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_core.c"
	.string	"D:\\\\MinKyu_AurixRacer\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0x38
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"int8_t"
	.byte	0x2
	.byte	0x29
	.uaword	0x1a8
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.string	"uint8_t"
	.byte	0x2
	.byte	0x2a
	.uaword	0x1c6
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.string	"int16_t"
	.byte	0x2
	.byte	0x35
	.uaword	0x1e6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.string	"uint16_t"
	.byte	0x2
	.byte	0x36
	.uaword	0x203
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.string	"int32_t"
	.byte	0x2
	.byte	0x4f
	.uaword	0x228
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.string	"uint32_t"
	.byte	0x2
	.byte	0x50
	.uaword	0x244
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
	.uaword	0x234
	.uleb128 0x2
	.string	"VL53L1_WaitMethod"
	.byte	0x4
	.byte	0x59
	.uaword	0x1b7
	.uleb128 0x2
	.string	"VL53L1_DeviceState"
	.byte	0x4
	.byte	0x65
	.uaword	0x1b7
	.uleb128 0x2
	.string	"VL53L1_DevicePresetModes"
	.byte	0x4
	.byte	0x7d
	.uaword	0x1b7
	.uleb128 0x2
	.string	"VL53L1_DeviceMeasurementModes"
	.byte	0x4
	.byte	0x96
	.uaword	0x1b7
	.uleb128 0x2
	.string	"VL53L1_OffsetCalibrationMode"
	.byte	0x4
	.byte	0xa5
	.uaword	0x1b7
	.uleb128 0x2
	.string	"VL53L1_OffsetCorrectionMode"
	.byte	0x4
	.byte	0xb6
	.uaword	0x1b7
	.uleb128 0x2
	.string	"VL53L1_DeviceSequenceConfig"
	.byte	0x4
	.byte	0xc6
	.uaword	0x1b7
	.uleb128 0x2
	.string	"VL53L1_DeviceInterruptPolarity"
	.byte	0x4
	.byte	0xd9
	.uaword	0x1b7
	.uleb128 0x2
	.string	"VL53L1_DeviceError"
	.byte	0x4
	.byte	0xfe
	.uaword	0x1b7
	.uleb128 0x4
	.string	"VL53L1_DeviceReportStatus"
	.byte	0x4
	.uahalf	0x124
	.uaword	0x1b7
	.uleb128 0x4
	.string	"VL53L1_DeviceConfigLevel"
	.byte	0x4
	.uahalf	0x14c
	.uaword	0x1b7
	.uleb128 0x4
	.string	"VL53L1_DeviceResultsLevel"
	.byte	0x4
	.uahalf	0x171
	.uaword	0x1b7
	.uleb128 0x4
	.string	"VL53L1_DeviceSscArray"
	.byte	0x4
	.uahalf	0x1b2
	.uaword	0x1b7
	.uleb128 0x4
	.string	"VL53L1_GPIO_Interrupt_Mode"
	.byte	0x4
	.uahalf	0x21c
	.uaword	0x1b7
	.uleb128 0x4
	.string	"VL53L1_TuningParms"
	.byte	0x4
	.uahalf	0x233
	.uaword	0x1f3
	.uleb128 0x2
	.string	"VL53L1_Error"
	.byte	0x5
	.byte	0x59
	.uaword	0x19a
	.uleb128 0x5
	.byte	0xc
	.byte	0x6
	.byte	0x80
	.uaword	0x62a
	.uleb128 0x6
	.string	"i2c_slave__device_address"
	.byte	0x6
	.byte	0x81
	.uaword	0x1b7
	.byte	0
	.uleb128 0x6
	.string	"ana_config__vhv_ref_sel_vddpix"
	.byte	0x6
	.byte	0x8b
	.uaword	0x1b7
	.byte	0x1
	.uleb128 0x6
	.string	"ana_config__vhv_ref_sel_vquench"
	.byte	0x6
	.byte	0x95
	.uaword	0x1b7
	.byte	0x2
	.uleb128 0x6
	.string	"ana_config__reg_avdd1v2_sel"
	.byte	0x6
	.byte	0x9f
	.uaword	0x1b7
	.byte	0x3
	.uleb128 0x6
	.string	"ana_config__fast_osc__trim"
	.byte	0x6
	.byte	0xa9
	.uaword	0x1b7
	.byte	0x4
	.uleb128 0x6
	.string	"osc_measured__fast_osc__frequency"
	.byte	0x6
	.byte	0xb3
	.uaword	0x1f3
	.byte	0x6
	.uleb128 0x6
	.string	"vhv_config__timeout_macrop_loop_bound"
	.byte	0x6
	.byte	0xbd
	.uaword	0x1b7
	.byte	0x8
	.uleb128 0x6
	.string	"vhv_config__count_thresh"
	.byte	0x6
	.byte	0xc8
	.uaword	0x1b7
	.byte	0x9
	.uleb128 0x6
	.string	"vhv_config__offset"
	.byte	0x6
	.byte	0xd2
	.uaword	0x1b7
	.byte	0xa
	.uleb128 0x6
	.string	"vhv_config__init"
	.byte	0x6
	.byte	0xdc
	.uaword	0x1b7
	.byte	0xb
	.byte	0
	.uleb128 0x2
	.string	"VL53L1_static_nvm_managed_t"
	.byte	0x6
	.byte	0xe7
	.uaword	0x4bc
	.uleb128 0x5
	.byte	0x18
	.byte	0x6
	.byte	0xf3
	.uaword	0x89f
	.uleb128 0x6
	.string	"global_config__spad_enables_ref_0"
	.byte	0x6
	.byte	0xf4
	.uaword	0x1b7
	.byte	0
	.uleb128 0x6
	.string	"global_config__spad_enables_ref_1"
	.byte	0x6
	.byte	0xfe
	.uaword	0x1b7
	.byte	0x1
	.uleb128 0x7
	.string	"global_config__spad_enables_ref_2"
	.byte	0x6
	.uahalf	0x108
	.uaword	0x1b7
	.byte	0x2
	.uleb128 0x7
	.string	"global_config__spad_enables_ref_3"
	.byte	0x6
	.uahalf	0x112
	.uaword	0x1b7
	.byte	0x3
	.uleb128 0x7
	.string	"global_config__spad_enables_ref_4"
	.byte	0x6
	.uahalf	0x11c
	.uaword	0x1b7
	.byte	0x4
	.uleb128 0x7
	.string	"global_config__spad_enables_ref_5"
	.byte	0x6
	.uahalf	0x126
	.uaword	0x1b7
	.byte	0x5
	.uleb128 0x7
	.string	"global_config__ref_en_start_select"
	.byte	0x6
	.uahalf	0x130
	.uaword	0x1b7
	.byte	0x6
	.uleb128 0x7
	.string	"ref_spad_man__num_requested_ref_spads"
	.byte	0x6
	.uahalf	0x13a
	.uaword	0x1b7
	.byte	0x7
	.uleb128 0x7
	.string	"ref_spad_man__ref_location"
	.byte	0x6
	.uahalf	0x144
	.uaword	0x1b7
	.byte	0x8
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x14e
	.uaword	0x1f3
	.byte	0xa
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x158
	.uaword	0x1d7
	.byte	0xc
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x162
	.uaword	0x1d7
	.byte	0xe
	.uleb128 0x7
	.string	"ref_spad_char__total_rate_target_mcps"
	.byte	0x6
	.uahalf	0x16c
	.uaword	0x1f3
	.byte	0x10
	.uleb128 0x7
	.string	"algo__part_to_part_range_offset_mm"
	.byte	0x6
	.uahalf	0x176
	.uaword	0x1d7
	.byte	0x12
	.uleb128 0x7
	.string	"mm_config__inner_offset_mm"
	.byte	0x6
	.uahalf	0x180
	.uaword	0x1d7
	.byte	0x14
	.uleb128 0x7
	.string	"mm_config__outer_offset_mm"
	.byte	0x6
	.uahalf	0x18a
	.uaword	0x1d7
	.byte	0x16
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_customer_nvm_managed_t"
	.byte	0x6
	.uahalf	0x194
	.uaword	0x64d
	.uleb128 0x9
	.byte	0x20
	.byte	0x6
	.uahalf	0x1a0
	.uaword	0xd0b
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x1a1
	.uaword	0x1f3
	.byte	0
	.uleb128 0x7
	.string	"debug__ctrl"
	.byte	0x6
	.uahalf	0x1ab
	.uaword	0x1b7
	.byte	0x2
	.uleb128 0x7
	.string	"test_mode__ctrl"
	.byte	0x6
	.uahalf	0x1b5
	.uaword	0x1b7
	.byte	0x3
	.uleb128 0x7
	.string	"clk_gating__ctrl"
	.byte	0x6
	.uahalf	0x1bf
	.uaword	0x1b7
	.byte	0x4
	.uleb128 0x7
	.string	"nvm_bist__ctrl"
	.byte	0x6
	.uahalf	0x1cc
	.uaword	0x1b7
	.byte	0x5
	.uleb128 0x7
	.string	"nvm_bist__num_nvm_words"
	.byte	0x6
	.uahalf	0x1d7
	.uaword	0x1b7
	.byte	0x6
	.uleb128 0x7
	.string	"nvm_bist__start_address"
	.byte	0x6
	.uahalf	0x1e1
	.uaword	0x1b7
	.byte	0x7
	.uleb128 0x7
	.string	"host_if__status"
	.byte	0x6
	.uahalf	0x1eb
	.uaword	0x1b7
	.byte	0x8
	.uleb128 0x7
	.string	"pad_i2c_hv__config"
	.byte	0x6
	.uahalf	0x1f5
	.uaword	0x1b7
	.byte	0x9
	.uleb128 0x7
	.string	"pad_i2c_hv__extsup_config"
	.byte	0x6
	.uahalf	0x204
	.uaword	0x1b7
	.byte	0xa
	.uleb128 0x7
	.string	"gpio_hv_pad__ctrl"
	.byte	0x6
	.uahalf	0x20e
	.uaword	0x1b7
	.byte	0xb
	.uleb128 0x7
	.string	"gpio_hv_mux__ctrl"
	.byte	0x6
	.uahalf	0x219
	.uaword	0x1b7
	.byte	0xc
	.uleb128 0x7
	.string	"gpio__tio_hv_status"
	.byte	0x6
	.uahalf	0x224
	.uaword	0x1b7
	.byte	0xd
	.uleb128 0x7
	.string	"gpio__fio_hv_status"
	.byte	0x6
	.uahalf	0x22f
	.uaword	0x1b7
	.byte	0xe
	.uleb128 0x7
	.string	"ana_config__spad_sel_pswidth"
	.byte	0x6
	.uahalf	0x239
	.uaword	0x1b7
	.byte	0xf
	.uleb128 0x7
	.string	"ana_config__vcsel_pulse_width_offset"
	.byte	0x6
	.uahalf	0x243
	.uaword	0x1b7
	.byte	0x10
	.uleb128 0x7
	.string	"ana_config__fast_osc__config_ctrl"
	.byte	0x6
	.uahalf	0x24d
	.uaword	0x1b7
	.byte	0x11
	.uleb128 0x7
	.string	"sigma_estimator__effective_pulse_width_ns"
	.byte	0x6
	.uahalf	0x257
	.uaword	0x1b7
	.byte	0x12
	.uleb128 0x7
	.string	"sigma_estimator__effective_ambient_width_ns"
	.byte	0x6
	.uahalf	0x261
	.uaword	0x1b7
	.byte	0x13
	.uleb128 0x7
	.string	"sigma_estimator__sigma_ref_mm"
	.byte	0x6
	.uahalf	0x26b
	.uaword	0x1b7
	.byte	0x14
	.uleb128 0x7
	.string	"algo__crosstalk_compensation_valid_height_mm"
	.byte	0x6
	.uahalf	0x275
	.uaword	0x1b7
	.byte	0x15
	.uleb128 0x7
	.string	"spare_host_config__static_config_spare_0"
	.byte	0x6
	.uahalf	0x27f
	.uaword	0x1b7
	.byte	0x16
	.uleb128 0x7
	.string	"spare_host_config__static_config_spare_1"
	.byte	0x6
	.uahalf	0x289
	.uaword	0x1b7
	.byte	0x17
	.uleb128 0x7
	.string	"algo__range_ignore_threshold_mcps"
	.byte	0x6
	.uahalf	0x293
	.uaword	0x1f3
	.byte	0x18
	.uleb128 0x7
	.string	"algo__range_ignore_valid_height_mm"
	.byte	0x6
	.uahalf	0x29d
	.uaword	0x1b7
	.byte	0x1a
	.uleb128 0x7
	.string	"algo__range_min_clip"
	.byte	0x6
	.uahalf	0x2a7
	.uaword	0x1b7
	.byte	0x1b
	.uleb128 0x7
	.string	"algo__consistency_check__tolerance"
	.byte	0x6
	.uahalf	0x2b2
	.uaword	0x1b7
	.byte	0x1c
	.uleb128 0x7
	.string	"spare_host_config__static_config_spare_2"
	.byte	0x6
	.uahalf	0x2bc
	.uaword	0x1b7
	.byte	0x1d
	.uleb128 0x7
	.string	"sd_config__reset_stages_msb"
	.byte	0x6
	.uahalf	0x2c6
	.uaword	0x1b7
	.byte	0x1e
	.uleb128 0x7
	.string	"sd_config__reset_stages_lsb"
	.byte	0x6
	.uahalf	0x2d0
	.uaword	0x1b7
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_static_config_t"
	.byte	0x6
	.uahalf	0x2db
	.uaword	0x8c5
	.uleb128 0x9
	.byte	0x16
	.byte	0x6
	.uahalf	0x2e7
	.uaword	0xf7e
	.uleb128 0x7
	.string	"gph_config__stream_count_update_value"
	.byte	0x6
	.uahalf	0x2e8
	.uaword	0x1b7
	.byte	0
	.uleb128 0x7
	.string	"global_config__stream_divider"
	.byte	0x6
	.uahalf	0x2f2
	.uaword	0x1b7
	.byte	0x1
	.uleb128 0x7
	.string	"system__interrupt_config_gpio"
	.byte	0x6
	.uahalf	0x2fc
	.uaword	0x1b7
	.byte	0x2
	.uleb128 0x7
	.string	"cal_config__vcsel_start"
	.byte	0x6
	.uahalf	0x30b
	.uaword	0x1b7
	.byte	0x3
	.uleb128 0x7
	.string	"cal_config__repeat_rate"
	.byte	0x6
	.uahalf	0x315
	.uaword	0x1f3
	.byte	0x4
	.uleb128 0x7
	.string	"global_config__vcsel_width"
	.byte	0x6
	.uahalf	0x31f
	.uaword	0x1b7
	.byte	0x6
	.uleb128 0x7
	.string	"phasecal_config__timeout_macrop"
	.byte	0x6
	.uahalf	0x329
	.uaword	0x1b7
	.byte	0x7
	.uleb128 0x7
	.string	"phasecal_config__target"
	.byte	0x6
	.uahalf	0x333
	.uaword	0x1b7
	.byte	0x8
	.uleb128 0x7
	.string	"phasecal_config__override"
	.byte	0x6
	.uahalf	0x33d
	.uaword	0x1b7
	.byte	0x9
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x6
	.uahalf	0x347
	.uaword	0x1b7
	.byte	0xa
	.uleb128 0x7
	.string	"system__thresh_rate_high"
	.byte	0x6
	.uahalf	0x352
	.uaword	0x1f3
	.byte	0xc
	.uleb128 0x7
	.string	"system__thresh_rate_low"
	.byte	0x6
	.uahalf	0x35c
	.uaword	0x1f3
	.byte	0xe
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x366
	.uaword	0x1f3
	.byte	0x10
	.uleb128 0x7
	.string	"dss_config__manual_block_select"
	.byte	0x6
	.uahalf	0x370
	.uaword	0x1b7
	.byte	0x12
	.uleb128 0x7
	.string	"dss_config__aperture_attenuation"
	.byte	0x6
	.uahalf	0x37a
	.uaword	0x1b7
	.byte	0x13
	.uleb128 0x7
	.string	"dss_config__max_spads_limit"
	.byte	0x6
	.uahalf	0x384
	.uaword	0x1b7
	.byte	0x14
	.uleb128 0x7
	.string	"dss_config__min_spads_limit"
	.byte	0x6
	.uahalf	0x38e
	.uaword	0x1b7
	.byte	0x15
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_general_config_t"
	.byte	0x6
	.uahalf	0x398
	.uaword	0xd2a
	.uleb128 0x9
	.byte	0x18
	.byte	0x6
	.uahalf	0x3a4
	.uaword	0x1234
	.uleb128 0x7
	.string	"mm_config__timeout_macrop_a_hi"
	.byte	0x6
	.uahalf	0x3a5
	.uaword	0x1b7
	.byte	0
	.uleb128 0x7
	.string	"mm_config__timeout_macrop_a_lo"
	.byte	0x6
	.uahalf	0x3af
	.uaword	0x1b7
	.byte	0x1
	.uleb128 0x7
	.string	"mm_config__timeout_macrop_b_hi"
	.byte	0x6
	.uahalf	0x3b9
	.uaword	0x1b7
	.byte	0x2
	.uleb128 0x7
	.string	"mm_config__timeout_macrop_b_lo"
	.byte	0x6
	.uahalf	0x3c3
	.uaword	0x1b7
	.byte	0x3
	.uleb128 0x7
	.string	"range_config__timeout_macrop_a_hi"
	.byte	0x6
	.uahalf	0x3cd
	.uaword	0x1b7
	.byte	0x4
	.uleb128 0x7
	.string	"range_config__timeout_macrop_a_lo"
	.byte	0x6
	.uahalf	0x3d7
	.uaword	0x1b7
	.byte	0x5
	.uleb128 0x7
	.string	"range_config__vcsel_period_a"
	.byte	0x6
	.uahalf	0x3e1
	.uaword	0x1b7
	.byte	0x6
	.uleb128 0x7
	.string	"range_config__timeout_macrop_b_hi"
	.byte	0x6
	.uahalf	0x3eb
	.uaword	0x1b7
	.byte	0x7
	.uleb128 0x7
	.string	"range_config__timeout_macrop_b_lo"
	.byte	0x6
	.uahalf	0x3f5
	.uaword	0x1b7
	.byte	0x8
	.uleb128 0x7
	.string	"range_config__vcsel_period_b"
	.byte	0x6
	.uahalf	0x3ff
	.uaword	0x1b7
	.byte	0x9
	.uleb128 0x7
	.string	"range_config__sigma_thresh"
	.byte	0x6
	.uahalf	0x409
	.uaword	0x1f3
	.byte	0xa
	.uleb128 0x7
	.string	"range_config__min_count_rate_rtn_limit_mcps"
	.byte	0x6
	.uahalf	0x413
	.uaword	0x1f3
	.byte	0xc
	.uleb128 0x7
	.string	"range_config__valid_phase_low"
	.byte	0x6
	.uahalf	0x41d
	.uaword	0x1b7
	.byte	0xe
	.uleb128 0x7
	.string	"range_config__valid_phase_high"
	.byte	0x6
	.uahalf	0x427
	.uaword	0x1b7
	.byte	0xf
	.uleb128 0x7
	.string	"system__intermeasurement_period"
	.byte	0x6
	.uahalf	0x431
	.uaword	0x234
	.byte	0x10
	.uleb128 0x7
	.string	"system__fractional_enable"
	.byte	0x6
	.uahalf	0x43b
	.uaword	0x1b7
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_timing_config_t"
	.byte	0x6
	.uahalf	0x445
	.uaword	0xf9e
	.uleb128 0x9
	.byte	0x14
	.byte	0x6
	.uahalf	0x451
	.uaword	0x14a6
	.uleb128 0x7
	.string	"system__grouped_parameter_hold_0"
	.byte	0x6
	.uahalf	0x452
	.uaword	0x1b7
	.byte	0
	.uleb128 0x7
	.string	"system__thresh_high"
	.byte	0x6
	.uahalf	0x45d
	.uaword	0x1f3
	.byte	0x2
	.uleb128 0x7
	.string	"system__thresh_low"
	.byte	0x6
	.uahalf	0x467
	.uaword	0x1f3
	.byte	0x4
	.uleb128 0x7
	.string	"system__enable_xtalk_per_quadrant"
	.byte	0x6
	.uahalf	0x471
	.uaword	0x1b7
	.byte	0x6
	.uleb128 0x7
	.string	"system__seed_config"
	.byte	0x6
	.uahalf	0x47b
	.uaword	0x1b7
	.byte	0x7
	.uleb128 0x7
	.string	"sd_config__woi_sd0"
	.byte	0x6
	.uahalf	0x486
	.uaword	0x1b7
	.byte	0x8
	.uleb128 0x7
	.string	"sd_config__woi_sd1"
	.byte	0x6
	.uahalf	0x490
	.uaword	0x1b7
	.byte	0x9
	.uleb128 0x7
	.string	"sd_config__initial_phase_sd0"
	.byte	0x6
	.uahalf	0x49a
	.uaword	0x1b7
	.byte	0xa
	.uleb128 0x7
	.string	"sd_config__initial_phase_sd1"
	.byte	0x6
	.uahalf	0x4a4
	.uaword	0x1b7
	.byte	0xb
	.uleb128 0x7
	.string	"system__grouped_parameter_hold_1"
	.byte	0x6
	.uahalf	0x4ae
	.uaword	0x1b7
	.byte	0xc
	.uleb128 0x7
	.string	"sd_config__first_order_select"
	.byte	0x6
	.uahalf	0x4b9
	.uaword	0x1b7
	.byte	0xd
	.uleb128 0x7
	.string	"sd_config__quantifier"
	.byte	0x6
	.uahalf	0x4c4
	.uaword	0x1b7
	.byte	0xe
	.uleb128 0x7
	.string	"roi_config__user_roi_centre_spad"
	.byte	0x6
	.uahalf	0x4ce
	.uaword	0x1b7
	.byte	0xf
	.uleb128 0x7
	.string	"roi_config__user_roi_requested_global_xy_size"
	.byte	0x6
	.uahalf	0x4d8
	.uaword	0x1b7
	.byte	0x10
	.uleb128 0x7
	.string	"system__sequence_config"
	.byte	0x6
	.uahalf	0x4e2
	.uaword	0x1b7
	.byte	0x11
	.uleb128 0x7
	.string	"system__grouped_parameter_hold"
	.byte	0x6
	.uahalf	0x4f3
	.uaword	0x1b7
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_dynamic_config_t"
	.byte	0x6
	.uahalf	0x4fe
	.uaword	0x1253
	.uleb128 0x9
	.byte	0x6
	.byte	0x6
	.uahalf	0x50a
	.uaword	0x1575
	.uleb128 0x7
	.string	"power_management__go1_power_force"
	.byte	0x6
	.uahalf	0x50b
	.uaword	0x1b7
	.byte	0
	.uleb128 0x7
	.string	"system__stream_count_ctrl"
	.byte	0x6
	.uahalf	0x515
	.uaword	0x1b7
	.byte	0x1
	.uleb128 0x7
	.string	"firmware__enable"
	.byte	0x6
	.uahalf	0x51f
	.uaword	0x1b7
	.byte	0x2
	.uleb128 0x7
	.string	"system__interrupt_clear"
	.byte	0x6
	.uahalf	0x529
	.uaword	0x1b7
	.byte	0x3
	.uleb128 0x7
	.string	"system__mode_start"
	.byte	0x6
	.uahalf	0x534
	.uaword	0x1b7
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_system_control_t"
	.byte	0x6
	.uahalf	0x543
	.uaword	0x14c6
	.uleb128 0x9
	.byte	0x2c
	.byte	0x6
	.uahalf	0x54f
	.uaword	0x1984
	.uleb128 0x7
	.string	"result__interrupt_status"
	.byte	0x6
	.uahalf	0x550
	.uaword	0x1b7
	.byte	0
	.uleb128 0x7
	.string	"result__range_status"
	.byte	0x6
	.uahalf	0x55c
	.uaword	0x1b7
	.byte	0x1
	.uleb128 0x7
	.string	"result__report_status"
	.byte	0x6
	.uahalf	0x569
	.uaword	0x1b7
	.byte	0x2
	.uleb128 0x7
	.string	"result__stream_count"
	.byte	0x6
	.uahalf	0x573
	.uaword	0x1b7
	.byte	0x3
	.uleb128 0x7
	.string	"result__dss_actual_effective_spads_sd0"
	.byte	0x6
	.uahalf	0x57d
	.uaword	0x1f3
	.byte	0x4
	.uleb128 0x7
	.string	"result__peak_signal_count_rate_mcps_sd0"
	.byte	0x6
	.uahalf	0x587
	.uaword	0x1f3
	.byte	0x6
	.uleb128 0x7
	.string	"result__ambient_count_rate_mcps_sd0"
	.byte	0x6
	.uahalf	0x591
	.uaword	0x1f3
	.byte	0x8
	.uleb128 0x7
	.string	"result__sigma_sd0"
	.byte	0x6
	.uahalf	0x59b
	.uaword	0x1f3
	.byte	0xa
	.uleb128 0x7
	.string	"result__phase_sd0"
	.byte	0x6
	.uahalf	0x5a5
	.uaword	0x1f3
	.byte	0xc
	.uleb128 0x7
	.string	"result__final_crosstalk_corrected_range_mm_sd0"
	.byte	0x6
	.uahalf	0x5af
	.uaword	0x1f3
	.byte	0xe
	.uleb128 0x7
	.string	"result__peak_signal_count_rate_crosstalk_corrected_mcps_sd0"
	.byte	0x6
	.uahalf	0x5b9
	.uaword	0x1f3
	.byte	0x10
	.uleb128 0x7
	.string	"result__mm_inner_actual_effective_spads_sd0"
	.byte	0x6
	.uahalf	0x5c3
	.uaword	0x1f3
	.byte	0x12
	.uleb128 0x7
	.string	"result__mm_outer_actual_effective_spads_sd0"
	.byte	0x6
	.uahalf	0x5cd
	.uaword	0x1f3
	.byte	0x14
	.uleb128 0x7
	.string	"result__avg_signal_count_rate_mcps_sd0"
	.byte	0x6
	.uahalf	0x5d7
	.uaword	0x1f3
	.byte	0x16
	.uleb128 0x7
	.string	"result__dss_actual_effective_spads_sd1"
	.byte	0x6
	.uahalf	0x5e1
	.uaword	0x1f3
	.byte	0x18
	.uleb128 0x7
	.string	"result__peak_signal_count_rate_mcps_sd1"
	.byte	0x6
	.uahalf	0x5eb
	.uaword	0x1f3
	.byte	0x1a
	.uleb128 0x7
	.string	"result__ambient_count_rate_mcps_sd1"
	.byte	0x6
	.uahalf	0x5f5
	.uaword	0x1f3
	.byte	0x1c
	.uleb128 0x7
	.string	"result__sigma_sd1"
	.byte	0x6
	.uahalf	0x5ff
	.uaword	0x1f3
	.byte	0x1e
	.uleb128 0x7
	.string	"result__phase_sd1"
	.byte	0x6
	.uahalf	0x609
	.uaword	0x1f3
	.byte	0x20
	.uleb128 0x7
	.string	"result__final_crosstalk_corrected_range_mm_sd1"
	.byte	0x6
	.uahalf	0x613
	.uaword	0x1f3
	.byte	0x22
	.uleb128 0x7
	.string	"result__spare_0_sd1"
	.byte	0x6
	.uahalf	0x61d
	.uaword	0x1f3
	.byte	0x24
	.uleb128 0x7
	.string	"result__spare_1_sd1"
	.byte	0x6
	.uahalf	0x627
	.uaword	0x1f3
	.byte	0x26
	.uleb128 0x7
	.string	"result__spare_2_sd1"
	.byte	0x6
	.uahalf	0x631
	.uaword	0x1f3
	.byte	0x28
	.uleb128 0x7
	.string	"result__spare_3_sd1"
	.byte	0x6
	.uahalf	0x63b
	.uaword	0x1b7
	.byte	0x2a
	.uleb128 0x7
	.string	"result__thresh_info"
	.byte	0x6
	.uahalf	0x645
	.uaword	0x1b7
	.byte	0x2b
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_system_results_t"
	.byte	0x6
	.uahalf	0x650
	.uaword	0x1595
	.uleb128 0x9
	.byte	0x24
	.byte	0x6
	.uahalf	0x65c
	.uaword	0x1b46
	.uleb128 0x7
	.string	"result_core__ambient_window_events_sd0"
	.byte	0x6
	.uahalf	0x65d
	.uaword	0x234
	.byte	0
	.uleb128 0x7
	.string	"result_core__ranging_total_events_sd0"
	.byte	0x6
	.uahalf	0x667
	.uaword	0x234
	.byte	0x4
	.uleb128 0x7
	.string	"result_core__signal_total_events_sd0"
	.byte	0x6
	.uahalf	0x671
	.uaword	0x219
	.byte	0x8
	.uleb128 0x7
	.string	"result_core__total_periods_elapsed_sd0"
	.byte	0x6
	.uahalf	0x67b
	.uaword	0x234
	.byte	0xc
	.uleb128 0x7
	.string	"result_core__ambient_window_events_sd1"
	.byte	0x6
	.uahalf	0x685
	.uaword	0x234
	.byte	0x10
	.uleb128 0x7
	.string	"result_core__ranging_total_events_sd1"
	.byte	0x6
	.uahalf	0x68f
	.uaword	0x234
	.byte	0x14
	.uleb128 0x7
	.string	"result_core__signal_total_events_sd1"
	.byte	0x6
	.uahalf	0x699
	.uaword	0x219
	.byte	0x18
	.uleb128 0x7
	.string	"result_core__total_periods_elapsed_sd1"
	.byte	0x6
	.uahalf	0x6a3
	.uaword	0x234
	.byte	0x1c
	.uleb128 0x7
	.string	"result_core__spare_0"
	.byte	0x6
	.uahalf	0x6ad
	.uaword	0x1b7
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_core_results_t"
	.byte	0x6
	.uahalf	0x6b7
	.uaword	0x19a4
	.uleb128 0x9
	.byte	0x38
	.byte	0x6
	.uahalf	0x6c3
	.uaword	0x2199
	.uleb128 0x7
	.string	"phasecal_result__reference_phase"
	.byte	0x6
	.uahalf	0x6c4
	.uaword	0x1f3
	.byte	0
	.uleb128 0x7
	.string	"phasecal_result__vcsel_start"
	.byte	0x6
	.uahalf	0x6ce
	.uaword	0x1b7
	.byte	0x2
	.uleb128 0x7
	.string	"ref_spad_char_result__num_actual_ref_spads"
	.byte	0x6
	.uahalf	0x6d8
	.uaword	0x1b7
	.byte	0x3
	.uleb128 0x7
	.string	"ref_spad_char_result__ref_location"
	.byte	0x6
	.uahalf	0x6e2
	.uaword	0x1b7
	.byte	0x4
	.uleb128 0x7
	.string	"vhv_result__coldboot_status"
	.byte	0x6
	.uahalf	0x6ec
	.uaword	0x1b7
	.byte	0x5
	.uleb128 0x7
	.string	"vhv_result__search_result"
	.byte	0x6
	.uahalf	0x6f6
	.uaword	0x1b7
	.byte	0x6
	.uleb128 0x7
	.string	"vhv_result__latest_setting"
	.byte	0x6
	.uahalf	0x700
	.uaword	0x1b7
	.byte	0x7
	.uleb128 0x7
	.string	"result__osc_calibrate_val"
	.byte	0x6
	.uahalf	0x70a
	.uaword	0x1f3
	.byte	0x8
	.uleb128 0x7
	.string	"ana_config__powerdown_go1"
	.byte	0x6
	.uahalf	0x714
	.uaword	0x1b7
	.byte	0xa
	.uleb128 0x7
	.string	"ana_config__ref_bg_ctrl"
	.byte	0x6
	.uahalf	0x71f
	.uaword	0x1b7
	.byte	0xb
	.uleb128 0x7
	.string	"ana_config__regdvdd1v2_ctrl"
	.byte	0x6
	.uahalf	0x72a
	.uaword	0x1b7
	.byte	0xc
	.uleb128 0x7
	.string	"ana_config__osc_slow_ctrl"
	.byte	0x6
	.uahalf	0x736
	.uaword	0x1b7
	.byte	0xd
	.uleb128 0x7
	.string	"test_mode__status"
	.byte	0x6
	.uahalf	0x742
	.uaword	0x1b7
	.byte	0xe
	.uleb128 0x7
	.string	"firmware__system_status"
	.byte	0x6
	.uahalf	0x74c
	.uaword	0x1b7
	.byte	0xf
	.uleb128 0x7
	.string	"firmware__mode_status"
	.byte	0x6
	.uahalf	0x757
	.uaword	0x1b7
	.byte	0x10
	.uleb128 0x7
	.string	"firmware__secondary_mode_status"
	.byte	0x6
	.uahalf	0x761
	.uaword	0x1b7
	.byte	0x11
	.uleb128 0x7
	.string	"firmware__cal_repeat_rate_counter"
	.byte	0x6
	.uahalf	0x76b
	.uaword	0x1f3
	.byte	0x12
	.uleb128 0x7
	.string	"gph__system__thresh_high"
	.byte	0x6
	.uahalf	0x775
	.uaword	0x1f3
	.byte	0x14
	.uleb128 0x7
	.string	"gph__system__thresh_low"
	.byte	0x6
	.uahalf	0x77f
	.uaword	0x1f3
	.byte	0x16
	.uleb128 0x7
	.string	"gph__system__enable_xtalk_per_quadrant"
	.byte	0x6
	.uahalf	0x789
	.uaword	0x1b7
	.byte	0x18
	.uleb128 0x7
	.string	"gph__spare_0"
	.byte	0x6
	.uahalf	0x793
	.uaword	0x1b7
	.byte	0x19
	.uleb128 0x7
	.string	"gph__sd_config__woi_sd0"
	.byte	0x6
	.uahalf	0x79f
	.uaword	0x1b7
	.byte	0x1a
	.uleb128 0x7
	.string	"gph__sd_config__woi_sd1"
	.byte	0x6
	.uahalf	0x7a9
	.uaword	0x1b7
	.byte	0x1b
	.uleb128 0x7
	.string	"gph__sd_config__initial_phase_sd0"
	.byte	0x6
	.uahalf	0x7b3
	.uaword	0x1b7
	.byte	0x1c
	.uleb128 0x7
	.string	"gph__sd_config__initial_phase_sd1"
	.byte	0x6
	.uahalf	0x7bd
	.uaword	0x1b7
	.byte	0x1d
	.uleb128 0x7
	.string	"gph__sd_config__first_order_select"
	.byte	0x6
	.uahalf	0x7c7
	.uaword	0x1b7
	.byte	0x1e
	.uleb128 0x7
	.string	"gph__sd_config__quantifier"
	.byte	0x6
	.uahalf	0x7d2
	.uaword	0x1b7
	.byte	0x1f
	.uleb128 0x7
	.string	"gph__roi_config__user_roi_centre_spad"
	.byte	0x6
	.uahalf	0x7dc
	.uaword	0x1b7
	.byte	0x20
	.uleb128 0x7
	.string	"gph__roi_config__user_roi_requested_global_xy_size"
	.byte	0x6
	.uahalf	0x7e6
	.uaword	0x1b7
	.byte	0x21
	.uleb128 0x7
	.string	"gph__system__sequence_config"
	.byte	0x6
	.uahalf	0x7f0
	.uaword	0x1b7
	.byte	0x22
	.uleb128 0x7
	.string	"gph__gph_id"
	.byte	0x6
	.uahalf	0x801
	.uaword	0x1b7
	.byte	0x23
	.uleb128 0x7
	.string	"system__interrupt_set"
	.byte	0x6
	.uahalf	0x80b
	.uaword	0x1b7
	.byte	0x24
	.uleb128 0x7
	.string	"interrupt_manager__enables"
	.byte	0x6
	.uahalf	0x816
	.uaword	0x1b7
	.byte	0x25
	.uleb128 0x7
	.string	"interrupt_manager__clear"
	.byte	0x6
	.uahalf	0x824
	.uaword	0x1b7
	.byte	0x26
	.uleb128 0x7
	.string	"interrupt_manager__status"
	.byte	0x6
	.uahalf	0x832
	.uaword	0x1b7
	.byte	0x27
	.uleb128 0x7
	.string	"mcu_to_host_bank__wr_access_en"
	.byte	0x6
	.uahalf	0x840
	.uaword	0x1b7
	.byte	0x28
	.uleb128 0x7
	.string	"power_management__go1_reset_status"
	.byte	0x6
	.uahalf	0x84a
	.uaword	0x1b7
	.byte	0x29
	.uleb128 0x7
	.string	"pad_startup_mode__value_ro"
	.byte	0x6
	.uahalf	0x854
	.uaword	0x1b7
	.byte	0x2a
	.uleb128 0x7
	.string	"pad_startup_mode__value_ctrl"
	.byte	0x6
	.uahalf	0x85f
	.uaword	0x1b7
	.byte	0x2b
	.uleb128 0x7
	.string	"pll_period_us"
	.byte	0x6
	.uahalf	0x86c
	.uaword	0x234
	.byte	0x2c
	.uleb128 0x7
	.string	"interrupt_scheduler__data_out"
	.byte	0x6
	.uahalf	0x876
	.uaword	0x234
	.byte	0x30
	.uleb128 0x7
	.string	"nvm_bist__complete"
	.byte	0x6
	.uahalf	0x880
	.uaword	0x1b7
	.byte	0x34
	.uleb128 0x7
	.string	"nvm_bist__status"
	.byte	0x6
	.uahalf	0x88a
	.uaword	0x1b7
	.byte	0x35
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_debug_results_t"
	.byte	0x6
	.uahalf	0x894
	.uaword	0x1b64
	.uleb128 0x9
	.byte	0x32
	.byte	0x6
	.uahalf	0x8a0
	.uaword	0x296a
	.uleb128 0x7
	.string	"identification__model_id"
	.byte	0x6
	.uahalf	0x8a1
	.uaword	0x1b7
	.byte	0
	.uleb128 0x7
	.string	"identification__module_type"
	.byte	0x6
	.uahalf	0x8ab
	.uaword	0x1b7
	.byte	0x1
	.uleb128 0x7
	.string	"identification__revision_id"
	.byte	0x6
	.uahalf	0x8b5
	.uaword	0x1b7
	.byte	0x2
	.uleb128 0x7
	.string	"identification__module_id"
	.byte	0x6
	.uahalf	0x8c0
	.uaword	0x1f3
	.byte	0x4
	.uleb128 0x7
	.string	"ana_config__fast_osc__trim_max"
	.byte	0x6
	.uahalf	0x8ca
	.uaword	0x1b7
	.byte	0x6
	.uleb128 0x7
	.string	"ana_config__fast_osc__freq_set"
	.byte	0x6
	.uahalf	0x8d4
	.uaword	0x1b7
	.byte	0x7
	.uleb128 0x7
	.string	"ana_config__vcsel_trim"
	.byte	0x6
	.uahalf	0x8de
	.uaword	0x1b7
	.byte	0x8
	.uleb128 0x7
	.string	"ana_config__vcsel_selion"
	.byte	0x6
	.uahalf	0x8e8
	.uaword	0x1b7
	.byte	0x9
	.uleb128 0x7
	.string	"ana_config__vcsel_selion_max"
	.byte	0x6
	.uahalf	0x8f2
	.uaword	0x1b7
	.byte	0xa
	.uleb128 0x7
	.string	"protected_laser_safety__lock_bit"
	.byte	0x6
	.uahalf	0x8fc
	.uaword	0x1b7
	.byte	0xb
	.uleb128 0x7
	.string	"laser_safety__key"
	.byte	0x6
	.uahalf	0x906
	.uaword	0x1b7
	.byte	0xc
	.uleb128 0x7
	.string	"laser_safety__key_ro"
	.byte	0x6
	.uahalf	0x910
	.uaword	0x1b7
	.byte	0xd
	.uleb128 0x7
	.string	"laser_safety__clip"
	.byte	0x6
	.uahalf	0x91a
	.uaword	0x1b7
	.byte	0xe
	.uleb128 0x7
	.string	"laser_safety__mult"
	.byte	0x6
	.uahalf	0x924
	.uaword	0x1b7
	.byte	0xf
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_0"
	.byte	0x6
	.uahalf	0x92e
	.uaword	0x1b7
	.byte	0x10
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_1"
	.byte	0x6
	.uahalf	0x938
	.uaword	0x1b7
	.byte	0x11
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_2"
	.byte	0x6
	.uahalf	0x942
	.uaword	0x1b7
	.byte	0x12
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_3"
	.byte	0x6
	.uahalf	0x94c
	.uaword	0x1b7
	.byte	0x13
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_4"
	.byte	0x6
	.uahalf	0x956
	.uaword	0x1b7
	.byte	0x14
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_5"
	.byte	0x6
	.uahalf	0x960
	.uaword	0x1b7
	.byte	0x15
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_6"
	.byte	0x6
	.uahalf	0x96a
	.uaword	0x1b7
	.byte	0x16
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_7"
	.byte	0x6
	.uahalf	0x974
	.uaword	0x1b7
	.byte	0x17
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_8"
	.byte	0x6
	.uahalf	0x97e
	.uaword	0x1b7
	.byte	0x18
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_9"
	.byte	0x6
	.uahalf	0x988
	.uaword	0x1b7
	.byte	0x19
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_10"
	.byte	0x6
	.uahalf	0x992
	.uaword	0x1b7
	.byte	0x1a
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_11"
	.byte	0x6
	.uahalf	0x99c
	.uaword	0x1b7
	.byte	0x1b
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_12"
	.byte	0x6
	.uahalf	0x9a6
	.uaword	0x1b7
	.byte	0x1c
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_13"
	.byte	0x6
	.uahalf	0x9b0
	.uaword	0x1b7
	.byte	0x1d
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_14"
	.byte	0x6
	.uahalf	0x9ba
	.uaword	0x1b7
	.byte	0x1e
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_15"
	.byte	0x6
	.uahalf	0x9c4
	.uaword	0x1b7
	.byte	0x1f
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_16"
	.byte	0x6
	.uahalf	0x9ce
	.uaword	0x1b7
	.byte	0x20
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_17"
	.byte	0x6
	.uahalf	0x9d8
	.uaword	0x1b7
	.byte	0x21
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_18"
	.byte	0x6
	.uahalf	0x9e2
	.uaword	0x1b7
	.byte	0x22
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_19"
	.byte	0x6
	.uahalf	0x9ec
	.uaword	0x1b7
	.byte	0x23
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_20"
	.byte	0x6
	.uahalf	0x9f6
	.uaword	0x1b7
	.byte	0x24
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_21"
	.byte	0x6
	.uahalf	0xa00
	.uaword	0x1b7
	.byte	0x25
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_22"
	.byte	0x6
	.uahalf	0xa0a
	.uaword	0x1b7
	.byte	0x26
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_23"
	.byte	0x6
	.uahalf	0xa14
	.uaword	0x1b7
	.byte	0x27
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_24"
	.byte	0x6
	.uahalf	0xa1e
	.uaword	0x1b7
	.byte	0x28
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_25"
	.byte	0x6
	.uahalf	0xa28
	.uaword	0x1b7
	.byte	0x29
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_26"
	.byte	0x6
	.uahalf	0xa32
	.uaword	0x1b7
	.byte	0x2a
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_27"
	.byte	0x6
	.uahalf	0xa3c
	.uaword	0x1b7
	.byte	0x2b
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_28"
	.byte	0x6
	.uahalf	0xa46
	.uaword	0x1b7
	.byte	0x2c
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_29"
	.byte	0x6
	.uahalf	0xa50
	.uaword	0x1b7
	.byte	0x2d
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_30"
	.byte	0x6
	.uahalf	0xa5a
	.uaword	0x1b7
	.byte	0x2e
	.uleb128 0x7
	.string	"global_config__spad_enables_rtn_31"
	.byte	0x6
	.uahalf	0xa64
	.uaword	0x1b7
	.byte	0x2f
	.uleb128 0x7
	.string	"roi_config__mode_roi_centre_spad"
	.byte	0x6
	.uahalf	0xa6e
	.uaword	0x1b7
	.byte	0x30
	.uleb128 0x7
	.string	"roi_config__mode_roi_xy_size"
	.byte	0x6
	.uahalf	0xa78
	.uaword	0x1b7
	.byte	0x31
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_nvm_copy_data_t"
	.byte	0x6
	.uahalf	0xa82
	.uaword	0x21b8
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.byte	0x9d
	.uaword	0x29d9
	.uleb128 0x6
	.string	"ll_revision"
	.byte	0x7
	.byte	0x9e
	.uaword	0x234
	.byte	0
	.uleb128 0x6
	.string	"ll_major"
	.byte	0x7
	.byte	0x9f
	.uaword	0x1b7
	.byte	0x4
	.uleb128 0x6
	.string	"ll_minor"
	.byte	0x7
	.byte	0xa0
	.uaword	0x1b7
	.byte	0x5
	.uleb128 0x6
	.string	"ll_build"
	.byte	0x7
	.byte	0xa1
	.uaword	0x1b7
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.string	"VL53L1_ll_version_t"
	.byte	0x7
	.byte	0xa2
	.uaword	0x2989
	.uleb128 0x5
	.byte	0x10
	.byte	0x7
	.byte	0xa8
	.uaword	0x2a91
	.uleb128 0x6
	.string	"device_test_mode"
	.byte	0x7
	.byte	0xaa
	.uaword	0x1b7
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x7
	.byte	0xab
	.uaword	0x1b7
	.byte	0x1
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.byte	0xac
	.uaword	0x234
	.byte	0x4
	.uleb128 0x6
	.string	"target_count_rate_mcps"
	.byte	0x7
	.byte	0xad
	.uaword	0x1f3
	.byte	0x8
	.uleb128 0x6
	.string	"min_count_rate_limit_mcps"
	.byte	0x7
	.byte	0xaf
	.uaword	0x1f3
	.byte	0xa
	.uleb128 0x6
	.string	"max_count_rate_limit_mcps"
	.byte	0x7
	.byte	0xb1
	.uaword	0x1f3
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.string	"VL53L1_refspadchar_config_t"
	.byte	0x7
	.byte	0xb4
	.uaword	0x29f4
	.uleb128 0x5
	.byte	0xc
	.byte	0x7
	.byte	0xbb
	.uaword	0x2b2a
	.uleb128 0x6
	.string	"array_select"
	.byte	0x7
	.byte	0xbd
	.uaword	0x44c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x7
	.byte	0xc1
	.uaword	0x1b7
	.byte	0x1
	.uleb128 0x6
	.string	"vcsel_start"
	.byte	0x7
	.byte	0xc3
	.uaword	0x1b7
	.byte	0x2
	.uleb128 0x6
	.string	"vcsel_width"
	.byte	0x7
	.byte	0xc5
	.uaword	0x1b7
	.byte	0x3
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.byte	0xc7
	.uaword	0x234
	.byte	0x4
	.uleb128 0x6
	.string	"rate_limit_mcps"
	.byte	0x7
	.byte	0xc9
	.uaword	0x1f3
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.string	"VL53L1_ssc_config_t"
	.byte	0x7
	.byte	0xce
	.uaword	0x2ab4
	.uleb128 0x5
	.byte	0x18
	.byte	0x7
	.byte	0xd4
	.uaword	0x2cea
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x7
	.byte	0xd7
	.uaword	0x234
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x7
	.byte	0xd9
	.uaword	0x1d7
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x7
	.byte	0xdb
	.uaword	0x1d7
	.byte	0x6
	.uleb128 0x6
	.string	"nvm_default__crosstalk_compensation_plane_offset_kcps"
	.byte	0x7
	.byte	0xdd
	.uaword	0x234
	.byte	0x8
	.uleb128 0x6
	.string	"nvm_default__crosstalk_compensation_x_plane_gradient_kcps"
	.byte	0x7
	.byte	0xdf
	.uaword	0x1d7
	.byte	0xc
	.uleb128 0x6
	.string	"nvm_default__crosstalk_compensation_y_plane_gradient_kcps"
	.byte	0x7
	.byte	0xe1
	.uaword	0x1d7
	.byte	0xe
	.uleb128 0x6
	.string	"global_crosstalk_compensation_enable"
	.byte	0x7
	.byte	0xe3
	.uaword	0x1b7
	.byte	0x10
	.uleb128 0x6
	.string	"lite_mode_crosstalk_margin_kcps"
	.byte	0x7
	.byte	0xe5
	.uaword	0x1d7
	.byte	0x12
	.uleb128 0x6
	.string	"crosstalk_range_ignore_threshold_mult"
	.byte	0x7
	.byte	0xeb
	.uaword	0x1b7
	.byte	0x14
	.uleb128 0x6
	.string	"crosstalk_range_ignore_threshold_rate_mcps"
	.byte	0x7
	.byte	0xed
	.uaword	0x1f3
	.byte	0x16
	.byte	0
	.uleb128 0x2
	.string	"VL53L1_xtalk_config_t"
	.byte	0x7
	.byte	0xf2
	.uaword	0x2b45
	.uleb128 0x5
	.byte	0x4c
	.byte	0x7
	.byte	0xfe
	.uaword	0x320d
	.uleb128 0x7
	.string	"tp_tuning_parm_version"
	.byte	0x7
	.uahalf	0x101
	.uaword	0x1f3
	.byte	0
	.uleb128 0x7
	.string	"tp_tuning_parm_key_table_version"
	.byte	0x7
	.uahalf	0x104
	.uaword	0x1f3
	.byte	0x2
	.uleb128 0x7
	.string	"tp_tuning_parm_lld_version"
	.byte	0x7
	.uahalf	0x108
	.uaword	0x1f3
	.byte	0x4
	.uleb128 0x7
	.string	"tp_init_phase_rtn_lite_long"
	.byte	0x7
	.uahalf	0x10c
	.uaword	0x1b7
	.byte	0x6
	.uleb128 0x7
	.string	"tp_init_phase_rtn_lite_med"
	.byte	0x7
	.uahalf	0x110
	.uaword	0x1b7
	.byte	0x7
	.uleb128 0x7
	.string	"tp_init_phase_rtn_lite_short"
	.byte	0x7
	.uahalf	0x114
	.uaword	0x1b7
	.byte	0x8
	.uleb128 0x7
	.string	"tp_init_phase_ref_lite_long"
	.byte	0x7
	.uahalf	0x118
	.uaword	0x1b7
	.byte	0x9
	.uleb128 0x7
	.string	"tp_init_phase_ref_lite_med"
	.byte	0x7
	.uahalf	0x11c
	.uaword	0x1b7
	.byte	0xa
	.uleb128 0x7
	.string	"tp_init_phase_ref_lite_short"
	.byte	0x7
	.uahalf	0x120
	.uaword	0x1b7
	.byte	0xb
	.uleb128 0x7
	.string	"tp_consistency_lite_phase_tolerance"
	.byte	0x7
	.uahalf	0x125
	.uaword	0x1b7
	.byte	0xc
	.uleb128 0x7
	.string	"tp_phasecal_target"
	.byte	0x7
	.uahalf	0x129
	.uaword	0x1b7
	.byte	0xd
	.uleb128 0x7
	.string	"tp_cal_repeat_rate"
	.byte	0x7
	.uahalf	0x12c
	.uaword	0x1f3
	.byte	0xe
	.uleb128 0x7
	.string	"tp_lite_min_clip"
	.byte	0x7
	.uahalf	0x130
	.uaword	0x1b7
	.byte	0x10
	.uleb128 0x7
	.string	"tp_lite_long_sigma_thresh_mm"
	.byte	0x7
	.uahalf	0x135
	.uaword	0x1f3
	.byte	0x12
	.uleb128 0x7
	.string	"tp_lite_med_sigma_thresh_mm"
	.byte	0x7
	.uahalf	0x139
	.uaword	0x1f3
	.byte	0x14
	.uleb128 0x7
	.string	"tp_lite_short_sigma_thresh_mm"
	.byte	0x7
	.uahalf	0x13d
	.uaword	0x1f3
	.byte	0x16
	.uleb128 0x7
	.string	"tp_lite_long_min_count_rate_rtn_mcps"
	.byte	0x7
	.uahalf	0x142
	.uaword	0x1f3
	.byte	0x18
	.uleb128 0x7
	.string	"tp_lite_med_min_count_rate_rtn_mcps"
	.byte	0x7
	.uahalf	0x146
	.uaword	0x1f3
	.byte	0x1a
	.uleb128 0x7
	.string	"tp_lite_short_min_count_rate_rtn_mcps"
	.byte	0x7
	.uahalf	0x14a
	.uaword	0x1f3
	.byte	0x1c
	.uleb128 0x7
	.string	"tp_lite_sigma_est_pulse_width_ns"
	.byte	0x7
	.uahalf	0x14f
	.uaword	0x1b7
	.byte	0x1e
	.uleb128 0x7
	.string	"tp_lite_sigma_est_amb_width_ns"
	.byte	0x7
	.uahalf	0x152
	.uaword	0x1b7
	.byte	0x1f
	.uleb128 0x7
	.string	"tp_lite_sigma_ref_mm"
	.byte	0x7
	.uahalf	0x155
	.uaword	0x1b7
	.byte	0x20
	.uleb128 0x7
	.string	"tp_lite_seed_cfg"
	.byte	0x7
	.uahalf	0x158
	.uaword	0x1b7
	.byte	0x21
	.uleb128 0x7
	.string	"tp_timed_seed_cfg"
	.byte	0x7
	.uahalf	0x15b
	.uaword	0x1b7
	.byte	0x22
	.uleb128 0x7
	.string	"tp_lite_quantifier"
	.byte	0x7
	.uahalf	0x15f
	.uaword	0x1b7
	.byte	0x23
	.uleb128 0x7
	.string	"tp_lite_first_order_select"
	.byte	0x7
	.uahalf	0x162
	.uaword	0x1b7
	.byte	0x24
	.uleb128 0x7
	.string	"tp_dss_target_lite_mcps"
	.byte	0x7
	.uahalf	0x166
	.uaword	0x1f3
	.byte	0x26
	.uleb128 0x7
	.string	"tp_dss_target_timed_mcps"
	.byte	0x7
	.uahalf	0x169
	.uaword	0x1f3
	.byte	0x28
	.uleb128 0x7
	.string	"tp_phasecal_timeout_lite_us"
	.byte	0x7
	.uahalf	0x16d
	.uaword	0x234
	.byte	0x2c
	.uleb128 0x7
	.string	"tp_phasecal_timeout_timed_us"
	.byte	0x7
	.uahalf	0x171
	.uaword	0x234
	.byte	0x30
	.uleb128 0x7
	.string	"tp_mm_timeout_lite_us"
	.byte	0x7
	.uahalf	0x175
	.uaword	0x234
	.byte	0x34
	.uleb128 0x7
	.string	"tp_mm_timeout_timed_us"
	.byte	0x7
	.uahalf	0x178
	.uaword	0x234
	.byte	0x38
	.uleb128 0x7
	.string	"tp_mm_timeout_lpa_us"
	.byte	0x7
	.uahalf	0x17b
	.uaword	0x234
	.byte	0x3c
	.uleb128 0x7
	.string	"tp_range_timeout_lite_us"
	.byte	0x7
	.uahalf	0x17f
	.uaword	0x234
	.byte	0x40
	.uleb128 0x7
	.string	"tp_range_timeout_timed_us"
	.byte	0x7
	.uahalf	0x182
	.uaword	0x234
	.byte	0x44
	.uleb128 0x7
	.string	"tp_range_timeout_lpa_us"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x234
	.byte	0x48
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_tuning_parm_storage_t"
	.byte	0x7
	.uahalf	0x189
	.uaword	0x2d07
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.uahalf	0x191
	.uaword	0x3256
	.uleb128 0x8
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x193
	.uaword	0x1b7
	.byte	0
	.uleb128 0x8
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x194
	.uaword	0x1b7
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_optical_centre_t"
	.byte	0x7
	.uahalf	0x196
	.uaword	0x3232
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.uahalf	0x19d
	.uaword	0x32b9
	.uleb128 0x8
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x19f
	.uaword	0x1b7
	.byte	0
	.uleb128 0x8
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x1b7
	.byte	0x1
	.uleb128 0x7
	.string	"width"
	.byte	0x7
	.uahalf	0x1a1
	.uaword	0x1b7
	.byte	0x2
	.uleb128 0x7
	.string	"height"
	.byte	0x7
	.uahalf	0x1a2
	.uaword	0x1b7
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_user_zone_t"
	.byte	0x7
	.uahalf	0x1a4
	.uaword	0x3276
	.uleb128 0x9
	.byte	0xe
	.byte	0x7
	.uahalf	0x1ae
	.uaword	0x3399
	.uleb128 0x8
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x1b1
	.uaword	0x46a
	.byte	0
	.uleb128 0x8
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x1b4
	.uaword	0x46a
	.byte	0x1
	.uleb128 0x8
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x1b9
	.uaword	0x1b7
	.byte	0x2
	.uleb128 0x8
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x1bc
	.uaword	0x1b7
	.byte	0x3
	.uleb128 0x8
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x1c2
	.uaword	0x1b7
	.byte	0x4
	.uleb128 0x7
	.string	"threshold_distance_high"
	.byte	0x7
	.uahalf	0x1ca
	.uaword	0x1f3
	.byte	0x6
	.uleb128 0x7
	.string	"threshold_distance_low"
	.byte	0x7
	.uahalf	0x1cd
	.uaword	0x1f3
	.byte	0x8
	.uleb128 0x7
	.string	"threshold_rate_high"
	.byte	0x7
	.uahalf	0x1d0
	.uaword	0x1f3
	.byte	0xa
	.uleb128 0x7
	.string	"threshold_rate_low"
	.byte	0x7
	.uahalf	0x1d3
	.uaword	0x1f3
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_GPIO_interrupt_config_t"
	.byte	0x7
	.uahalf	0x1d5
	.uaword	0x32d4
	.uleb128 0x9
	.byte	0x10
	.byte	0x7
	.uahalf	0x1e0
	.uaword	0x34e0
	.uleb128 0x7
	.string	"vhv_loop_bound"
	.byte	0x7
	.uahalf	0x1e6
	.uaword	0x1b7
	.byte	0
	.uleb128 0x7
	.string	"is_low_power_auto_mode"
	.byte	0x7
	.uahalf	0x1e9
	.uaword	0x1b7
	.byte	0x1
	.uleb128 0x7
	.string	"low_power_auto_range_count"
	.byte	0x7
	.uahalf	0x1ed
	.uaword	0x1b7
	.byte	0x2
	.uleb128 0x7
	.string	"saved_interrupt_config"
	.byte	0x7
	.uahalf	0x1f0
	.uaword	0x1b7
	.byte	0x3
	.uleb128 0x7
	.string	"saved_vhv_init"
	.byte	0x7
	.uahalf	0x1f3
	.uaword	0x1b7
	.byte	0x4
	.uleb128 0x7
	.string	"saved_vhv_timeout"
	.byte	0x7
	.uahalf	0x1f6
	.uaword	0x1b7
	.byte	0x5
	.uleb128 0x7
	.string	"first_run_phasecal_result"
	.byte	0x7
	.uahalf	0x1f9
	.uaword	0x1b7
	.byte	0x6
	.uleb128 0x7
	.string	"dss__total_rate_per_spad_mcps"
	.byte	0x7
	.uahalf	0x1fc
	.uaword	0x234
	.byte	0x8
	.uleb128 0x7
	.string	"dss__required_spads"
	.byte	0x7
	.uahalf	0x1ff
	.uaword	0x1f3
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_low_power_auto_data_t"
	.byte	0x7
	.uahalf	0x201
	.uaword	0x33c0
	.uleb128 0x9
	.byte	0x40
	.byte	0x7
	.uahalf	0x20b
	.uaword	0x3749
	.uleb128 0x7
	.string	"range_id"
	.byte	0x7
	.uahalf	0x20f
	.uaword	0x1b7
	.byte	0
	.uleb128 0x7
	.string	"time_stamp"
	.byte	0x7
	.uahalf	0x211
	.uaword	0x234
	.byte	0x4
	.uleb128 0x7
	.string	"width"
	.byte	0x7
	.uahalf	0x214
	.uaword	0x1f3
	.byte	0x8
	.uleb128 0x7
	.string	"woi"
	.byte	0x7
	.uahalf	0x216
	.uaword	0x1b7
	.byte	0xa
	.uleb128 0x7
	.string	"fast_osc_frequency"
	.byte	0x7
	.uahalf	0x219
	.uaword	0x1f3
	.byte	0xc
	.uleb128 0x7
	.string	"zero_distance_phase"
	.byte	0x7
	.uahalf	0x21b
	.uaword	0x1f3
	.byte	0xe
	.uleb128 0x7
	.string	"actual_effective_spads"
	.byte	0x7
	.uahalf	0x21d
	.uaword	0x1f3
	.byte	0x10
	.uleb128 0x7
	.string	"total_periods_elapsed"
	.byte	0x7
	.uahalf	0x220
	.uaword	0x234
	.byte	0x14
	.uleb128 0x7
	.string	"peak_duration_us"
	.byte	0x7
	.uahalf	0x223
	.uaword	0x234
	.byte	0x18
	.uleb128 0x7
	.string	"woi_duration_us"
	.byte	0x7
	.uahalf	0x226
	.uaword	0x234
	.byte	0x1c
	.uleb128 0x7
	.string	"ambient_window_events"
	.byte	0x7
	.uahalf	0x22c
	.uaword	0x234
	.byte	0x20
	.uleb128 0x7
	.string	"ranging_total_events"
	.byte	0x7
	.uahalf	0x22e
	.uaword	0x234
	.byte	0x24
	.uleb128 0x7
	.string	"signal_total_events"
	.byte	0x7
	.uahalf	0x231
	.uaword	0x219
	.byte	0x28
	.uleb128 0x7
	.string	"peak_signal_count_rate_mcps"
	.byte	0x7
	.uahalf	0x237
	.uaword	0x1f3
	.byte	0x2c
	.uleb128 0x7
	.string	"avg_signal_count_rate_mcps"
	.byte	0x7
	.uahalf	0x239
	.uaword	0x1f3
	.byte	0x2e
	.uleb128 0x7
	.string	"ambient_count_rate_mcps"
	.byte	0x7
	.uahalf	0x23b
	.uaword	0x1f3
	.byte	0x30
	.uleb128 0x7
	.string	"total_rate_per_spad_mcps"
	.byte	0x7
	.uahalf	0x23d
	.uaword	0x1f3
	.byte	0x32
	.uleb128 0x7
	.string	"peak_rate_per_spad_kcps"
	.byte	0x7
	.uahalf	0x23f
	.uaword	0x234
	.byte	0x34
	.uleb128 0x8
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x244
	.uaword	0x1f3
	.byte	0x38
	.uleb128 0x7
	.string	"median_phase"
	.byte	0x7
	.uahalf	0x249
	.uaword	0x1f3
	.byte	0x3a
	.uleb128 0x8
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x24e
	.uaword	0x1d7
	.byte	0x3c
	.uleb128 0x7
	.string	"range_status"
	.byte	0x7
	.uahalf	0x255
	.uaword	0x1b7
	.byte	0x3e
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_range_data_t"
	.byte	0x7
	.uahalf	0x257
	.uaword	0x3505
	.uleb128 0x9
	.byte	0x84
	.byte	0x7
	.uahalf	0x260
	.uaword	0x37c4
	.uleb128 0x8
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x262
	.uaword	0x2de
	.byte	0
	.uleb128 0x8
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x264
	.uaword	0x2de
	.byte	0x1
	.uleb128 0x7
	.string	"stream_count"
	.byte	0x7
	.uahalf	0x266
	.uaword	0x1b7
	.byte	0x2
	.uleb128 0x7
	.string	"device_status"
	.byte	0x7
	.uahalf	0x269
	.uaword	0x1b7
	.byte	0x3
	.uleb128 0x7
	.string	"data"
	.byte	0x7
	.uahalf	0x26c
	.uaword	0x37c4
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.uaword	0x3749
	.uaword	0x37d4
	.uleb128 0xc
	.uaword	0x29b
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_range_results_t"
	.byte	0x7
	.uahalf	0x26f
	.uaword	0x3765
	.uleb128 0x9
	.byte	0x1c
	.byte	0x7
	.uahalf	0x279
	.uaword	0x3894
	.uleb128 0x8
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x27b
	.uaword	0x1b7
	.byte	0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x27d
	.uaword	0x1b7
	.byte	0x1
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x27f
	.uaword	0x1f3
	.byte	0x2
	.uleb128 0x7
	.string	"no_of_samples"
	.byte	0x7
	.uahalf	0x281
	.uaword	0x1b7
	.byte	0x4
	.uleb128 0x7
	.string	"effective_spads"
	.byte	0x7
	.uahalf	0x283
	.uaword	0x234
	.byte	0x8
	.uleb128 0x8
	.uaword	.LASF20
	.byte	0x7
	.uahalf	0x285
	.uaword	0x234
	.byte	0xc
	.uleb128 0x8
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x287
	.uaword	0x234
	.byte	0x10
	.uleb128 0x8
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x289
	.uaword	0x219
	.byte	0x14
	.uleb128 0x7
	.string	"range_mm_offset"
	.byte	0x7
	.uahalf	0x28c
	.uaword	0x219
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_offset_range_data_t"
	.byte	0x7
	.uahalf	0x28f
	.uaword	0x37f3
	.uleb128 0x9
	.byte	0x5c
	.byte	0x7
	.uahalf	0x299
	.uaword	0x3931
	.uleb128 0x8
	.uaword	.LASF21
	.byte	0x7
	.uahalf	0x29b
	.uaword	0x1d7
	.byte	0
	.uleb128 0x7
	.string	"cal_status"
	.byte	0x7
	.uahalf	0x29d
	.uaword	0x4a8
	.byte	0x2
	.uleb128 0x7
	.string	"cal_report"
	.byte	0x7
	.uahalf	0x29f
	.uaword	0x1b7
	.byte	0x3
	.uleb128 0x7
	.string	"max_results"
	.byte	0x7
	.uahalf	0x2a1
	.uaword	0x1b7
	.byte	0x4
	.uleb128 0x7
	.string	"active_results"
	.byte	0x7
	.uahalf	0x2a4
	.uaword	0x1b7
	.byte	0x5
	.uleb128 0x7
	.string	"data"
	.byte	0x7
	.uahalf	0x2a6
	.uaword	0x3931
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.uaword	0x3894
	.uaword	0x3941
	.uleb128 0xc
	.uaword	0x29b
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_offset_range_results_t"
	.byte	0x7
	.uahalf	0x2a9
	.uaword	0x38b7
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.uahalf	0x2b4
	.uaword	0x3a3d
	.uleb128 0x7
	.string	"result__mm_inner_actual_effective_spads"
	.byte	0x7
	.uahalf	0x2b6
	.uaword	0x1f3
	.byte	0
	.uleb128 0x7
	.string	"result__mm_outer_actual_effective_spads"
	.byte	0x7
	.uahalf	0x2b8
	.uaword	0x1f3
	.byte	0x2
	.uleb128 0x7
	.string	"result__mm_inner_peak_signal_count_rtn_mcps"
	.byte	0x7
	.uahalf	0x2ba
	.uaword	0x1f3
	.byte	0x4
	.uleb128 0x7
	.string	"result__mm_outer_peak_signal_count_rtn_mcps"
	.byte	0x7
	.uahalf	0x2bc
	.uaword	0x1f3
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_additional_offset_cal_data_t"
	.byte	0x7
	.uahalf	0x2bf
	.uaword	0x3967
	.uleb128 0x9
	.byte	0x3a
	.byte	0x7
	.uahalf	0x2ca
	.uaword	0x3ac1
	.uleb128 0x8
	.uaword	.LASF21
	.byte	0x7
	.uahalf	0x2cc
	.uaword	0x1d7
	.byte	0
	.uleb128 0x7
	.string	"max_samples"
	.byte	0x7
	.uahalf	0x2ce
	.uaword	0x1f3
	.byte	0x2
	.uleb128 0x7
	.string	"width"
	.byte	0x7
	.uahalf	0x2d0
	.uaword	0x1f3
	.byte	0x4
	.uleb128 0x7
	.string	"height"
	.byte	0x7
	.uahalf	0x2d2
	.uaword	0x1f3
	.byte	0x6
	.uleb128 0x8
	.uaword	.LASF20
	.byte	0x7
	.uahalf	0x2d4
	.uaword	0x3ac1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.uaword	0x1f3
	.uaword	0x3ad1
	.uleb128 0xc
	.uaword	0x29b
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_cal_peak_rate_map_t"
	.byte	0x7
	.uahalf	0x2d7
	.uaword	0x3a69
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.uahalf	0x2e1
	.uaword	0x3b24
	.uleb128 0x7
	.string	"standard_ranging_gain_factor"
	.byte	0x7
	.uahalf	0x2e3
	.uaword	0x1f3
	.byte	0
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_gain_calibration_data_t"
	.byte	0x7
	.uahalf	0x2e6
	.uaword	0x3af4
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.uahalf	0x2f0
	.uaword	0x3bfe
	.uleb128 0x8
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x2f2
	.uaword	0x2de
	.byte	0
	.uleb128 0x7
	.string	"cfg_stream_count"
	.byte	0x7
	.uahalf	0x2f4
	.uaword	0x1b7
	.byte	0x1
	.uleb128 0x7
	.string	"cfg_gph_id"
	.byte	0x7
	.uahalf	0x2f7
	.uaword	0x1b7
	.byte	0x2
	.uleb128 0x7
	.string	"cfg_timing_status"
	.byte	0x7
	.uahalf	0x2f9
	.uaword	0x1b7
	.byte	0x3
	.uleb128 0x8
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x2fc
	.uaword	0x2de
	.byte	0x4
	.uleb128 0x7
	.string	"rd_stream_count"
	.byte	0x7
	.uahalf	0x2fe
	.uaword	0x1b7
	.byte	0x5
	.uleb128 0x7
	.string	"rd_gph_id"
	.byte	0x7
	.uahalf	0x300
	.uaword	0x1b7
	.byte	0x6
	.uleb128 0x7
	.string	"rd_timing_status"
	.byte	0x7
	.uahalf	0x302
	.uaword	0x1b7
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_ll_driver_state_t"
	.byte	0x7
	.uahalf	0x305
	.uaword	0x3b4b
	.uleb128 0x9
	.byte	0x14
	.byte	0x7
	.uahalf	0x30a
	.uaword	0x3cb1
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x30c
	.uaword	0x1f3
	.byte	0
	.uleb128 0x8
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x30f
	.uaword	0x234
	.byte	0x4
	.uleb128 0x8
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x312
	.uaword	0x234
	.byte	0x8
	.uleb128 0x8
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x315
	.uaword	0x234
	.byte	0xc
	.uleb128 0x7
	.string	"pre_num_of_samples"
	.byte	0x7
	.uahalf	0x319
	.uaword	0x1b7
	.byte	0x10
	.uleb128 0x7
	.string	"mm1_num_of_samples"
	.byte	0x7
	.uahalf	0x31c
	.uaword	0x1b7
	.byte	0x11
	.uleb128 0x7
	.string	"mm2_num_of_samples"
	.byte	0x7
	.uahalf	0x31f
	.uaword	0x1b7
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_offsetcal_config_t"
	.byte	0x7
	.uahalf	0x323
	.uaword	0x3c1f
	.uleb128 0xd
	.uahalf	0x2f4
	.byte	0x7
	.uahalf	0x32e
	.uaword	0x3fee
	.uleb128 0x7
	.string	"wait_method"
	.byte	0x7
	.uahalf	0x330
	.uaword	0x1b7
	.byte	0
	.uleb128 0x8
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x332
	.uaword	0x2f8
	.byte	0x1
	.uleb128 0x8
	.uaword	.LASF25
	.byte	0x7
	.uahalf	0x334
	.uaword	0x318
	.byte	0x2
	.uleb128 0x7
	.string	"offset_calibration_mode"
	.byte	0x7
	.uahalf	0x336
	.uaword	0x33d
	.byte	0x3
	.uleb128 0x7
	.string	"offset_correction_mode"
	.byte	0x7
	.uahalf	0x338
	.uaword	0x361
	.byte	0x4
	.uleb128 0x8
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x33a
	.uaword	0x234
	.byte	0x8
	.uleb128 0x8
	.uaword	.LASF24
	.byte	0x7
	.uahalf	0x33c
	.uaword	0x234
	.byte	0xc
	.uleb128 0x8
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x33e
	.uaword	0x234
	.byte	0x10
	.uleb128 0x8
	.uaword	.LASF26
	.byte	0x7
	.uahalf	0x340
	.uaword	0x234
	.byte	0x14
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x342
	.uaword	0x1f3
	.byte	0x18
	.uleb128 0x7
	.string	"fw_ready_poll_duration_ms"
	.byte	0x7
	.uahalf	0x345
	.uaword	0x234
	.byte	0x1c
	.uleb128 0x7
	.string	"fw_ready"
	.byte	0x7
	.uahalf	0x347
	.uaword	0x1b7
	.byte	0x20
	.uleb128 0x7
	.string	"debug_mode"
	.byte	0x7
	.uahalf	0x349
	.uaword	0x1b7
	.byte	0x21
	.uleb128 0x7
	.string	"version"
	.byte	0x7
	.uahalf	0x34d
	.uaword	0x29d9
	.byte	0x24
	.uleb128 0x7
	.string	"ll_state"
	.byte	0x7
	.uahalf	0x350
	.uaword	0x3bfe
	.byte	0x2c
	.uleb128 0x7
	.string	"gpio_interrupt_config"
	.byte	0x7
	.uahalf	0x353
	.uaword	0x3399
	.byte	0x34
	.uleb128 0x8
	.uaword	.LASF27
	.byte	0x7
	.uahalf	0x356
	.uaword	0x89f
	.byte	0x42
	.uleb128 0x8
	.uaword	.LASF28
	.byte	0x7
	.uahalf	0x357
	.uaword	0x3ad1
	.byte	0x5a
	.uleb128 0x8
	.uaword	.LASF29
	.byte	0x7
	.uahalf	0x358
	.uaword	0x3a3d
	.byte	0x94
	.uleb128 0x8
	.uaword	.LASF30
	.byte	0x7
	.uahalf	0x359
	.uaword	0x3b24
	.byte	0x9c
	.uleb128 0x7
	.string	"mm_roi"
	.byte	0x7
	.uahalf	0x35a
	.uaword	0x32b9
	.byte	0x9e
	.uleb128 0x8
	.uaword	.LASF31
	.byte	0x7
	.uahalf	0x35b
	.uaword	0x3256
	.byte	0xa2
	.uleb128 0x7
	.string	"tuning_parms"
	.byte	0x7
	.uahalf	0x35e
	.uaword	0x320d
	.byte	0xa4
	.uleb128 0x7
	.string	"rtn_good_spads"
	.byte	0x7
	.uahalf	0x361
	.uaword	0x3fee
	.byte	0xf0
	.uleb128 0xe
	.string	"refspadchar"
	.byte	0x7
	.uahalf	0x364
	.uaword	0x2a91
	.uahalf	0x110
	.uleb128 0xe
	.string	"ssc_cfg"
	.byte	0x7
	.uahalf	0x365
	.uaword	0x2b2a
	.uahalf	0x120
	.uleb128 0xe
	.string	"xtalk_cfg"
	.byte	0x7
	.uahalf	0x366
	.uaword	0x2cea
	.uahalf	0x12c
	.uleb128 0xe
	.string	"offsetcal_cfg"
	.byte	0x7
	.uahalf	0x367
	.uaword	0x3cb1
	.uahalf	0x144
	.uleb128 0xe
	.string	"stat_nvm"
	.byte	0x7
	.uahalf	0x36a
	.uaword	0x62a
	.uahalf	0x158
	.uleb128 0xe
	.string	"stat_cfg"
	.byte	0x7
	.uahalf	0x36b
	.uaword	0xd0b
	.uahalf	0x164
	.uleb128 0xe
	.string	"gen_cfg"
	.byte	0x7
	.uahalf	0x36c
	.uaword	0xf7e
	.uahalf	0x184
	.uleb128 0xe
	.string	"tim_cfg"
	.byte	0x7
	.uahalf	0x36d
	.uaword	0x1234
	.uahalf	0x19c
	.uleb128 0xe
	.string	"dyn_cfg"
	.byte	0x7
	.uahalf	0x36e
	.uaword	0x14a6
	.uahalf	0x1b4
	.uleb128 0xe
	.string	"sys_ctrl"
	.byte	0x7
	.uahalf	0x36f
	.uaword	0x1575
	.uahalf	0x1c8
	.uleb128 0xe
	.string	"sys_results"
	.byte	0x7
	.uahalf	0x370
	.uaword	0x1984
	.uahalf	0x1ce
	.uleb128 0xe
	.string	"nvm_copy_data"
	.byte	0x7
	.uahalf	0x371
	.uaword	0x296a
	.uahalf	0x1fa
	.uleb128 0xe
	.string	"offset_results"
	.byte	0x7
	.uahalf	0x374
	.uaword	0x3941
	.uahalf	0x22c
	.uleb128 0xe
	.string	"core_results"
	.byte	0x7
	.uahalf	0x377
	.uaword	0x1b46
	.uahalf	0x288
	.uleb128 0xe
	.string	"dbg_results"
	.byte	0x7
	.uahalf	0x378
	.uaword	0x2199
	.uahalf	0x2ac
	.uleb128 0xe
	.string	"low_power_auto_data"
	.byte	0x7
	.uahalf	0x37c
	.uaword	0x34e0
	.uahalf	0x2e4
	.byte	0
	.uleb128 0xb
	.uaword	0x1b7
	.uaword	0x3ffe
	.uleb128 0xc
	.uaword	0x29b
	.byte	0x1f
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_LLDriverData_t"
	.byte	0x7
	.uahalf	0x388
	.uaword	0x3cd3
	.uleb128 0x9
	.byte	0x84
	.byte	0x7
	.uahalf	0x392
	.uaword	0x403d
	.uleb128 0x7
	.string	"range_results"
	.byte	0x7
	.uahalf	0x395
	.uaword	0x37d4
	.byte	0
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_LLDriverResults_t"
	.byte	0x7
	.uahalf	0x397
	.uaword	0x401c
	.uleb128 0x9
	.byte	0x64
	.byte	0x7
	.uahalf	0x3a0
	.uaword	0x40c1
	.uleb128 0x7
	.string	"struct_version"
	.byte	0x7
	.uahalf	0x3a2
	.uaword	0x234
	.byte	0
	.uleb128 0x8
	.uaword	.LASF27
	.byte	0x7
	.uahalf	0x3a3
	.uaword	0x89f
	.byte	0x4
	.uleb128 0x8
	.uaword	.LASF29
	.byte	0x7
	.uahalf	0x3a4
	.uaword	0x3a3d
	.byte	0x1c
	.uleb128 0x8
	.uaword	.LASF31
	.byte	0x7
	.uahalf	0x3a5
	.uaword	0x3256
	.byte	0x24
	.uleb128 0x8
	.uaword	.LASF30
	.byte	0x7
	.uahalf	0x3a6
	.uaword	0x3b24
	.byte	0x26
	.uleb128 0x8
	.uaword	.LASF28
	.byte	0x7
	.uahalf	0x3a7
	.uaword	0x3ad1
	.byte	0x28
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_calibration_data_t"
	.byte	0x7
	.uahalf	0x3a9
	.uaword	0x405e
	.uleb128 0x2
	.string	"VL53L1_PresetModes"
	.byte	0x8
	.byte	0x88
	.uaword	0x1b7
	.uleb128 0x2
	.string	"VL53L1_DistanceModes"
	.byte	0x8
	.byte	0x96
	.uaword	0x1b7
	.uleb128 0x9
	.byte	0x1c
	.byte	0x8
	.uahalf	0x11e
	.uaword	0x421d
	.uleb128 0x7
	.string	"PresetMode"
	.byte	0x8
	.uahalf	0x11f
	.uaword	0x40e3
	.byte	0
	.uleb128 0x7
	.string	"DistanceMode"
	.byte	0x8
	.uahalf	0x121
	.uaword	0x40fd
	.byte	0x1
	.uleb128 0x7
	.string	"InternalDistanceMode"
	.byte	0x8
	.uahalf	0x123
	.uaword	0x40fd
	.byte	0x2
	.uleb128 0x7
	.string	"NewDistanceMode"
	.byte	0x8
	.uahalf	0x127
	.uaword	0x40fd
	.byte	0x3
	.uleb128 0x7
	.string	"MeasurementTimingBudgetMicroSeconds"
	.byte	0x8
	.uahalf	0x12b
	.uaword	0x234
	.byte	0x4
	.uleb128 0x7
	.string	"LimitChecksEnable"
	.byte	0x8
	.uahalf	0x12d
	.uaword	0x421d
	.byte	0x8
	.uleb128 0x7
	.string	"LimitChecksStatus"
	.byte	0x8
	.uahalf	0x12f
	.uaword	0x421d
	.byte	0xa
	.uleb128 0x7
	.string	"LimitChecksValue"
	.byte	0x8
	.uahalf	0x133
	.uaword	0x422d
	.byte	0xc
	.uleb128 0x7
	.string	"LimitChecksCurrent"
	.byte	0x8
	.uahalf	0x135
	.uaword	0x422d
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.uaword	0x1b7
	.uaword	0x422d
	.uleb128 0xc
	.uaword	0x29b
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.uaword	0x2af
	.uaword	0x423d
	.uleb128 0xc
	.uaword	0x29b
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_DeviceParameters_t"
	.byte	0x8
	.uahalf	0x139
	.uaword	0x4119
	.uleb128 0x4
	.string	"VL53L1_State"
	.byte	0x8
	.uahalf	0x141
	.uaword	0x1b7
	.uleb128 0xd
	.uahalf	0x398
	.byte	0x8
	.uahalf	0x222
	.uaword	0x42d2
	.uleb128 0x7
	.string	"LLData"
	.byte	0x8
	.uahalf	0x223
	.uaword	0x3ffe
	.byte	0
	.uleb128 0xe
	.string	"llresults"
	.byte	0x8
	.uahalf	0x226
	.uaword	0x403d
	.uahalf	0x2f4
	.uleb128 0xe
	.string	"PalState"
	.byte	0x8
	.uahalf	0x229
	.uaword	0x425f
	.uahalf	0x378
	.uleb128 0xe
	.string	"CurrentParameters"
	.byte	0x8
	.uahalf	0x22a
	.uaword	0x423d
	.uahalf	0x37c
	.byte	0
	.uleb128 0x4
	.string	"VL53L1_DevData_t"
	.byte	0x8
	.uahalf	0x22d
	.uaword	0x4274
	.uleb128 0x5
	.byte	0x4
	.byte	0x9
	.byte	0x4a
	.uaword	0x4302
	.uleb128 0x6
	.string	"dummy"
	.byte	0x9
	.byte	0x4b
	.uaword	0x234
	.byte	0
	.byte	0
	.uleb128 0x2
	.string	"I2C_HandleTypeDef"
	.byte	0x9
	.byte	0x4c
	.uaword	0x42eb
	.uleb128 0xf
	.uahalf	0x3a4
	.byte	0x9
	.byte	0x4e
	.uaword	0x43af
	.uleb128 0x6
	.string	"Data"
	.byte	0x9
	.byte	0x50
	.uaword	0x42d2
	.byte	0
	.uleb128 0x10
	.string	"I2cDevAddr"
	.byte	0x9
	.byte	0x52
	.uaword	0x1b7
	.uahalf	0x398
	.uleb128 0x10
	.string	"comms_type"
	.byte	0x9
	.byte	0x53
	.uaword	0x1b7
	.uahalf	0x399
	.uleb128 0x10
	.string	"comms_speed_khz"
	.byte	0x9
	.byte	0x54
	.uaword	0x1f3
	.uahalf	0x39a
	.uleb128 0x10
	.string	"new_data_ready_poll_duration_ms"
	.byte	0x9
	.byte	0x55
	.uaword	0x234
	.uahalf	0x39c
	.uleb128 0x10
	.string	"I2cHandle"
	.byte	0x9
	.byte	0x56
	.uaword	0x43af
	.uahalf	0x3a0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x4302
	.uleb128 0x2
	.string	"VL53L1_Dev_t"
	.byte	0x9
	.byte	0x58
	.uaword	0x431b
	.uleb128 0x2
	.string	"VL53L1_DEV"
	.byte	0x9
	.byte	0x5a
	.uaword	0x43db
	.uleb128 0x11
	.byte	0x4
	.uaword	0x43b5
	.uleb128 0x12
	.byte	0x1
	.string	"VL53L1_set_inter_measurement_period_ms"
	.byte	0x1
	.uahalf	0x258
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x4448
	.uleb128 0x13
	.string	"Dev"
	.byte	0x1
	.uahalf	0x259
	.uaword	0x43c9
	.uleb128 0x14
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x25a
	.uaword	0x234
	.uleb128 0x15
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x260
	.uaword	0x4a8
	.uleb128 0x15
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x261
	.uaword	0x4448
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x3ffe
	.uleb128 0x12
	.byte	0x1
	.string	"VL53L1_set_vhv_loopbound"
	.byte	0x1
	.uahalf	0x6fe
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x44b1
	.uleb128 0x13
	.string	"Dev"
	.byte	0x1
	.uahalf	0x6ff
	.uaword	0x43c9
	.uleb128 0x13
	.string	"vhv_loopbound"
	.byte	0x1
	.uahalf	0x700
	.uaword	0x1b7
	.uleb128 0x15
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x70c
	.uaword	0x4a8
	.uleb128 0x15
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x70e
	.uaword	0x4448
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_software_reset"
	.byte	0x1
	.uahalf	0x196
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4568
	.uleb128 0x17
	.string	"Dev"
	.byte	0x1
	.uahalf	0x197
	.uaword	0x43c9
	.uaword	.LLST0
	.uleb128 0x18
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x19e
	.uaword	0x4a8
	.uaword	.LLST1
	.uleb128 0x19
	.uaword	.LVL1
	.uaword	0x6d88
	.uaword	0x451e
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL3
	.uaword	0x6db4
	.uaword	0x4538
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL4
	.uaword	0x6d88
	.uaword	0x4556
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL5
	.byte	0x1
	.uaword	0x6ddb
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_set_part_to_part_data"
	.byte	0x1
	.uahalf	0x1c1
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x45f9
	.uleb128 0x17
	.string	"Dev"
	.byte	0x1
	.uahalf	0x1c2
	.uaword	0x43c9
	.uaword	.LLST2
	.uleb128 0x1c
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x1c3
	.uaword	0x45f9
	.uaword	.LLST3
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x1c9
	.uaword	0x4a8
	.byte	0
	.uleb128 0x18
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x1ca
	.uaword	0x4448
	.uaword	.LLST2
	.uleb128 0x1e
	.string	"tempu32"
	.byte	0x1
	.uahalf	0x1cc
	.uaword	0x234
	.uaword	.LLST5
	.uleb128 0x1f
	.uaword	.LVL9
	.uaword	0x6e0f
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x40c1
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_get_part_to_part_data"
	.byte	0x1
	.uahalf	0x215
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4673
	.uleb128 0x17
	.string	"Dev"
	.byte	0x1
	.uahalf	0x216
	.uaword	0x43c9
	.uaword	.LLST6
	.uleb128 0x1c
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x217
	.uaword	0x45f9
	.uaword	.LLST7
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x21d
	.uaword	0x4a8
	.byte	0
	.uleb128 0x18
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x21e
	.uaword	0x4448
	.uaword	.LLST6
	.byte	0
	.uleb128 0x20
	.uaword	0x43e1
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x46a5
	.uleb128 0x21
	.uaword	0x4417
	.byte	0x1
	.byte	0x64
	.uleb128 0x22
	.uaword	0x4423
	.uaword	.LLST9
	.uleb128 0x23
	.uaword	0x442f
	.byte	0
	.uleb128 0x24
	.uaword	0x443b
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_get_inter_measurement_period_ms"
	.byte	0x1
	.uahalf	0x275
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4736
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0x276
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.string	"pinter_measurement_period_ms"
	.byte	0x1
	.uahalf	0x277
	.uaword	0x4736
	.byte	0x1
	.byte	0x65
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x27d
	.uaword	0x4a8
	.byte	0
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x27e
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x234
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_set_timeouts_us"
	.byte	0x1
	.uahalf	0x291
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x47fe
	.uleb128 0x17
	.string	"Dev"
	.byte	0x1
	.uahalf	0x292
	.uaword	0x43c9
	.uaword	.LLST10
	.uleb128 0x1c
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x293
	.uaword	0x234
	.uaword	.LLST11
	.uleb128 0x1c
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x294
	.uaword	0x234
	.uaword	.LLST12
	.uleb128 0x1c
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x295
	.uaword	0x234
	.uaword	.LLST13
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x29c
	.uaword	0x4a8
	.byte	0
	.uleb128 0x18
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x29d
	.uaword	0x4448
	.uaword	.LLST10
	.uleb128 0x1b
	.uaword	.LVL25
	.byte	0x1
	.uaword	0x6e58
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x1a
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_get_timeouts_us"
	.byte	0x1
	.uahalf	0x2bb
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4905
	.uleb128 0x17
	.string	"Dev"
	.byte	0x1
	.uahalf	0x2bc
	.uaword	0x43c9
	.uaword	.LLST15
	.uleb128 0x1c
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x2bd
	.uaword	0x4736
	.uaword	.LLST16
	.uleb128 0x1c
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x2be
	.uaword	0x4736
	.uaword	.LLST17
	.uleb128 0x1c
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x2bf
	.uaword	0x4736
	.uaword	.LLST18
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x2c6
	.uaword	0x4a8
	.byte	0
	.uleb128 0x18
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x2c7
	.uaword	0x4448
	.uaword	.LLST15
	.uleb128 0x1e
	.string	"macro_period_us"
	.byte	0x1
	.uahalf	0x2ca
	.uaword	0x234
	.uaword	.LLST20
	.uleb128 0x1e
	.string	"timeout_encoded"
	.byte	0x1
	.uahalf	0x2cb
	.uaword	0x1f3
	.uaword	.LLST21
	.uleb128 0x1f
	.uaword	.LVL28
	.uaword	0x6eaa
	.uleb128 0x19
	.uaword	.LVL30
	.uaword	0x6ee0
	.uaword	0x48e0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL34
	.uaword	0x6f11
	.uaword	0x48f4
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL38
	.uaword	0x6f11
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_set_calibration_repeat_period"
	.byte	0x1
	.uahalf	0x305
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4991
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0x306
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.string	"cal_config__repeat_period"
	.byte	0x1
	.uahalf	0x307
	.uaword	0x1f3
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x30d
	.uaword	0x4a8
	.byte	0
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x30e
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_get_calibration_repeat_period"
	.byte	0x1
	.uahalf	0x318
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB10
	.uaword	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4a1e
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0x319
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.string	"pcal_config__repeat_period"
	.byte	0x1
	.uahalf	0x31a
	.uaword	0x4a1e
	.byte	0x1
	.byte	0x65
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x320
	.uaword	0x4a8
	.byte	0
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x321
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x1f3
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_set_sequence_config_bit"
	.byte	0x1
	.uahalf	0x32b
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB11
	.uaword	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4ae7
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0x32c
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.string	"bit_id"
	.byte	0x1
	.uahalf	0x32d
	.uaword	0x384
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.string	"value"
	.byte	0x1
	.uahalf	0x32e
	.uaword	0x1b7
	.uaword	.LLST22
	.uleb128 0x18
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x335
	.uaword	0x4a8
	.uaword	.LLST23
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x336
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.uleb128 0x18
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x339
	.uaword	0x1b7
	.uaword	.LLST24
	.uleb128 0x1e
	.string	"clr_mask"
	.byte	0x1
	.uahalf	0x33a
	.uaword	0x1b7
	.uaword	.LLST25
	.uleb128 0x1e
	.string	"bit_value"
	.byte	0x1
	.uahalf	0x33b
	.uaword	0x1b7
	.uaword	.LLST26
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_get_sequence_config_bit"
	.byte	0x1
	.uahalf	0x352
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB12
	.uaword	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4b7e
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0x353
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.string	"bit_id"
	.byte	0x1
	.uahalf	0x354
	.uaword	0x384
	.byte	0x1
	.byte	0x54
	.uleb128 0x25
	.string	"pvalue"
	.byte	0x1
	.uahalf	0x355
	.uaword	0x4b7e
	.byte	0x1
	.byte	0x65
	.uleb128 0x18
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x35c
	.uaword	0x4a8
	.uaword	.LLST27
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x35d
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.uleb128 0x18
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x360
	.uaword	0x1b7
	.uaword	.LLST28
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x1b7
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_set_interrupt_polarity"
	.byte	0x1
	.uahalf	0x377
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB13
	.uaword	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4c04
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0x378
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x17
	.string	"interrupt_polarity"
	.byte	0x1
	.uahalf	0x379
	.uaword	0x3a7
	.uaword	.LLST29
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x37f
	.uaword	0x4a8
	.byte	0
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x380
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_set_refspadchar_config_struct"
	.byte	0x1
	.uahalf	0x38f
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4c7c
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0x390
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.string	"pdata"
	.byte	0x1
	.uahalf	0x391
	.uaword	0x4c7c
	.byte	0x1
	.byte	0x65
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x397
	.uaword	0x4a8
	.byte	0
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x398
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x2a91
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_get_refspadchar_config_struct"
	.byte	0x1
	.uahalf	0x3ae
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4cfa
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0x3af
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.string	"pdata"
	.byte	0x1
	.uahalf	0x3b0
	.uaword	0x4c7c
	.byte	0x1
	.byte	0x65
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x3b6
	.uaword	0x4a8
	.byte	0
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x3b7
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_set_range_ignore_threshold"
	.byte	0x1
	.uahalf	0x3cc
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4da8
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0x3cd
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.string	"range_ignore_thresh_mult"
	.byte	0x1
	.uahalf	0x3ce
	.uaword	0x1b7
	.byte	0x1
	.byte	0x54
	.uleb128 0x25
	.string	"range_ignore_threshold_mcps"
	.byte	0x1
	.uahalf	0x3cf
	.uaword	0x1f3
	.byte	0x1
	.byte	0x55
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x3d5
	.uaword	0x4a8
	.byte	0
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x3d6
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_get_range_ignore_threshold"
	.byte	0x1
	.uahalf	0x3e3
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4e90
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0x3e4
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.string	"prange_ignore_thresh_mult"
	.byte	0x1
	.uahalf	0x3e5
	.uaword	0x4b7e
	.byte	0x1
	.byte	0x65
	.uleb128 0x25
	.string	"prange_ignore_threshold_mcps_internal"
	.byte	0x1
	.uahalf	0x3e6
	.uaword	0x4a1e
	.byte	0x1
	.byte	0x66
	.uleb128 0x25
	.string	"prange_ignore_threshold_mcps_current"
	.byte	0x1
	.uahalf	0x3e7
	.uaword	0x4a1e
	.byte	0x1
	.byte	0x67
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x3f2
	.uaword	0x4a8
	.byte	0
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x3f3
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_get_interrupt_polarity"
	.byte	0x1
	.uahalf	0x405
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4f0f
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0x406
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.string	"pinterrupt_polarity"
	.byte	0x1
	.uahalf	0x407
	.uaword	0x4f0f
	.byte	0x1
	.byte	0x65
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x40d
	.uaword	0x4a8
	.byte	0
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x40e
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x3a7
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_set_user_zone"
	.byte	0x1
	.uahalf	0x41a
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4fa7
	.uleb128 0x17
	.string	"Dev"
	.byte	0x1
	.uahalf	0x41b
	.uaword	0x43c9
	.uaword	.LLST30
	.uleb128 0x1c
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x41c
	.uaword	0x4fa7
	.uaword	.LLST31
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x422
	.uaword	0x4a8
	.byte	0
	.uleb128 0x18
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x423
	.uaword	0x4448
	.uaword	.LLST30
	.uleb128 0x19
	.uaword	.LVL66
	.uaword	0x6f4a
	.uaword	0x4f95
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8c
	.sleb128 451
	.byte	0
	.uleb128 0x27
	.uaword	.LVL67
	.uaword	0x6f7b
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8c
	.sleb128 452
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x32b9
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_get_user_zone"
	.byte	0x1
	.uahalf	0x43b
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5049
	.uleb128 0x17
	.string	"Dev"
	.byte	0x1
	.uahalf	0x43c
	.uaword	0x43c9
	.uaword	.LLST33
	.uleb128 0x1c
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x43d
	.uaword	0x4fa7
	.uaword	.LLST34
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x443
	.uaword	0x4a8
	.byte	0
	.uleb128 0x18
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x444
	.uaword	0x4448
	.uaword	.LLST33
	.uleb128 0x19
	.uaword	.LVL70
	.uaword	0x6fae
	.uaword	0x5032
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 1
	.byte	0
	.uleb128 0x27
	.uaword	.LVL71
	.uaword	0x6fde
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 3
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 2
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_get_mode_mitigation_roi"
	.byte	0x1
	.uahalf	0x45b
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5107
	.uleb128 0x17
	.string	"Dev"
	.byte	0x1
	.uahalf	0x45c
	.uaword	0x43c9
	.uaword	.LLST36
	.uleb128 0x17
	.string	"pmm_roi"
	.byte	0x1
	.uahalf	0x45d
	.uaword	0x4fa7
	.uaword	.LLST37
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x463
	.uaword	0x4a8
	.byte	0
	.uleb128 0x18
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x464
	.uaword	0x4448
	.uaword	.LLST38
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.uahalf	0x466
	.uaword	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.uahalf	0x467
	.uaword	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1e
	.string	"xy_size"
	.byte	0x1
	.uahalf	0x468
	.uaword	0x1b7
	.uaword	.LLST39
	.uleb128 0x27
	.uaword	.LVL77
	.uaword	0x6fae
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_read_p2p_data"
	.byte	0x1
	.uahalf	0x139
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5209
	.uleb128 0x17
	.string	"Dev"
	.byte	0x1
	.uahalf	0x13a
	.uaword	0x43c9
	.uaword	.LLST40
	.uleb128 0x18
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x145
	.uaword	0x4a8
	.uaword	.LLST41
	.uleb128 0x18
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x146
	.uaword	0x4448
	.uaword	.LLST40
	.uleb128 0x19
	.uaword	.LVL81
	.uaword	0x7011
	.uaword	0x5180
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x8f
	.sleb128 344
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL86
	.uaword	0x7048
	.uaword	0x519b
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x8f
	.sleb128 66
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL87
	.uaword	0x7081
	.uaword	0x51b5
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL88
	.uaword	0x70ba
	.uaword	0x51d0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x8f
	.sleb128 240
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL89
	.uaword	0x70f4
	.uaword	0x51f1
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x8f
	.sleb128 692
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xde
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL91
	.uaword	0x5049
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x8f
	.sleb128 158
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_get_preset_mode_timing_cfg"
	.byte	0x1
	.uahalf	0x487
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x52da
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0x488
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x1c
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x489
	.uaword	0x2f8
	.uaword	.LLST43
	.uleb128 0x25
	.string	"pdss_config__target_total_rate_mcps"
	.byte	0x1
	.uahalf	0x48a
	.uaword	0x4a1e
	.byte	0x1
	.byte	0x65
	.uleb128 0x29
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x48b
	.uaword	0x4736
	.byte	0x1
	.byte	0x66
	.uleb128 0x29
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x48c
	.uaword	0x4736
	.byte	0x1
	.byte	0x67
	.uleb128 0x29
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x48d
	.uaword	0x4736
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x48f
	.uaword	0x4a8
	.uaword	.LLST44
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x490
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_set_preset_mode"
	.byte	0x1
	.uahalf	0x4ce
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x574c
	.uleb128 0x17
	.string	"Dev"
	.byte	0x1
	.uahalf	0x4cf
	.uaword	0x43c9
	.uaword	.LLST45
	.uleb128 0x1c
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x4d0
	.uaword	0x2f8
	.uaword	.LLST46
	.uleb128 0x1c
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x4d1
	.uaword	0x1f3
	.uaword	.LLST47
	.uleb128 0x1c
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x4d2
	.uaword	0x234
	.uaword	.LLST48
	.uleb128 0x1c
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x4d3
	.uaword	0x234
	.uaword	.LLST49
	.uleb128 0x29
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x4d4
	.uaword	0x234
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x4d5
	.uaword	0x234
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x4dc
	.uaword	0x4a8
	.uaword	.LLST50
	.uleb128 0x18
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x4dd
	.uaword	0x4448
	.uaword	.LLST45
	.uleb128 0x28
	.string	"pstatic"
	.byte	0x1
	.uahalf	0x4e0
	.uaword	0x574c
	.byte	0x1
	.byte	0x6c
	.uleb128 0x18
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x4e1
	.uaword	0x5752
	.uaword	.LLST52
	.uleb128 0x28
	.string	"ptiming"
	.byte	0x1
	.uahalf	0x4e2
	.uaword	0x5758
	.byte	0x1
	.byte	0x6e
	.uleb128 0x26
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x4e3
	.uaword	0x575e
	.byte	0x1
	.byte	0x6d
	.uleb128 0x28
	.string	"psystem"
	.byte	0x1
	.uahalf	0x4e4
	.uaword	0x5764
	.byte	0x1
	.byte	0x59
	.uleb128 0x28
	.string	"ptuning_parms"
	.byte	0x1
	.uahalf	0x4e5
	.uaword	0x576a
	.byte	0x1
	.byte	0x58
	.uleb128 0x28
	.string	"plpadata"
	.byte	0x1
	.uahalf	0x4e6
	.uaword	0x5770
	.byte	0x1
	.byte	0x5e
	.uleb128 0x2a
	.uaword	0x43e1
	.uaword	.LBB6
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x5a1
	.uaword	0x5456
	.uleb128 0x22
	.uaword	0x4423
	.uaword	.LLST53
	.uleb128 0x22
	.uaword	0x4417
	.uaword	.LLST54
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x2c
	.uaword	0x442f
	.uaword	.LLST55
	.uleb128 0x2c
	.uaword	0x443b
	.uaword	.LLST54
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL101
	.uaword	0x7120
	.uaword	0x546f
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL104
	.uaword	0x7151
	.uaword	0x54aa
	.uleb128 0x1a
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL106
	.uaword	0x473c
	.uaword	0x54d1
	.uleb128 0x1a
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL111
	.uaword	0x71b3
	.uaword	0x5505
	.uleb128 0x1a
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL114
	.uaword	0x7204
	.uaword	0x5539
	.uleb128 0x1a
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL116
	.uaword	0x7261
	.uaword	0x556d
	.uleb128 0x1a
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL118
	.uaword	0x72bd
	.uaword	0x55a1
	.uleb128 0x1a
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL120
	.uaword	0x7316
	.uaword	0x55d5
	.uleb128 0x1a
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL122
	.uaword	0x7370
	.uaword	0x5609
	.uleb128 0x1a
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL124
	.uaword	0x73bf
	.uaword	0x563d
	.uleb128 0x1a
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL126
	.uaword	0x741a
	.uaword	0x5671
	.uleb128 0x1a
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL128
	.uaword	0x7474
	.uaword	0x56a5
	.uleb128 0x1a
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL130
	.uaword	0x74b9
	.uaword	0x56d9
	.uleb128 0x1a
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL132
	.uaword	0x750d
	.uaword	0x5714
	.uleb128 0x1a
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL134
	.uaword	0x7570
	.uleb128 0x1a
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0xd0b
	.uleb128 0x11
	.byte	0x4
	.uaword	0xf7e
	.uleb128 0x11
	.byte	0x4
	.uaword	0x1234
	.uleb128 0x11
	.byte	0x4
	.uaword	0x14a6
	.uleb128 0x11
	.byte	0x4
	.uaword	0x1575
	.uleb128 0x11
	.byte	0x4
	.uaword	0x320d
	.uleb128 0x11
	.byte	0x4
	.uaword	0x34e0
	.uleb128 0x2d
	.byte	0x1
	.string	"VL53L1_data_init"
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x58f7
	.uleb128 0x2e
	.string	"Dev"
	.byte	0x1
	.byte	0x99
	.uaword	0x43c9
	.uaword	.LLST57
	.uleb128 0x2e
	.string	"read_p2p_data"
	.byte	0x1
	.byte	0x9a
	.uaword	0x1b7
	.uaword	.LLST58
	.uleb128 0x2f
	.uaword	.LASF32
	.byte	0x1
	.byte	0xa0
	.uaword	0x4a8
	.uaword	.LLST59
	.uleb128 0x2f
	.uaword	.LASF33
	.byte	0x1
	.byte	0xa1
	.uaword	0x4448
	.uaword	.LLST60
	.uleb128 0x30
	.uaword	0x444e
	.uaword	.LBB10
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xf2
	.uaword	0x5819
	.uleb128 0x31
	.uaword	0x4482
	.byte	0x20
	.uleb128 0x21
	.uaword	0x4476
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2b
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x23
	.uaword	0x4498
	.byte	0
	.uleb128 0x24
	.uaword	0x44a4
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL139
	.uaword	0x7120
	.uaword	0x5833
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x62
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL140
	.uaword	0x75cd
	.uaword	0x5847
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL141
	.uaword	0x5107
	.uaword	0x585b
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL142
	.uaword	0x75f1
	.uaword	0x5870
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 272
	.byte	0
	.uleb128 0x19
	.uaword	.LVL143
	.uaword	0x762b
	.uaword	0x5885
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 288
	.byte	0
	.uleb128 0x19
	.uaword	.LVL144
	.uaword	0x7663
	.uaword	0x58a1
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x8f
	.sleb128 300
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 66
	.byte	0
	.uleb128 0x19
	.uaword	.LVL145
	.uaword	0x76a2
	.uaword	0x58b6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 324
	.byte	0
	.uleb128 0x19
	.uaword	.LVL146
	.uaword	0x76e1
	.uaword	0x58cb
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 164
	.byte	0
	.uleb128 0x19
	.uaword	.LVL147
	.uaword	0x52da
	.uaword	0x58e6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1a
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL149
	.uaword	0x771c
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_enable_xtalk_compensation"
	.byte	0x1
	.uahalf	0x5ac
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x599d
	.uleb128 0x17
	.string	"Dev"
	.byte	0x1
	.uahalf	0x5ad
	.uaword	0x43c9
	.uaword	.LLST61
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x5b5
	.uaword	0x4a8
	.byte	0
	.uleb128 0x1e
	.string	"tempu32"
	.byte	0x1
	.uahalf	0x5b6
	.uaword	0x234
	.uaword	.LLST62
	.uleb128 0x18
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x5b8
	.uaword	0x4448
	.uaword	.LLST61
	.uleb128 0x1f
	.uaword	.LVL151
	.uaword	0x6e0f
	.uleb128 0x1f
	.uaword	.LVL153
	.uaword	0x7751
	.uleb128 0x1b
	.uaword	.LVL154
	.byte	0x1
	.uaword	0x7798
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x8f
	.sleb128 66
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"VL53L1_get_xtalk_compensation_enable"
	.byte	0x1
	.uahalf	0x5e8
	.byte	0x1
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5a1d
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0x5e9
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.string	"pcrosstalk_compensation_enable"
	.byte	0x1
	.uahalf	0x5ea
	.uaword	0x4b7e
	.byte	0x1
	.byte	0x65
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x5f7
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_get_lite_xtalk_margin_kcps"
	.byte	0x1
	.uahalf	0x603
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5a9a
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0x604
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.string	"pxtalk_margin"
	.byte	0x1
	.uahalf	0x605
	.uaword	0x5a9a
	.byte	0x1
	.byte	0x65
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x60c
	.uaword	0x4a8
	.byte	0
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x60e
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x1d7
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_set_lite_xtalk_margin_kcps"
	.byte	0x1
	.uahalf	0x61a
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5b1c
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0x61b
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.string	"xtalk_margin"
	.byte	0x1
	.uahalf	0x61c
	.uaword	0x1d7
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x623
	.uaword	0x4a8
	.byte	0
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x625
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_restore_xtalk_nvm_default"
	.byte	0x1
	.uahalf	0x631
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5b80
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0x632
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x639
	.uaword	0x4a8
	.byte	0
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x63b
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_disable_xtalk_compensation"
	.byte	0x1
	.uahalf	0x64b
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB29
	.uaword	.LFE29
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5c04
	.uleb128 0x17
	.string	"Dev"
	.byte	0x1
	.uahalf	0x64c
	.uaword	0x43c9
	.uaword	.LLST64
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x654
	.uaword	0x4a8
	.byte	0
	.uleb128 0x18
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x656
	.uaword	0x4448
	.uaword	.LLST64
	.uleb128 0x1b
	.uaword	.LVL160
	.byte	0x1
	.uaword	0x7798
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0x42
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_get_lite_sigma_threshold"
	.byte	0x1
	.uahalf	0x67d
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB30
	.uaword	.LFE30
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5c7d
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0x67e
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.string	"plite_sigma"
	.byte	0x1
	.uahalf	0x67f
	.uaword	0x4a1e
	.byte	0x1
	.byte	0x65
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x688
	.uaword	0x4a8
	.byte	0
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x68a
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_set_lite_sigma_threshold"
	.byte	0x1
	.uahalf	0x697
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5cf5
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0x698
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.string	"lite_sigma"
	.byte	0x1
	.uahalf	0x699
	.uaword	0x1f3
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x6a2
	.uaword	0x4a8
	.byte	0
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x6a4
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_get_lite_min_count_rate"
	.byte	0x1
	.uahalf	0x6b0
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB32
	.uaword	.LFE32
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5d74
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0x6b1
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.string	"plite_mincountrate"
	.byte	0x1
	.uahalf	0x6b2
	.uaword	0x4a1e
	.byte	0x1
	.byte	0x65
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x6bb
	.uaword	0x4a8
	.byte	0
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x6bd
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_set_lite_min_count_rate"
	.byte	0x1
	.uahalf	0x6ca
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB33
	.uaword	.LFE33
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5df2
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0x6cb
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.string	"lite_mincountrate"
	.byte	0x1
	.uahalf	0x6cc
	.uaword	0x1f3
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x6d5
	.uaword	0x4a8
	.byte	0
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x6d7
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_get_vhv_loopbound"
	.byte	0x1
	.uahalf	0x6e4
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB34
	.uaword	.LFE34
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5e67
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0x6e5
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.string	"pvhv_loopbound"
	.byte	0x1
	.uahalf	0x6e6
	.uaword	0x4b7e
	.byte	0x1
	.byte	0x65
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x6ee
	.uaword	0x4a8
	.byte	0
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x6f0
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x20
	.uaword	0x444e
	.uaword	.LFB35
	.uaword	.LFE35
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5e99
	.uleb128 0x21
	.uaword	0x4476
	.byte	0x1
	.byte	0x64
	.uleb128 0x22
	.uaword	0x4482
	.uaword	.LLST66
	.uleb128 0x23
	.uaword	0x4498
	.byte	0
	.uleb128 0x24
	.uaword	0x44a4
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_get_vhv_config"
	.byte	0x1
	.uahalf	0x71e
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB36
	.uaword	.LFE36
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5f23
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0x71f
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.string	"pvhv_init_en"
	.byte	0x1
	.uahalf	0x720
	.uaword	0x4b7e
	.byte	0x1
	.byte	0x65
	.uleb128 0x25
	.string	"pvhv_init_value"
	.byte	0x1
	.uahalf	0x721
	.uaword	0x4b7e
	.byte	0x1
	.byte	0x66
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x733
	.uaword	0x4a8
	.byte	0
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x735
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_set_vhv_config"
	.byte	0x1
	.uahalf	0x745
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB37
	.uaword	.LFE37
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5faf
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0x746
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x17
	.string	"vhv_init_en"
	.byte	0x1
	.uahalf	0x747
	.uaword	0x1b7
	.uaword	.LLST67
	.uleb128 0x17
	.string	"vhv_init_value"
	.byte	0x1
	.uahalf	0x748
	.uaword	0x1b7
	.uaword	.LLST68
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x74f
	.uaword	0x4a8
	.byte	0
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x751
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_init_and_start_range"
	.byte	0x1
	.uahalf	0x761
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB38
	.uaword	.LFE38
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6293
	.uleb128 0x17
	.string	"Dev"
	.byte	0x1
	.uahalf	0x762
	.uaword	0x43c9
	.uaword	.LLST69
	.uleb128 0x1c
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x763
	.uaword	0x1b7
	.uaword	.LLST70
	.uleb128 0x17
	.string	"device_config_level"
	.byte	0x1
	.uahalf	0x764
	.uaword	0x409
	.uaword	.LLST71
	.uleb128 0x18
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x772
	.uaword	0x4a8
	.uaword	.LLST72
	.uleb128 0x18
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x773
	.uaword	0x4448
	.uaword	.LLST69
	.uleb128 0x28
	.string	"buffer"
	.byte	0x1
	.uahalf	0x775
	.uaword	0x6293
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x1e
	.string	"pstatic_nvm"
	.byte	0x1
	.uahalf	0x777
	.uaword	0x62a3
	.uaword	.LLST74
	.uleb128 0x1e
	.string	"pcustomer_nvm"
	.byte	0x1
	.uahalf	0x778
	.uaword	0x62a9
	.uaword	.LLST75
	.uleb128 0x1e
	.string	"pstatic"
	.byte	0x1
	.uahalf	0x779
	.uaword	0x574c
	.uaword	.LLST76
	.uleb128 0x18
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x77a
	.uaword	0x5752
	.uaword	.LLST77
	.uleb128 0x1e
	.string	"ptiming"
	.byte	0x1
	.uahalf	0x77b
	.uaword	0x5758
	.uaword	.LLST78
	.uleb128 0x18
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x77c
	.uaword	0x575e
	.uaword	.LLST79
	.uleb128 0x1e
	.string	"psystem"
	.byte	0x1
	.uahalf	0x77d
	.uaword	0x5764
	.uaword	.LLST80
	.uleb128 0x1e
	.string	"pstate"
	.byte	0x1
	.uahalf	0x77f
	.uaword	0x62af
	.uaword	.LLST81
	.uleb128 0x1e
	.string	"pbuffer"
	.byte	0x1
	.uahalf	0x781
	.uaword	0x4b7e
	.uaword	.LLST82
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.uahalf	0x782
	.uaword	0x1f3
	.uaword	.LLST83
	.uleb128 0x18
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x783
	.uaword	0x1f3
	.uaword	.LLST84
	.uleb128 0x18
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x784
	.uaword	0x1f3
	.uaword	.LLST85
	.uleb128 0x18
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x785
	.uaword	0x1f3
	.uaword	.LLST86
	.uleb128 0x19
	.uaword	.LVL187
	.uaword	0x77d1
	.uaword	0x6174
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0xc
	.byte	0x8
	.byte	0x71
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x8a
	.sleb128 0
	.byte	0x22
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x42
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 436
	.byte	0
	.uleb128 0x19
	.uaword	.LVL196
	.uaword	0x7811
	.uaword	0x6197
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x8a
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 456
	.byte	0
	.uleb128 0x19
	.uaword	.LVL197
	.uaword	0x7851
	.uaword	0x61bd
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL198
	.uaword	0x7886
	.uaword	0x61d1
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL199
	.byte	0x1
	.uaword	0x78bb
	.uaword	0x61e6
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL200
	.uaword	0x78f1
	.uaword	0x6209
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x8a
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x47
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 412
	.byte	0
	.uleb128 0x19
	.uaword	.LVL202
	.uaword	0x7930
	.uaword	0x622c
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x8a
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x46
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 388
	.byte	0
	.uleb128 0x19
	.uaword	.LVL204
	.uaword	0x7970
	.uaword	0x6250
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x8a
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 356
	.byte	0
	.uleb128 0x19
	.uaword	.LVL206
	.uaword	0x79ae
	.uaword	0x6273
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x8a
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x47
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 66
	.byte	0
	.uleb128 0x27
	.uaword	.LVL209
	.uaword	0x79f3
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x8a
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3b
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 344
	.byte	0
	.byte	0
	.uleb128 0xb
	.uaword	0x1b7
	.uaword	0x62a3
	.uleb128 0xc
	.uaword	0x29b
	.byte	0xff
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x62a
	.uleb128 0x11
	.byte	0x4
	.uaword	0x89f
	.uleb128 0x11
	.byte	0x4
	.uaword	0x3bfe
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_stop_range"
	.byte	0x1
	.uahalf	0x86f
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB39
	.uaword	.LFE39
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6355
	.uleb128 0x17
	.string	"Dev"
	.byte	0x1
	.uahalf	0x870
	.uaword	0x43c9
	.uaword	.LLST87
	.uleb128 0x18
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x877
	.uaword	0x4a8
	.uaword	.LLST88
	.uleb128 0x18
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x879
	.uaword	0x4448
	.uaword	.LLST87
	.uleb128 0x19
	.uaword	.LVL213
	.uaword	0x7a36
	.uaword	0x632b
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x8f
	.sleb128 456
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL216
	.uaword	0x7120
	.uaword	0x6344
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL217
	.uaword	0x7a6a
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_get_measurement_results"
	.byte	0x1
	.uahalf	0x897
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB40
	.uaword	.LFE40
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6511
	.uleb128 0x17
	.string	"Dev"
	.byte	0x1
	.uahalf	0x898
	.uaword	0x43c9
	.uaword	.LLST90
	.uleb128 0x1c
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x899
	.uaword	0x42a
	.uaword	.LLST91
	.uleb128 0x18
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x8a0
	.uaword	0x4a8
	.uaword	.LLST92
	.uleb128 0x18
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x8a1
	.uaword	0x4448
	.uaword	.LLST90
	.uleb128 0x28
	.string	"buffer"
	.byte	0x1
	.uahalf	0x8a3
	.uaword	0x6293
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x1e
	.string	"psystem_results"
	.byte	0x1
	.uahalf	0x8a5
	.uaword	0x6511
	.uaword	.LLST94
	.uleb128 0x1e
	.string	"pcore_results"
	.byte	0x1
	.uahalf	0x8a6
	.uaword	0x6517
	.uaword	.LLST95
	.uleb128 0x1e
	.string	"pdebug_results"
	.byte	0x1
	.uahalf	0x8a7
	.uaword	0x651d
	.uaword	.LLST96
	.uleb128 0x1d
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x8a9
	.uaword	0x1f3
	.byte	0x88
	.uleb128 0x18
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x8aa
	.uaword	0x1f3
	.uaword	.LLST97
	.uleb128 0x18
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x8ab
	.uaword	0x1f3
	.uaword	.LLST98
	.uleb128 0x19
	.uaword	.LVL221
	.uaword	0x7aa5
	.uaword	0x648e
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0xc
	.byte	0x8
	.byte	0x86
	.byte	0x44
	.byte	0x7f
	.sleb128 0
	.byte	0x32
	.byte	0x29
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x88
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL225
	.uaword	0x7ad9
	.uaword	0x64b0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x8c
	.sleb128 648
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x21
	.byte	0
	.uleb128 0x33
	.uaword	.LVL227
	.byte	0x1
	.uaword	0x7b17
	.uaword	0x64d2
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x8c
	.sleb128 462
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.uleb128 0x19
	.uaword	.LVL228
	.uaword	0x7b57
	.uaword	0x64f4
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x8c
	.sleb128 684
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -178
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x38
	.byte	0
	.uleb128 0x27
	.uaword	.LVL231
	.uaword	0x7aa5
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x4d
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x88
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x1984
	.uleb128 0x11
	.byte	0x4
	.uaword	0x1b46
	.uleb128 0x11
	.byte	0x4
	.uaword	0x2199
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_clear_interrupt_and_enable_next_range"
	.byte	0x1
	.uahalf	0x95e
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB42
	.uaword	.LFE42
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x65ae
	.uleb128 0x17
	.string	"Dev"
	.byte	0x1
	.uahalf	0x95f
	.uaword	0x43c9
	.uaword	.LLST99
	.uleb128 0x1c
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x960
	.uaword	0x1b7
	.uaword	.LLST100
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x968
	.uaword	0x4a8
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL233
	.byte	0x1
	.uaword	0x5faf
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"VL53L1_copy_sys_and_core_results_to_range_results"
	.byte	0x1
	.uahalf	0x981
	.byte	0x1
	.uaword	.LFB43
	.uaword	.LFE43
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6683
	.uleb128 0x17
	.string	"gain_factor"
	.byte	0x1
	.uahalf	0x982
	.uaword	0x219
	.uaword	.LLST101
	.uleb128 0x25
	.string	"psys"
	.byte	0x1
	.uahalf	0x983
	.uaword	0x6511
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.string	"pcore"
	.byte	0x1
	.uahalf	0x984
	.uaword	0x6517
	.byte	0x1
	.byte	0x65
	.uleb128 0x29
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x985
	.uaword	0x6683
	.byte	0x1
	.byte	0x66
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.uahalf	0x987
	.uaword	0x1b7
	.uaword	.LLST102
	.uleb128 0x1e
	.string	"pdata"
	.byte	0x1
	.uahalf	0x989
	.uaword	0x6689
	.uaword	.LLST103
	.uleb128 0x1e
	.string	"range_mm"
	.byte	0x1
	.uahalf	0x98a
	.uaword	0x219
	.uaword	.LLST104
	.uleb128 0x1e
	.string	"tmpu32"
	.byte	0x1
	.uahalf	0x98b
	.uaword	0x234
	.uaword	.LLST105
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x37d4
	.uleb128 0x11
	.byte	0x4
	.uaword	0x3749
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_get_device_results"
	.byte	0x1
	.uahalf	0x8fb
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB41
	.uaword	.LFE41
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x67ae
	.uleb128 0x17
	.string	"Dev"
	.byte	0x1
	.uahalf	0x8fc
	.uaword	0x43c9
	.uaword	.LLST106
	.uleb128 0x1c
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x8fd
	.uaword	0x42a
	.uaword	.LLST107
	.uleb128 0x17
	.string	"prange_results"
	.byte	0x1
	.uahalf	0x8fe
	.uaword	0x6683
	.uaword	.LLST108
	.uleb128 0x18
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x90a
	.uaword	0x4a8
	.uaword	.LLST109
	.uleb128 0x18
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x90c
	.uaword	0x4448
	.uaword	.LLST106
	.uleb128 0x1e
	.string	"pres"
	.byte	0x1
	.uahalf	0x90e
	.uaword	0x67ae
	.uaword	.LLST111
	.uleb128 0x18
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x911
	.uaword	0x6683
	.uaword	.LLST112
	.uleb128 0x19
	.uaword	.LVL263
	.uaword	0x6355
	.uaword	0x6752
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL267
	.uaword	0x65ae
	.uaword	0x6774
	.uleb128 0x1a
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x8f
	.sleb128 648
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 462
	.byte	0
	.uleb128 0x33
	.uaword	.LVL270
	.byte	0x1
	.uaword	0x7b96
	.uaword	0x6789
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL273
	.uaword	0x7bca
	.uaword	0x679d
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL278
	.uaword	0x7c00
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x403d
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_set_GPIO_interrupt_config"
	.byte	0x1
	.uahalf	0xa30
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB44
	.uaword	.LFE44
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x691a
	.uleb128 0x17
	.string	"Dev"
	.byte	0x1
	.uahalf	0xa31
	.uaword	0x43c9
	.uaword	.LLST113
	.uleb128 0x1c
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0xa32
	.uaword	0x46a
	.uaword	.LLST114
	.uleb128 0x1c
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0xa33
	.uaword	0x46a
	.uaword	.LLST115
	.uleb128 0x1c
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0xa34
	.uaword	0x1b7
	.uaword	.LLST116
	.uleb128 0x1c
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0xa35
	.uaword	0x1b7
	.uaword	.LLST117
	.uleb128 0x29
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0xa36
	.uaword	0x1b7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"thresh_distance_high"
	.byte	0x1
	.uahalf	0xa37
	.uaword	0x1f3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"thresh_distance_low"
	.byte	0x1
	.uahalf	0xa38
	.uaword	0x1f3
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.string	"thresh_rate_high"
	.byte	0x1
	.uahalf	0xa39
	.uaword	0x1f3
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x25
	.string	"thresh_rate_low"
	.byte	0x1
	.uahalf	0xa3a
	.uaword	0x1f3
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0xa3d
	.uaword	0x4a8
	.byte	0
	.uleb128 0x18
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0xa3f
	.uaword	0x4448
	.uaword	.LLST113
	.uleb128 0x26
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0xa40
	.uaword	0x691a
	.byte	0x1
	.byte	0x6c
	.uleb128 0x19
	.uaword	.LVL284
	.uaword	0x7c44
	.uaword	0x6902
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL285
	.byte	0x1
	.uaword	0x7c7d
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x3399
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_set_GPIO_interrupt_config_struct"
	.byte	0x1
	.uahalf	0xa61
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB45
	.uaword	.LFE45
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x69d9
	.uleb128 0x17
	.string	"Dev"
	.byte	0x1
	.uahalf	0xa62
	.uaword	0x43c9
	.uaword	.LLST119
	.uleb128 0x25
	.string	"intconf"
	.byte	0x1
	.uahalf	0xa63
	.uaword	0x3399
	.byte	0x2
	.byte	0x85
	.sleb128 0
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0xa65
	.uaword	0x4a8
	.byte	0
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0xa67
	.uaword	0x4448
	.byte	0x1
	.byte	0x6f
	.uleb128 0x26
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0xa68
	.uaword	0x691a
	.byte	0x1
	.byte	0x6c
	.uleb128 0x19
	.uaword	.LVL289
	.uaword	0x7c44
	.uaword	0x69c1
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL290
	.byte	0x1
	.uaword	0x7c7d
	.uleb128 0x1a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_get_GPIO_interrupt_config"
	.byte	0x1
	.uahalf	0xa80
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB46
	.uaword	.LFE46
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6a61
	.uleb128 0x17
	.string	"Dev"
	.byte	0x1
	.uahalf	0xa81
	.uaword	0x43c9
	.uaword	.LLST120
	.uleb128 0x1c
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0xa82
	.uaword	0x691a
	.uaword	.LLST121
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0xa84
	.uaword	0x4a8
	.byte	0
	.uleb128 0x18
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0xa86
	.uaword	0x4448
	.uaword	.LLST122
	.uleb128 0x27
	.uaword	.LVL294
	.uaword	0x7cbe
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_set_offset_calibration_mode"
	.byte	0x1
	.uahalf	0xaab
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB47
	.uaword	.LFE47
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6ae1
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0xaac
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.string	"offset_cal_mode"
	.byte	0x1
	.uahalf	0xaad
	.uaword	0x33d
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0xab4
	.uaword	0x4a8
	.byte	0
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0xab6
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_get_offset_calibration_mode"
	.byte	0x1
	.uahalf	0xac2
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB48
	.uaword	.LFE48
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6b62
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0xac3
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.string	"poffset_cal_mode"
	.byte	0x1
	.uahalf	0xac4
	.uaword	0x6b62
	.byte	0x1
	.byte	0x65
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0xacb
	.uaword	0x4a8
	.byte	0
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0xacd
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x33d
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_set_offset_correction_mode"
	.byte	0x1
	.uahalf	0xad9
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB49
	.uaword	.LFE49
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6be7
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0xada
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.string	"offset_cor_mode"
	.byte	0x1
	.uahalf	0xadb
	.uaword	0x361
	.byte	0x1
	.byte	0x54
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0xae2
	.uaword	0x4a8
	.byte	0
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0xae4
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_get_offset_correction_mode"
	.byte	0x1
	.uahalf	0xaf0
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB50
	.uaword	.LFE50
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6c67
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0xaf1
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.string	"poffset_cor_mode"
	.byte	0x1
	.uahalf	0xaf2
	.uaword	0x6c67
	.byte	0x1
	.byte	0x65
	.uleb128 0x1d
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0xaf9
	.uaword	0x4a8
	.byte	0
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0xafb
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x361
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_get_tuning_parm"
	.byte	0x1
	.uahalf	0xbbd
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB51
	.uaword	.LFE51
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6cf7
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0xbbe
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x1c
	.uaword	.LASF49
	.byte	0x1
	.uahalf	0xbbf
	.uaword	0x48d
	.uaword	.LLST123
	.uleb128 0x25
	.string	"ptuning_parm_value"
	.byte	0x1
	.uahalf	0xbc0
	.uaword	0x6cf7
	.byte	0x1
	.byte	0x65
	.uleb128 0x18
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0xbc9
	.uaword	0x4a8
	.uaword	.LLST124
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0xbcb
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x219
	.uleb128 0x16
	.byte	0x1
	.string	"VL53L1_set_tuning_parm"
	.byte	0x1
	.uahalf	0xcc3
	.byte	0x1
	.uaword	0x4a8
	.uaword	.LFB52
	.uaword	.LFE52
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6d88
	.uleb128 0x25
	.string	"Dev"
	.byte	0x1
	.uahalf	0xcc4
	.uaword	0x43c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x1c
	.uaword	.LASF49
	.byte	0x1
	.uahalf	0xcc5
	.uaword	0x48d
	.uaword	.LLST125
	.uleb128 0x17
	.string	"tuning_parm_value"
	.byte	0x1
	.uahalf	0xcc6
	.uaword	0x219
	.uaword	.LLST126
	.uleb128 0x18
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0xccf
	.uaword	0x4a8
	.uaword	.LLST127
	.uleb128 0x26
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0xcd1
	.uaword	0x4448
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"VL53L1_WrByte"
	.byte	0xa
	.byte	0x64
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x6db4
	.uleb128 0x35
	.uaword	0x43db
	.uleb128 0x35
	.uaword	0x1f3
	.uleb128 0x35
	.uaword	0x1b7
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"VL53L1_WaitUs"
	.byte	0xa
	.byte	0x82
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x6ddb
	.uleb128 0x35
	.uaword	0x43db
	.uleb128 0x35
	.uaword	0x219
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"VL53L1_wait_for_boot_completion"
	.byte	0xb
	.byte	0x5a
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x6e0f
	.uleb128 0x35
	.uaword	0x43c9
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_calc_crosstalk_plane_offset_with_margin"
	.byte	0xc
	.uahalf	0x3eb
	.byte	0x1
	.uaword	0x234
	.byte	0x1
	.uaword	0x6e58
	.uleb128 0x35
	.uaword	0x234
	.uleb128 0x35
	.uaword	0x1d7
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_calc_timeout_register_values"
	.byte	0xc
	.uahalf	0x267
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x6eaa
	.uleb128 0x35
	.uaword	0x234
	.uleb128 0x35
	.uaword	0x234
	.uleb128 0x35
	.uaword	0x234
	.uleb128 0x35
	.uaword	0x1f3
	.uleb128 0x35
	.uaword	0x5752
	.uleb128 0x35
	.uaword	0x5758
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_calc_macro_period_us"
	.byte	0xc
	.uahalf	0x1e8
	.byte	0x1
	.uaword	0x234
	.byte	0x1
	.uaword	0x6ee0
	.uleb128 0x35
	.uaword	0x1f3
	.uleb128 0x35
	.uaword	0x1b7
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_calc_timeout_us"
	.byte	0xc
	.uahalf	0x22a
	.byte	0x1
	.uaword	0x234
	.byte	0x1
	.uaword	0x6f11
	.uleb128 0x35
	.uaword	0x234
	.uleb128 0x35
	.uaword	0x234
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_calc_decoded_timeout_us"
	.byte	0xc
	.uahalf	0x238
	.byte	0x1
	.uaword	0x234
	.byte	0x1
	.uaword	0x6f4a
	.uleb128 0x35
	.uaword	0x1f3
	.uleb128 0x35
	.uaword	0x234
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"VL53L1_encode_row_col"
	.byte	0xc
	.uahalf	0x2bc
	.byte	0x1
	.byte	0x1
	.uaword	0x6f7b
	.uleb128 0x35
	.uaword	0x1b7
	.uleb128 0x35
	.uaword	0x1b7
	.uleb128 0x35
	.uaword	0x4b7e
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"VL53L1_encode_zone_size"
	.byte	0xc
	.uahalf	0x2da
	.byte	0x1
	.byte	0x1
	.uaword	0x6fae
	.uleb128 0x35
	.uaword	0x1b7
	.uleb128 0x35
	.uaword	0x1b7
	.uleb128 0x35
	.uaword	0x4b7e
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"VL53L1_decode_row_col"
	.byte	0xd
	.byte	0xd5
	.byte	0x1
	.byte	0x1
	.uaword	0x6fde
	.uleb128 0x35
	.uaword	0x1b7
	.uleb128 0x35
	.uaword	0x4b7e
	.uleb128 0x35
	.uaword	0x4b7e
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"VL53L1_decode_zone_size"
	.byte	0xc
	.uahalf	0x2cb
	.byte	0x1
	.byte	0x1
	.uaword	0x7011
	.uleb128 0x35
	.uaword	0x1b7
	.uleb128 0x35
	.uaword	0x4b7e
	.uleb128 0x35
	.uaword	0x4b7e
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"VL53L1_get_static_nvm_managed"
	.byte	0xe
	.byte	0x91
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x7048
	.uleb128 0x35
	.uaword	0x43c9
	.uleb128 0x35
	.uaword	0x62a3
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"VL53L1_get_customer_nvm_managed"
	.byte	0xe
	.byte	0xd8
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x7081
	.uleb128 0x35
	.uaword	0x43c9
	.uleb128 0x35
	.uaword	0x62a9
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_get_nvm_copy_data"
	.byte	0xe
	.uahalf	0x377
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x70b4
	.uleb128 0x35
	.uaword	0x43c9
	.uleb128 0x35
	.uaword	0x70b4
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x296a
	.uleb128 0x38
	.byte	0x1
	.string	"VL53L1_copy_rtn_good_spads_to_buffer"
	.byte	0xc
	.byte	0x95
	.byte	0x1
	.byte	0x1
	.uaword	0x70f4
	.uleb128 0x35
	.uaword	0x70b4
	.uleb128 0x35
	.uaword	0x4b7e
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"VL53L1_RdWord"
	.byte	0xa
	.byte	0x78
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x7120
	.uleb128 0x35
	.uaword	0x43db
	.uleb128 0x35
	.uaword	0x1f3
	.uleb128 0x35
	.uaword	0x4a1e
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"VL53L1_init_ll_driver_state"
	.byte	0xc
	.byte	0x61
	.byte	0x1
	.byte	0x1
	.uaword	0x7151
	.uleb128 0x35
	.uaword	0x43c9
	.uleb128 0x35
	.uaword	0x2de
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_preset_mode_low_power_auto_long_ranging"
	.byte	0xf
	.uahalf	0x199
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x71b3
	.uleb128 0x35
	.uaword	0x574c
	.uleb128 0x35
	.uaword	0x5752
	.uleb128 0x35
	.uaword	0x5758
	.uleb128 0x35
	.uaword	0x575e
	.uleb128 0x35
	.uaword	0x5764
	.uleb128 0x35
	.uaword	0x576a
	.uleb128 0x35
	.uaword	0x5770
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"VL53L1_preset_mode_standard_ranging"
	.byte	0xf
	.byte	0xa2
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x7204
	.uleb128 0x35
	.uaword	0x574c
	.uleb128 0x35
	.uaword	0x5752
	.uleb128 0x35
	.uaword	0x5758
	.uleb128 0x35
	.uaword	0x575e
	.uleb128 0x35
	.uaword	0x5764
	.uleb128 0x35
	.uaword	0x576a
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"VL53L1_preset_mode_standard_ranging_short_range"
	.byte	0xf
	.byte	0xb9
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x7261
	.uleb128 0x35
	.uaword	0x574c
	.uleb128 0x35
	.uaword	0x5752
	.uleb128 0x35
	.uaword	0x5758
	.uleb128 0x35
	.uaword	0x575e
	.uleb128 0x35
	.uaword	0x5764
	.uleb128 0x35
	.uaword	0x576a
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"VL53L1_preset_mode_standard_ranging_long_range"
	.byte	0xf
	.byte	0xd1
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x72bd
	.uleb128 0x35
	.uaword	0x574c
	.uleb128 0x35
	.uaword	0x5752
	.uleb128 0x35
	.uaword	0x5758
	.uleb128 0x35
	.uaword	0x575e
	.uleb128 0x35
	.uaword	0x5764
	.uleb128 0x35
	.uaword	0x576a
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"VL53L1_preset_mode_standard_ranging_mm1_cal"
	.byte	0xf
	.byte	0xe9
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x7316
	.uleb128 0x35
	.uaword	0x574c
	.uleb128 0x35
	.uaword	0x5752
	.uleb128 0x35
	.uaword	0x5758
	.uleb128 0x35
	.uaword	0x575e
	.uleb128 0x35
	.uaword	0x5764
	.uleb128 0x35
	.uaword	0x576a
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_preset_mode_standard_ranging_mm2_cal"
	.byte	0xf
	.uahalf	0x103
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x7370
	.uleb128 0x35
	.uaword	0x574c
	.uleb128 0x35
	.uaword	0x5752
	.uleb128 0x35
	.uaword	0x5758
	.uleb128 0x35
	.uaword	0x575e
	.uleb128 0x35
	.uaword	0x5764
	.uleb128 0x35
	.uaword	0x576a
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_preset_mode_timed_ranging"
	.byte	0xf
	.uahalf	0x11c
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x73bf
	.uleb128 0x35
	.uaword	0x574c
	.uleb128 0x35
	.uaword	0x5752
	.uleb128 0x35
	.uaword	0x5758
	.uleb128 0x35
	.uaword	0x575e
	.uleb128 0x35
	.uaword	0x5764
	.uleb128 0x35
	.uaword	0x576a
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_preset_mode_timed_ranging_short_range"
	.byte	0xf
	.uahalf	0x134
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x741a
	.uleb128 0x35
	.uaword	0x574c
	.uleb128 0x35
	.uaword	0x5752
	.uleb128 0x35
	.uaword	0x5758
	.uleb128 0x35
	.uaword	0x575e
	.uleb128 0x35
	.uaword	0x5764
	.uleb128 0x35
	.uaword	0x576a
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_preset_mode_timed_ranging_long_range"
	.byte	0xf
	.uahalf	0x14c
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x7474
	.uleb128 0x35
	.uaword	0x574c
	.uleb128 0x35
	.uaword	0x5752
	.uleb128 0x35
	.uaword	0x5758
	.uleb128 0x35
	.uaword	0x575e
	.uleb128 0x35
	.uaword	0x5764
	.uleb128 0x35
	.uaword	0x576a
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_preset_mode_olt"
	.byte	0xf
	.uahalf	0x1b3
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x74b9
	.uleb128 0x35
	.uaword	0x574c
	.uleb128 0x35
	.uaword	0x5752
	.uleb128 0x35
	.uaword	0x5758
	.uleb128 0x35
	.uaword	0x575e
	.uleb128 0x35
	.uaword	0x5764
	.uleb128 0x35
	.uaword	0x576a
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_preset_mode_singleshot_ranging"
	.byte	0xf
	.uahalf	0x1ca
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x750d
	.uleb128 0x35
	.uaword	0x574c
	.uleb128 0x35
	.uaword	0x5752
	.uleb128 0x35
	.uaword	0x5758
	.uleb128 0x35
	.uaword	0x575e
	.uleb128 0x35
	.uaword	0x5764
	.uleb128 0x35
	.uaword	0x576a
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_preset_mode_low_power_auto_short_ranging"
	.byte	0xf
	.uahalf	0x17f
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x7570
	.uleb128 0x35
	.uaword	0x574c
	.uleb128 0x35
	.uaword	0x5752
	.uleb128 0x35
	.uaword	0x5758
	.uleb128 0x35
	.uaword	0x575e
	.uleb128 0x35
	.uaword	0x5764
	.uleb128 0x35
	.uaword	0x576a
	.uleb128 0x35
	.uaword	0x5770
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_preset_mode_low_power_auto_ranging"
	.byte	0xf
	.uahalf	0x165
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x75cd
	.uleb128 0x35
	.uaword	0x574c
	.uleb128 0x35
	.uaword	0x5752
	.uleb128 0x35
	.uaword	0x5758
	.uleb128 0x35
	.uaword	0x575e
	.uleb128 0x35
	.uaword	0x5764
	.uleb128 0x35
	.uaword	0x576a
	.uleb128 0x35
	.uaword	0x5770
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"VL53L1_init_version"
	.byte	0xc
	.byte	0x56
	.byte	0x1
	.byte	0x1
	.uaword	0x75f1
	.uleb128 0x35
	.uaword	0x43c9
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"VL53L1_init_refspadchar_config_struct"
	.byte	0xf
	.byte	0x59
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x762b
	.uleb128 0x35
	.uaword	0x4c7c
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"VL53L1_init_ssc_config_struct"
	.byte	0xf
	.byte	0x67
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x765d
	.uleb128 0x35
	.uaword	0x765d
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x2b2a
	.uleb128 0x34
	.byte	0x1
	.string	"VL53L1_init_xtalk_config_struct"
	.byte	0xf
	.byte	0x74
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x769c
	.uleb128 0x35
	.uaword	0x62a9
	.uleb128 0x35
	.uaword	0x769c
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x2cea
	.uleb128 0x34
	.byte	0x1
	.string	"VL53L1_init_offset_cal_config_struct"
	.byte	0xf
	.byte	0x82
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x76db
	.uleb128 0x35
	.uaword	0x76db
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.uaword	0x3cb1
	.uleb128 0x34
	.byte	0x1
	.string	"VL53L1_init_tuning_parm_storage_struct"
	.byte	0xf
	.byte	0x90
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x771c
	.uleb128 0x35
	.uaword	0x576a
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_low_power_auto_data_init"
	.byte	0xc
	.uahalf	0x3fa
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x7751
	.uleb128 0x35
	.uaword	0x43c9
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_calc_range_ignore_threshold"
	.byte	0xc
	.uahalf	0x1fc
	.byte	0x1
	.uaword	0x1f3
	.byte	0x1
	.uaword	0x7798
	.uleb128 0x35
	.uaword	0x234
	.uleb128 0x35
	.uaword	0x1d7
	.uleb128 0x35
	.uaword	0x1d7
	.uleb128 0x35
	.uaword	0x1b7
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"VL53L1_set_customer_nvm_managed"
	.byte	0xe
	.byte	0xc6
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x77d1
	.uleb128 0x35
	.uaword	0x43c9
	.uleb128 0x35
	.uaword	0x62a9
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_i2c_encode_dynamic_config"
	.byte	0xe
	.uahalf	0x1c6
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x7811
	.uleb128 0x35
	.uaword	0x575e
	.uleb128 0x35
	.uaword	0x1f3
	.uleb128 0x35
	.uaword	0x4b7e
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_i2c_encode_system_control"
	.byte	0xe
	.uahalf	0x210
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x7851
	.uleb128 0x35
	.uaword	0x5764
	.uleb128 0x35
	.uaword	0x1f3
	.uleb128 0x35
	.uaword	0x4b7e
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"VL53L1_WriteMulti"
	.byte	0xa
	.byte	0x58
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x7886
	.uleb128 0x35
	.uaword	0x43db
	.uleb128 0x35
	.uaword	0x1f3
	.uleb128 0x35
	.uaword	0x4b7e
	.uleb128 0x35
	.uaword	0x234
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"VL53L1_update_ll_driver_rd_state"
	.byte	0xc
	.byte	0x6f
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x78bb
	.uleb128 0x35
	.uaword	0x43c9
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"VL53L1_update_ll_driver_cfg_state"
	.byte	0xc
	.byte	0x8a
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x78f1
	.uleb128 0x35
	.uaword	0x43c9
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_i2c_encode_timing_config"
	.byte	0xe
	.uahalf	0x179
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x7930
	.uleb128 0x35
	.uaword	0x5758
	.uleb128 0x35
	.uaword	0x1f3
	.uleb128 0x35
	.uaword	0x4b7e
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_i2c_encode_general_config"
	.byte	0xe
	.uahalf	0x130
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x7970
	.uleb128 0x35
	.uaword	0x5752
	.uleb128 0x35
	.uaword	0x1f3
	.uleb128 0x35
	.uaword	0x4b7e
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"VL53L1_i2c_encode_static_config"
	.byte	0xe
	.byte	0xe7
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x79ae
	.uleb128 0x35
	.uaword	0x574c
	.uleb128 0x35
	.uaword	0x1f3
	.uleb128 0x35
	.uaword	0x4b7e
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"VL53L1_i2c_encode_customer_nvm_managed"
	.byte	0xe
	.byte	0xa0
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x79f3
	.uleb128 0x35
	.uaword	0x62a9
	.uleb128 0x35
	.uaword	0x1f3
	.uleb128 0x35
	.uaword	0x4b7e
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"VL53L1_i2c_encode_static_nvm_managed"
	.byte	0xe
	.byte	0x59
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x7a36
	.uleb128 0x35
	.uaword	0x62a3
	.uleb128 0x35
	.uaword	0x1f3
	.uleb128 0x35
	.uaword	0x4b7e
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_set_system_control"
	.byte	0xe
	.uahalf	0x238
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x7a6a
	.uleb128 0x35
	.uaword	0x43c9
	.uleb128 0x35
	.uaword	0x5764
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_low_power_auto_data_stop_range"
	.byte	0xc
	.uahalf	0x409
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x7aa5
	.uleb128 0x35
	.uaword	0x43c9
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"VL53L1_ReadMulti"
	.byte	0xa
	.byte	0x5e
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x7ad9
	.uleb128 0x35
	.uaword	0x43db
	.uleb128 0x35
	.uaword	0x1f3
	.uleb128 0x35
	.uaword	0x4b7e
	.uleb128 0x35
	.uaword	0x234
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_i2c_decode_core_results"
	.byte	0xe
	.uahalf	0x2bb
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x7b17
	.uleb128 0x35
	.uaword	0x1f3
	.uleb128 0x35
	.uaword	0x4b7e
	.uleb128 0x35
	.uaword	0x6517
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_i2c_decode_system_results"
	.byte	0xe
	.uahalf	0x270
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x7b57
	.uleb128 0x35
	.uaword	0x1f3
	.uleb128 0x35
	.uaword	0x4b7e
	.uleb128 0x35
	.uaword	0x6511
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_i2c_decode_debug_results"
	.byte	0xe
	.uahalf	0x307
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x7b96
	.uleb128 0x35
	.uaword	0x1f3
	.uleb128 0x35
	.uaword	0x4b7e
	.uleb128 0x35
	.uaword	0x651d
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"VL53L1_check_ll_driver_rd_state"
	.byte	0xc
	.byte	0x7d
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x7bca
	.uleb128 0x35
	.uaword	0x43c9
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_low_power_auto_update_DSS"
	.byte	0xc
	.uahalf	0x43b
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x7c00
	.uleb128 0x35
	.uaword	0x43c9
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_low_power_auto_setup_manual_calibration"
	.byte	0xc
	.uahalf	0x42d
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x7c44
	.uleb128 0x35
	.uaword	0x43c9
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_encode_GPIO_interrupt_config"
	.byte	0xc
	.uahalf	0x334
	.byte	0x1
	.uaword	0x1b7
	.byte	0x1
	.uaword	0x7c7d
	.uleb128 0x35
	.uaword	0x691a
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"VL53L1_set_GPIO_thresholds_from_struct"
	.byte	0xc
	.uahalf	0x363
	.byte	0x1
	.uaword	0x4a8
	.byte	0x1
	.uaword	0x7cbe
	.uleb128 0x35
	.uaword	0x43c9
	.uleb128 0x35
	.uaword	0x691a
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"VL53L1_decode_GPIO_interrupt_config"
	.byte	0xc
	.uahalf	0x33e
	.byte	0x1
	.uaword	0x3399
	.byte	0x1
	.uleb128 0x35
	.uaword	0x1b7
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
	.uleb128 0x17
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1-1
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL4
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL6
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9-1
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL12
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x3
	.byte	0x85
	.sleb128 -40
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL9
	.uaword	.LVL10
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
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0x84
	.sleb128 -90
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x3
	.byte	0x85
	.sleb128 -40
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x84
	.sleb128 20
	.uaword	.LVL20
	.uaword	.LFE5
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL24
	.uaword	.LVL25-1
	.uahalf	0x4
	.byte	0x85
	.sleb128 -412
	.byte	0x9f
	.uaword	.LVL25-1
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL22
	.uaword	.LVL25-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL25-1
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL22
	.uaword	.LVL25-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL25-1
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL26
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL22
	.uaword	.LVL25-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL25-1
	.uaword	.LVL25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL27
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL28-1
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL40
	.uaword	.LFE8
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL27
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL28-1
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL40
	.uaword	.LFE8
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL27
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL28-1
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL40
	.uaword	.LFE8
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL27
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL28-1
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL40
	.uaword	.LFE8
	.uahalf	0x1
	.byte	0x67
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL30-1
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL40
	.uaword	.LFE8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL27
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x9
	.byte	0x8f
	.sleb128 412
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0xc
	.byte	0x8f
	.sleb128 413
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34-1
	.uahalf	0x14
	.byte	0x8f
	.sleb128 413
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8f
	.sleb128 412
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x9
	.byte	0x8f
	.sleb128 416
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0xc
	.byte	0x8f
	.sleb128 417
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38-1
	.uahalf	0x14
	.byte	0x8f
	.sleb128 417
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8f
	.sleb128 416
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LFE8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL44
	.uaword	.LFE11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL43
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LFE11
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL43
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL43
	.uaword	.LVL48
	.uahalf	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL47
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL52
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LFE12
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL58
	.uaword	.LFE13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL65
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL64
	.uaword	.LVL66-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL66-1
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL69
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL68
	.uaword	.LVL70-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL70-1
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL72
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL74
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL72
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL76
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL74
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL75
	.uaword	.LVL78
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x3
	.byte	0x8c
	.sleb128 555
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL80
	.uaword	.LVL81-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL81-1
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL85
	.uaword	.LVL86-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL86
	.uaword	.LVL87-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL87
	.uaword	.LVL88-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL91
	.uaword	.LVL92
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL94
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL93
	.uaword	.LVL95
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL96
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL97
	.uaword	.LVL101-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL101-1
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL98
	.uaword	.LVL101-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 1
	.uaword	.LVL101-1
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL97
	.uaword	.LVL101-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL101-1
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL97
	.uaword	.LVL101-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL101-1
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL97
	.uaword	.LVL101-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL101-1
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL97
	.uaword	.LVL102
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x3
	.byte	0x9
	.byte	0xfc
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL106
	.uaword	.LVL109
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL111
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL113
	.uaword	.LVL114
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL115
	.uaword	.LVL116
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL117
	.uaword	.LVL118
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL118
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL119
	.uaword	.LVL120
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL120
	.uaword	.LVL121
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL121
	.uaword	.LVL122
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL122
	.uaword	.LVL123
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL124
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL125
	.uaword	.LVL126
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL127
	.uaword	.LVL128
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL128
	.uaword	.LVL129
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL129
	.uaword	.LVL130
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LVL131
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL131
	.uaword	.LVL132
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL132
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL133
	.uaword	.LVL134
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL134
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL99
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL108
	.uaword	.LVL110
	.uahalf	0x4
	.byte	0x8f
	.sleb128 388
	.byte	0x9f
	.uaword	.LVL110
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL135
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0x8f
	.sleb128 388
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL107
	.uaword	.LVL110
	.uahalf	0x2
	.byte	0x91
	.sleb128 4
	.uaword	.LVL135
	.uaword	.LFE23
	.uahalf	0x2
	.byte	0x91
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL107
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL135
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL107
	.uaword	.LVL110
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL135
	.uaword	.LFE23
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL136
	.uaword	.LVL139-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL139-1
	.uaword	.LFE0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL137
	.uaword	.LFE0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL136
	.uaword	.LVL141
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL148
	.uaword	.LVL149-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL149-1
	.uaword	.LFE0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL138
	.uaword	.LVL139-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL139-1
	.uaword	.LFE0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL150
	.uaword	.LVL151-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL151-1
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL151
	.uaword	.LVL152
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
	.uaword	.LVL152
	.uaword	.LVL153-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL159
	.uaword	.LVL160-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL160-1
	.uaword	.LFE29
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL166
	.uaword	.LVL167
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL167
	.uaword	.LFE35
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL169
	.uaword	.LVL171
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL171
	.uaword	.LFE37
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL169
	.uaword	.LVL170
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL170
	.uaword	.LFE37
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL172
	.uaword	.LVL180
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL180
	.uaword	.LVL189
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL189
	.uaword	.LVL195
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL195
	.uaword	.LVL207
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL207
	.uaword	.LVL208
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL208
	.uaword	.LVL210
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL210
	.uaword	.LFE38
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL172
	.uaword	.LVL173
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL173
	.uaword	.LVL180
	.uahalf	0x2
	.byte	0x84
	.sleb128 2
	.uaword	.LVL180
	.uaword	.LVL189
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL189
	.uaword	.LVL195
	.uahalf	0x2
	.byte	0x84
	.sleb128 2
	.uaword	.LVL195
	.uaword	.LVL207
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL207
	.uaword	.LVL208
	.uahalf	0x2
	.byte	0x84
	.sleb128 2
	.uaword	.LVL208
	.uaword	.LVL209-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 2
	.uaword	.LVL209-1
	.uaword	.LVL210
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL210
	.uaword	.LFE38
	.uahalf	0x2
	.byte	0x84
	.sleb128 2
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL172
	.uaword	.LVL175
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL189
	.uaword	.LVL190
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL191
	.uaword	.LVL192
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL192
	.uaword	.LVL195
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL210
	.uaword	.LVL211
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL211
	.uaword	.LFE38
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL172
	.uaword	.LVL180
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL180
	.uaword	.LVL185
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL187
	.uaword	.LVL188
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL189
	.uaword	.LVL195
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL195
	.uaword	.LVL196-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL196
	.uaword	.LVL197-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL197
	.uaword	.LVL198-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL198
	.uaword	.LVL199-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL199
	.uaword	.LVL200-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL200
	.uaword	.LVL202-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL202
	.uaword	.LVL204-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL204
	.uaword	.LVL206-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL206
	.uaword	.LVL207
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL207
	.uaword	.LVL209
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL209
	.uaword	.LVL210
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL210
	.uaword	.LFE38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL172
	.uaword	.LVL180
	.uahalf	0x4
	.byte	0x84
	.sleb128 344
	.byte	0x9f
	.uaword	.LVL180
	.uaword	.LVL189
	.uahalf	0x4
	.byte	0x8f
	.sleb128 344
	.byte	0x9f
	.uaword	.LVL189
	.uaword	.LVL195
	.uahalf	0x4
	.byte	0x84
	.sleb128 344
	.byte	0x9f
	.uaword	.LVL195
	.uaword	.LVL207
	.uahalf	0x4
	.byte	0x8f
	.sleb128 344
	.byte	0x9f
	.uaword	.LVL207
	.uaword	.LVL208
	.uahalf	0x4
	.byte	0x84
	.sleb128 344
	.byte	0x9f
	.uaword	.LVL208
	.uaword	.LVL210
	.uahalf	0x4
	.byte	0x8f
	.sleb128 344
	.byte	0x9f
	.uaword	.LVL210
	.uaword	.LFE38
	.uahalf	0x4
	.byte	0x84
	.sleb128 344
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL172
	.uaword	.LVL180
	.uahalf	0x4
	.byte	0x84
	.sleb128 66
	.byte	0x9f
	.uaword	.LVL180
	.uaword	.LVL189
	.uahalf	0x4
	.byte	0x8f
	.sleb128 66
	.byte	0x9f
	.uaword	.LVL189
	.uaword	.LVL195
	.uahalf	0x4
	.byte	0x84
	.sleb128 66
	.byte	0x9f
	.uaword	.LVL195
	.uaword	.LVL207
	.uahalf	0x4
	.byte	0x8f
	.sleb128 66
	.byte	0x9f
	.uaword	.LVL207
	.uaword	.LVL208
	.uahalf	0x4
	.byte	0x84
	.sleb128 66
	.byte	0x9f
	.uaword	.LVL208
	.uaword	.LVL210
	.uahalf	0x4
	.byte	0x8f
	.sleb128 66
	.byte	0x9f
	.uaword	.LVL210
	.uaword	.LFE38
	.uahalf	0x4
	.byte	0x84
	.sleb128 66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL172
	.uaword	.LVL180
	.uahalf	0x4
	.byte	0x84
	.sleb128 356
	.byte	0x9f
	.uaword	.LVL180
	.uaword	.LVL189
	.uahalf	0x4
	.byte	0x8f
	.sleb128 356
	.byte	0x9f
	.uaword	.LVL189
	.uaword	.LVL195
	.uahalf	0x4
	.byte	0x84
	.sleb128 356
	.byte	0x9f
	.uaword	.LVL195
	.uaword	.LVL207
	.uahalf	0x4
	.byte	0x8f
	.sleb128 356
	.byte	0x9f
	.uaword	.LVL207
	.uaword	.LVL208
	.uahalf	0x4
	.byte	0x84
	.sleb128 356
	.byte	0x9f
	.uaword	.LVL208
	.uaword	.LVL210
	.uahalf	0x4
	.byte	0x8f
	.sleb128 356
	.byte	0x9f
	.uaword	.LVL210
	.uaword	.LFE38
	.uahalf	0x4
	.byte	0x84
	.sleb128 356
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL172
	.uaword	.LVL180
	.uahalf	0x4
	.byte	0x84
	.sleb128 388
	.byte	0x9f
	.uaword	.LVL180
	.uaword	.LVL189
	.uahalf	0x4
	.byte	0x8f
	.sleb128 388
	.byte	0x9f
	.uaword	.LVL189
	.uaword	.LVL195
	.uahalf	0x4
	.byte	0x84
	.sleb128 388
	.byte	0x9f
	.uaword	.LVL195
	.uaword	.LVL207
	.uahalf	0x4
	.byte	0x8f
	.sleb128 388
	.byte	0x9f
	.uaword	.LVL207
	.uaword	.LVL208
	.uahalf	0x4
	.byte	0x84
	.sleb128 388
	.byte	0x9f
	.uaword	.LVL208
	.uaword	.LVL210
	.uahalf	0x4
	.byte	0x8f
	.sleb128 388
	.byte	0x9f
	.uaword	.LVL210
	.uaword	.LFE38
	.uahalf	0x4
	.byte	0x84
	.sleb128 388
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL172
	.uaword	.LVL180
	.uahalf	0x4
	.byte	0x84
	.sleb128 412
	.byte	0x9f
	.uaword	.LVL180
	.uaword	.LVL189
	.uahalf	0x4
	.byte	0x8f
	.sleb128 412
	.byte	0x9f
	.uaword	.LVL189
	.uaword	.LVL195
	.uahalf	0x4
	.byte	0x84
	.sleb128 412
	.byte	0x9f
	.uaword	.LVL195
	.uaword	.LVL207
	.uahalf	0x4
	.byte	0x8f
	.sleb128 412
	.byte	0x9f
	.uaword	.LVL207
	.uaword	.LVL208
	.uahalf	0x4
	.byte	0x84
	.sleb128 412
	.byte	0x9f
	.uaword	.LVL208
	.uaword	.LVL210
	.uahalf	0x4
	.byte	0x8f
	.sleb128 412
	.byte	0x9f
	.uaword	.LVL210
	.uaword	.LFE38
	.uahalf	0x4
	.byte	0x84
	.sleb128 412
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL172
	.uaword	.LVL180
	.uahalf	0x4
	.byte	0x84
	.sleb128 436
	.byte	0x9f
	.uaword	.LVL180
	.uaword	.LVL189
	.uahalf	0x4
	.byte	0x8f
	.sleb128 436
	.byte	0x9f
	.uaword	.LVL189
	.uaword	.LVL195
	.uahalf	0x4
	.byte	0x84
	.sleb128 436
	.byte	0x9f
	.uaword	.LVL195
	.uaword	.LVL207
	.uahalf	0x4
	.byte	0x8f
	.sleb128 436
	.byte	0x9f
	.uaword	.LVL207
	.uaword	.LVL208
	.uahalf	0x4
	.byte	0x84
	.sleb128 436
	.byte	0x9f
	.uaword	.LVL208
	.uaword	.LVL210
	.uahalf	0x4
	.byte	0x8f
	.sleb128 436
	.byte	0x9f
	.uaword	.LVL210
	.uaword	.LFE38
	.uahalf	0x4
	.byte	0x84
	.sleb128 436
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL172
	.uaword	.LVL180
	.uahalf	0x4
	.byte	0x84
	.sleb128 456
	.byte	0x9f
	.uaword	.LVL180
	.uaword	.LVL189
	.uahalf	0x4
	.byte	0x8f
	.sleb128 456
	.byte	0x9f
	.uaword	.LVL189
	.uaword	.LVL195
	.uahalf	0x4
	.byte	0x84
	.sleb128 456
	.byte	0x9f
	.uaword	.LVL195
	.uaword	.LVL207
	.uahalf	0x4
	.byte	0x8f
	.sleb128 456
	.byte	0x9f
	.uaword	.LVL207
	.uaword	.LVL208
	.uahalf	0x4
	.byte	0x84
	.sleb128 456
	.byte	0x9f
	.uaword	.LVL208
	.uaword	.LVL210
	.uahalf	0x4
	.byte	0x8f
	.sleb128 456
	.byte	0x9f
	.uaword	.LVL210
	.uaword	.LFE38
	.uahalf	0x4
	.byte	0x84
	.sleb128 456
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL172
	.uaword	.LVL180
	.uahalf	0x3
	.byte	0x84
	.sleb128 44
	.byte	0x9f
	.uaword	.LVL180
	.uaword	.LVL189
	.uahalf	0x3
	.byte	0x8f
	.sleb128 44
	.byte	0x9f
	.uaword	.LVL189
	.uaword	.LVL195
	.uahalf	0x3
	.byte	0x84
	.sleb128 44
	.byte	0x9f
	.uaword	.LVL195
	.uaword	.LVL207
	.uahalf	0x3
	.byte	0x8f
	.sleb128 44
	.byte	0x9f
	.uaword	.LVL207
	.uaword	.LVL208
	.uahalf	0x3
	.byte	0x84
	.sleb128 44
	.byte	0x9f
	.uaword	.LVL208
	.uaword	.LVL210
	.uahalf	0x3
	.byte	0x8f
	.sleb128 44
	.byte	0x9f
	.uaword	.LVL210
	.uaword	.LFE38
	.uahalf	0x3
	.byte	0x84
	.sleb128 44
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL174
	.uaword	.LVL176
	.uahalf	0x1
	.byte	0x6a
	.uaword	.LVL176
	.uaword	.LVL177
	.uahalf	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0xff
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL177
	.uaword	.LVL179
	.uahalf	0xa
	.byte	0x91
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.uahalf	0x100
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL189
	.uaword	.LVL195
	.uahalf	0x1
	.byte	0x6a
	.uaword	.LVL210
	.uaword	.LFE38
	.uahalf	0x1
	.byte	0x6a
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL174
	.uaword	.LVL176
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL176
	.uaword	.LVL177
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL177
	.uaword	.LVL178
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL189
	.uaword	.LVL195
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL210
	.uaword	.LFE38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL174
	.uaword	.LVL175
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL175
	.uaword	.LVL179
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL189
	.uaword	.LVL193
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL193
	.uaword	.LVL195
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL210
	.uaword	.LFE38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL174
	.uaword	.LVL180
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL186
	.uaword	.LVL187-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL187-1
	.uaword	.LVL187
	.uahalf	0x6
	.byte	0x8
	.byte	0x71
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL189
	.uaword	.LVL195
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL195
	.uaword	.LVL199
	.uahalf	0x6
	.byte	0x8
	.byte	0x83
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL199
	.uaword	.LVL201
	.uahalf	0x6
	.byte	0x8
	.byte	0x5a
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL201
	.uaword	.LVL203
	.uahalf	0x6
	.byte	0x8
	.byte	0x44
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL203
	.uaword	.LVL205
	.uahalf	0x6
	.byte	0x8
	.byte	0x24
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL205
	.uaword	.LVL207
	.uahalf	0x5
	.byte	0x3d
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL207
	.uaword	.LVL210
	.uahalf	0x5
	.byte	0x31
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL210
	.uaword	.LFE38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL174
	.uaword	.LVL175
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL175
	.uaword	.LVL179
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL189
	.uaword	.LVL194
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL194
	.uaword	.LVL195
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL210
	.uaword	.LFE38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL212
	.uaword	.LVL213-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL213-1
	.uaword	.LFE39
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL212
	.uaword	.LVL214
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL214
	.uaword	.LVL215
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL215
	.uaword	.LFE39
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL218
	.uaword	.LVL221-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL221-1
	.uaword	.LVL229
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL229
	.uaword	.LVL231-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL231-1
	.uaword	.LFE40
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL218
	.uaword	.LVL220
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL220
	.uaword	.LVL229
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL229
	.uaword	.LVL230
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL230
	.uaword	.LFE40
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL218
	.uaword	.LVL221
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL221
	.uaword	.LVL223
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL225
	.uaword	.LVL226
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL227
	.uaword	.LVL228-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL228
	.uaword	.LVL229
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL229
	.uaword	.LVL231
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL231
	.uaword	.LFE40
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL218
	.uaword	.LVL221-1
	.uahalf	0x4
	.byte	0x84
	.sleb128 462
	.byte	0x9f
	.uaword	.LVL221-1
	.uaword	.LVL229
	.uahalf	0x4
	.byte	0x8c
	.sleb128 462
	.byte	0x9f
	.uaword	.LVL229
	.uaword	.LVL231-1
	.uahalf	0x4
	.byte	0x84
	.sleb128 462
	.byte	0x9f
	.uaword	.LVL231-1
	.uaword	.LFE40
	.uahalf	0x4
	.byte	0x8c
	.sleb128 462
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL218
	.uaword	.LVL221-1
	.uahalf	0x4
	.byte	0x84
	.sleb128 648
	.byte	0x9f
	.uaword	.LVL221-1
	.uaword	.LVL229
	.uahalf	0x4
	.byte	0x8c
	.sleb128 648
	.byte	0x9f
	.uaword	.LVL229
	.uaword	.LVL231-1
	.uahalf	0x4
	.byte	0x84
	.sleb128 648
	.byte	0x9f
	.uaword	.LVL231-1
	.uaword	.LFE40
	.uahalf	0x4
	.byte	0x8c
	.sleb128 648
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL218
	.uaword	.LVL221-1
	.uahalf	0x4
	.byte	0x84
	.sleb128 684
	.byte	0x9f
	.uaword	.LVL221-1
	.uaword	.LVL229
	.uahalf	0x4
	.byte	0x8c
	.sleb128 684
	.byte	0x9f
	.uaword	.LVL229
	.uaword	.LVL231-1
	.uahalf	0x4
	.byte	0x84
	.sleb128 684
	.byte	0x9f
	.uaword	.LVL231-1
	.uaword	.LFE40
	.uahalf	0x4
	.byte	0x8c
	.sleb128 684
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL218
	.uaword	.LVL222
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL224
	.uaword	.LVL226
	.uahalf	0x3
	.byte	0x8
	.byte	0x2c
	.byte	0x9f
	.uaword	.LVL226
	.uaword	.LVL227
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL227
	.uaword	.LVL229
	.uahalf	0x3
	.byte	0x8
	.byte	0x4e
	.byte	0x9f
	.uaword	.LVL229
	.uaword	.LFE40
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL218
	.uaword	.LVL219
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL232
	.uaword	.LVL233-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL233-1
	.uaword	.LFE42
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL232
	.uaword	.LVL233-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL233-1
	.uaword	.LFE42
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL234
	.uaword	.LVL241
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL241
	.uaword	.LVL245
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL245
	.uaword	.LVL259
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL259
	.uaword	.LVL260
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL260
	.uaword	.LFE43
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL234
	.uaword	.LVL235
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL235
	.uaword	.LVL236
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL244
	.uaword	.LVL245
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL254
	.uaword	.LVL255
	.uahalf	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL256
	.uaword	.LVL258
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL259
	.uaword	.LVL260
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL235
	.uaword	.LVL244
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL245
	.uaword	.LVL253
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL253
	.uaword	.LVL254
	.uahalf	0x4
	.byte	0x8f
	.sleb128 64
	.byte	0x9f
	.uaword	.LVL254
	.uaword	.LVL259
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL260
	.uaword	.LFE43
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL234
	.uaword	.LVL236
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL240
	.uaword	.LVL241
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL241
	.uaword	.LVL242
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL242
	.uaword	.LVL243
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0x800
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL243
	.uaword	.LVL244
	.uahalf	0x8
	.byte	0x74
	.sleb128 -2047
	.byte	0xa
	.uahalf	0x800
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL249
	.uaword	.LVL250
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL250
	.uaword	.LVL251
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL251
	.uaword	.LVL252
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0x800
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL252
	.uaword	.LVL256
	.uahalf	0x8
	.byte	0x72
	.sleb128 -2047
	.byte	0xa
	.uahalf	0x800
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL256
	.uaword	.LVL257
	.uahalf	0x13
	.byte	0x84
	.sleb128 14
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x23
	.uleb128 0x400
	.byte	0xa
	.uahalf	0x800
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL234
	.uaword	.LVL236
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL237
	.uaword	.LVL238
	.uahalf	0x17
	.byte	0x7f
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
	.uaword	.LVL238
	.uaword	.LVL239
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL239
	.uaword	.LVL244
	.uahalf	0x1f
	.byte	0x84
	.sleb128 30
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x35
	.byte	0x24
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
	.uaword	.LVL246
	.uaword	.LVL247
	.uahalf	0x17
	.byte	0x7f
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
	.uaword	.LVL247
	.uaword	.LVL248
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL248
	.uaword	.LVL257
	.uahalf	0x1f
	.byte	0x84
	.sleb128 10
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x35
	.byte	0x24
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
.LLST106:
	.uaword	.LVL261
	.uaword	.LVL263-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL263-1
	.uaword	.LVL265
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL265
	.uaword	.LVL266
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL266
	.uaword	.LFE41
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL261
	.uaword	.LVL263-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL263-1
	.uaword	.LFE41
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL261
	.uaword	.LVL263-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL263-1
	.uaword	.LVL265
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL266
	.uaword	.LVL269
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL270
	.uaword	.LVL274
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL275
	.uaword	.LVL276
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL277
	.uaword	.LFE41
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL261
	.uaword	.LVL263
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL263
	.uaword	.LVL265
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL266
	.uaword	.LVL267-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL268
	.uaword	.LVL270
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL271
	.uaword	.LVL272
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL273
	.uaword	.LVL277
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL278
	.uaword	.LVL279
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL280
	.uaword	.LFE41
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST111:
	.uaword	.LVL261
	.uaword	.LVL262
	.uahalf	0x4
	.byte	0x84
	.sleb128 756
	.byte	0x9f
	.uaword	.LVL262
	.uaword	.LVL265
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL265
	.uaword	.LVL266
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0x2f4
	.byte	0x9f
	.uaword	.LVL266
	.uaword	.LVL269
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL269
	.uaword	.LVL270
	.uahalf	0x4
	.byte	0x8f
	.sleb128 756
	.byte	0x9f
	.uaword	.LVL270
	.uaword	.LVL274
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL274
	.uaword	.LVL275
	.uahalf	0x4
	.byte	0x8f
	.sleb128 756
	.byte	0x9f
	.uaword	.LVL275
	.uaword	.LVL276
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL276
	.uaword	.LVL277
	.uahalf	0x4
	.byte	0x8f
	.sleb128 756
	.byte	0x9f
	.uaword	.LVL277
	.uaword	.LFE41
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST112:
	.uaword	.LVL262
	.uaword	.LVL265
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL265
	.uaword	.LVL266
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x23
	.uleb128 0x2f4
	.byte	0x9f
	.uaword	.LVL266
	.uaword	.LVL269
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL269
	.uaword	.LVL270
	.uahalf	0x4
	.byte	0x8f
	.sleb128 756
	.byte	0x9f
	.uaword	.LVL270
	.uaword	.LVL274
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL274
	.uaword	.LVL275
	.uahalf	0x4
	.byte	0x8f
	.sleb128 756
	.byte	0x9f
	.uaword	.LVL275
	.uaword	.LVL276
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL276
	.uaword	.LVL277
	.uahalf	0x4
	.byte	0x8f
	.sleb128 756
	.byte	0x9f
	.uaword	.LVL277
	.uaword	.LFE41
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST113:
	.uaword	.LVL281
	.uaword	.LVL283
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL283
	.uaword	.LFE44
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST114:
	.uaword	.LVL281
	.uaword	.LVL284-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL284-1
	.uaword	.LFE44
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST115:
	.uaword	.LVL281
	.uaword	.LVL284-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL284-1
	.uaword	.LFE44
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST116:
	.uaword	.LVL281
	.uaword	.LVL284-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL284-1
	.uaword	.LFE44
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST117:
	.uaword	.LVL281
	.uaword	.LVL284-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL284-1
	.uaword	.LFE44
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST119:
	.uaword	.LVL286
	.uaword	.LVL287
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL287
	.uaword	.LFE45
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST120:
	.uaword	.LVL291
	.uaword	.LVL293
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL293
	.uaword	.LVL295
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL295
	.uaword	.LFE46
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST121:
	.uaword	.LVL291
	.uaword	.LVL294-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL294-1
	.uaword	.LVL295
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST122:
	.uaword	.LVL292
	.uaword	.LVL293
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL293
	.uaword	.LVL295
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL295
	.uaword	.LFE46
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST123:
	.uaword	.LVL300
	.uaword	.LVL301
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL301
	.uaword	.LFE51
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST124:
	.uaword	.LVL300
	.uaword	.LVL302
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL302
	.uaword	.LVL303
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL303
	.uaword	.LFE51
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST125:
	.uaword	.LVL304
	.uaword	.LVL305
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL305
	.uaword	.LFE52
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST126:
	.uaword	.LVL304
	.uaword	.LVL308
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL308
	.uaword	.LVL309
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL309
	.uaword	.LFE52
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST127:
	.uaword	.LVL304
	.uaword	.LVL306
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL306
	.uaword	.LVL307
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL307
	.uaword	.LFE52
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x1bc
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
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
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
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
	.uaword	.LFB42
	.uaword	.LFE42-.LFB42
	.uaword	.LFB43
	.uaword	.LFE43-.LFB43
	.uaword	.LFB41
	.uaword	.LFE41-.LFB41
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB6
	.uaword	.LBE6
	.uaword	.LBB9
	.uaword	.LBE9
	.uaword	0
	.uaword	0
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	0
	.uaword	0
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
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LFB0
	.uaword	.LFE0
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
	.uaword	.LFB42
	.uaword	.LFE42
	.uaword	.LFB43
	.uaword	.LFE43
	.uaword	.LFB41
	.uaword	.LFE41
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF48:
	.string	"pintconf"
.LASF22:
	.string	"phasecal_config_timeout_us"
.LASF23:
	.string	"range_config_timeout_us"
.LASF9:
	.string	"y_centre"
.LASF40:
	.string	"device_preset_mode"
.LASF35:
	.string	"pphasecal_config_timeout_us"
.LASF6:
	.string	"vcsel_period"
.LASF15:
	.string	"sigma_mm"
.LASF33:
	.string	"pdev"
.LASF30:
	.string	"gain_cal"
.LASF34:
	.string	"pcal_data"
.LASF14:
	.string	"intr_combined_mode"
.LASF41:
	.string	"pgeneral"
.LASF7:
	.string	"timeout_us"
.LASF32:
	.string	"status"
.LASF27:
	.string	"customer"
.LASF17:
	.string	"cfg_device_state"
.LASF12:
	.string	"intr_new_measure_ready"
.LASF3:
	.string	"dss_config__target_total_rate_mcps"
.LASF19:
	.string	"preset_mode"
.LASF2:
	.string	"algo__crosstalk_compensation_y_plane_gradient_kcps"
.LASF16:
	.string	"median_range_mm"
.LASF13:
	.string	"intr_no_target"
.LASF38:
	.string	"bit_mask"
.LASF4:
	.string	"dss_config__roi_mode_control"
.LASF36:
	.string	"pmm_config_timeout_us"
.LASF0:
	.string	"algo__crosstalk_compensation_plane_offset_kcps"
.LASF47:
	.string	"presults"
.LASF29:
	.string	"add_off_cal_data"
.LASF25:
	.string	"measurement_mode"
.LASF46:
	.string	"device_results_level"
.LASF10:
	.string	"intr_mode_distance"
.LASF37:
	.string	"prange_config_timeout_us"
.LASF11:
	.string	"intr_mode_rate"
.LASF20:
	.string	"peak_rate_mcps"
.LASF43:
	.string	"i2c_index"
.LASF8:
	.string	"x_centre"
.LASF49:
	.string	"tuning_parm_key"
.LASF31:
	.string	"optical_centre"
.LASF26:
	.string	"inter_measurement_period_ms"
.LASF44:
	.string	"i2c_buffer_offset_bytes"
.LASF24:
	.string	"mm_config_timeout_us"
.LASF42:
	.string	"pdynamic"
.LASF5:
	.string	"dss_config__manual_effective_spads_select"
.LASF39:
	.string	"puser_zone"
.LASF1:
	.string	"algo__crosstalk_compensation_x_plane_gradient_kcps"
.LASF28:
	.string	"cal_peak_rate_map"
.LASF21:
	.string	"cal_distance_mm"
.LASF18:
	.string	"rd_device_state"
.LASF45:
	.string	"i2c_buffer_size_bytes"
	.extern	VL53L1_decode_GPIO_interrupt_config,STT_FUNC,0
	.extern	VL53L1_set_GPIO_thresholds_from_struct,STT_FUNC,0
	.extern	VL53L1_encode_GPIO_interrupt_config,STT_FUNC,0
	.extern	VL53L1_low_power_auto_setup_manual_calibration,STT_FUNC,0
	.extern	VL53L1_low_power_auto_update_DSS,STT_FUNC,0
	.extern	VL53L1_check_ll_driver_rd_state,STT_FUNC,0
	.extern	VL53L1_i2c_decode_debug_results,STT_FUNC,0
	.extern	VL53L1_i2c_decode_system_results,STT_FUNC,0
	.extern	VL53L1_i2c_decode_core_results,STT_FUNC,0
	.extern	VL53L1_ReadMulti,STT_FUNC,0
	.extern	VL53L1_low_power_auto_data_stop_range,STT_FUNC,0
	.extern	VL53L1_set_system_control,STT_FUNC,0
	.extern	VL53L1_i2c_encode_static_nvm_managed,STT_FUNC,0
	.extern	VL53L1_i2c_encode_customer_nvm_managed,STT_FUNC,0
	.extern	VL53L1_i2c_encode_static_config,STT_FUNC,0
	.extern	VL53L1_i2c_encode_general_config,STT_FUNC,0
	.extern	VL53L1_i2c_encode_timing_config,STT_FUNC,0
	.extern	VL53L1_update_ll_driver_cfg_state,STT_FUNC,0
	.extern	VL53L1_update_ll_driver_rd_state,STT_FUNC,0
	.extern	VL53L1_WriteMulti,STT_FUNC,0
	.extern	VL53L1_i2c_encode_system_control,STT_FUNC,0
	.extern	VL53L1_i2c_encode_dynamic_config,STT_FUNC,0
	.extern	VL53L1_set_customer_nvm_managed,STT_FUNC,0
	.extern	VL53L1_calc_range_ignore_threshold,STT_FUNC,0
	.extern	VL53L1_low_power_auto_data_init,STT_FUNC,0
	.extern	VL53L1_init_tuning_parm_storage_struct,STT_FUNC,0
	.extern	VL53L1_init_offset_cal_config_struct,STT_FUNC,0
	.extern	VL53L1_init_xtalk_config_struct,STT_FUNC,0
	.extern	VL53L1_init_ssc_config_struct,STT_FUNC,0
	.extern	VL53L1_init_refspadchar_config_struct,STT_FUNC,0
	.extern	VL53L1_init_version,STT_FUNC,0
	.extern	VL53L1_preset_mode_low_power_auto_ranging,STT_FUNC,0
	.extern	VL53L1_preset_mode_low_power_auto_short_ranging,STT_FUNC,0
	.extern	VL53L1_preset_mode_singleshot_ranging,STT_FUNC,0
	.extern	VL53L1_preset_mode_olt,STT_FUNC,0
	.extern	VL53L1_preset_mode_timed_ranging_long_range,STT_FUNC,0
	.extern	VL53L1_preset_mode_timed_ranging_short_range,STT_FUNC,0
	.extern	VL53L1_preset_mode_timed_ranging,STT_FUNC,0
	.extern	VL53L1_preset_mode_standard_ranging_mm2_cal,STT_FUNC,0
	.extern	VL53L1_preset_mode_standard_ranging_mm1_cal,STT_FUNC,0
	.extern	VL53L1_preset_mode_standard_ranging_long_range,STT_FUNC,0
	.extern	VL53L1_preset_mode_standard_ranging_short_range,STT_FUNC,0
	.extern	VL53L1_preset_mode_standard_ranging,STT_FUNC,0
	.extern	VL53L1_preset_mode_low_power_auto_long_ranging,STT_FUNC,0
	.extern	VL53L1_init_ll_driver_state,STT_FUNC,0
	.extern	VL53L1_RdWord,STT_FUNC,0
	.extern	VL53L1_copy_rtn_good_spads_to_buffer,STT_FUNC,0
	.extern	VL53L1_get_nvm_copy_data,STT_FUNC,0
	.extern	VL53L1_get_customer_nvm_managed,STT_FUNC,0
	.extern	VL53L1_get_static_nvm_managed,STT_FUNC,0
	.extern	VL53L1_decode_zone_size,STT_FUNC,0
	.extern	VL53L1_decode_row_col,STT_FUNC,0
	.extern	VL53L1_encode_zone_size,STT_FUNC,0
	.extern	VL53L1_encode_row_col,STT_FUNC,0
	.extern	VL53L1_calc_decoded_timeout_us,STT_FUNC,0
	.extern	VL53L1_calc_timeout_us,STT_FUNC,0
	.extern	VL53L1_calc_macro_period_us,STT_FUNC,0
	.extern	VL53L1_calc_timeout_register_values,STT_FUNC,0
	.extern	VL53L1_calc_crosstalk_plane_offset_with_margin,STT_FUNC,0
	.extern	VL53L1_wait_for_boot_completion,STT_FUNC,0
	.extern	VL53L1_WaitUs,STT_FUNC,0
	.extern	VL53L1_WrByte,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
