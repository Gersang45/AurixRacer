	.file	"vl53l1_api.c"
.section .text,"ax",@progbits
.Ltext0:
.section .rodata,"a",@progbits
.LC0:
	.byte	2
	.byte	1
	.byte	3
.LC1:
	.byte	7
	.byte	6
	.byte	8
.LC2:
	.byte	36
	.byte	37
	.byte	38
.section .text.SetPresetMode,"ax",@progbits
	.align 1
	.type	SetPresetMode, @function
SetPresetMode:
.LFB20:
	.file 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api.c"
	.loc 1 926 0
.LVL0:
	sub.a	%SP, 24
.LCFI0:
	.loc 1 938 0
	eq	%d2, %d4, 8
	.loc 1 937 0
	mov	%d3, %d2
.LBB46:
.LBB47:
	.loc 1 871 0
	lea	%a6, [%SP] 12
	movh.a	%a2, hi:.LC0
.LBE47:
.LBE46:
	.loc 1 937 0
	or.eq	%d3, %d4, 3
.LBB53:
.LBB48:
	.loc 1 871 0
	mov.aa	%a3, %a6
	lea	%a2, [%a2] lo:.LC0
.LBE48:
.LBE53:
	.loc 1 939 0
	mov	%d9, 32
	seln	%d9, %d3, %d9, 64
.LVL1:
	.loc 1 926 0
	mov.aa	%a15, %a4
.LBB54:
.LBB49:
	.loc 1 871 0
		# #chunks=3, chunksize=1, remains=0
	lea	%a4, 3-1
	0:
	ld.bu	%d3, [%a2+]1
	st.b	[%a3+]1, %d3
	loop	%a4, 0b
.LVL2:
	.loc 1 877 0
	lea	%a7, [%SP] 16
	movh.a	%a2, hi:.LC1
	lea	%a2, [%a2] lo:.LC1
	mov.aa	%a5, %a7
		# #chunks=3, chunksize=1, remains=0
	lea	%a3, 3-1
	0:
	ld.bu	%d3, [%a2+]1
	st.b	[%a5+]1, %d3
	loop	%a3, 0b
	.loc 1 882 0
	lea	%a2, [%SP] 20
	movh.a	%a3, hi:.LC2
	lea	%a3, [%a3] lo:.LC2
	mov.aa	%a4, %a2
		# #chunks=3, chunksize=1, remains=0
	lea	%a5, 3-1
	0:
	ld.bu	%d3, [%a3+]1
	st.b	[%a4+]1, %d3
	loop	%a5, 0b
.LBE49:
.LBE54:
	.loc 1 926 0
	mov	%d15, %d4
.LVL3:
	mov	%d10, %d6
.LBB55:
.LBB50:
	.loc 1 891 0
	mov	%d3, 0
	.loc 1 889 0
	jeq	%d5, 1, .L4
	.loc 1 897 0
	eq	%d5, %d5, 2
.LVL4:
	mov	%d3, 1
	sel	%d3, %d5, %d3, 2
.L4:
.LVL5:
	.loc 1 900 0
	jeq	%d15, 4, .L7
	jnz	%d2, .L8
	.loc 1 916 0
	mov	%d2, -8
	.loc 1 900 0
	jeq	%d15, 3, .L22
.LVL6:
.L17:
.LBE50:
.LBE55:
	.loc 1 973 0
	ret
.LVL7:
.L22:
.LBB56:
.LBB51:
	.loc 1 907 0
	addsc.a	%a3, %a7, %d3, 0
	ld.bu	%d8, [%a3]0
.LVL8:
.L10:
.LBE51:
.LBE56:
	.loc 1 948 0
	st.a	[%SP]0, %a2
	mov.aa	%a4, %a15
	mov	%d4, %d8
.LVL9:
	lea	%a5, [%SP] 10
	call	VL53L1_get_preset_mode_timing_cfg
.LVL10:
	.loc 1 955 0
	jnz	%d2, .L23
	.loc 1 956 0
	ld.w	%d2, [%SP] 20
.LVL11:
	ld.hu	%d5, [%SP] 10
	ld.w	%d6, [%SP] 12
	ld.w	%d7, [%SP] 16
	st.w	[%SP]0, %d2
	st.w	[%SP] 4, %d10
	mov.aa	%a4, %a15
	mov	%d4, %d8
	call	VL53L1_set_preset_mode
.LVL12:
	.loc 1 965 0
	jnz	%d2, .L17
	.loc 1 966 0
	st.b	[%a15] 2, %d9
	.loc 1 969 0
	st.b	[%a15] 892, %d15
	ret
.LVL13:
.L8:
.LBB57:
.LBB52:
	.loc 1 911 0
	addsc.a	%a3, %a2, %d3, 0
	ld.bu	%d8, [%a3]0
.LVL14:
	j	.L10
.LVL15:
.L7:
	.loc 1 902 0
	addsc.a	%a3, %a6, %d3, 0
	ld.bu	%d8, [%a3]0
.LVL16:
	j	.L10
.LVL17:
.L23:
.LBE52:
.LBE57:
	ret
.LFE20:
	.size	SetPresetMode, .-SetPresetMode
.section .text.SetLimitValue,"ax",@progbits
	.align 1
	.type	SetLimitValue, @function
SetLimitValue:
.LFB32:
	.loc 1 1404 0
.LVL18:
	.loc 1 1410 0
	jz	%d4, .L26
	jne	%d4, 1, .L31
.LVL19:
	.loc 1 1417 0
	extr.u	%d4, %d5, 9, 16
.LVL20:
	call	VL53L1_set_lite_min_count_rate
.LVL21:
	.loc 1 1405 0
	mov	%d2, 0
	.loc 1 1418 0
	ret
.LVL22:
.L31:
	.loc 1 1420 0
	mov	%d2, -4
.LVL23:
	.loc 1 1425 0
	ret
.LVL24:
.L26:
	.loc 1 1413 0
	extr.u	%d4, %d5, 14, 16
.LVL25:
	call	VL53L1_set_lite_sigma_threshold
.LVL26:
	.loc 1 1405 0
	mov	%d2, 0
	.loc 1 1414 0
	ret
.LFE32:
	.size	SetLimitValue, .-SetLimitValue
.section .text.VL53L1_GetVersion,"ax",@progbits
	.align 1
	.global	VL53L1_GetVersion
	.type	VL53L1_GetVersion, @function
VL53L1_GetVersion:
.LFB8:
	.loc 1 615 0
.LVL27:
	.loc 1 620 0
	mov	%d15, 2
	.loc 1 628 0
	mov	%d2, 0
	.loc 1 620 0
	st.b	[%a4] 4, %d15
	.loc 1 621 0
	mov	%d15, 3
	st.b	[%a4] 5, %d15
	.loc 1 622 0
	mov	%d15, 1
	st.b	[%a4] 6, %d15
	.loc 1 624 0
	mov	%d15, 1842
	st.w	[%a4]0, %d15
	.loc 1 628 0
	ret
.LFE8:
	.size	VL53L1_GetVersion, .-VL53L1_GetVersion
.section .text.VL53L1_GetProductRevision,"ax",@progbits
	.align 1
	.global	VL53L1_GetProductRevision
	.type	VL53L1_GetProductRevision, @function
VL53L1_GetProductRevision:
.LFB9:
	.loc 1 632 0
.LVL28:
	.loc 1 640 0
	ld.bu	%d15, [%a4] 508
.LVL29:
	.loc 1 641 0
	mov	%d2, 1
	.loc 1 642 0
	sh	%d15, -4
	.loc 1 641 0
	st.b	[%a5]0, %d2
.LVL30:
	.loc 1 642 0
	st.b	[%a6]0, %d15
	.loc 1 647 0
	mov	%d2, 0
	ret
.LFE9:
	.size	VL53L1_GetProductRevision, .-VL53L1_GetProductRevision
.section .rodata,"a",@progbits
.LC3:
	.string	""
.LC4:
	.string	"VL53L1 cut1.0"
.LC5:
	.string	"VL53L1 cut1.1"
.LC6:
	.string	"VL53L1"
.section .text.VL53L1_GetDeviceInfo,"ax",@progbits
	.align 1
	.global	VL53L1_GetDeviceInfo
	.type	VL53L1_GetDeviceInfo, @function
VL53L1_GetDeviceInfo:
.LFB10:
	.loc 1 651 0
.LVL31:
	.loc 1 651 0
	mov.aa	%a15, %a5
	mov.aa	%a12, %a4
.LVL32:
	.loc 1 660 0
	lea	%a4, [%a5] 64
.LVL33:
	movh.a	%a5, hi:.LC3
.LVL34:
	lea	%a5, [%a5] lo:.LC3
	mov	%d4, 31
	call	strncpy
.LVL35:
	.loc 1 663 0
	ld.bu	%d15, [%a12] 507
	.loc 1 662 0
	st.b	[%a15] 96, %d15
	.loc 1 665 0
	ld.bu	%d15, [%a12] 508
.LVL36:
	.loc 1 666 0
	mov	%d2, 1
	.loc 1 667 0
	sh	%d15, -4
	.loc 1 671 0
	mov.aa	%a4, %a15
	.loc 1 666 0
	st.b	[%a15] 97, %d2
.LVL37:
	.loc 1 667 0
	st.b	[%a15] 98, %d15
	.loc 1 670 0
	jz	%d15, .L37
	.loc 1 675 0
	movh.a	%a5, hi:.LC5
	lea	%a5, [%a5] lo:.LC5
	mov	%d4, 31
	call	strncpy
.LVL38:
.L36:
	.loc 1 678 0
	movh.a	%a5, hi:.LC6
	lea	%a4, [%a15] 32
	lea	%a5, [%a5] lo:.LC6
	mov	%d4, 31
	call	strncpy
.LVL39:
	.loc 1 688 0
	mov	%d2, 0
	ret
.LVL40:
.L37:
	.loc 1 671 0
	movh.a	%a5, hi:.LC4
	lea	%a5, [%a5] lo:.LC4
	mov	%d4, 31
	call	strncpy
.LVL41:
	j	.L36
.LFE10:
	.size	VL53L1_GetDeviceInfo, .-VL53L1_GetDeviceInfo
.section .text.VL53L1_GetRangeStatusString,"ax",@progbits
	.align 1
	.global	VL53L1_GetRangeStatusString
	.type	VL53L1_GetRangeStatusString, @function
VL53L1_GetRangeStatusString:
.LFB11:
	.loc 1 693 0
.LVL42:
	.loc 1 698 0
	j	VL53L1_get_range_status_string
.LVL43:
.LFE11:
	.size	VL53L1_GetRangeStatusString, .-VL53L1_GetRangeStatusString
.section .text.VL53L1_GetPalErrorString,"ax",@progbits
	.align 1
	.global	VL53L1_GetPalErrorString
	.type	VL53L1_GetPalErrorString, @function
VL53L1_GetPalErrorString:
.LFB12:
	.loc 1 707 0
.LVL44:
	.loc 1 712 0
	j	VL53L1_get_pal_error_string
.LVL45:
.LFE12:
	.size	VL53L1_GetPalErrorString, .-VL53L1_GetPalErrorString
.section .text.VL53L1_GetPalStateString,"ax",@progbits
	.align 1
	.global	VL53L1_GetPalStateString
	.type	VL53L1_GetPalStateString, @function
VL53L1_GetPalStateString:
.LFB13:
	.loc 1 720 0
.LVL46:
	.loc 1 725 0
	j	VL53L1_get_pal_state_string
.LVL47:
.LFE13:
	.size	VL53L1_GetPalStateString, .-VL53L1_GetPalStateString
.section .text.VL53L1_GetPalState,"ax",@progbits
	.align 1
	.global	VL53L1_GetPalState
	.type	VL53L1_GetPalState, @function
VL53L1_GetPalState:
.LFB14:
	.loc 1 732 0
.LVL48:
	.loc 1 737 0
	ld.bu	%d15, [%a4] 888
	st.b	[%a5]0, %d15
	.loc 1 741 0
	mov	%d2, 0
	ret
.LFE14:
	.size	VL53L1_GetPalState, .-VL53L1_GetPalState
.section .text.VL53L1_SetDeviceAddress,"ax",@progbits
	.align 1
	.global	VL53L1_SetDeviceAddress
	.type	VL53L1_SetDeviceAddress, @function
VL53L1_SetDeviceAddress:
.LFB15:
	.loc 1 747 0
.LVL49:
	.loc 1 752 0
	sh	%d5, %d4, -1
	mov	%d4, 1
.LVL50:
	j	VL53L1_WrByte
.LVL51:
.LFE15:
	.size	VL53L1_SetDeviceAddress, .-VL53L1_SetDeviceAddress
.section .text.VL53L1_WaitDeviceBooted,"ax",@progbits
	.align 1
	.global	VL53L1_WaitDeviceBooted
	.type	VL53L1_WaitDeviceBooted, @function
VL53L1_WaitDeviceBooted:
.LFB18:
	.loc 1 848 0
.LVL52:
	.loc 1 853 0
	mov	%d4, 500
	j	VL53L1_poll_for_boot_completion
.LVL53:
.LFE18:
	.size	VL53L1_WaitDeviceBooted, .-VL53L1_WaitDeviceBooted
.section .text.VL53L1_GetPresetMode,"ax",@progbits
	.align 1
	.global	VL53L1_GetPresetMode
	.type	VL53L1_GetPresetMode, @function
VL53L1_GetPresetMode:
.LFB22:
	.loc 1 1018 0
.LVL54:
	.loc 1 1023 0
	ld.bu	%d15, [%a4] 892
	st.b	[%a5]0, %d15
	.loc 1 1027 0
	mov	%d2, 0
	ret
.LFE22:
	.size	VL53L1_GetPresetMode, .-VL53L1_GetPresetMode
.section .text.VL53L1_SetDistanceMode,"ax",@progbits
	.align 1
	.global	VL53L1_SetDistanceMode
	.type	VL53L1_SetDistanceMode, @function
VL53L1_SetDistanceMode:
.LFB23:
	.loc 1 1031 0
.LVL55:
	mov	%d15, %d4
	.loc 1 1051 0
	add	%d8, %d15, -1
	and	%d8, %d8, 255
	.loc 1 1031 0
	sub.a	%SP, 16
.LCFI1:
	.loc 1 1031 0
	mov.aa	%a15, %a4
	.loc 1 1043 0
	ld.bu	%d9, [%a4] 892
.LVL56:
	.loc 1 1053 0
	mov	%d2, -4
	.loc 1 1050 0
	jge.u	%d8, 3, .L53
	.loc 1 1063 0
	ne	%d8, %d8, 2
	.loc 1 1067 0
	lea	%a5, [%SP] 12
	.loc 1 1063 0
	sel	%d8, %d8, %d4, 3
.LVL57:
	.loc 1 1067 0
	call	VL53L1_get_user_zone
.LVL58:
	.loc 1 1069 0
	ld.w	%d10, [%a15] 20
.LVL59:
	.loc 1 1072 0
	jz	%d2, .L54
.LVL60:
.L53:
	.loc 1 1105 0
	ret
.LVL61:
.L54:
	.loc 1 1073 0
	mov.aa	%a4, %a15
	lea	%a5, [%SP] 8
	lea	%a6, [%SP] 4
	mov.aa	%a7, %SP
	call	VL53L1_get_timeouts_us
.LVL62:
	.loc 1 1076 0
	jnz	%d2, .L53
	.loc 1 1077 0
	mov.aa	%a4, %a15
	mov	%e4, %d8, %d9
	mov	%d6, %d10
	call	SetPresetMode
.LVL63:
	.loc 1 1082 0
	jnz	%d2, .L53
	.loc 1 1092 0
	ld.w	%d4, [%SP] 8
	ld.w	%d5, [%SP] 4
	ld.w	%d6, [%SP]0
	.loc 1 1083 0
	st.b	[%a15] 894, %d8
	.loc 1 1085 0
	st.b	[%a15] 895, %d8
	.loc 1 1087 0
	st.b	[%a15] 893, %d15
	.loc 1 1092 0
	mov.aa	%a4, %a15
	call	VL53L1_set_timeouts_us
.LVL64:
	.loc 1 1095 0
	jnz	%d2, .L53
	.loc 1 1096 0
	ld.w	%d15, [%SP]0
	st.w	[%a15] 16, %d15
.LVL65:
	.loc 1 1101 0
	mov.aa	%a4, %a15
	lea	%a5, [%SP] 12
	call	VL53L1_set_user_zone
.LVL66:
	.loc 1 1105 0
	ret
.LFE23:
	.size	VL53L1_SetDistanceMode, .-VL53L1_SetDistanceMode
.section .text.VL53L1_GetDistanceMode,"ax",@progbits
	.align 1
	.global	VL53L1_GetDistanceMode
	.type	VL53L1_GetDistanceMode, @function
VL53L1_GetDistanceMode:
.LFB24:
	.loc 1 1109 0
.LVL67:
	.loc 1 1114 0
	ld.bu	%d15, [%a4] 893
	st.b	[%a5]0, %d15
	.loc 1 1118 0
	mov	%d2, 0
	ret
.LFE24:
	.size	VL53L1_GetDistanceMode, .-VL53L1_GetDistanceMode
.section .text.VL53L1_SetMeasurementTimingBudgetMicroSeconds,"ax",@progbits
	.align 1
	.global	VL53L1_SetMeasurementTimingBudgetMicroSeconds
	.type	VL53L1_SetMeasurementTimingBudgetMicroSeconds, @function
VL53L1_SetMeasurementTimingBudgetMicroSeconds:
.LFB25:
	.loc 1 1125 0
.LVL68:
	.loc 1 1142 0
	movh	%d15, 153
	addi	%d15, %d15, -27007
	.loc 1 1125 0
	sub.a	%SP, 24
.LCFI2:
	.loc 1 1125 0
	mov.aa	%a15, %a4
	.loc 1 1143 0
	mov	%d2, -4
	.loc 1 1142 0
	jge.u	%d4, %d15, .L80
	mov	%d15, %d4
.LVL69:
.LBB58:
.LBB59:
	.loc 1 1713 0
	lea	%a5, [%SP] 6
.LVL70:
	mov	%d4, 5
.LVL71:
	call	VL53L1_get_sequence_config_bit
.LVL72:
.LBE59:
.LBE58:
	.loc 1 1150 0
	jnz	%d2, .L93
.LVL73:
.LBB60:
.LBB61:
	.loc 1 1713 0
	mov.aa	%a4, %a15
	mov	%d4, 6
	lea	%a5, [%SP] 7
.LVL74:
	call	VL53L1_get_sequence_config_bit
.LVL75:
.LBE61:
.LBE60:
	.loc 1 1155 0
	jnz	%d2, .L80
	.loc 1 1156 0
	mov.aa	%a4, %a15
	lea	%a5, [%SP] 16
	lea	%a6, [%SP] 12
	lea	%a7, [%SP] 8
	call	VL53L1_get_timeouts_us
.LVL76:
	.loc 1 1161 0
	jnz	%d2, .L80
.LVL77:
	.loc 1 1166 0
	ld.bu	%d2, [%a15] 892
.LVL78:
	jeq	%d2, 4, .L62
	eq	%d3, %d2, 8
	jnz	%d3, .L63
	jeq	%d2, 3, .L94
.LVL79:
	.loc 1 1204 0
	jz	%d15, .L67
	.loc 1 1201 0
	mov	%d2, -8
	ret
.LVL80:
.L63:
	.loc 1 1186 0
	mov.aa	%a4, %a15
	mov.u	%d4, 32822
	lea	%a5, [%SP] 20
	call	VL53L1_get_tuning_parm
.LVL81:
	.loc 1 1189 0
	ld.w	%d3, [%SP] 20
	mov	%d2, 3793
	jlez	%d3, .L66
.LVL82:
	.loc 1 1190 0
	mul	%d2, %d3, 245
	addi	%d2, %d2, 3793
.LVL83:
.L66:
	.loc 1 1184 0
	movh	%d3, 17
	addi	%d3, %d3, -14112
	.loc 1 1196 0
	mov	%d4, 2
.LVL84:
.L65:
	.loc 1 1204 0
	jge.u	%d2, %d15, .L67
	.loc 1 1208 0
	sub	%d6, %d15, %d2
	.loc 1 1213 0
	mov	%d2, -4
.LVL85:
	.loc 1 1212 0
	jge.u	%d3, %d6, .L95
.LVL86:
.L80:
	.loc 1 1237 0
	ret
.LVL87:
.L67:
	.loc 1 1205 0
	mov	%d2, -4
	ret
.LVL88:
.L94:
	.loc 1 1176 0
	ld.bu	%d5, [%SP] 6
	.loc 1 1175 0
	movh	%d3, 17
	addi	%d3, %d3, -14112
	.loc 1 1180 0
	mov	%d4, 2
	.loc 1 1177 0
	mov	%d2, 26600
	.loc 1 1176 0
	jeq	%d5, 1, .L65
	.loc 1 1176 0 is_stmt 0 discriminator 1
	ld.bu	%d5, [%SP] 7
	.loc 1 1175 0 is_stmt 1 discriminator 1
	mov	%d6, 21600
	eq	%d5, %d5, 1
	sel	%d2, %d5, %d2, %d6
	j	.L65
.LVL89:
.L62:
	.loc 1 1168 0
	ld.bu	%d5, [%SP] 6
	.loc 1 1137 0
	movh	%d3, 8
	addi	%d3, %d3, 25712
	.loc 1 1165 0
	mov	%d4, 1
	.loc 1 1169 0
	mov	%d2, 5000
	.loc 1 1168 0
	jeq	%d5, 1, .L65
	.loc 1 1168 0 is_stmt 0 discriminator 1
	ld.bu	%d5, [%SP] 7
	.loc 1 1137 0 is_stmt 1 discriminator 1
	mov	%d6, 1000
	eq	%d5, %d5, 1
	sel	%d2, %d5, %d2, %d6
	j	.L65
.LVL90:
.L95:
	.loc 1 1215 0
	div.u	%e6, %d6, %d4
	.loc 1 1216 0
	ld.w	%d5, [%SP] 12
	ld.w	%d4, [%SP] 16
.LVL91:
	mov.aa	%a4, %a15
	.loc 1 1215 0
	st.w	[%SP] 8, %d6
	.loc 1 1216 0
	call	VL53L1_set_timeouts_us
.LVL92:
	.loc 1 1223 0
	jnz	%d2, .L80
	.loc 1 1224 0
	ld.w	%d3, [%SP] 8
	st.w	[%a15] 16, %d3
.LVL93:
	.loc 1 1230 0
	st.w	[%a15] 896, %d15
	ret
.LVL94:
.L93:
	ret
.LFE25:
	.size	VL53L1_SetMeasurementTimingBudgetMicroSeconds, .-VL53L1_SetMeasurementTimingBudgetMicroSeconds
.section .text.VL53L1_SetPresetMode,"ax",@progbits
	.align 1
	.global	VL53L1_SetPresetMode
	.type	VL53L1_SetPresetMode, @function
VL53L1_SetPresetMode:
.LFB21:
	.loc 1 976 0
.LVL95:
	.loc 1 982 0
	mov	%d5, 3
	mov	%d6, 1000
	.loc 1 976 0
	mov.aa	%a15, %a4
.LVL96:
	mov	%d15, %d4
	.loc 1 982 0
	call	SetPresetMode
.LVL97:
	.loc 1 987 0
	jnz	%d2, .L97
	.loc 1 988 0
	mov	%d2, 3
.LVL98:
	.loc 1 994 0
	add	%d3, %d15, -3
	.loc 1 997 0
	mov.aa	%a4, %a15
	.loc 1 988 0
	st.b	[%a15] 894, %d2
	.loc 1 991 0
	st.b	[%a15] 895, %d2
	.loc 1 994 0
	lt.u	%d2, %d3, 2
	or.eq	%d2, %d15, 8
	jz	%d2, .L98
	.loc 1 997 0
	mov.u	%d4, 41000
	call	VL53L1_SetMeasurementTimingBudgetMicroSeconds
.LVL99:
.L99:
	.loc 1 1005 0
	jnz	%d2, .L97
.LVL100:
.LBB66:
.LBB67:
.LBB68:
.LBB69:
	.loc 1 1329 0
	mov.aa	%a4, %a15
	mov	%d4, 1000
	j	VL53L1_set_inter_measurement_period_ms
.LVL101:
.L97:
.LBE69:
.LBE68:
.LBE67:
.LBE66:
	.loc 1 1013 0
	ret
.LVL102:
.L98:
	.loc 1 1001 0
	mov.u	%d4, 33333
	call	VL53L1_SetMeasurementTimingBudgetMicroSeconds
.LVL103:
	j	.L99
.LFE21:
	.size	VL53L1_SetPresetMode, .-VL53L1_SetPresetMode
.section .text.VL53L1_StaticInit,"ax",@progbits
	.align 1
	.global	VL53L1_StaticInit
	.type	VL53L1_StaticInit, @function
VL53L1_StaticInit:
.LFB17:
	.loc 1 819 0
.LVL104:
	.loc 1 825 0
	mov	%d15, 3
	.loc 1 828 0
	mov	%d2, 32
	.loc 1 840 0
	mov	%d4, 8
	.loc 1 825 0
	st.b	[%a4] 888, %d15
.LVL105:
	.loc 1 828 0
	st.b	[%a4] 2, %d2
	.loc 1 830 0
	st.b	[%a4] 895, %d15
	.loc 1 833 0
	st.b	[%a4] 894, %d15
	.loc 1 836 0
	st.b	[%a4] 893, %d15
	.loc 1 840 0
	j	VL53L1_SetPresetMode
.LVL106:
.LFE17:
	.size	VL53L1_StaticInit, .-VL53L1_StaticInit
.section .text.VL53L1_GetMeasurementTimingBudgetMicroSeconds,"ax",@progbits
	.align 1
	.global	VL53L1_GetMeasurementTimingBudgetMicroSeconds
	.type	VL53L1_GetMeasurementTimingBudgetMicroSeconds, @function
VL53L1_GetMeasurementTimingBudgetMicroSeconds:
.LFB26:
	.loc 1 1242 0
.LVL107:
	.loc 1 1244 0
	mov	%d15, 0
	.loc 1 1242 0
	sub.a	%SP, 24
.LCFI3:
	.loc 1 1242 0
	mov.aa	%a12, %a5
	.loc 1 1244 0
	st.b	[%SP] 6, %d15
	.loc 1 1245 0
	st.b	[%SP] 7, %d15
	.loc 1 1246 0
	mov	%d15, 0
.LBB70:
.LBB71:
	.loc 1 1713 0
	mov	%d4, 5
.LBE71:
.LBE70:
	.loc 1 1242 0
	mov.aa	%a15, %a4
	.loc 1 1257 0
	st.w	[%a5]0, %d15
.LBB74:
.LBB72:
	.loc 1 1713 0
	lea	%a5, [%SP] 6
.LVL108:
.LBE72:
.LBE74:
	.loc 1 1246 0
	st.w	[%SP] 8, %d15
	.loc 1 1247 0
	st.w	[%SP] 12, %d15
.LVL109:
	.loc 1 1249 0
	st.w	[%SP] 16, %d15
.LBB75:
.LBB73:
	.loc 1 1713 0
	call	VL53L1_get_sequence_config_bit
.LVL110:
	mov	%d15, %d2
.LVL111:
.LBE73:
.LBE75:
	.loc 1 1263 0
	jz	%d2, .L125
.LVL112:
.L118:
	.loc 1 1318 0
	mov	%d2, %d15
	ret
.LVL113:
.L125:
.LBB76:
.LBB77:
	.loc 1 1713 0
	mov.aa	%a4, %a15
	mov	%d4, 6
	lea	%a5, [%SP] 7
.LVL114:
	call	VL53L1_get_sequence_config_bit
.LVL115:
	mov	%d15, %d2
.LVL116:
.LBE77:
.LBE76:
	.loc 1 1267 0
	jnz	%d2, .L118
	.loc 1 1268 0
	mov.aa	%a4, %a15
	lea	%a5, [%SP] 16
	lea	%a6, [%SP] 8
	lea	%a7, [%SP] 12
	call	VL53L1_get_timeouts_us
.LVL117:
	mov	%d15, %d2
.LVL118:
	.loc 1 1273 0
	jnz	%d2, .L118
.LVL119:
	.loc 1 1276 0
	ld.bu	%d2, [%a15] 892
.LVL120:
	jeq	%d2, 4, .L104
	eq	%d3, %d2, 8
	jnz	%d3, .L105
	jeq	%d2, 3, .L126
	.loc 1 1310 0
	mov	%d15, -8
.LVL121:
	.loc 1 1318 0
	mov	%d2, %d15
	ret
.LVL122:
.L126:
	.loc 1 1286 0
	ld.bu	%d2, [%SP] 6
	jeq	%d2, 1, .L110
	.loc 1 1289 0 discriminator 1
	ld.w	%d4, [%SP] 12
	.loc 1 1286 0 discriminator 1
	ld.bu	%d3, [%SP] 7
	.loc 1 1289 0 discriminator 1
	addi	%d2, %d4, 10800
	sh	%d2, 1
	.loc 1 1286 0 discriminator 1
	jeq	%d3, 1, .L110
.L109:
.LVL123:
	.loc 1 1314 0
	st.w	[%a12]0, %d2
.LVL124:
.L127:
	.loc 1 1318 0
	mov	%d2, %d15
.LVL125:
	ret
.LVL126:
.L110:
	.loc 1 1287 0
	ld.w	%d3, [%SP] 12
	addi	%d2, %d3, 13300
	sh	%d2, 1
.LVL127:
	.loc 1 1314 0
	st.w	[%a12]0, %d2
.LVL128:
	j	.L127
.LVL129:
.L105:
	.loc 1 1295 0
	mov.aa	%a4, %a15
	mov.u	%d4, 32822
	lea	%a5, [%SP] 20
	call	VL53L1_get_tuning_parm
.LVL130:
	.loc 1 1298 0
	ld.w	%d3, [%SP] 20
	.loc 1 1294 0
	mov	%d2, 245
	.loc 1 1298 0
	jlez	%d3, .L112
	.loc 1 1299 0
	mul	%d2, %d3, 245
	addi	%d2, %d2, 245
.LVL131:
.L112:
	ld.w	%d3, [%SP] 12
	madd	%d2, %d2, %d3, 2
.LVL132:
	.loc 1 1305 0
	addi	%d2, %d2, 3548
.LVL133:
	.loc 1 1314 0
	st.w	[%a12]0, %d2
	j	.L127
.LVL134:
.L104:
	.loc 1 1278 0
	ld.bu	%d2, [%SP] 6
	jeq	%d2, 1, .L107
	.loc 1 1281 0 discriminator 1
	ld.w	%d4, [%SP] 12
	.loc 1 1278 0 discriminator 1
	ld.bu	%d3, [%SP] 7
	.loc 1 1281 0 discriminator 1
	addi	%d2, %d4, 1000
	.loc 1 1278 0 discriminator 1
	jne	%d3, 1, .L109
.L107:
	.loc 1 1279 0
	ld.w	%d3, [%SP] 12
	addi	%d2, %d3, 5000
.LVL135:
	.loc 1 1314 0
	st.w	[%a12]0, %d2
.LVL136:
	j	.L127
.LFE26:
	.size	VL53L1_GetMeasurementTimingBudgetMicroSeconds, .-VL53L1_GetMeasurementTimingBudgetMicroSeconds
.section .text.VL53L1_SetInterMeasurementPeriodMilliSeconds,"ax",@progbits
	.align 1
	.global	VL53L1_SetInterMeasurementPeriodMilliSeconds
	.type	VL53L1_SetInterMeasurementPeriodMilliSeconds, @function
VL53L1_SetInterMeasurementPeriodMilliSeconds:
.LFB27:
	.loc 1 1324 0
.LVL137:
	.loc 1 1329 0
	j	VL53L1_set_inter_measurement_period_ms
.LVL138:
.LFE27:
	.size	VL53L1_SetInterMeasurementPeriodMilliSeconds, .-VL53L1_SetInterMeasurementPeriodMilliSeconds
.section .text.VL53L1_GetInterMeasurementPeriodMilliSeconds,"ax",@progbits
	.align 1
	.global	VL53L1_GetInterMeasurementPeriodMilliSeconds
	.type	VL53L1_GetInterMeasurementPeriodMilliSeconds, @function
VL53L1_GetInterMeasurementPeriodMilliSeconds:
.LFB28:
	.loc 1 1338 0
.LVL139:
	.loc 1 1343 0
	j	VL53L1_get_inter_measurement_period_ms
.LVL140:
.LFE28:
	.size	VL53L1_GetInterMeasurementPeriodMilliSeconds, .-VL53L1_GetInterMeasurementPeriodMilliSeconds
.section .text.VL53L1_GetNumberOfLimitCheck,"ax",@progbits
	.align 1
	.global	VL53L1_GetNumberOfLimitCheck
	.type	VL53L1_GetNumberOfLimitCheck, @function
VL53L1_GetNumberOfLimitCheck:
.LFB29:
	.loc 1 1357 0
.LVL141:
	.loc 1 1362 0
	mov	%d15, 2
	.loc 1 1366 0
	mov	%d2, 0
	.loc 1 1362 0
	st.h	[%a4]0, %d15
	.loc 1 1366 0
	ret
.LFE29:
	.size	VL53L1_GetNumberOfLimitCheck, .-VL53L1_GetNumberOfLimitCheck
.section .text.VL53L1_GetLimitCheckInfo,"ax",@progbits
	.align 1
	.global	VL53L1_GetLimitCheckInfo
	.type	VL53L1_GetLimitCheckInfo, @function
VL53L1_GetLimitCheckInfo:
.LFB30:
	.loc 1 1370 0
.LVL142:
	.loc 1 1375 0
	j	VL53L1_get_limit_check_info
.LVL143:
.LFE30:
	.size	VL53L1_GetLimitCheckInfo, .-VL53L1_GetLimitCheckInfo
.section .text.VL53L1_GetLimitCheckStatus,"ax",@progbits
	.align 1
	.global	VL53L1_GetLimitCheckStatus
	.type	VL53L1_GetLimitCheckStatus, @function
VL53L1_GetLimitCheckStatus:
.LFB31:
	.loc 1 1384 0
.LVL144:
	.loc 1 1391 0
	mov	%d2, -4
	.loc 1 1390 0
	jge.u	%d4, 2, .L133
	.loc 1 1393 0
	addsc.a	%a4, %a4, %d4, 0
.LVL145:
	.loc 1 1385 0
	mov	%d2, 0
	.loc 1 1393 0
	ld.bu	%d15, [%a4] 902
.LVL146:
	.loc 1 1395 0
	st.b	[%a5]0, %d15
.LVL147:
.L133:
	.loc 1 1400 0
	ret
.LFE31:
	.size	VL53L1_GetLimitCheckStatus, .-VL53L1_GetLimitCheckStatus
.section .text.VL53L1_SetLimitCheckEnable,"ax",@progbits
	.align 1
	.global	VL53L1_SetLimitCheckEnable
	.type	VL53L1_SetLimitCheckEnable, @function
VL53L1_SetLimitCheckEnable:
.LFB33:
	.loc 1 1430 0
.LVL148:
	.loc 1 1438 0
	mov	%d2, -4
	.loc 1 1437 0
	jge.u	%d4, 2, .L136
	.loc 1 1442 0
	mov	%d2, 0
	.loc 1 1441 0
	jnz	%d5, .L141
.LVL149:
.L137:
	mov	%d8, %d5
	mov	%d15, %d4
	.loc 1 1447 0
	mov	%e4, %d2, %d4
.LVL150:
	mov.aa	%a15, %a4
.LVL151:
	call	SetLimitValue
.LVL152:
	.loc 1 1450 0
	jnz	%d2, .L136
	.loc 1 1451 0
	ne	%d5, %d8, 0
	addsc.a	%a4, %a15, %d15, 0
	st.b	[%a4] 900, %d5
.LVL153:
.L136:
	.loc 1 1460 0
	ret
.LVL154:
.L141:
	.loc 1 1444 0
	addsc.a	%a15, %a4, %d4, 2
	ld.w	%d2, [%a15] 904
.LVL155:
	j	.L137
.LFE33:
	.size	VL53L1_SetLimitCheckEnable, .-VL53L1_SetLimitCheckEnable
.section .text.VL53L1_GetLimitCheckEnable,"ax",@progbits
	.align 1
	.global	VL53L1_GetLimitCheckEnable
	.type	VL53L1_GetLimitCheckEnable, @function
VL53L1_GetLimitCheckEnable:
.LFB34:
	.loc 1 1464 0
.LVL156:
	.loc 1 1470 0
	jge.u	%d4, 2, .L145
	.loc 1 1474 0
	addsc.a	%a4, %a4, %d4, 0
.LVL157:
	.loc 1 1465 0
	mov	%d2, 0
	.loc 1 1474 0
	ld.bu	%d15, [%a4] 900
.LVL158:
	.loc 1 1476 0
	st.b	[%a5]0, %d15
.LVL159:
	.loc 1 1482 0
	ret
.LVL160:
.L145:
	.loc 1 1472 0
	mov	%d15, 0
	.loc 1 1471 0
	mov	%d2, -4
	.loc 1 1472 0
	st.b	[%a5]0, %d15
	ret
.LFE34:
	.size	VL53L1_GetLimitCheckEnable, .-VL53L1_GetLimitCheckEnable
.section .text.VL53L1_SetLimitCheckValue,"ax",@progbits
	.align 1
	.global	VL53L1_SetLimitCheckValue
	.type	VL53L1_SetLimitCheckValue, @function
VL53L1_SetLimitCheckValue:
.LFB35:
	.loc 1 1486 0
.LVL161:
	.loc 1 1486 0
	mov.aa	%a15, %a4
	mov	%d15, %d4
	.loc 1 1493 0
	mov	%d2, -4
	.loc 1 1492 0
	jge.u	%d4, 2, .L147
.LVL162:
	.loc 1 1496 0
	addsc.a	%a2, %a4, %d4, 0
	.loc 1 1500 0
	ld.bu	%d2, [%a2] 900
	jnz	%d2, .L148
	.loc 1 1502 0
	addsc.a	%a15, %a4, %d4, 2
	st.w	[%a15] 904, %d5
	ret
.L148:
	mov	%d8, %d5
	.loc 1 1506 0
	call	SetLimitValue
.LVL163:
	.loc 1 1509 0
	jnz	%d2, .L147
	.loc 1 1510 0
	addsc.a	%a15, %a15, %d15, 2
.LVL164:
	st.w	[%a15] 904, %d8
.LVL165:
.L147:
	.loc 1 1519 0
	ret
.LFE35:
	.size	VL53L1_SetLimitCheckValue, .-VL53L1_SetLimitCheckValue
.section .text.VL53L1_DataInit,"ax",@progbits
	.align 1
	.global	VL53L1_DataInit
	.type	VL53L1_DataInit, @function
VL53L1_DataInit:
.LFB16:
	.loc 1 762 0
.LVL166:
	sub.a	%SP, 8
.LCFI4:
	.loc 1 770 0
	mov	%d4, 46
	lea	%a5, [%SP] 7
	.loc 1 762 0
	mov.aa	%a15, %a4
	.loc 1 770 0
	call	VL53L1_RdByte
.LVL167:
	.loc 1 771 0
	jz	%d2, .L157
.LVL168:
.L156:
	.loc 1 815 0
	ret
.L157:
	.loc 1 772 0
	ld.bu	%d5, [%SP] 7
	.loc 1 774 0
	mov.aa	%a4, %a15
	.loc 1 772 0
	or	%d5, %d5, 1
	and	%d5, %d5, 255
	.loc 1 774 0
	mov	%d4, 46
	.loc 1 772 0
	st.b	[%SP] 7, %d5
	.loc 1 774 0
	call	VL53L1_WrByte
.LVL169:
	.loc 1 782 0
	jnz	%d2, .L156
	.loc 1 783 0
	mov.aa	%a4, %a15
	mov	%d4, 1
	call	VL53L1_data_init
.LVL170:
	mov	%d15, %d2
.LVL171:
	.loc 1 785 0
	jnz	%d15, .L156
	.loc 1 786 0
	mov	%d2, 1
.LVL172:
	.loc 1 792 0
	st.b	[%SP] 7, %d15
.LVL173:
	mov	%d4, 0
	.loc 1 786 0
	st.b	[%a15] 888, %d2
	.loc 1 787 0
	mov	%d2, 8
	st.b	[%a15] 892, %d2
	j	.L153
.LVL174:
.L154:
	.loc 1 793 0
	jnz	%d2, .L156
.LVL175:
.L153:
	.loc 1 794 0 discriminator 2
	mov.aa	%a4, %a15
	mov	%d5, 1
	call	VL53L1_SetLimitCheckEnable
.LVL176:
	.loc 1 792 0 discriminator 2
	ld.bu	%d4, [%SP] 7
	add	%d4, 1
	and	%d4, %d4, 255
	st.b	[%SP] 7, %d4
	jlt.u	%d4, 2, .L154
	.loc 1 801 0
	jnz	%d2, .L156
	.loc 1 802 0
	mov.aa	%a4, %a15
	mov	%d4, 0
	movh	%d5, 18
	call	VL53L1_SetLimitCheckValue
.LVL177:
	.loc 1 806 0
	jnz	%d2, .L156
	.loc 1 807 0
	mov.aa	%a4, %a15
	mov	%d4, 1
	mov	%d5, 16384
	call	VL53L1_SetLimitCheckValue
.LVL178:
	.loc 1 815 0
	ret
.LFE16:
	.size	VL53L1_DataInit, .-VL53L1_DataInit
.section .text.VL53L1_GetLimitCheckValue,"ax",@progbits
	.align 1
	.global	VL53L1_GetLimitCheckValue
	.type	VL53L1_GetLimitCheckValue, @function
VL53L1_GetLimitCheckValue:
.LFB36:
	.loc 1 1523 0
.LVL179:
	sub.a	%SP, 8
.LCFI5:
	.loc 1 1523 0
	mov.aa	%a15, %a4
	mov	%d15, %d4
	mov.aa	%a12, %a5
	.loc 1 1531 0
	jz	%d4, .L160
	jne	%d4, 1, .L167
	.loc 1 1537 0
	lea	%a5, [%SP] 4
.LVL180:
	call	VL53L1_get_lite_min_count_rate
.LVL181:
	.loc 1 1538 0
	ld.hu	%d3, [%SP] 4
	sh	%d3, %d3, 9
.LVL182:
.L162:
	.loc 1 1544 0
	jnz	%d2, .L159
	.loc 1 1546 0
	jz	%d3, .L168
	.loc 1 1556 0
	addsc.a	%a2, %a15, %d15, 2
	.loc 1 1559 0
	addsc.a	%a15, %a15, %d15, 0
.LVL183:
	mov	%d15, 1
	.loc 1 1555 0
	st.w	[%a12]0, %d3
	.loc 1 1556 0
	st.w	[%a2] 904, %d3
	.loc 1 1559 0
	st.b	[%a15] 900, %d15
	ret
.LVL184:
.L167:
	.loc 1 1541 0
	mov	%d2, -4
.LVL185:
.L159:
	.loc 1 1566 0
	ret
.LVL186:
.L160:
	.loc 1 1533 0
	lea	%a5, [%SP] 6
.LVL187:
	call	VL53L1_get_lite_sigma_threshold
.LVL188:
	.loc 1 1534 0
	ld.hu	%d3, [%SP] 6
	sh	%d3, %d3, 14
.LVL189:
	.loc 1 1535 0
	j	.L162
.L168:
	.loc 1 1548 0
	addsc.a	%a2, %a15, %d15, 2
	.loc 1 1552 0
	addsc.a	%a15, %a15, %d15, 0
.LVL190:
	.loc 1 1548 0
	ld.w	%d3, [%a2] 904
.LVL191:
	st.w	[%a12]0, %d3
.LVL192:
	.loc 1 1552 0
	st.b	[%a15] 900, %d2
.LVL193:
	ret
.LFE36:
	.size	VL53L1_GetLimitCheckValue, .-VL53L1_GetLimitCheckValue
.section .text.VL53L1_GetLimitCheckCurrent,"ax",@progbits
	.align 1
	.global	VL53L1_GetLimitCheckCurrent
	.type	VL53L1_GetLimitCheckCurrent, @function
VL53L1_GetLimitCheckCurrent:
.LFB37:
	.loc 1 1570 0
.LVL194:
	.loc 1 1577 0
	mov	%d2, -4
	.loc 1 1576 0
	jge.u	%d4, 2, .L170
	.loc 1 1579 0
	addsc.a	%a4, %a4, %d4, 2
.LVL195:
	.loc 1 1571 0
	mov	%d2, 0
	.loc 1 1579 0
	ld.w	%d15, [%a4] 912
	st.w	[%a5]0, %d15
.LVL196:
.L170:
	.loc 1 1587 0
	ret
.LFE37:
	.size	VL53L1_GetLimitCheckCurrent, .-VL53L1_GetLimitCheckCurrent
.section .text.VL53L1_SetUserROI,"ax",@progbits
	.align 1
	.global	VL53L1_SetUserROI
	.type	VL53L1_SetUserROI, @function
VL53L1_SetUserROI:
.LFB38:
	.loc 1 1597 0
.LVL197:
	ld.bu	%d2, [%a5]0
.LVL198:
	ld.bu	%d3, [%a5] 1
.LVL199:
	ld.bu	%d4, [%a5] 2
.LVL200:
	ge.u	%d5, %d2, 16
	ld.bu	%d15, [%a5] 3
.LVL201:
	or.ge.u	%d5, %d3, 16
	or.ge.u	%d5, %d4, 16
.LBB78:
.LBB79:
	.loc 1 550 0
	or.ge.u	%d5, %d15, 16
.LBE79:
.LBE78:
	.loc 1 1597 0
	sub.a	%SP, 8
.LCFI6:
.LBB81:
.LBB80:
	.loc 1 550 0
	jnz	%d5, .L175
.LVL202:
.LBE80:
.LBE81:
	.loc 1 1602 0
	lt.u	%d5, %d4, %d2
	or.lt.u	%d5, %d3, %d15
	jnz	%d5, .L175
	.loc 1 1605 0
	add	%d5, %d4, %d2
	add	%d5, 1
	sha	%d5, -1
	.loc 1 1607 0
	sub	%d2, %d4, %d2
	and	%d2, %d2, 255
	.loc 1 1605 0
	st.b	[%SP] 4, %d5
	.loc 1 1606 0
	add	%d5, %d15, %d3
	add	%d5, 1
	.loc 1 1608 0
	sub	%d15, %d3, %d15
	and	%d15, 255
	.loc 1 1606 0
	sha	%d5, -1
	.loc 1 1609 0
	lt.u	%d3, %d2, 3
	.loc 1 1607 0
	st.b	[%SP] 6, %d2
	.loc 1 1606 0
	st.b	[%SP] 5, %d5
	.loc 1 1608 0
	st.b	[%SP] 7, %d15
	.loc 1 1609 0
	or.lt.u	%d3, %d15, 3
	jz	%d3, .L176
.L175:
	.loc 1 1603 0
	mov	%d2, -4
	ret
.L176:
	.loc 1 1612 0
	lea	%a5, [%SP] 4
.LVL203:
	.loc 1 1616 0
	j	VL53L1_set_user_zone
.LVL204:
.LFE38:
	.size	VL53L1_SetUserROI, .-VL53L1_SetUserROI
.section .text.VL53L1_GetUserROI,"ax",@progbits
	.align 1
	.global	VL53L1_GetUserROI
	.type	VL53L1_GetUserROI, @function
VL53L1_GetUserROI:
.LFB39:
	.loc 1 1620 0
.LVL205:
	sub.a	%SP, 8
.LCFI7:
	.loc 1 1620 0
	mov.aa	%a15, %a5
	.loc 1 1624 0
	lea	%a5, [%SP] 4
.LVL206:
	call	VL53L1_get_user_zone
.LVL207:
	.loc 1 1626 0
	ld.bu	%d6, [%SP] 4
	ld.bu	%d3, [%SP] 6
	sh	%d6, 1
	sub	%d15, %d6, %d3
	sha	%d15, -1
	.loc 1 1627 0
	ld.bu	%d5, [%SP] 5
	.loc 1 1628 0
	add	%d3, %d6
	.loc 1 1626 0
	st.b	[%a15]0, %d15
	.loc 1 1627 0
	ld.bu	%d15, [%SP] 7
	sh	%d5, 1
	add	%d4, %d15, %d5
	.loc 1 1629 0
	sub	%d15, %d5, %d15
	.loc 1 1627 0
	sha	%d4, -1
	.loc 1 1628 0
	sha	%d3, -1
	.loc 1 1629 0
	sha	%d15, -1
	.loc 1 1627 0
	st.b	[%a15] 1, %d4
	.loc 1 1628 0
	st.b	[%a15] 2, %d3
	.loc 1 1629 0
	st.b	[%a15] 3, %d15
	.loc 1 1633 0
	ret
.LFE39:
	.size	VL53L1_GetUserROI, .-VL53L1_GetUserROI
.section .text.VL53L1_GetNumberOfSequenceSteps,"ax",@progbits
	.align 1
	.global	VL53L1_GetNumberOfSequenceSteps
	.type	VL53L1_GetNumberOfSequenceSteps, @function
VL53L1_GetNumberOfSequenceSteps:
.LFB40:
	.loc 1 1644 0
.LVL208:
	.loc 1 1651 0
	mov	%d15, 8
	.loc 1 1655 0
	mov	%d2, 0
	.loc 1 1651 0
	st.b	[%a5]0, %d15
	.loc 1 1655 0
	ret
.LFE40:
	.size	VL53L1_GetNumberOfSequenceSteps, .-VL53L1_GetNumberOfSequenceSteps
.section .text.VL53L1_GetSequenceStepsInfo,"ax",@progbits
	.align 1
	.global	VL53L1_GetSequenceStepsInfo
	.type	VL53L1_GetSequenceStepsInfo, @function
VL53L1_GetSequenceStepsInfo:
.LFB41:
	.loc 1 1659 0
.LVL209:
	.loc 1 1664 0
	j	VL53L1_get_sequence_steps_info
.LVL210:
.LFE41:
	.size	VL53L1_GetSequenceStepsInfo, .-VL53L1_GetSequenceStepsInfo
.section .text.VL53L1_SetSequenceStepEnable,"ax",@progbits
	.align 1
	.global	VL53L1_SetSequenceStepEnable
	.type	VL53L1_SetSequenceStepEnable, @function
VL53L1_SetSequenceStepEnable:
.LFB42:
	.loc 1 1675 0
.LVL211:
	.loc 1 1675 0
	mov.aa	%a15, %a4
	.loc 1 1685 0
	call	VL53L1_set_sequence_config_bit
.LVL212:
	mov	%d15, %d2
.LVL213:
	.loc 1 1690 0
	jnz	%d2, .L181
.LVL214:
	.loc 1 1696 0
	ld.w	%d4, [%a15] 896
	mov.aa	%a4, %a15
	call	VL53L1_SetMeasurementTimingBudgetMicroSeconds
.LVL215:
.L181:
	.loc 1 1703 0
	mov	%d2, %d15
	ret
.LFE42:
	.size	VL53L1_SetSequenceStepEnable, .-VL53L1_SetSequenceStepEnable
.section .text.VL53L1_GetSequenceStepEnable,"ax",@progbits
	.align 1
	.global	VL53L1_GetSequenceStepEnable
	.type	VL53L1_GetSequenceStepEnable, @function
VL53L1_GetSequenceStepEnable:
.LFB43:
	.loc 1 1708 0
.LVL216:
	.loc 1 1713 0
	j	VL53L1_get_sequence_config_bit
.LVL217:
.LFE43:
	.size	VL53L1_GetSequenceStepEnable, .-VL53L1_GetSequenceStepEnable
.section .text.VL53L1_StartMeasurement,"ax",@progbits
	.align 1
	.global	VL53L1_StartMeasurement
	.type	VL53L1_StartMeasurement, @function
VL53L1_StartMeasurement:
.LFB44:
	.loc 1 1731 0
.LVL218:
	.loc 1 1739 0
	ld.bu	%d15, [%a4] 888
	.loc 1 1731 0
	mov.aa	%a15, %a4
	.loc 1 1739 0
	jge.u	%d15, 6, .L185
	jge.u	%d15, 4, .L190
	jlt.u	%d15, 3, .L190
.LVL219:
	.loc 1 1759 0
	ld.bu	%d4, [%a4] 2
	mov	%d5, 6
	call	VL53L1_init_and_start_range
.LVL220:
	.loc 1 1765 0
	jnz	%d2, .L191
	.loc 1 1766 0
	mov	%d15, 4
	st.b	[%a15] 888, %d15
	ret
.LVL221:
.L185:
	.loc 1 1739 0
	addi	%d15, %d15, -98
	.loc 1 1753 0
	mov	%d2, -3
	.loc 1 1739 0
	jlt.u	%d15, 2, .L190
.LVL222:
.L191:
	.loc 1 1771 0
	ret
.LVL223:
.L190:
	.loc 1 1750 0
	mov	%d2, -14
	ret
.LFE44:
	.size	VL53L1_StartMeasurement, .-VL53L1_StartMeasurement
.section .text.VL53L1_StopMeasurement,"ax",@progbits
	.align 1
	.global	VL53L1_StopMeasurement
	.type	VL53L1_StopMeasurement, @function
VL53L1_StopMeasurement:
.LFB45:
	.loc 1 1774 0
.LVL224:
	.loc 1 1774 0
	mov.aa	%a15, %a4
	.loc 1 1779 0
	call	VL53L1_stop_range
.LVL225:
	.loc 1 1782 0
	jnz	%d2, .L194
	.loc 1 1783 0
	mov	%d15, 3
	st.b	[%a15] 888, %d15
.L194:
	.loc 1 1787 0
	ret
.LFE45:
	.size	VL53L1_StopMeasurement, .-VL53L1_StopMeasurement
.section .text.VL53L1_ClearInterruptAndStartMeasurement,"ax",@progbits
	.align 1
	.global	VL53L1_ClearInterruptAndStartMeasurement
	.type	VL53L1_ClearInterruptAndStartMeasurement, @function
VL53L1_ClearInterruptAndStartMeasurement:
.LFB47:
	.loc 1 1863 0
.LVL226:
	.loc 1 1877 0
	ld.bu	%d2, [%a4] 895
	ld.bu	%d15, [%a4] 894
	.loc 1 1863 0
	sub.a	%SP, 16
.LCFI8:
	.loc 1 1863 0
	mov.aa	%a15, %a4
	.loc 1 1871 0
	ld.bu	%d4, [%a4] 2
.LVL227:
	.loc 1 1877 0
	jeq	%d2, %d15, .L196
.LVL228:
.LBB84:
.LBB85:
	.loc 1 1803 0
	lea	%a5, [%SP] 12
	call	VL53L1_get_user_zone
.LVL229:
	.loc 1 1805 0
	ld.bu	%d8, [%a15] 892
.LVL230:
	.loc 1 1807 0
	ld.bu	%d15, [%a15] 895
.LVL231:
	.loc 1 1810 0
	jz	%d2, .L204
.LVL232:
.L203:
.LBE85:
.LBE84:
	.loc 1 1886 0
	ret
.LVL233:
.L196:
	.loc 1 1880 0
	call	VL53L1_clear_interrupt_and_enable_next_range
.LVL234:
	.loc 1 1886 0
	ret
.LVL235:
.L204:
.LBB87:
.LBB86:
	.loc 1 1811 0
	mov.aa	%a4, %a15
	lea	%a5, [%SP] 8
	lea	%a6, [%SP] 4
	mov.aa	%a7, %SP
	call	VL53L1_get_timeouts_us
.LVL236:
	.loc 1 1814 0
	jnz	%d2, .L203
	.loc 1 1815 0
	mov.aa	%a4, %a15
	call	VL53L1_stop_range
.LVL237:
	.loc 1 1817 0
	jnz	%d2, .L203
	.loc 1 1818 0
	mov.aa	%a4, %a15
	mov	%d4, 500
	call	VL53L1_WaitUs
.LVL238:
	.loc 1 1820 0
	jnz	%d2, .L203
.LVL239:
	.loc 1 1824 0
	ld.w	%d6, [%a15] 20
	mov.aa	%a4, %a15
	mov	%e4, %d15, %d8
	call	SetPresetMode
.LVL240:
	.loc 1 1830 0
	jnz	%d2, .L203
	.loc 1 1831 0
	ld.w	%d4, [%SP] 8
	ld.w	%d5, [%SP] 4
	ld.w	%d6, [%SP]0
	mov.aa	%a4, %a15
	call	VL53L1_set_timeouts_us
.LVL241:
	.loc 1 1834 0
	jnz	%d2, .L203
	.loc 1 1835 0
	ld.w	%d2, [%SP]0
.LVL242:
	st.w	[%a15] 16, %d2
.LVL243:
	.loc 1 1840 0
	mov.aa	%a4, %a15
	lea	%a5, [%SP] 12
	call	VL53L1_set_user_zone
.LVL244:
	.loc 1 1842 0
	jnz	%d2, .L203
.LVL245:
	.loc 1 1846 0
	ld.bu	%d4, [%a15] 2
	mov.aa	%a4, %a15
	mov	%d5, 6
	call	VL53L1_init_and_start_range
.LVL246:
	.loc 1 1852 0
	jnz	%d2, .L203
	.loc 1 1853 0
	st.b	[%a15] 894, %d15
.LVL247:
	ret
.LBE86:
.LBE87:
.LFE47:
	.size	VL53L1_ClearInterruptAndStartMeasurement, .-VL53L1_ClearInterruptAndStartMeasurement
.section .text.VL53L1_GetMeasurementDataReady,"ax",@progbits
	.align 1
	.global	VL53L1_GetMeasurementDataReady
	.type	VL53L1_GetMeasurementDataReady, @function
VL53L1_GetMeasurementDataReady:
.LFB48:
	.loc 1 1891 0
.LVL248:
	.loc 1 1896 0
	j	VL53L1_is_new_data_ready
.LVL249:
.LFE48:
	.size	VL53L1_GetMeasurementDataReady, .-VL53L1_GetMeasurementDataReady
.section .text.VL53L1_WaitMeasurementDataReady,"ax",@progbits
	.align 1
	.global	VL53L1_WaitMeasurementDataReady
	.type	VL53L1_WaitMeasurementDataReady, @function
VL53L1_WaitMeasurementDataReady:
.LFB49:
	.loc 1 1903 0
.LVL250:
	.loc 1 1912 0
	mov	%d4, 2000
	j	VL53L1_poll_for_range_completion
.LVL251:
.LFE49:
	.size	VL53L1_WaitMeasurementDataReady, .-VL53L1_WaitMeasurementDataReady
.section .text.VL53L1_GetRangingMeasurementData,"ax",@progbits
	.align 1
	.global	VL53L1_GetRangingMeasurementData
	.type	VL53L1_GetRangingMeasurementData, @function
VL53L1_GetRangingMeasurementData:
.LFB53:
	.loc 1 2140 0
.LVL252:
	.loc 1 2150 0
	mov.aa	%a2, %a5
	.loc 1 2140 0
	sub.a	%SP, 136
.LCFI9:
.LVL253:
	.loc 1 2140 0
	mov.aa	%a15, %a5
	.loc 1 2150 0
	mov	%d2, -1
	lea	%a3, 28-1
	0:
	st.b	[%a2+]1, %d2
	loop	%a3, 0b
	.loc 1 2154 0
	mov	%d4, 0
	lea	%a5, [%SP] 4
.LVL254:
	.loc 1 2140 0
	mov.aa	%a12, %a4
	.loc 1 2154 0
	call	VL53L1_get_device_results
.LVL255:
	mov	%d15, %d2
.LVL256:
	.loc 1 2159 0
	jz	%d2, .L228
.LVL257:
.L208:
	.loc 1 2174 0
	mov	%d2, %d15
	ret
.LVL258:
.L228:
	.loc 1 2160 0
	ld.bu	%d2, [%SP] 6
.LVL259:
.LBB98:
.LBB99:
	.loc 1 2027 0
	ld.bu	%d8, [%SP] 70
.LBE99:
.LBE98:
	.loc 1 2160 0
	st.b	[%a15] 4, %d2
.LVL260:
.LBB106:
.LBB104:
	.loc 1 2025 0
	ld.w	%d2, [%SP] 12
	st.w	[%a15]0, %d2
	.loc 1 2027 0
	and	%d8, %d8, 31
.LBE104:
.LBE106:
	.loc 1 2166 0
	ld.bu	%d7, [%SP] 7
.LVL261:
	ld.h	%d2, [%SP] 68
	ld.hu	%d3, [%SP] 64
.LBB107:
.LBB105:
.LBB100:
.LBB101:
	.loc 1 1939 0
	mov	%d5, 50
	.loc 1 1938 0
	jeq	%d8, 7, .L210
	.loc 1 1941 0
	mov	%d3, 300
	movh	%d4, 15
	.loc 1 1942 0
	movh	%d5, 30
	.loc 1 1941 0
	jge	%d2, %d3, .L229
.L211:
.LVL262:
	.loc 1 1948 0
	ld.hu	%d3, [%SP] 64
.LVL263:
	.loc 1 1949 0
	movh	%d6, 49
	addi	%d6, %d6, -13107
	madd	%d4, %d4, %d3, %d6
.LVL264:
	.loc 1 1952 0
	movh	%d6, 118
	addi	%d6, %d6, -19660
	.loc 1 1950 0
	div.u	%e4, %d4, %d5
.LVL265:
	.loc 1 1960 0
	mov	%d5, 50
.LVL266:
	.loc 1 1951 0
	sh	%d4, %d4, 16
.LVL267:
	.loc 1 1952 0
	jge.u	%d4, %d6, .L210
.LVL268:
	.loc 1 1953 0
	add	%d6, -1
	sub	%d4, %d6, %d4
.LVL269:
	.loc 1 1959 0
	sh	%d4, %d4, -16
	and	%d6, %d4, 255
.LVL270:
	.loc 1 1960 0
	min.u	%d6, %d6, 100
	lt.u	%d4, %d4, 51
.LVL271:
	seln	%d5, %d4, %d6, %d5
.L210:
.LVL272:
.LBE101:
.LBE100:
	.loc 1 2029 0
	st.b	[%a15] 5, %d5
	.loc 1 2038 0
	ld.hu	%d5, [%SP] 56
.LVL273:
	.loc 1 2033 0
	ld.hu	%d4, [%SP] 52
	.loc 1 2038 0
	sh	%d5, %d5, 9
	.loc 1 2033 0
	sh	%d4, %d4, 9
.LVL274:
	.loc 1 2045 0
	sh	%d3, %d3, 9
	.loc 1 2050 0
	st.h	[%a15] 24, %d2
	.loc 1 2052 0
	mov	%d2, 0
	.loc 1 2040 0
	st.w	[%a15] 12, %d5
	.loc 1 2042 0
	ld.h	%d5, [%SP] 24
	st.h	[%a15] 16, %d5
	.loc 1 2055 0
	addi	%d5, %d7, -1
	.loc 1 2052 0
	st.b	[%a15] 26, %d2
	.loc 1 2036 0
	st.w	[%a15] 8, %d4
.LVL275:
	.loc 1 2048 0
	st.w	[%a15] 20, %d3
	.loc 1 2055 0
	ge.u	%d2, %d5, 17
	jz	%d2, .L230
.L212:
.LVL276:
	addi	%d6, %d8, -4
	and	%d6, %d6, 255
	ge.u	%d5, %d6, 16
	mov	%d2, 255
	jnz	%d5, .L217
	movh.a	%a2, hi:CSWTCH.59
	lea	%a2, [%a2] lo:CSWTCH.59
	addsc.a	%a2, %a2, %d6, 0
	ld.bu	%d2, [%a2]0
.L217:
.LVL277:
	.loc 1 2071 0
	st.b	[%a15] 27, %d2
.LVL278:
.L220:
	.loc 1 2078 0
	st.w	[%a12] 912, %d3
.LVL279:
	.loc 1 2084 0
	st.w	[%a12] 916, %d4
	.loc 1 2090 0
	mov.aa	%a4, %a12
	mov	%d4, 0
.LVL280:
	mov.aa	%a5, %SP
	call	VL53L1_GetLimitCheckValue
.LVL281:
	.loc 1 2102 0
	ld.bu	%d3, [%a12] 900
	.loc 1 2107 0
	mov.aa	%a4, %a12
	.loc 1 2102 0
	eq	%d2, %d3, 1
	and.eq	%d2, %d8, 6
	.loc 1 2107 0
	mov	%d4, 1
	mov.aa	%a5, %SP
	.loc 1 2103 0
	st.b	[%a12] 902, %d2
	.loc 1 2107 0
	call	VL53L1_GetLimitCheckValue
.LVL282:
	.loc 1 2119 0
	ld.bu	%d3, [%a12] 901
	eq	%d2, %d3, 1
	and.eq	%d2, %d8, 4
	.loc 1 2120 0
	st.b	[%a12] 903, %d2
	.loc 1 2124 0
	ld.bu	%d3, [%a15] 27
	.loc 1 2123 0
	ld.h	%d2, [%a15] 24
.LVL283:
	.loc 1 2124 0
	eq	%d3, %d3, 0
	and.t	%d3, %d2,31, %d3,0
	jz	%d3, .L208
	.loc 1 2126 0
	movh.a	%a2, hi:BDTable
	lea	%a2, [%a2] lo:BDTable
	ld.w	%d3, [%a2] 4
	jlt	%d2, %d3, .L231
	.loc 1 2130 0
	mov	%d2, 0
	st.h	[%a15] 24, %d2
.LVL284:
	j	.L208
.LVL285:
.L230:
	.loc 1 2055 0
	movh.a	%a2, hi:.L214
	lea	%a2, [%a2] lo:.L214
	addsc.a	%a2, %a2, %d5, 2
	ji	%a2
	.align 2
	.align 2
.L214:
	.code32
	j	.L213
	.code32
	j	.L213
	.code32
	j	.L213
	.code32
	j	.L212
	.code32
	j	.L212
	.code32
	j	.L212
	.code32
	j	.L212
	.code32
	j	.L212
	.code32
	j	.L212
	.code32
	j	.L212
	.code32
	j	.L212
	.code32
	j	.L212
	.code32
	j	.L215
	.code32
	j	.L212
	.code32
	j	.L212
	.code32
	j	.L212
	.code32
	j	.L213
.LVL286:
.L229:
.LBB103:
.LBB102:
	.loc 1 1944 0
	mov	%d4, 6554
	mul	%d5, %d2, %d4
.LVL287:
	sh	%d4, %d5, -1
	j	.L211
.LVL288:
.L215:
.LBE102:
.LBE103:
	.loc 1 2063 0
	mov	%d2, 13
	st.b	[%a15] 27, %d2
	j	.L220
.L213:
	.loc 1 2060 0
	mov	%d2, 5
	st.b	[%a15] 27, %d2
	j	.L220
.LVL289:
.L231:
	.loc 1 2127 0
	mov	%d2, 14
	st.b	[%a15] 27, %d2
.LVL290:
	j	.L208
.LBE105:
.LBE107:
.LFE53:
	.size	VL53L1_GetRangingMeasurementData, .-VL53L1_GetRangingMeasurementData
.section .text.VL53L1_SetTuningParameter,"ax",@progbits
	.align 1
	.global	VL53L1_SetTuningParameter
	.type	VL53L1_SetTuningParameter, @function
VL53L1_SetTuningParameter:
.LFB54:
	.loc 1 2186 0
.LVL291:
	.loc 1 2191 0
	extr	%d2, %d4, 0, 16
	jltz	%d2, .L236
	.loc 1 2199 0
	mov	%d2, -4
	.loc 1 2196 0
	jge.u	%d4, 7, .L234
	.loc 1 2197 0
	movh.a	%a15, hi:BDTable
	lea	%a15, [%a15] lo:BDTable
	addsc.a	%a15, %a15, %d4, 2
	.loc 1 2187 0
	mov	%d2, 0
	.loc 1 2197 0
	st.w	[%a15]0, %d5
.L234:
.LVL292:
	.loc 1 2204 0
	ret
.LVL293:
.L236:
	.loc 1 2192 0
	j	VL53L1_set_tuning_parm
.LVL294:
.LFE54:
	.size	VL53L1_SetTuningParameter, .-VL53L1_SetTuningParameter
.section .text.VL53L1_GetTuningParameter,"ax",@progbits
	.align 1
	.global	VL53L1_GetTuningParameter
	.type	VL53L1_GetTuningParameter, @function
VL53L1_GetTuningParameter:
.LFB55:
	.loc 1 2208 0
.LVL295:
	.loc 1 2213 0
	extr	%d2, %d4, 0, 16
	jltz	%d2, .L241
	.loc 1 2221 0
	mov	%d2, -4
	.loc 1 2218 0
	jge.u	%d4, 7, .L239
	.loc 1 2219 0
	movh.a	%a15, hi:BDTable
	lea	%a15, [%a15] lo:BDTable
	addsc.a	%a15, %a15, %d4, 2
	.loc 1 2209 0
	mov	%d2, 0
	.loc 1 2219 0
	ld.w	%d15, [%a15]0
	st.w	[%a5]0, %d15
.L239:
.LVL296:
	.loc 1 2226 0
	ret
.LVL297:
.L241:
	.loc 1 2214 0
	j	VL53L1_get_tuning_parm
.LVL298:
.LFE55:
	.size	VL53L1_GetTuningParameter, .-VL53L1_GetTuningParameter
.section .text.VL53L1_PerformRefSpadManagement,"ax",@progbits
	.align 1
	.global	VL53L1_PerformRefSpadManagement
	.type	VL53L1_PerformRefSpadManagement, @function
VL53L1_PerformRefSpadManagement:
.LFB56:
	.loc 1 2230 0
.LVL299:
	.loc 1 2242 0
	mov	%d15, 5
	.loc 1 2230 0
	sub.a	%SP, 32
.LCFI10:
	.loc 1 2255 0
	lea	%a5, [%SP] 5
	.loc 1 2242 0
	st.b	[%SP] 6, %d15
	mov	%d15, 3
	.loc 1 2230 0
	mov.aa	%a15, %a4
	.loc 1 2242 0
	st.b	[%SP] 7, %d15
.LVL300:
	.loc 1 2254 0
	ld.bu	%d15, [%a4] 892
.LVL301:
	.loc 1 2255 0
	call	VL53L1_run_ref_spad_char
.LVL302:
	.loc 1 2259 0
	jz	%d2, .L264
	.loc 1 2263 0
	ne	%d15, %d2, -29
.LVL303:
	jz	%d15, .L265
.LVL304:
.L262:
	.loc 1 2309 0
	ret
.LVL305:
.L264:
	.loc 1 2260 0
	mov	%d4, %d15
	mov.aa	%a4, %a15
	call	VL53L1_SetPresetMode
.LVL306:
	.loc 1 2263 0
	ne	%d15, %d2, -29
.LVL307:
	jnz	%d15, .L262
.LVL308:
.L265:
.LBB116:
.LBB117:
.LBB118:
.LBB119:
	.loc 1 168 0
	mov.aa	%a4, %a15
	call	VL53L1_disable_firmware
.LVL309:
	.loc 1 173 0
	jnz	%d2, .L262
	.loc 1 174 0
	mov.aa	%a4, %a15
	call	VL53L1_enable_powerforce
.LVL310:
	.loc 1 180 0
	jnz	%d2, .L262
	.loc 1 181 0
	mov.aa	%a4, %a15
	mov	%d4, 250
	call	VL53L1_WaitUs
.LVL311:
	.loc 1 187 0
	jnz	%d2, .L262
	.loc 1 188 0
	mov.aa	%a4, %a15
	mov	%d4, 1921
	mov	%d5, 1
	call	VL53L1_WrByte
.LVL312:
	.loc 1 195 0
	jnz	%d2, .L262
	.loc 1 196 0
	mov.aa	%a4, %a15
	mov	%d4, 1667
	mov	%d5, 5
	call	VL53L1_WrByte
.LVL313:
	.loc 1 203 0
	jnz	%d2, .L262
	.loc 1 204 0
	mov.aa	%a4, %a15
	mov	%d4, 50
	call	VL53L1_WaitUs
.LVL314:
	.loc 1 210 0
	jnz	%d2, .L262
	.loc 1 211 0
	mov.aa	%a4, %a15
	mov	%d4, 1920
	mov	%d5, 1
	call	VL53L1_WrByte
.LVL315:
	.loc 1 216 0
	jnz	%d2, .L262
	.loc 1 217 0
	mov.aa	%a4, %a15
	mov	%d4, 1924
	mov	%d5, 4
	call	VL53L1_WrWord
.LVL316:
.LBE119:
.LBE118:
	.loc 1 371 0
	jnz	%d2, .L262
	mov	%d15, 6
	j	.L256
.LVL317:
.L255:
	add	%d15, -1
.LVL318:
.LBB120:
.LBB121:
	.loc 1 249 0
	jz	%d15, .L266
.LVL319:
.L256:
	mul	%d3, %d15, -4
	rsub	%d5, %d15, 46
	and	%d5, %d5, 255
	mov.a	%a2, %d3
	lea	%a12, [%a2] 24
	lea	%a2, [%SP] 8
.LVL320:
	add.a	%a12, %a2
.LVL321:
	.loc 1 253 0
	jnz	%d2, .L255
.LVL322:
	.loc 1 254 0
	mov.aa	%a4, %a15
	mov	%d4, 1940
	call	VL53L1_WrByte
.LVL323:
	.loc 1 261 0
	jnz	%d2, .L255
	.loc 1 262 0
	mov.aa	%a4, %a15
	mov	%e4, 1923
	call	VL53L1_WrByte
.LVL324:
	.loc 1 269 0
	jnz	%d2, .L255
	.loc 1 270 0
	mov.aa	%a4, %a15
	mov	%d4, 5
	call	VL53L1_WaitUs
.LVL325:
	.loc 1 274 0
	jnz	%d2, .L255
	.loc 1 275 0
	mov.aa	%a4, %a15
	mov	%d4, 1923
	mov	%d5, 1
	call	VL53L1_WrByte
.LVL326:
	.loc 1 281 0
	jnz	%d2, .L255
	.loc 1 282 0
	mov.aa	%a4, %a15
	mov	%d4, 1936
	mov.aa	%a5, %a12
	mov	%d5, 4
	call	VL53L1_ReadMulti
.LVL327:
	j	.L255
.LVL328:
.L266:
.LBE121:
.LBE120:
	.loc 1 382 0
	jnz	%d2, .L262
.LVL329:
.LBB122:
.LBB123:
	.loc 1 312 0
	mov.aa	%a4, %a15
	mov	%d4, 1923
	mov	%d5, 1
	call	VL53L1_WrByte
.LVL330:
	.loc 1 319 0
	jnz	%d2, .L262
	.loc 1 320 0
	mov.aa	%a4, %a15
	mov	%e4, 1921
	call	VL53L1_WrByte
.LVL331:
	.loc 1 327 0
	jnz	%d2, .L262
	.loc 1 328 0
	mov.aa	%a4, %a15
	call	VL53L1_disable_powerforce
.LVL332:
	.loc 1 332 0
	jnz	%d2, .L262
	.loc 1 333 0
	mov.aa	%a4, %a15
	call	VL53L1_enable_firmware
.LVL333:
.LBE123:
.LBE122:
.LBE117:
.LBE116:
	.loc 1 2272 0
	jnz	%d2, .L262
	.loc 1 2273 0
	mov.aa	%a4, %a15
	mov	%d4, 20
	lea	%a5, [%SP] 6
	mov	%d5, 2
	call	VL53L1_WriteMulti
.LVL334:
	.loc 1 2277 0
	jnz	%d2, .L262
	.loc 1 2278 0
	ld.bu	%d15, [%SP] 6
.LVL335:
	st.b	[%a15] 73, %d15
	.loc 1 2279 0
	ld.bu	%d15, [%SP] 7
	st.b	[%a15] 74, %d15
.LVL336:
	.loc 1 2290 0
	mov.aa	%a4, %a15
	mov	%d4, 13
	lea	%a5, [%SP] 24
.LVL337:
	mov	%d5, 6
	call	VL53L1_WriteMulti
.LVL338:
	.loc 1 2294 0
	jnz	%d2, .L262
	.loc 1 2295 0
	ld.bu	%d15, [%SP] 24
	st.b	[%a15] 66, %d15
	.loc 1 2296 0
	ld.bu	%d15, [%SP] 25
	st.b	[%a15] 67, %d15
	.loc 1 2297 0
	ld.bu	%d15, [%SP] 26
	st.b	[%a15] 68, %d15
	.loc 1 2298 0
	ld.bu	%d15, [%SP] 27
	st.b	[%a15] 69, %d15
	.loc 1 2299 0
	ld.bu	%d15, [%SP] 28
	st.b	[%a15] 70, %d15
	.loc 1 2300 0
	ld.bu	%d15, [%SP] 29
	st.b	[%a15] 71, %d15
	.loc 1 2309 0
	ret
.LFE56:
	.size	VL53L1_PerformRefSpadManagement, .-VL53L1_PerformRefSpadManagement
.section .text.VL53L1_SetXTalkCompensationEnable,"ax",@progbits
	.align 1
	.global	VL53L1_SetXTalkCompensationEnable
	.type	VL53L1_SetXTalkCompensationEnable, @function
VL53L1_SetXTalkCompensationEnable:
.LFB57:
	.loc 1 2314 0
.LVL339:
	.loc 1 2319 0
	jz	%d4, .L269
	.loc 1 2322 0
	j	VL53L1_enable_xtalk_compensation
.LVL340:
.L269:
	.loc 1 2320 0
	j	VL53L1_disable_xtalk_compensation
.LVL341:
.LFE57:
	.size	VL53L1_SetXTalkCompensationEnable, .-VL53L1_SetXTalkCompensationEnable
.section .text.VL53L1_GetXTalkCompensationEnable,"ax",@progbits
	.align 1
	.global	VL53L1_GetXTalkCompensationEnable
	.type	VL53L1_GetXTalkCompensationEnable, @function
VL53L1_GetXTalkCompensationEnable:
.LFB58:
	.loc 1 2331 0
.LVL342:
	.loc 1 2336 0
	call	VL53L1_get_xtalk_compensation_enable
.LVL343:
	.loc 1 2342 0
	mov	%d2, 0
	ret
.LFE58:
	.size	VL53L1_GetXTalkCompensationEnable, .-VL53L1_GetXTalkCompensationEnable
.section .text.VL53L1_SetOffsetCalibrationMode,"ax",@progbits
	.align 1
	.global	VL53L1_SetOffsetCalibrationMode
	.type	VL53L1_SetOffsetCalibrationMode, @function
VL53L1_SetOffsetCalibrationMode:
.LFB60:
	.loc 1 2365 0
.LVL344:
	.loc 1 2371 0
	jeq	%d4, 1, .L273
	.loc 1 2373 0
	jeq	%d4, 2, .L277
	.loc 1 2387 0
	mov	%d2, -4
	ret
.L273:
	.loc 1 2372 0
	mov	%d4, 1
.LVL345:
	.loc 1 2382 0
	j	VL53L1_set_offset_calibration_mode
.LVL346:
.L277:
	.loc 1 2375 0
	mov	%d4, 3
.LVL347:
	.loc 1 2382 0
	j	VL53L1_set_offset_calibration_mode
.LVL348:
.LFE60:
	.size	VL53L1_SetOffsetCalibrationMode, .-VL53L1_SetOffsetCalibrationMode
.section .text.VL53L1_PerformOffsetCalibration,"ax",@progbits
	.align 1
	.global	VL53L1_PerformOffsetCalibration
	.type	VL53L1_PerformOffsetCalibration, @function
VL53L1_PerformOffsetCalibration:
.LFB61:
	.loc 1 2393 0
.LVL349:
	sub.a	%SP, 8
.LCFI11:
	.loc 1 2401 0
	lea	%a5, [%SP] 7
	.loc 1 2393 0
	mov.aa	%a15, %a4
	mov	%d8, %d4
	.loc 1 2401 0
	call	VL53L1_get_offset_calibration_mode
.LVL350:
	.loc 1 2404 0
	jnz	%d2, .L279
	.loc 1 2410 0
	ld.bu	%d15, [%SP] 7
	.loc 1 2420 0
	mov	%d2, -4
.LVL351:
	.loc 1 2409 0
	and	%d15, %d15, 253
	jne	%d15, 1, .L279
	.loc 1 2415 0
	extr	%d4, %d8, 0, 16
	mov.aa	%a4, %a15
	lea	%a5, [%SP] 6
	call	VL53L1_run_offset_calibration
.LVL352:
.L279:
	.loc 1 2424 0
	ret
.LFE61:
	.size	VL53L1_PerformOffsetCalibration, .-VL53L1_PerformOffsetCalibration
.section .text.VL53L1_PerformOffsetSimpleCalibration,"ax",@progbits
	.align 1
	.global	VL53L1_PerformOffsetSimpleCalibration
	.type	VL53L1_PerformOffsetSimpleCalibration, @function
VL53L1_PerformOffsetSimpleCalibration:
.LFB62:
	.loc 1 2439 0
.LVL353:
	.loc 1 2454 0
	mov	%d15, 0
	.loc 1 2458 0
	movh.a	%a2, hi:BDTable
	lea	%a2, [%a2] lo:BDTable
	.loc 1 2454 0
	st.h	[%a4] 84, %d15
	.loc 1 2455 0
	st.h	[%a4] 86, %d15
	.loc 1 2456 0
	st.h	[%a4] 88, %d15
	.loc 1 2458 0
	ld.bu	%d10, [%a2] 20
.LVL354:
	.loc 1 2439 0
	sub.a	%SP, 32
.LCFI12:
	.loc 1 2439 0
	mov.aa	%a15, %a4
	mov	%d12, %d4
	.loc 1 2460 0
	call	VL53L1_StartMeasurement
.LVL355:
	mov	%d15, %d2
.LVL356:
	.loc 1 2464 0
	ne	%d2, %d10, 0
.LVL357:
	and.eq	%d2, %d15, 0
	jz	%d2, .L282
	mov	%d11, 0
	mov	%e8, 0
.LVL358:
.L288:
.LBB124:
.LBB125:
	.loc 1 1912 0
	mov.aa	%a4, %a15
	mov	%d4, 2000
	call	VL53L1_poll_for_range_completion
.LVL359:
	mov	%d15, %d2
.LVL360:
.LBE125:
.LBE124:
	.loc 1 2466 0
	jz	%d2, .L297
.LVL361:
.L289:
.LBB126:
.LBB127:
	.loc 1 1779 0
	mov.aa	%a4, %a15
	call	VL53L1_stop_range
.LVL362:
	.loc 1 1782 0
	jz	%d2, .L290
.LVL363:
.L285:
.LBE127:
.LBE126:
	.loc 1 2489 0
	sel	%d15, %d8, %d15, -24
.LVL364:
	.loc 1 2493 0
	jltz	%d9, .L293
	.loc 1 2494 0 discriminator 1
	sh	%d2, %d8, 16
	sub	%d2, %d8
	.loc 1 2493 0 discriminator 1
	jge	%d2, %d9, .L298
.L293:
	mov	%d15, -32
.LVL365:
.L295:
	.loc 1 2511 0
	mov	%d2, %d15
	ret
.LVL366:
.L282:
.LBB130:
.LBB128:
	.loc 1 1779 0
	mov.aa	%a4, %a15
	call	VL53L1_stop_range
.LVL367:
	.loc 1 1782 0
	jnz	%d2, .L299
.LBE128:
.LBE130:
	.loc 1 2461 0
	mov	%e8, 0
.LVL368:
.L290:
.LBB131:
.LBB129:
	.loc 1 1783 0
	mov	%d2, 3
.LVL369:
	st.b	[%a15] 888, %d2
	j	.L285
.LVL370:
.L297:
.LBE129:
.LBE131:
	.loc 1 2467 0
	mov.aa	%a4, %a15
	lea	%a5, [%SP] 4
	call	VL53L1_GetRangingMeasurementData
.LVL371:
	mov	%d15, %d2
.LVL372:
	.loc 1 2470 0
	jnz	%d2, .L289
	.loc 1 2471 0
	ld.bu	%d15, [%SP] 31
	jnz	%d15, .L284
	.loc 1 2473 0
	ld.h	%d15, [%SP] 28
	.loc 1 2475 0
	add	%d8, 1
.LVL373:
	.loc 1 2473 0
	add	%d9, %d15
.LVL374:
	.loc 1 2475 0
	and	%d8, %d8, 255
.LVL375:
.L284:
	.loc 1 2479 0
	mov.aa	%a4, %a15
	call	VL53L1_ClearInterruptAndStartMeasurement
.LVL376:
	addi	%d3, %d11, 1
	.loc 1 2464 0
	and	%d5, %d3, 255
	.loc 1 2479 0
	mov	%d15, %d2
.LVL377:
	.loc 1 2464 0
	lt.u	%d2, %d5, %d10
.LVL378:
	and.eq	%d2, %d15, 0
.LVL379:
	mov	%d11, %d3
	jnz	%d2, .L288
	j	.L289
.LVL380:
.L298:
	.loc 1 2498 0
	jnz	%d15, .L295
.LVL381:
	.loc 1 2499 0
	div	%e8, %d9, %d8
.LVL382:
	.loc 1 2501 0
	st.h	[%a15] 84, %d15
	.loc 1 2505 0
	mov.aa	%a4, %a15
	.loc 1 2500 0
	sub	%d8, %d12, %d8
	extr	%d8, %d8, 0, 16
.LVL383:
	.loc 1 2505 0
	lea	%a5, [%a15] 66
	.loc 1 2502 0
	st.h	[%a15] 86, %d8
	.loc 1 2503 0
	st.h	[%a15] 88, %d8
	.loc 1 2505 0
	call	VL53L1_set_customer_nvm_managed
.LVL384:
	mov	%d15, %d2
.LVL385:
	.loc 1 2511 0
	mov	%d2, %d15
	ret
.LVL386:
.L299:
	.loc 1 2489 0
	mov	%d15, -24
.LVL387:
	j	.L295
.LFE62:
	.size	VL53L1_PerformOffsetSimpleCalibration, .-VL53L1_PerformOffsetSimpleCalibration
.section .text.VL53L1_SetCalibrationData,"ax",@progbits
	.align 1
	.global	VL53L1_SetCalibrationData
	.type	VL53L1_SetCalibrationData, @function
VL53L1_SetCalibrationData:
.LFB63:
	.loc 1 2515 0
.LVL388:
	.loc 1 2523 0
	mov.aa	%a2, %a5
	ld.w	%d15, [%a2+]32
	.loc 1 2515 0
	sub.a	%SP, 104
.LCFI13:
	.loc 1 2523 0
	addi	%d15, %d15, -16
	.loc 1 2515 0
	mov.aa	%a15, %a5
	.loc 1 2529 0
	lea	%a3, [%SP] 32
	.loc 1 2523 0
	lea	%a5, [%SP] 104
.LVL389:
	st.w	[+%a5]-100, %d15
	.loc 1 2529 0
		# #chunks=8, chunksize=1, remains=0
	lea	%a6, 8-1
	0:
	ld.bu	%d15, [%a2+]1
	st.b	[%a3+]1, %d15
	loop	%a6, 0b
	.loc 1 2535 0
	ld.bu	%d15, [%a15] 40
	st.b	[%SP] 40, %d15
	ld.bu	%d15, [%a15] 41
	st.b	[%SP] 41, %d15
	.loc 1 2541 0
	ld.bu	%d15, [%a15] 42
	st.b	[%SP] 42, %d15
	ld.bu	%d15, [%a15] 43
	st.b	[%SP] 43, %d15
	.loc 1 2547 0
	lea	%a3, [%a15] 44
	lea	%a2, [%SP] 44
		# #chunks=58, chunksize=1, remains=0
	lea	%a6, 58-1
	0:
	ld.bu	%d15, [%a3+]1
	st.b	[%a2+]1, %d15
	loop	%a6, 0b
.LVL390:
	.loc 1 2555 0
	ld.w	%d15, [%a15] 16
	st.h	[%SP] 18, %d15
	.loc 1 2557 0
	ld.bu	%d15, [%a15] 4
	st.b	[%SP] 8, %d15
	.loc 1 2559 0
	ld.bu	%d15, [%a15] 5
	st.b	[%SP] 9, %d15
	.loc 1 2561 0
	ld.bu	%d15, [%a15] 6
	st.b	[%SP] 10, %d15
	.loc 1 2563 0
	ld.bu	%d15, [%a15] 7
	st.b	[%SP] 11, %d15
	.loc 1 2565 0
	ld.bu	%d15, [%a15] 8
	st.b	[%SP] 12, %d15
	.loc 1 2567 0
	ld.bu	%d15, [%a15] 9
	st.b	[%SP] 13, %d15
	.loc 1 2569 0
	ld.bu	%d15, [%a15] 10
	st.b	[%SP] 14, %d15
	.loc 1 2571 0
	ld.bu	%d15, [%a15] 11
	st.b	[%SP] 15, %d15
	.loc 1 2573 0
	ld.bu	%d15, [%a15] 12
	st.b	[%SP] 16, %d15
	.loc 1 2575 0
	ld.h	%d15, [%a15] 20
	st.h	[%SP] 20, %d15
	.loc 1 2577 0
	ld.h	%d15, [%a15] 22
	st.h	[%SP] 22, %d15
	.loc 1 2579 0
	ld.h	%d15, [%a15] 24
	st.h	[%SP] 24, %d15
	.loc 1 2581 0
	ld.h	%d15, [%a15] 26
	st.h	[%SP] 26, %d15
	.loc 1 2583 0
	ld.h	%d15, [%a15] 28
	st.h	[%SP] 28, %d15
	.loc 1 2585 0
	ld.h	%d15, [%a15] 30
	st.h	[%SP] 30, %d15
	.loc 1 2592 0
	j	VL53L1_set_part_to_part_data
.LVL391:
.LFE63:
	.size	VL53L1_SetCalibrationData, .-VL53L1_SetCalibrationData
.section .text.VL53L1_GetCalibrationData,"ax",@progbits
	.align 1
	.global	VL53L1_GetCalibrationData
	.type	VL53L1_GetCalibrationData, @function
VL53L1_GetCalibrationData:
.LFB64:
	.loc 1 2596 0
.LVL392:
	sub.a	%SP, 104
.LCFI14:
	.loc 1 2596 0
	mov.aa	%a15, %a5
	.loc 1 2605 0
	lea	%a5, [%SP] 4
.LVL393:
	call	VL53L1_get_part_to_part_data
.LVL394:
	.loc 1 2607 0
	ld.w	%d3, [%SP] 4
	mov.aa	%a2, %a15
	addi	%d15, %d3, 16
	.loc 1 2612 0
	lea	%a3, [%SP] 32
	.loc 1 2607 0
	st.w	[%a2+]32, %d15
	.loc 1 2612 0
		# #chunks=8, chunksize=1, remains=0
	lea	%a4, 8-1
	0:
	ld.bu	%d15, [%a3+]1
	st.b	[%a2+]1, %d15
	loop	%a4, 0b
	.loc 1 2618 0
	ld.bu	%d15, [%SP] 40
	st.b	[%a15] 40, %d15
	ld.bu	%d15, [%SP] 41
	st.b	[%a15] 41, %d15
	.loc 1 2624 0
	ld.bu	%d15, [%SP] 42
	st.b	[%a15] 42, %d15
	ld.bu	%d15, [%SP] 43
	st.b	[%a15] 43, %d15
	.loc 1 2630 0
	lea	%a2, [%a15] 44
	lea	%a3, [%SP] 44
		# #chunks=58, chunksize=1, remains=0
	lea	%a4, 58-1
	0:
	ld.bu	%d15, [%a3+]1
	st.b	[%a2+]1, %d15
	loop	%a4, 0b
.LVL395:
	.loc 1 2638 0
	ld.bu	%d15, [%SP] 8
	st.b	[%a15] 4, %d15
	.loc 1 2640 0
	ld.bu	%d15, [%SP] 9
	st.b	[%a15] 5, %d15
	.loc 1 2642 0
	ld.bu	%d15, [%SP] 10
	st.b	[%a15] 6, %d15
	.loc 1 2644 0
	ld.bu	%d15, [%SP] 11
	st.b	[%a15] 7, %d15
	.loc 1 2646 0
	ld.bu	%d15, [%SP] 12
	st.b	[%a15] 8, %d15
	.loc 1 2648 0
	ld.bu	%d15, [%SP] 13
	st.b	[%a15] 9, %d15
	.loc 1 2650 0
	ld.bu	%d15, [%SP] 14
	st.b	[%a15] 10, %d15
	.loc 1 2652 0
	ld.bu	%d15, [%SP] 15
	st.b	[%a15] 11, %d15
	.loc 1 2654 0
	ld.bu	%d15, [%SP] 16
	st.b	[%a15] 12, %d15
	.loc 1 2656 0
	ld.h	%d15, [%SP] 20
	st.h	[%a15] 20, %d15
	.loc 1 2658 0
	ld.h	%d15, [%SP] 22
	st.h	[%a15] 22, %d15
	.loc 1 2660 0
	ld.h	%d15, [%SP] 24
	st.h	[%a15] 24, %d15
	.loc 1 2662 0
	ld.h	%d15, [%SP] 26
	st.h	[%a15] 26, %d15
	.loc 1 2664 0
	ld.h	%d15, [%SP] 28
	st.h	[%a15] 28, %d15
	.loc 1 2666 0
	ld.h	%d15, [%SP] 30
	st.h	[%a15] 30, %d15
	.loc 1 2670 0
	ld.hu	%d15, [%SP] 18
	st.w	[%a15] 16, %d15
	.loc 1 2674 0
	ret
.LFE64:
	.size	VL53L1_GetCalibrationData, .-VL53L1_GetCalibrationData
.section .text.VL53L1_PerformSingleTargetXTalkCalibration,"ax",@progbits
	.align 1
	.global	VL53L1_PerformSingleTargetXTalkCalibration
	.type	VL53L1_PerformSingleTargetXTalkCalibration, @function
VL53L1_PerformSingleTargetXTalkCalibration:
.LFB59:
	.loc 1 2346 0
.LVL396:
	sub.a	%SP, 136
.LCFI15:
	.loc 1 2346 0
	mov.aa	%a15, %a4
	.loc 1 2356 0
	mov	%d2, -4
	.loc 1 2351 0
	jlez	%d4, .L318
.L304:
.LBB138:
.LBB139:
	.loc 1 422 0
	ld.bu	%d2, [%a4] 892
.LBE139:
.LBE138:
	.loc 1 2352 0
	movh.a	%a12, hi:BDTable
	lea	%a12, [%a12] lo:BDTable
.LBB149:
.LBB146:
	.loc 1 424 0
	addi	%d3, %d2, -3
	.loc 1 425 0
	ne	%d15, %d2, 8
.LBE146:
.LBE149:
	.loc 1 2352 0
	st.w	[%a12] 8, %d4
.LVL397:
.LBB150:
.LBB147:
	.loc 1 425 0
	and.ge.u	%d15, %d3, 2
	.loc 1 401 0
	ld.w	%d9, [%a12] 12
.LVL398:
	.loc 1 427 0
	mov	%d2, -8
	.loc 1 425 0
	jnz	%d15, .L318
	.loc 1 432 0
	call	VL53L1_disable_xtalk_compensation
.LVL399:
	.loc 1 433 0
	jz	%d2, .L320
.LVL400:
.L318:
.LBE147:
.LBE150:
	.loc 1 2360 0
	ret
.LVL401:
.L320:
.LBB151:
.LBB148:
	.loc 1 435 0
	mov.aa	%a4, %a15
	call	VL53L1_StartMeasurement
.LVL402:
	.loc 1 436 0
	jnz	%d2, .L318
	.loc 1 400 0
	and	%d9, %d9, 255
.LVL403:
	.loc 1 442 0
	jz	%d9, .L305
	mov	%d8, 0
	mov	%e10, 0
	mov	%d12, 0
.LVL404:
.L307:
.LBB140:
.LBB141:
	.loc 1 1912 0
	mov	%d4, 2000
	mov.aa	%a4, %a15
	call	VL53L1_poll_for_range_completion
.LVL405:
.LBE141:
.LBE140:
	.loc 1 444 0
	mov.aa	%a4, %a15
	lea	%a5, [%SP] 4
	call	VL53L1_GetRangingMeasurementData
.LVL406:
	.loc 1 445 0
	mov.aa	%a4, %a15
	call	VL53L1_ClearInterruptAndStartMeasurement
.LVL407:
	.loc 1 446 0
	ld.bu	%d2, [%SP] 31
	jnz	%d2, .L306
	.loc 1 447 0
	ld.h	%d2, [%SP] 28
	.loc 1 450 0
	add	%d11, 1
.LVL408:
	.loc 1 447 0
	add	%d12, %d2
.LVL409:
	.loc 1 448 0
	ld.w	%d2, [%SP] 12
	.loc 1 447 0
	extr.u	%d12, %d12, 0, 16
.LVL410:
	.loc 1 448 0
	add	%d15, %d2
.LVL411:
	.loc 1 449 0
	ld.bu	%d2, [%SP] 21
	add	%d10, %d2
.LVL412:
	extr.u	%d10, %d10, 0, 16
.LVL413:
.L306:
	add	%d8, 1
.LVL414:
	.loc 1 442 0
	and	%d2, %d8, 255
	jlt.u	%d2, %d9, .L307
.LVL415:
.LBB142:
.LBB143:
	.loc 1 1779 0
	mov.aa	%a4, %a15
	call	VL53L1_stop_range
.LVL416:
	.loc 1 1782 0
	jnz	%d2, .L308
.LVL417:
.L311:
	.loc 1 1783 0
	mov	%d2, 3
.LVL418:
	st.b	[%a15] 888, %d2
.L308:
.LBE143:
.LBE142:
	.loc 1 455 0
	jz	%d11, .L312
.LVL419:
	.loc 1 461 0
	sh	%d2, %d10, 16
	.loc 1 460 0
	div.u	%e2, %d2, %d11
	.loc 1 481 0
	ld.w	%d3, [%a12] 8
	.loc 1 486 0
	mov	%d8, 0
	.loc 1 474 0
	addi	%d2, %d2, -32768
	addih	%d2, %d2, 1
	sh	%d2, %d2, -16
.LVL420:
	.loc 1 483 0
	eq	%d4, %d2, 0
	or.eq	%d4, %d3, 0
	jnz	%d4, .L310
	.loc 1 459 0
	sh	%d12, %d12, 16
.LVL421:
	.loc 1 458 0
	div.u	%e12, %d12, %d11
	.loc 1 485 0
	sh	%d4, %d3, 16
	.loc 1 484 0
	jge.u	%d12, %d4, .L310
	.loc 1 457 0
	div.u	%e4, %d15, %d11
	.loc 1 502 0
	div.u	%e12, %d12, %d3
	.loc 1 501 0
	movh	%d3, 1
.LVL422:
	.loc 1 493 0
	div.u	%e4, %d4, %d2
	.loc 1 501 0
	sub	%d12, %d3, %d12
	.loc 1 493 0
	mov	%d15, %d4
.LVL423:
	.loc 1 501 0
	mul	%d15, %d12
	.loc 1 506 0
	addi	%d15, %d15, -32768
	addih	%d15, %d15, 1
	.loc 1 505 0
	sh	%d8, %d15, -16
.LVL424:
.L310:
	.loc 1 510 0
	mov.aa	%a4, %a15
	lea	%a5, [%SP] 32
	call	VL53L1_GetCalibrationData
.LVL425:
	.loc 1 511 0
	jnz	%d2, .L318
.LVL426:
	.loc 1 516 0
	addi	%d15, %d8, 64
	.loc 1 517 0
	sh	%d15, -7
	.loc 1 516 0
	mov	%d2, 1000
.LVL427:
	mul	%d15, %d2
	.loc 1 519 0
	mov.aa	%a4, %a15
	lea	%a5, [%SP] 32
	.loc 1 515 0
	st.w	[%SP] 48, %d15
	.loc 1 519 0
	call	VL53L1_SetCalibrationData
.LVL428:
	.loc 1 520 0
	jnz	%d2, .L318
	.loc 1 522 0
	mov.aa	%a4, %a15
	j	VL53L1_enable_xtalk_compensation
.LVL429:
.L305:
.LBB145:
.LBB144:
	.loc 1 1779 0
	mov.aa	%a4, %a15
	call	VL53L1_stop_range
.LVL430:
	.loc 1 1782 0
	jnz	%d2, .L312
	mov	%e10, 0
	mov	%d15, 0
	mov	%d12, 0
	j	.L311
.LVL431:
.L312:
.LBE144:
.LBE145:
	.loc 1 526 0
	mov	%d2, -22
	ret
.LBE148:
.LBE151:
.LFE59:
	.size	VL53L1_PerformSingleTargetXTalkCalibration, .-VL53L1_PerformSingleTargetXTalkCalibration
.section .text.VL53L1_GetOpticalCenter,"ax",@progbits
	.align 1
	.global	VL53L1_GetOpticalCenter
	.type	VL53L1_GetOpticalCenter, @function
VL53L1_GetOpticalCenter:
.LFB65:
	.loc 1 2681 0
.LVL432:
	.loc 1 2687 0
	mov	%d15, 0
	.loc 1 2681 0
	sub.a	%SP, 104
.LCFI16:
	.loc 1 2681 0
	mov.aa	%a15, %a5
	.loc 1 2687 0
	st.w	[%a5]0, %d15
	.loc 1 2688 0
	st.w	[%a6]0, %d15
	.loc 1 2689 0
	lea	%a5, [%SP] 4
.LVL433:
	.loc 1 2681 0
	mov.aa	%a12, %a6
	.loc 1 2689 0
	call	VL53L1_get_part_to_part_data
.LVL434:
	.loc 1 2690 0
	jnz	%d2, .L322
	.loc 1 2691 0
	ld.bu	%d15, [%SP] 40
	sh	%d15, %d15, 12
	st.w	[%a15]0, %d15
	.loc 1 2693 0
	ld.bu	%d15, [%SP] 41
	sh	%d15, %d15, 12
	st.w	[%a12]0, %d15
.L322:
	.loc 1 2699 0
	ret
.LFE65:
	.size	VL53L1_GetOpticalCenter, .-VL53L1_GetOpticalCenter
.section .text.VL53L1_SetThresholdConfig,"ax",@progbits
	.align 1
	.global	VL53L1_SetThresholdConfig
	.type	VL53L1_SetThresholdConfig, @function
VL53L1_SetThresholdConfig:
.LFB66:
	.loc 1 2708 0
.LVL435:
	sub.a	%SP, 16
.LCFI17:
	.loc 1 2708 0
	mov.aa	%a15, %a5
	.loc 1 2723 0
	lea	%a5, [%SP] 2
.LVL436:
	.loc 1 2708 0
	mov.aa	%a12, %a4
.LVL437:
	.loc 1 2723 0
	call	VL53L1_get_GPIO_interrupt_config
.LVL438:
	.loc 1 2724 0
	jnz	%d2, .L353
	.loc 1 2725 0
	ld.bu	%d7, [%a15]0
	jz	%d7, .L355
	.loc 1 2730 0
	ld.bu	%d6, [%a15] 2
	add	%d15, %d6, -2
	jlt.u	%d15, 2, .L356
.LVL439:
.L326:
	.loc 1 2734 0
	ld.bu	%d15, [%a15] 8
	.loc 1 2733 0
	add	%d2, %d15, -2
	jlt.u	%d2, 2, .L339
	ld.w	%d1, [%a15] 12
	ld.w	%d0, [%a15] 16
.L328:
	.loc 1 2738 0
	mov	%d2, 0
	.loc 1 2746 0
	ld.hu	%d4, [%a15] 4
	.loc 1 2758 0
	sh	%d1, %d1, -9
	.loc 1 2738 0
	st.b	[%SP] 4, %d2
	.loc 1 2739 0
	ld.bu	%d2, [%a15] 1
	st.b	[%SP] 5, %d2
.LVL440:
	.loc 1 2744 0
	ld.hu	%d2, [%a12] 156
	.loc 1 2745 0
	sh	%d4, %d4, 16
	.loc 1 2744 0
	sh	%d3, %d2, 5
.LVL441:
	.loc 1 2748 0
	ld.hu	%d2, [%a15] 6
	.loc 1 2750 0
	addi	%d4, %d4, -32768
.LVL442:
	.loc 1 2747 0
	sh	%d2, %d2, 16
.LVL443:
	.loc 1 2751 0
	addi	%d2, %d2, -32768
.LVL444:
	.loc 1 2750 0
	addih	%d4, %d4, 1
.LVL445:
	.loc 1 2751 0
	addih	%d2, %d2, 1
.LVL446:
	.loc 1 2750 0
	div.u	%e4, %d4, %d3
.LVL447:
	.loc 1 2761 0
	sh	%d0, %d0, -9
	.loc 1 2751 0
	div.u	%e2, %d2, %d3
.LVL448:
	.loc 1 2752 0
	st.h	[%SP] 8, %d4
	.loc 1 2758 0
	st.h	[%SP] 12, %d1
	.loc 1 2754 0
	st.h	[%SP] 10, %d2
	.loc 1 2761 0
	st.h	[%SP] 14, %d0
.LVL449:
.LBB152:
.LBB153:
	.loc 1 565 0
	jlt.u	%d6, 4, .L357
.LVL450:
.L333:
.LBE153:
.LBE152:
	.loc 1 2708 0
	mov	%d2, -4
.LVL451:
	ret
.LVL452:
.L353:
	.loc 1 2809 0
	ret
.L355:
	.loc 1 2726 0
	mov	%d15, 1
	.loc 1 2727 0
	mov.aa	%a4, %a12
	lea	%a5, [%SP] 2
	.loc 1 2726 0
	st.b	[%SP] 4, %d15
	j	VL53L1_set_GPIO_interrupt_config_struct
.LVL453:
.L357:
.LBB157:
.LBB154:
	.loc 1 565 0
	movh.a	%a15, hi:.L341
.LVL454:
	lea	%a15, [%a15] lo:.L341
	addsc.a	%a15, %a15, %d6, 2
	ji	%a15
	.align 2
	.align 2
.L341:
	.code32
	j	.L340
	.code32
	j	.L342
	.code32
	j	.L343
	.code32
	j	.L350
.L340:
.LVL455:
.LBE154:
.LBE157:
	.loc 1 2764 0
	mov	%d2, 0
	st.b	[%SP] 2, %d2
.LVL456:
.LBB158:
.LBB159:
	.loc 1 565 0
	jge.u	%d15, 4, .L333
	movh.a	%a15, hi:.L346
	lea	%a15, [%a15] lo:.L346
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L346:
	.code32
	j	.L332
	.code32
	j	.L352
	.code32
	j	.L329
	.code32
	j	.L331
.LVL457:
.L350:
.LBE159:
.LBE158:
.LBB162:
.LBB155:
	.loc 1 576 0
	mov	%d2, 3
.L344:
.LBE155:
.LBE162:
	.loc 1 2764 0
	st.b	[%SP] 2, %d2
.LVL458:
.LBB163:
.LBB160:
	.loc 1 565 0
	jge.u	%d15, 4, .L333
	movh.a	%a15, hi:.L349
	lea	%a15, [%a15] lo:.L349
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L349:
	.code32
	j	.L332
	.code32
	j	.L352
	.code32
	j	.L329
	.code32
	j	.L331
.LVL459:
.L352:
	.loc 1 570 0
	mov	%d15, 1
.LVL460:
.L354:
.LBE160:
.LBE163:
	.loc 1 2769 0
	st.b	[%SP] 3, %d15
	.loc 1 2776 0
	mov	%d15, 1
	.loc 1 2777 0
	add	%d7, -1
	.loc 1 2776 0
	st.b	[%SP] 6, %d15
	.loc 1 2777 0
	jge.u	%d7, 4, .L333
	movh.a	%a15, hi:.L335
	lea	%a15, [%a15] lo:.L335
	addsc.a	%a15, %a15, %d7, 2
	ji	%a15
	.align 2
	.align 2
.L335:
	.code32
	j	.L334
	.code32
	j	.L336
	.code32
	j	.L337
	.code32
	j	.L338
.L334:
	.loc 1 2779 0
	mov	%d15, 0
	st.h	[%SP] 12, %d15
	.loc 1 2780 0
	st.h	[%SP] 14, %d15
.L338:
	.loc 1 2801 0
	mov.aa	%a4, %a12
	lea	%a5, [%SP] 2
	j	VL53L1_set_GPIO_interrupt_config_struct
.LVL461:
.L356:
	.loc 1 2730 0 discriminator 1
	ld.hu	%d15, [%a15] 6
	ld.hu	%d2, [%a15] 4
.LVL462:
	jlt.u	%d2, %d15, .L333
	j	.L326
.LVL463:
.L339:
	.loc 1 2734 0
	ld.w	%d0, [%a15] 16
	ld.w	%d1, [%a15] 12
	jlt.u	%d1, %d0, .L333
	j	.L328
.LVL464:
.L337:
	.loc 1 2792 0
	mov	%d15, 0
	st.b	[%SP] 6, %d15
	.loc 1 2793 0
	j	.L338
.L336:
	.loc 1 2783 0
	mov	%d15, 0
	st.h	[%SP] 8, %d15
	.loc 1 2784 0
	st.h	[%SP] 10, %d15
	.loc 1 2785 0
	j	.L338
.LVL465:
.L343:
.LBB164:
.LBB156:
	.loc 1 573 0
	mov	%d2, 2
	j	.L344
.L342:
	.loc 1 570 0
	mov	%d2, 1
	j	.L344
.LVL466:
.L329:
.LBE156:
.LBE164:
.LBB165:
.LBB161:
	.loc 1 573 0
	mov	%d15, 2
	j	.L354
.LVL467:
.L331:
	.loc 1 576 0
	mov	%d15, 3
	j	.L354
.LVL468:
.L332:
.LBE161:
.LBE165:
	.loc 1 2769 0
	mov	%d15, 0
	j	.L354
.LFE66:
	.size	VL53L1_SetThresholdConfig, .-VL53L1_SetThresholdConfig
.section .text.VL53L1_GetThresholdConfig,"ax",@progbits
	.align 1
	.global	VL53L1_GetThresholdConfig
	.type	VL53L1_GetThresholdConfig, @function
VL53L1_GetThresholdConfig:
.LFB67:
	.loc 1 2814 0
.LVL469:
	sub.a	%SP, 16
.LCFI18:
	.loc 1 2814 0
	mov.aa	%a15, %a5
	.loc 1 2820 0
	lea	%a5, [%SP] 2
.LVL470:
	call	VL53L1_get_GPIO_interrupt_config
.LVL471:
	.loc 1 2822 0
	jnz	%d2, .L385
	.loc 1 2831 0
	ld.hu	%d4, [%SP] 12
	.loc 1 2827 0
	ld.bu	%d15, [%SP] 5
	.loc 1 2831 0
	sh	%d5, %d4, 9
	.loc 1 2827 0
	st.b	[%a15] 1, %d15
	.loc 1 2829 0
	ld.hu	%d3, [%SP] 10
	.loc 1 2830 0
	st.w	[%a15] 12, %d5
	.loc 1 2834 0
	ld.hu	%d5, [%SP] 14
	.loc 1 2828 0
	ld.hu	%d15, [%SP] 8
	.loc 1 2834 0
	sh	%d6, %d5, 9
	.loc 1 2828 0
	st.h	[%a15] 4, %d15
	.loc 1 2829 0
	st.h	[%a15] 6, %d3
	.loc 1 2833 0
	st.w	[%a15] 16, %d6
.LVL472:
.LBB166:
.LBB167:
	.loc 1 591 0
	ld.bu	%d6, [%SP] 2
	jlt.u	%d6, 4, .L394
.LVL473:
.LBE167:
.LBE166:
	.loc 1 2835 0
	mov	%d15, 1
	st.b	[%a15] 2, %d15
	.loc 1 2841 0
	ld.bu	%d15, [%SP] 4
	jeq	%d15, 1, .L376
.LVL474:
.L379:
.LBB173:
.LBB168:
	.loc 1 607 0
	mov	%d2, -3
	ret
.LVL475:
.L385:
.LBE168:
.LBE173:
	.loc 1 2867 0
	ret
.LVL476:
.L394:
.LBB174:
.LBB169:
	.loc 1 591 0
	movh.a	%a2, hi:.L362
	lea	%a2, [%a2] lo:.L362
	addsc.a	%a2, %a2, %d6, 2
	ji	%a2
	.align 2
	.align 2
.L362:
	.code32
	j	.L361
	.code32
	j	.L363
	.code32
	j	.L380
	.code32
	j	.L365
.L380:
	.loc 1 599 0
	mov	%d6, 2
.L364:
.LVL477:
.LBE169:
.LBE174:
	.loc 1 2835 0
	st.b	[%a15] 2, %d6
.LVL478:
.LBB175:
.LBB176:
	.loc 1 591 0
	ld.bu	%d6, [%SP] 3
	jlt.u	%d6, 4, .L395
.L371:
.LVL479:
.LBE176:
.LBE175:
	.loc 1 2838 0
	mov	%d15, 1
	st.b	[%a15] 8, %d15
	.loc 1 2841 0
	ld.bu	%d15, [%SP] 4
	jne	%d15, 1, .L379
.LVL480:
.L376:
.LBB179:
.LBB170:
	.loc 1 607 0
	mov	%d2, -3
.LVL481:
.L377:
.LBE170:
.LBE179:
	.loc 1 2842 0
	mov	%d15, 0
	st.b	[%a15]0, %d15
	ret
.LVL482:
.L361:
.LBB180:
.LBB171:
	.loc 1 593 0
	mov	%d6, 0
.LVL483:
.LBE171:
.LBE180:
	.loc 1 2835 0
	st.b	[%a15] 2, %d6
.LVL484:
.LBB181:
.LBB177:
	.loc 1 591 0
	ld.bu	%d6, [%SP] 3
	jge.u	%d6, 4, .L371
.LVL485:
.L395:
	movh.a	%a2, hi:.L372
	lea	%a2, [%a2] lo:.L372
	addsc.a	%a2, %a2, %d6, 2
	ji	%a2
	.align 2
	.align 2
.L372:
	.code32
	j	.L366
	.code32
	j	.L373
	.code32
	j	.L374
	.code32
	j	.L381
.LVL486:
.L363:
.LBE177:
.LBE181:
.LBB182:
.LBB172:
	.loc 1 596 0
	mov	%d6, 1
	j	.L364
.L365:
.LVL487:
	.loc 1 602 0
	mov	%d6, 3
	j	.L364
.LVL488:
.L366:
.LBE172:
.LBE182:
	.loc 1 2838 0
	mov	%d6, 0
.LVL489:
.L393:
	st.b	[%a15] 8, %d6
	.loc 1 2841 0
	ld.bu	%d6, [%SP] 4
	jeq	%d6, 1, .L377
	.loc 1 2846 0
	ld.bu	%d6, [%SP] 6
	jz	%d6, .L396
	.loc 1 2850 0 discriminator 1
	or	%d15, %d3
	jz	%d15, .L397
	.loc 1 2854 0 discriminator 1
	or	%d4, %d5
	jnz	%d4, .L370
	.loc 1 2856 0
	mov	%d15, 1
	st.b	[%a15]0, %d15
	ret
.L381:
.LBB183:
.LBB178:
	.loc 1 602 0
	mov	%d6, 3
.LVL490:
	j	.L393
.LVL491:
.L374:
	.loc 1 599 0
	mov	%d6, 2
	j	.L393
.L373:
	.loc 1 596 0
	mov	%d6, 1
	j	.L393
.L396:
.LBE178:
.LBE183:
	.loc 1 2847 0
	mov	%d15, 3
	st.b	[%a15]0, %d15
	ret
.L397:
	.loc 1 2852 0
	mov	%d15, 2
	st.b	[%a15]0, %d15
	ret
.L370:
	.loc 1 2859 0
	mov	%d15, 4
	st.b	[%a15]0, %d15
	ret
.LFE67:
	.size	VL53L1_GetThresholdConfig, .-VL53L1_GetThresholdConfig
.section .rodata.CSWTCH.59,"a",@progbits
	.type	CSWTCH.59, @object
	.size	CSWTCH.59, 16
CSWTCH.59:
	.byte	2
	.byte	4
	.byte	1
	.byte	7
	.byte	3
	.byte	0
	.byte	-1
	.byte	-1
	.byte	9
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	10
	.byte	6
.section .data.BDTable,"aw",@progbits
	.align 2
	.type	BDTable, @object
	.size	BDTable, 28
BDTable:
	.word	3
	.word	-30
	.word	600
	.word	50
	.word	8
	.word	50
	.word	600
	.global	get_api_data
.section .bss.get_api_data,"aw",@nobits
	.type	get_api_data, @object
	.size	get_api_data, 1
get_api_data:
	.zero	1
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
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.byte	0x4
	.uaword	.LCFI0-.LFB20
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB13
	.uaword	.LFE13-.LFB13
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB14
	.uaword	.LFE14-.LFB14
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB15
	.uaword	.LFE15-.LFB15
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.byte	0x4
	.uaword	.LCFI1-.LFB23
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.byte	0x4
	.uaword	.LCFI2-.LFB25
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.byte	0x4
	.uaword	.LCFI3-.LFB26
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
	.byte	0x4
	.uaword	.LCFI4-.LFB16
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE52:
.LSFDE54:
	.uaword	.LEFDE54-.LASFDE54
.LASFDE54:
	.uaword	.Lframe0
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.byte	0x4
	.uaword	.LCFI5-.LFB36
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE54:
.LSFDE56:
	.uaword	.LEFDE56-.LASFDE56
.LASFDE56:
	.uaword	.Lframe0
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.align 2
.LEFDE56:
.LSFDE58:
	.uaword	.LEFDE58-.LASFDE58
.LASFDE58:
	.uaword	.Lframe0
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.byte	0x4
	.uaword	.LCFI6-.LFB38
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE58:
.LSFDE60:
	.uaword	.LEFDE60-.LASFDE60
.LASFDE60:
	.uaword	.Lframe0
	.uaword	.LFB39
	.uaword	.LFE39-.LFB39
	.byte	0x4
	.uaword	.LCFI7-.LFB39
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE60:
.LSFDE62:
	.uaword	.LEFDE62-.LASFDE62
.LASFDE62:
	.uaword	.Lframe0
	.uaword	.LFB40
	.uaword	.LFE40-.LFB40
	.align 2
.LEFDE62:
.LSFDE64:
	.uaword	.LEFDE64-.LASFDE64
.LASFDE64:
	.uaword	.Lframe0
	.uaword	.LFB41
	.uaword	.LFE41-.LFB41
	.align 2
.LEFDE64:
.LSFDE66:
	.uaword	.LEFDE66-.LASFDE66
.LASFDE66:
	.uaword	.Lframe0
	.uaword	.LFB42
	.uaword	.LFE42-.LFB42
	.align 2
.LEFDE66:
.LSFDE68:
	.uaword	.LEFDE68-.LASFDE68
.LASFDE68:
	.uaword	.Lframe0
	.uaword	.LFB43
	.uaword	.LFE43-.LFB43
	.align 2
.LEFDE68:
.LSFDE70:
	.uaword	.LEFDE70-.LASFDE70
.LASFDE70:
	.uaword	.Lframe0
	.uaword	.LFB44
	.uaword	.LFE44-.LFB44
	.align 2
.LEFDE70:
.LSFDE72:
	.uaword	.LEFDE72-.LASFDE72
.LASFDE72:
	.uaword	.Lframe0
	.uaword	.LFB45
	.uaword	.LFE45-.LFB45
	.align 2
.LEFDE72:
.LSFDE74:
	.uaword	.LEFDE74-.LASFDE74
.LASFDE74:
	.uaword	.Lframe0
	.uaword	.LFB47
	.uaword	.LFE47-.LFB47
	.byte	0x4
	.uaword	.LCFI8-.LFB47
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE74:
.LSFDE76:
	.uaword	.LEFDE76-.LASFDE76
.LASFDE76:
	.uaword	.Lframe0
	.uaword	.LFB48
	.uaword	.LFE48-.LFB48
	.align 2
.LEFDE76:
.LSFDE78:
	.uaword	.LEFDE78-.LASFDE78
.LASFDE78:
	.uaword	.Lframe0
	.uaword	.LFB49
	.uaword	.LFE49-.LFB49
	.align 2
.LEFDE78:
.LSFDE80:
	.uaword	.LEFDE80-.LASFDE80
.LASFDE80:
	.uaword	.Lframe0
	.uaword	.LFB53
	.uaword	.LFE53-.LFB53
	.byte	0x4
	.uaword	.LCFI9-.LFB53
	.byte	0xe
	.uleb128 0x88
	.align 2
.LEFDE80:
.LSFDE82:
	.uaword	.LEFDE82-.LASFDE82
.LASFDE82:
	.uaword	.Lframe0
	.uaword	.LFB54
	.uaword	.LFE54-.LFB54
	.align 2
.LEFDE82:
.LSFDE84:
	.uaword	.LEFDE84-.LASFDE84
.LASFDE84:
	.uaword	.Lframe0
	.uaword	.LFB55
	.uaword	.LFE55-.LFB55
	.align 2
.LEFDE84:
.LSFDE86:
	.uaword	.LEFDE86-.LASFDE86
.LASFDE86:
	.uaword	.Lframe0
	.uaword	.LFB56
	.uaword	.LFE56-.LFB56
	.byte	0x4
	.uaword	.LCFI10-.LFB56
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE86:
.LSFDE88:
	.uaword	.LEFDE88-.LASFDE88
.LASFDE88:
	.uaword	.Lframe0
	.uaword	.LFB57
	.uaword	.LFE57-.LFB57
	.align 2
.LEFDE88:
.LSFDE90:
	.uaword	.LEFDE90-.LASFDE90
.LASFDE90:
	.uaword	.Lframe0
	.uaword	.LFB58
	.uaword	.LFE58-.LFB58
	.align 2
.LEFDE90:
.LSFDE92:
	.uaword	.LEFDE92-.LASFDE92
.LASFDE92:
	.uaword	.Lframe0
	.uaword	.LFB60
	.uaword	.LFE60-.LFB60
	.align 2
.LEFDE92:
.LSFDE94:
	.uaword	.LEFDE94-.LASFDE94
.LASFDE94:
	.uaword	.Lframe0
	.uaword	.LFB61
	.uaword	.LFE61-.LFB61
	.byte	0x4
	.uaword	.LCFI11-.LFB61
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE94:
.LSFDE96:
	.uaword	.LEFDE96-.LASFDE96
.LASFDE96:
	.uaword	.Lframe0
	.uaword	.LFB62
	.uaword	.LFE62-.LFB62
	.byte	0x4
	.uaword	.LCFI12-.LFB62
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE96:
.LSFDE98:
	.uaword	.LEFDE98-.LASFDE98
.LASFDE98:
	.uaword	.Lframe0
	.uaword	.LFB63
	.uaword	.LFE63-.LFB63
	.byte	0x4
	.uaword	.LCFI13-.LFB63
	.byte	0xe
	.uleb128 0x68
	.align 2
.LEFDE98:
.LSFDE100:
	.uaword	.LEFDE100-.LASFDE100
.LASFDE100:
	.uaword	.Lframe0
	.uaword	.LFB64
	.uaword	.LFE64-.LFB64
	.byte	0x4
	.uaword	.LCFI14-.LFB64
	.byte	0xe
	.uleb128 0x68
	.align 2
.LEFDE100:
.LSFDE102:
	.uaword	.LEFDE102-.LASFDE102
.LASFDE102:
	.uaword	.Lframe0
	.uaword	.LFB59
	.uaword	.LFE59-.LFB59
	.byte	0x4
	.uaword	.LCFI15-.LFB59
	.byte	0xe
	.uleb128 0x88
	.align 2
.LEFDE102:
.LSFDE104:
	.uaword	.LEFDE104-.LASFDE104
.LASFDE104:
	.uaword	.Lframe0
	.uaword	.LFB65
	.uaword	.LFE65-.LFB65
	.byte	0x4
	.uaword	.LCFI16-.LFB65
	.byte	0xe
	.uleb128 0x68
	.align 2
.LEFDE104:
.LSFDE106:
	.uaword	.LEFDE106-.LASFDE106
.LASFDE106:
	.uaword	.Lframe0
	.uaword	.LFB66
	.uaword	.LFE66-.LFB66
	.byte	0x4
	.uaword	.LCFI17-.LFB66
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE106:
.LSFDE108:
	.uaword	.LEFDE108-.LASFDE108
.LASFDE108:
	.uaword	.Lframe0
	.uaword	.LFB67
	.uaword	.LFE67-.LFB67
	.byte	0x4
	.uaword	.LCFI18-.LFB67
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE108:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdint.h"
	.file 3 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h"
	.file 4 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_types.h"
	.file 5 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_device.h"
	.file 6 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_error_codes.h"
	.file 7 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_structs.h"
	.file 8 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_ll_def.h"
	.file 9 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_def.h"
	.file 10 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_platform_user_data.h"
	.file 11 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_core.h"
	.file 12 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h"
	.file 13 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_strings.h"
	.file 14 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_platform.h"
	.file 15 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_wait.h"
	.file 16 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
	.file 17 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_calibration.h"
	.file 18 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_register_funcs.h"
	.file 19 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_preset_setup.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x8e4b
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api.c"
	.string	"D:\\\\MinKyu_AurixRacer\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0x1c0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"int8_t"
	.byte	0x2
	.byte	0x29
	.uaword	0x1b3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8_t"
	.byte	0x2
	.byte	0x2a
	.uaword	0x1d1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"int16_t"
	.byte	0x2
	.byte	0x35
	.uaword	0x1f1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16_t"
	.byte	0x2
	.byte	0x36
	.uaword	0x20e
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"int32_t"
	.byte	0x2
	.byte	0x4f
	.uaword	0x233
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint32_t"
	.byte	0x2
	.byte	0x50
	.uaword	0x24f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.string	"size_t"
	.byte	0x3
	.byte	0xd4
	.uaword	0x24f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2b6
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2c4
	.uleb128 0x5
	.uaword	0x2b6
	.uleb128 0x3
	.string	"FixPoint1616_t"
	.byte	0x4
	.byte	0x93
	.uaword	0x23f
	.uleb128 0x3
	.string	"VL53L1_DeviceState"
	.byte	0x5
	.byte	0x65
	.uaword	0x1c2
	.uleb128 0x3
	.string	"VL53L1_DevicePresetModes"
	.byte	0x5
	.byte	0x7d
	.uaword	0x1c2
	.uleb128 0x3
	.string	"VL53L1_DeviceMeasurementModes"
	.byte	0x5
	.byte	0x96
	.uaword	0x1c2
	.uleb128 0x3
	.string	"VL53L1_OffsetCalibrationMode"
	.byte	0x5
	.byte	0xa5
	.uaword	0x1c2
	.uleb128 0x3
	.string	"VL53L1_OffsetCorrectionMode"
	.byte	0x5
	.byte	0xb6
	.uaword	0x1c2
	.uleb128 0x3
	.string	"VL53L1_DeviceSequenceConfig"
	.byte	0x5
	.byte	0xc6
	.uaword	0x1c2
	.uleb128 0x3
	.string	"VL53L1_DeviceError"
	.byte	0x5
	.byte	0xfe
	.uaword	0x1c2
	.uleb128 0x6
	.string	"VL53L1_DeviceConfigLevel"
	.byte	0x5
	.uahalf	0x14c
	.uaword	0x1c2
	.uleb128 0x6
	.string	"VL53L1_DeviceResultsLevel"
	.byte	0x5
	.uahalf	0x171
	.uaword	0x1c2
	.uleb128 0x6
	.string	"VL53L1_DeviceSscArray"
	.byte	0x5
	.uahalf	0x1b2
	.uaword	0x1c2
	.uleb128 0x6
	.string	"VL53L1_GPIO_Interrupt_Mode"
	.byte	0x5
	.uahalf	0x21c
	.uaword	0x1c2
	.uleb128 0x6
	.string	"VL53L1_TuningParms"
	.byte	0x5
	.uahalf	0x233
	.uaword	0x1fe
	.uleb128 0x3
	.string	"VL53L1_Error"
	.byte	0x6
	.byte	0x59
	.uaword	0x1a5
	.uleb128 0x7
	.byte	0xc
	.byte	0x7
	.byte	0x80
	.uaword	0x5e3
	.uleb128 0x8
	.string	"i2c_slave__device_address"
	.byte	0x7
	.byte	0x81
	.uaword	0x1c2
	.byte	0
	.uleb128 0x8
	.string	"ana_config__vhv_ref_sel_vddpix"
	.byte	0x7
	.byte	0x8b
	.uaword	0x1c2
	.byte	0x1
	.uleb128 0x8
	.string	"ana_config__vhv_ref_sel_vquench"
	.byte	0x7
	.byte	0x95
	.uaword	0x1c2
	.byte	0x2
	.uleb128 0x8
	.string	"ana_config__reg_avdd1v2_sel"
	.byte	0x7
	.byte	0x9f
	.uaword	0x1c2
	.byte	0x3
	.uleb128 0x8
	.string	"ana_config__fast_osc__trim"
	.byte	0x7
	.byte	0xa9
	.uaword	0x1c2
	.byte	0x4
	.uleb128 0x8
	.string	"osc_measured__fast_osc__frequency"
	.byte	0x7
	.byte	0xb3
	.uaword	0x1fe
	.byte	0x6
	.uleb128 0x8
	.string	"vhv_config__timeout_macrop_loop_bound"
	.byte	0x7
	.byte	0xbd
	.uaword	0x1c2
	.byte	0x8
	.uleb128 0x8
	.string	"vhv_config__count_thresh"
	.byte	0x7
	.byte	0xc8
	.uaword	0x1c2
	.byte	0x9
	.uleb128 0x8
	.string	"vhv_config__offset"
	.byte	0x7
	.byte	0xd2
	.uaword	0x1c2
	.byte	0xa
	.uleb128 0x8
	.string	"vhv_config__init"
	.byte	0x7
	.byte	0xdc
	.uaword	0x1c2
	.byte	0xb
	.byte	0
	.uleb128 0x3
	.string	"VL53L1_static_nvm_managed_t"
	.byte	0x7
	.byte	0xe7
	.uaword	0x475
	.uleb128 0x7
	.byte	0x18
	.byte	0x7
	.byte	0xf3
	.uaword	0x6dd
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x7
	.byte	0xf4
	.uaword	0x1c2
	.byte	0
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x7
	.byte	0xfe
	.uaword	0x1c2
	.byte	0x1
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x108
	.uaword	0x1c2
	.byte	0x2
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x112
	.uaword	0x1c2
	.byte	0x3
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x11c
	.uaword	0x1c2
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x126
	.uaword	0x1c2
	.byte	0x5
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x130
	.uaword	0x1c2
	.byte	0x6
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x13a
	.uaword	0x1c2
	.byte	0x7
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x144
	.uaword	0x1c2
	.byte	0x8
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x14e
	.uaword	0x1fe
	.byte	0xa
	.uleb128 0xa
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x158
	.uaword	0x1e2
	.byte	0xc
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x162
	.uaword	0x1e2
	.byte	0xe
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x16c
	.uaword	0x1fe
	.byte	0x10
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x176
	.uaword	0x1e2
	.byte	0x12
	.uleb128 0xa
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x180
	.uaword	0x1e2
	.byte	0x14
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x18a
	.uaword	0x1e2
	.byte	0x16
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_customer_nvm_managed_t"
	.byte	0x7
	.uahalf	0x194
	.uaword	0x606
	.uleb128 0xb
	.byte	0x20
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0xb49
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x1a1
	.uaword	0x1fe
	.byte	0
	.uleb128 0xc
	.string	"debug__ctrl"
	.byte	0x7
	.uahalf	0x1ab
	.uaword	0x1c2
	.byte	0x2
	.uleb128 0xc
	.string	"test_mode__ctrl"
	.byte	0x7
	.uahalf	0x1b5
	.uaword	0x1c2
	.byte	0x3
	.uleb128 0xc
	.string	"clk_gating__ctrl"
	.byte	0x7
	.uahalf	0x1bf
	.uaword	0x1c2
	.byte	0x4
	.uleb128 0xc
	.string	"nvm_bist__ctrl"
	.byte	0x7
	.uahalf	0x1cc
	.uaword	0x1c2
	.byte	0x5
	.uleb128 0xc
	.string	"nvm_bist__num_nvm_words"
	.byte	0x7
	.uahalf	0x1d7
	.uaword	0x1c2
	.byte	0x6
	.uleb128 0xc
	.string	"nvm_bist__start_address"
	.byte	0x7
	.uahalf	0x1e1
	.uaword	0x1c2
	.byte	0x7
	.uleb128 0xc
	.string	"host_if__status"
	.byte	0x7
	.uahalf	0x1eb
	.uaword	0x1c2
	.byte	0x8
	.uleb128 0xc
	.string	"pad_i2c_hv__config"
	.byte	0x7
	.uahalf	0x1f5
	.uaword	0x1c2
	.byte	0x9
	.uleb128 0xc
	.string	"pad_i2c_hv__extsup_config"
	.byte	0x7
	.uahalf	0x204
	.uaword	0x1c2
	.byte	0xa
	.uleb128 0xc
	.string	"gpio_hv_pad__ctrl"
	.byte	0x7
	.uahalf	0x20e
	.uaword	0x1c2
	.byte	0xb
	.uleb128 0xc
	.string	"gpio_hv_mux__ctrl"
	.byte	0x7
	.uahalf	0x219
	.uaword	0x1c2
	.byte	0xc
	.uleb128 0xc
	.string	"gpio__tio_hv_status"
	.byte	0x7
	.uahalf	0x224
	.uaword	0x1c2
	.byte	0xd
	.uleb128 0xc
	.string	"gpio__fio_hv_status"
	.byte	0x7
	.uahalf	0x22f
	.uaword	0x1c2
	.byte	0xe
	.uleb128 0xc
	.string	"ana_config__spad_sel_pswidth"
	.byte	0x7
	.uahalf	0x239
	.uaword	0x1c2
	.byte	0xf
	.uleb128 0xc
	.string	"ana_config__vcsel_pulse_width_offset"
	.byte	0x7
	.uahalf	0x243
	.uaword	0x1c2
	.byte	0x10
	.uleb128 0xc
	.string	"ana_config__fast_osc__config_ctrl"
	.byte	0x7
	.uahalf	0x24d
	.uaword	0x1c2
	.byte	0x11
	.uleb128 0xc
	.string	"sigma_estimator__effective_pulse_width_ns"
	.byte	0x7
	.uahalf	0x257
	.uaword	0x1c2
	.byte	0x12
	.uleb128 0xc
	.string	"sigma_estimator__effective_ambient_width_ns"
	.byte	0x7
	.uahalf	0x261
	.uaword	0x1c2
	.byte	0x13
	.uleb128 0xc
	.string	"sigma_estimator__sigma_ref_mm"
	.byte	0x7
	.uahalf	0x26b
	.uaword	0x1c2
	.byte	0x14
	.uleb128 0xc
	.string	"algo__crosstalk_compensation_valid_height_mm"
	.byte	0x7
	.uahalf	0x275
	.uaword	0x1c2
	.byte	0x15
	.uleb128 0xc
	.string	"spare_host_config__static_config_spare_0"
	.byte	0x7
	.uahalf	0x27f
	.uaword	0x1c2
	.byte	0x16
	.uleb128 0xc
	.string	"spare_host_config__static_config_spare_1"
	.byte	0x7
	.uahalf	0x289
	.uaword	0x1c2
	.byte	0x17
	.uleb128 0xc
	.string	"algo__range_ignore_threshold_mcps"
	.byte	0x7
	.uahalf	0x293
	.uaword	0x1fe
	.byte	0x18
	.uleb128 0xc
	.string	"algo__range_ignore_valid_height_mm"
	.byte	0x7
	.uahalf	0x29d
	.uaword	0x1c2
	.byte	0x1a
	.uleb128 0xc
	.string	"algo__range_min_clip"
	.byte	0x7
	.uahalf	0x2a7
	.uaword	0x1c2
	.byte	0x1b
	.uleb128 0xc
	.string	"algo__consistency_check__tolerance"
	.byte	0x7
	.uahalf	0x2b2
	.uaword	0x1c2
	.byte	0x1c
	.uleb128 0xc
	.string	"spare_host_config__static_config_spare_2"
	.byte	0x7
	.uahalf	0x2bc
	.uaword	0x1c2
	.byte	0x1d
	.uleb128 0xc
	.string	"sd_config__reset_stages_msb"
	.byte	0x7
	.uahalf	0x2c6
	.uaword	0x1c2
	.byte	0x1e
	.uleb128 0xc
	.string	"sd_config__reset_stages_lsb"
	.byte	0x7
	.uahalf	0x2d0
	.uaword	0x1c2
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_static_config_t"
	.byte	0x7
	.uahalf	0x2db
	.uaword	0x703
	.uleb128 0xb
	.byte	0x16
	.byte	0x7
	.uahalf	0x2e7
	.uaword	0xdbc
	.uleb128 0xc
	.string	"gph_config__stream_count_update_value"
	.byte	0x7
	.uahalf	0x2e8
	.uaword	0x1c2
	.byte	0
	.uleb128 0xc
	.string	"global_config__stream_divider"
	.byte	0x7
	.uahalf	0x2f2
	.uaword	0x1c2
	.byte	0x1
	.uleb128 0xc
	.string	"system__interrupt_config_gpio"
	.byte	0x7
	.uahalf	0x2fc
	.uaword	0x1c2
	.byte	0x2
	.uleb128 0xc
	.string	"cal_config__vcsel_start"
	.byte	0x7
	.uahalf	0x30b
	.uaword	0x1c2
	.byte	0x3
	.uleb128 0xc
	.string	"cal_config__repeat_rate"
	.byte	0x7
	.uahalf	0x315
	.uaword	0x1fe
	.byte	0x4
	.uleb128 0xc
	.string	"global_config__vcsel_width"
	.byte	0x7
	.uahalf	0x31f
	.uaword	0x1c2
	.byte	0x6
	.uleb128 0xc
	.string	"phasecal_config__timeout_macrop"
	.byte	0x7
	.uahalf	0x329
	.uaword	0x1c2
	.byte	0x7
	.uleb128 0xc
	.string	"phasecal_config__target"
	.byte	0x7
	.uahalf	0x333
	.uaword	0x1c2
	.byte	0x8
	.uleb128 0xc
	.string	"phasecal_config__override"
	.byte	0x7
	.uahalf	0x33d
	.uaword	0x1c2
	.byte	0x9
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x347
	.uaword	0x1c2
	.byte	0xa
	.uleb128 0xc
	.string	"system__thresh_rate_high"
	.byte	0x7
	.uahalf	0x352
	.uaword	0x1fe
	.byte	0xc
	.uleb128 0xc
	.string	"system__thresh_rate_low"
	.byte	0x7
	.uahalf	0x35c
	.uaword	0x1fe
	.byte	0xe
	.uleb128 0xa
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x366
	.uaword	0x1fe
	.byte	0x10
	.uleb128 0xc
	.string	"dss_config__manual_block_select"
	.byte	0x7
	.uahalf	0x370
	.uaword	0x1c2
	.byte	0x12
	.uleb128 0xc
	.string	"dss_config__aperture_attenuation"
	.byte	0x7
	.uahalf	0x37a
	.uaword	0x1c2
	.byte	0x13
	.uleb128 0xc
	.string	"dss_config__max_spads_limit"
	.byte	0x7
	.uahalf	0x384
	.uaword	0x1c2
	.byte	0x14
	.uleb128 0xc
	.string	"dss_config__min_spads_limit"
	.byte	0x7
	.uahalf	0x38e
	.uaword	0x1c2
	.byte	0x15
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_general_config_t"
	.byte	0x7
	.uahalf	0x398
	.uaword	0xb68
	.uleb128 0xb
	.byte	0x18
	.byte	0x7
	.uahalf	0x3a4
	.uaword	0x1072
	.uleb128 0xc
	.string	"mm_config__timeout_macrop_a_hi"
	.byte	0x7
	.uahalf	0x3a5
	.uaword	0x1c2
	.byte	0
	.uleb128 0xc
	.string	"mm_config__timeout_macrop_a_lo"
	.byte	0x7
	.uahalf	0x3af
	.uaword	0x1c2
	.byte	0x1
	.uleb128 0xc
	.string	"mm_config__timeout_macrop_b_hi"
	.byte	0x7
	.uahalf	0x3b9
	.uaword	0x1c2
	.byte	0x2
	.uleb128 0xc
	.string	"mm_config__timeout_macrop_b_lo"
	.byte	0x7
	.uahalf	0x3c3
	.uaword	0x1c2
	.byte	0x3
	.uleb128 0xc
	.string	"range_config__timeout_macrop_a_hi"
	.byte	0x7
	.uahalf	0x3cd
	.uaword	0x1c2
	.byte	0x4
	.uleb128 0xc
	.string	"range_config__timeout_macrop_a_lo"
	.byte	0x7
	.uahalf	0x3d7
	.uaword	0x1c2
	.byte	0x5
	.uleb128 0xc
	.string	"range_config__vcsel_period_a"
	.byte	0x7
	.uahalf	0x3e1
	.uaword	0x1c2
	.byte	0x6
	.uleb128 0xc
	.string	"range_config__timeout_macrop_b_hi"
	.byte	0x7
	.uahalf	0x3eb
	.uaword	0x1c2
	.byte	0x7
	.uleb128 0xc
	.string	"range_config__timeout_macrop_b_lo"
	.byte	0x7
	.uahalf	0x3f5
	.uaword	0x1c2
	.byte	0x8
	.uleb128 0xc
	.string	"range_config__vcsel_period_b"
	.byte	0x7
	.uahalf	0x3ff
	.uaword	0x1c2
	.byte	0x9
	.uleb128 0xc
	.string	"range_config__sigma_thresh"
	.byte	0x7
	.uahalf	0x409
	.uaword	0x1fe
	.byte	0xa
	.uleb128 0xc
	.string	"range_config__min_count_rate_rtn_limit_mcps"
	.byte	0x7
	.uahalf	0x413
	.uaword	0x1fe
	.byte	0xc
	.uleb128 0xc
	.string	"range_config__valid_phase_low"
	.byte	0x7
	.uahalf	0x41d
	.uaword	0x1c2
	.byte	0xe
	.uleb128 0xc
	.string	"range_config__valid_phase_high"
	.byte	0x7
	.uahalf	0x427
	.uaword	0x1c2
	.byte	0xf
	.uleb128 0xc
	.string	"system__intermeasurement_period"
	.byte	0x7
	.uahalf	0x431
	.uaword	0x23f
	.byte	0x10
	.uleb128 0xc
	.string	"system__fractional_enable"
	.byte	0x7
	.uahalf	0x43b
	.uaword	0x1c2
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_timing_config_t"
	.byte	0x7
	.uahalf	0x445
	.uaword	0xddc
	.uleb128 0xb
	.byte	0x14
	.byte	0x7
	.uahalf	0x451
	.uaword	0x12e4
	.uleb128 0xc
	.string	"system__grouped_parameter_hold_0"
	.byte	0x7
	.uahalf	0x452
	.uaword	0x1c2
	.byte	0
	.uleb128 0xc
	.string	"system__thresh_high"
	.byte	0x7
	.uahalf	0x45d
	.uaword	0x1fe
	.byte	0x2
	.uleb128 0xc
	.string	"system__thresh_low"
	.byte	0x7
	.uahalf	0x467
	.uaword	0x1fe
	.byte	0x4
	.uleb128 0xc
	.string	"system__enable_xtalk_per_quadrant"
	.byte	0x7
	.uahalf	0x471
	.uaword	0x1c2
	.byte	0x6
	.uleb128 0xc
	.string	"system__seed_config"
	.byte	0x7
	.uahalf	0x47b
	.uaword	0x1c2
	.byte	0x7
	.uleb128 0xc
	.string	"sd_config__woi_sd0"
	.byte	0x7
	.uahalf	0x486
	.uaword	0x1c2
	.byte	0x8
	.uleb128 0xc
	.string	"sd_config__woi_sd1"
	.byte	0x7
	.uahalf	0x490
	.uaword	0x1c2
	.byte	0x9
	.uleb128 0xc
	.string	"sd_config__initial_phase_sd0"
	.byte	0x7
	.uahalf	0x49a
	.uaword	0x1c2
	.byte	0xa
	.uleb128 0xc
	.string	"sd_config__initial_phase_sd1"
	.byte	0x7
	.uahalf	0x4a4
	.uaword	0x1c2
	.byte	0xb
	.uleb128 0xc
	.string	"system__grouped_parameter_hold_1"
	.byte	0x7
	.uahalf	0x4ae
	.uaword	0x1c2
	.byte	0xc
	.uleb128 0xc
	.string	"sd_config__first_order_select"
	.byte	0x7
	.uahalf	0x4b9
	.uaword	0x1c2
	.byte	0xd
	.uleb128 0xc
	.string	"sd_config__quantifier"
	.byte	0x7
	.uahalf	0x4c4
	.uaword	0x1c2
	.byte	0xe
	.uleb128 0xc
	.string	"roi_config__user_roi_centre_spad"
	.byte	0x7
	.uahalf	0x4ce
	.uaword	0x1c2
	.byte	0xf
	.uleb128 0xc
	.string	"roi_config__user_roi_requested_global_xy_size"
	.byte	0x7
	.uahalf	0x4d8
	.uaword	0x1c2
	.byte	0x10
	.uleb128 0xc
	.string	"system__sequence_config"
	.byte	0x7
	.uahalf	0x4e2
	.uaword	0x1c2
	.byte	0x11
	.uleb128 0xc
	.string	"system__grouped_parameter_hold"
	.byte	0x7
	.uahalf	0x4f3
	.uaword	0x1c2
	.byte	0x12
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_dynamic_config_t"
	.byte	0x7
	.uahalf	0x4fe
	.uaword	0x1091
	.uleb128 0xb
	.byte	0x6
	.byte	0x7
	.uahalf	0x50a
	.uaword	0x13b3
	.uleb128 0xc
	.string	"power_management__go1_power_force"
	.byte	0x7
	.uahalf	0x50b
	.uaword	0x1c2
	.byte	0
	.uleb128 0xc
	.string	"system__stream_count_ctrl"
	.byte	0x7
	.uahalf	0x515
	.uaword	0x1c2
	.byte	0x1
	.uleb128 0xc
	.string	"firmware__enable"
	.byte	0x7
	.uahalf	0x51f
	.uaword	0x1c2
	.byte	0x2
	.uleb128 0xc
	.string	"system__interrupt_clear"
	.byte	0x7
	.uahalf	0x529
	.uaword	0x1c2
	.byte	0x3
	.uleb128 0xc
	.string	"system__mode_start"
	.byte	0x7
	.uahalf	0x534
	.uaword	0x1c2
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_system_control_t"
	.byte	0x7
	.uahalf	0x543
	.uaword	0x1304
	.uleb128 0xb
	.byte	0x2c
	.byte	0x7
	.uahalf	0x54f
	.uaword	0x17c2
	.uleb128 0xc
	.string	"result__interrupt_status"
	.byte	0x7
	.uahalf	0x550
	.uaword	0x1c2
	.byte	0
	.uleb128 0xc
	.string	"result__range_status"
	.byte	0x7
	.uahalf	0x55c
	.uaword	0x1c2
	.byte	0x1
	.uleb128 0xc
	.string	"result__report_status"
	.byte	0x7
	.uahalf	0x569
	.uaword	0x1c2
	.byte	0x2
	.uleb128 0xc
	.string	"result__stream_count"
	.byte	0x7
	.uahalf	0x573
	.uaword	0x1c2
	.byte	0x3
	.uleb128 0xc
	.string	"result__dss_actual_effective_spads_sd0"
	.byte	0x7
	.uahalf	0x57d
	.uaword	0x1fe
	.byte	0x4
	.uleb128 0xc
	.string	"result__peak_signal_count_rate_mcps_sd0"
	.byte	0x7
	.uahalf	0x587
	.uaword	0x1fe
	.byte	0x6
	.uleb128 0xc
	.string	"result__ambient_count_rate_mcps_sd0"
	.byte	0x7
	.uahalf	0x591
	.uaword	0x1fe
	.byte	0x8
	.uleb128 0xc
	.string	"result__sigma_sd0"
	.byte	0x7
	.uahalf	0x59b
	.uaword	0x1fe
	.byte	0xa
	.uleb128 0xc
	.string	"result__phase_sd0"
	.byte	0x7
	.uahalf	0x5a5
	.uaword	0x1fe
	.byte	0xc
	.uleb128 0xc
	.string	"result__final_crosstalk_corrected_range_mm_sd0"
	.byte	0x7
	.uahalf	0x5af
	.uaword	0x1fe
	.byte	0xe
	.uleb128 0xc
	.string	"result__peak_signal_count_rate_crosstalk_corrected_mcps_sd0"
	.byte	0x7
	.uahalf	0x5b9
	.uaword	0x1fe
	.byte	0x10
	.uleb128 0xc
	.string	"result__mm_inner_actual_effective_spads_sd0"
	.byte	0x7
	.uahalf	0x5c3
	.uaword	0x1fe
	.byte	0x12
	.uleb128 0xc
	.string	"result__mm_outer_actual_effective_spads_sd0"
	.byte	0x7
	.uahalf	0x5cd
	.uaword	0x1fe
	.byte	0x14
	.uleb128 0xc
	.string	"result__avg_signal_count_rate_mcps_sd0"
	.byte	0x7
	.uahalf	0x5d7
	.uaword	0x1fe
	.byte	0x16
	.uleb128 0xc
	.string	"result__dss_actual_effective_spads_sd1"
	.byte	0x7
	.uahalf	0x5e1
	.uaword	0x1fe
	.byte	0x18
	.uleb128 0xc
	.string	"result__peak_signal_count_rate_mcps_sd1"
	.byte	0x7
	.uahalf	0x5eb
	.uaword	0x1fe
	.byte	0x1a
	.uleb128 0xc
	.string	"result__ambient_count_rate_mcps_sd1"
	.byte	0x7
	.uahalf	0x5f5
	.uaword	0x1fe
	.byte	0x1c
	.uleb128 0xc
	.string	"result__sigma_sd1"
	.byte	0x7
	.uahalf	0x5ff
	.uaword	0x1fe
	.byte	0x1e
	.uleb128 0xc
	.string	"result__phase_sd1"
	.byte	0x7
	.uahalf	0x609
	.uaword	0x1fe
	.byte	0x20
	.uleb128 0xc
	.string	"result__final_crosstalk_corrected_range_mm_sd1"
	.byte	0x7
	.uahalf	0x613
	.uaword	0x1fe
	.byte	0x22
	.uleb128 0xc
	.string	"result__spare_0_sd1"
	.byte	0x7
	.uahalf	0x61d
	.uaword	0x1fe
	.byte	0x24
	.uleb128 0xc
	.string	"result__spare_1_sd1"
	.byte	0x7
	.uahalf	0x627
	.uaword	0x1fe
	.byte	0x26
	.uleb128 0xc
	.string	"result__spare_2_sd1"
	.byte	0x7
	.uahalf	0x631
	.uaword	0x1fe
	.byte	0x28
	.uleb128 0xc
	.string	"result__spare_3_sd1"
	.byte	0x7
	.uahalf	0x63b
	.uaword	0x1c2
	.byte	0x2a
	.uleb128 0xc
	.string	"result__thresh_info"
	.byte	0x7
	.uahalf	0x645
	.uaword	0x1c2
	.byte	0x2b
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_system_results_t"
	.byte	0x7
	.uahalf	0x650
	.uaword	0x13d3
	.uleb128 0xb
	.byte	0x24
	.byte	0x7
	.uahalf	0x65c
	.uaword	0x1984
	.uleb128 0xc
	.string	"result_core__ambient_window_events_sd0"
	.byte	0x7
	.uahalf	0x65d
	.uaword	0x23f
	.byte	0
	.uleb128 0xc
	.string	"result_core__ranging_total_events_sd0"
	.byte	0x7
	.uahalf	0x667
	.uaword	0x23f
	.byte	0x4
	.uleb128 0xc
	.string	"result_core__signal_total_events_sd0"
	.byte	0x7
	.uahalf	0x671
	.uaword	0x224
	.byte	0x8
	.uleb128 0xc
	.string	"result_core__total_periods_elapsed_sd0"
	.byte	0x7
	.uahalf	0x67b
	.uaword	0x23f
	.byte	0xc
	.uleb128 0xc
	.string	"result_core__ambient_window_events_sd1"
	.byte	0x7
	.uahalf	0x685
	.uaword	0x23f
	.byte	0x10
	.uleb128 0xc
	.string	"result_core__ranging_total_events_sd1"
	.byte	0x7
	.uahalf	0x68f
	.uaword	0x23f
	.byte	0x14
	.uleb128 0xc
	.string	"result_core__signal_total_events_sd1"
	.byte	0x7
	.uahalf	0x699
	.uaword	0x224
	.byte	0x18
	.uleb128 0xc
	.string	"result_core__total_periods_elapsed_sd1"
	.byte	0x7
	.uahalf	0x6a3
	.uaword	0x23f
	.byte	0x1c
	.uleb128 0xc
	.string	"result_core__spare_0"
	.byte	0x7
	.uahalf	0x6ad
	.uaword	0x1c2
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_core_results_t"
	.byte	0x7
	.uahalf	0x6b7
	.uaword	0x17e2
	.uleb128 0xb
	.byte	0x38
	.byte	0x7
	.uahalf	0x6c3
	.uaword	0x1fd7
	.uleb128 0xc
	.string	"phasecal_result__reference_phase"
	.byte	0x7
	.uahalf	0x6c4
	.uaword	0x1fe
	.byte	0
	.uleb128 0xc
	.string	"phasecal_result__vcsel_start"
	.byte	0x7
	.uahalf	0x6ce
	.uaword	0x1c2
	.byte	0x2
	.uleb128 0xc
	.string	"ref_spad_char_result__num_actual_ref_spads"
	.byte	0x7
	.uahalf	0x6d8
	.uaword	0x1c2
	.byte	0x3
	.uleb128 0xc
	.string	"ref_spad_char_result__ref_location"
	.byte	0x7
	.uahalf	0x6e2
	.uaword	0x1c2
	.byte	0x4
	.uleb128 0xc
	.string	"vhv_result__coldboot_status"
	.byte	0x7
	.uahalf	0x6ec
	.uaword	0x1c2
	.byte	0x5
	.uleb128 0xc
	.string	"vhv_result__search_result"
	.byte	0x7
	.uahalf	0x6f6
	.uaword	0x1c2
	.byte	0x6
	.uleb128 0xc
	.string	"vhv_result__latest_setting"
	.byte	0x7
	.uahalf	0x700
	.uaword	0x1c2
	.byte	0x7
	.uleb128 0xc
	.string	"result__osc_calibrate_val"
	.byte	0x7
	.uahalf	0x70a
	.uaword	0x1fe
	.byte	0x8
	.uleb128 0xc
	.string	"ana_config__powerdown_go1"
	.byte	0x7
	.uahalf	0x714
	.uaword	0x1c2
	.byte	0xa
	.uleb128 0xc
	.string	"ana_config__ref_bg_ctrl"
	.byte	0x7
	.uahalf	0x71f
	.uaword	0x1c2
	.byte	0xb
	.uleb128 0xc
	.string	"ana_config__regdvdd1v2_ctrl"
	.byte	0x7
	.uahalf	0x72a
	.uaword	0x1c2
	.byte	0xc
	.uleb128 0xc
	.string	"ana_config__osc_slow_ctrl"
	.byte	0x7
	.uahalf	0x736
	.uaword	0x1c2
	.byte	0xd
	.uleb128 0xc
	.string	"test_mode__status"
	.byte	0x7
	.uahalf	0x742
	.uaword	0x1c2
	.byte	0xe
	.uleb128 0xc
	.string	"firmware__system_status"
	.byte	0x7
	.uahalf	0x74c
	.uaword	0x1c2
	.byte	0xf
	.uleb128 0xc
	.string	"firmware__mode_status"
	.byte	0x7
	.uahalf	0x757
	.uaword	0x1c2
	.byte	0x10
	.uleb128 0xc
	.string	"firmware__secondary_mode_status"
	.byte	0x7
	.uahalf	0x761
	.uaword	0x1c2
	.byte	0x11
	.uleb128 0xc
	.string	"firmware__cal_repeat_rate_counter"
	.byte	0x7
	.uahalf	0x76b
	.uaword	0x1fe
	.byte	0x12
	.uleb128 0xc
	.string	"gph__system__thresh_high"
	.byte	0x7
	.uahalf	0x775
	.uaword	0x1fe
	.byte	0x14
	.uleb128 0xc
	.string	"gph__system__thresh_low"
	.byte	0x7
	.uahalf	0x77f
	.uaword	0x1fe
	.byte	0x16
	.uleb128 0xc
	.string	"gph__system__enable_xtalk_per_quadrant"
	.byte	0x7
	.uahalf	0x789
	.uaword	0x1c2
	.byte	0x18
	.uleb128 0xc
	.string	"gph__spare_0"
	.byte	0x7
	.uahalf	0x793
	.uaword	0x1c2
	.byte	0x19
	.uleb128 0xc
	.string	"gph__sd_config__woi_sd0"
	.byte	0x7
	.uahalf	0x79f
	.uaword	0x1c2
	.byte	0x1a
	.uleb128 0xc
	.string	"gph__sd_config__woi_sd1"
	.byte	0x7
	.uahalf	0x7a9
	.uaword	0x1c2
	.byte	0x1b
	.uleb128 0xc
	.string	"gph__sd_config__initial_phase_sd0"
	.byte	0x7
	.uahalf	0x7b3
	.uaword	0x1c2
	.byte	0x1c
	.uleb128 0xc
	.string	"gph__sd_config__initial_phase_sd1"
	.byte	0x7
	.uahalf	0x7bd
	.uaword	0x1c2
	.byte	0x1d
	.uleb128 0xc
	.string	"gph__sd_config__first_order_select"
	.byte	0x7
	.uahalf	0x7c7
	.uaword	0x1c2
	.byte	0x1e
	.uleb128 0xc
	.string	"gph__sd_config__quantifier"
	.byte	0x7
	.uahalf	0x7d2
	.uaword	0x1c2
	.byte	0x1f
	.uleb128 0xc
	.string	"gph__roi_config__user_roi_centre_spad"
	.byte	0x7
	.uahalf	0x7dc
	.uaword	0x1c2
	.byte	0x20
	.uleb128 0xc
	.string	"gph__roi_config__user_roi_requested_global_xy_size"
	.byte	0x7
	.uahalf	0x7e6
	.uaword	0x1c2
	.byte	0x21
	.uleb128 0xc
	.string	"gph__system__sequence_config"
	.byte	0x7
	.uahalf	0x7f0
	.uaword	0x1c2
	.byte	0x22
	.uleb128 0xc
	.string	"gph__gph_id"
	.byte	0x7
	.uahalf	0x801
	.uaword	0x1c2
	.byte	0x23
	.uleb128 0xc
	.string	"system__interrupt_set"
	.byte	0x7
	.uahalf	0x80b
	.uaword	0x1c2
	.byte	0x24
	.uleb128 0xc
	.string	"interrupt_manager__enables"
	.byte	0x7
	.uahalf	0x816
	.uaword	0x1c2
	.byte	0x25
	.uleb128 0xc
	.string	"interrupt_manager__clear"
	.byte	0x7
	.uahalf	0x824
	.uaword	0x1c2
	.byte	0x26
	.uleb128 0xc
	.string	"interrupt_manager__status"
	.byte	0x7
	.uahalf	0x832
	.uaword	0x1c2
	.byte	0x27
	.uleb128 0xc
	.string	"mcu_to_host_bank__wr_access_en"
	.byte	0x7
	.uahalf	0x840
	.uaword	0x1c2
	.byte	0x28
	.uleb128 0xc
	.string	"power_management__go1_reset_status"
	.byte	0x7
	.uahalf	0x84a
	.uaword	0x1c2
	.byte	0x29
	.uleb128 0xc
	.string	"pad_startup_mode__value_ro"
	.byte	0x7
	.uahalf	0x854
	.uaword	0x1c2
	.byte	0x2a
	.uleb128 0xc
	.string	"pad_startup_mode__value_ctrl"
	.byte	0x7
	.uahalf	0x85f
	.uaword	0x1c2
	.byte	0x2b
	.uleb128 0xc
	.string	"pll_period_us"
	.byte	0x7
	.uahalf	0x86c
	.uaword	0x23f
	.byte	0x2c
	.uleb128 0xc
	.string	"interrupt_scheduler__data_out"
	.byte	0x7
	.uahalf	0x876
	.uaword	0x23f
	.byte	0x30
	.uleb128 0xc
	.string	"nvm_bist__complete"
	.byte	0x7
	.uahalf	0x880
	.uaword	0x1c2
	.byte	0x34
	.uleb128 0xc
	.string	"nvm_bist__status"
	.byte	0x7
	.uahalf	0x88a
	.uaword	0x1c2
	.byte	0x35
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_debug_results_t"
	.byte	0x7
	.uahalf	0x894
	.uaword	0x19a2
	.uleb128 0xb
	.byte	0x32
	.byte	0x7
	.uahalf	0x8a0
	.uaword	0x27a8
	.uleb128 0xc
	.string	"identification__model_id"
	.byte	0x7
	.uahalf	0x8a1
	.uaword	0x1c2
	.byte	0
	.uleb128 0xc
	.string	"identification__module_type"
	.byte	0x7
	.uahalf	0x8ab
	.uaword	0x1c2
	.byte	0x1
	.uleb128 0xc
	.string	"identification__revision_id"
	.byte	0x7
	.uahalf	0x8b5
	.uaword	0x1c2
	.byte	0x2
	.uleb128 0xc
	.string	"identification__module_id"
	.byte	0x7
	.uahalf	0x8c0
	.uaword	0x1fe
	.byte	0x4
	.uleb128 0xc
	.string	"ana_config__fast_osc__trim_max"
	.byte	0x7
	.uahalf	0x8ca
	.uaword	0x1c2
	.byte	0x6
	.uleb128 0xc
	.string	"ana_config__fast_osc__freq_set"
	.byte	0x7
	.uahalf	0x8d4
	.uaword	0x1c2
	.byte	0x7
	.uleb128 0xc
	.string	"ana_config__vcsel_trim"
	.byte	0x7
	.uahalf	0x8de
	.uaword	0x1c2
	.byte	0x8
	.uleb128 0xc
	.string	"ana_config__vcsel_selion"
	.byte	0x7
	.uahalf	0x8e8
	.uaword	0x1c2
	.byte	0x9
	.uleb128 0xc
	.string	"ana_config__vcsel_selion_max"
	.byte	0x7
	.uahalf	0x8f2
	.uaword	0x1c2
	.byte	0xa
	.uleb128 0xc
	.string	"protected_laser_safety__lock_bit"
	.byte	0x7
	.uahalf	0x8fc
	.uaword	0x1c2
	.byte	0xb
	.uleb128 0xc
	.string	"laser_safety__key"
	.byte	0x7
	.uahalf	0x906
	.uaword	0x1c2
	.byte	0xc
	.uleb128 0xc
	.string	"laser_safety__key_ro"
	.byte	0x7
	.uahalf	0x910
	.uaword	0x1c2
	.byte	0xd
	.uleb128 0xc
	.string	"laser_safety__clip"
	.byte	0x7
	.uahalf	0x91a
	.uaword	0x1c2
	.byte	0xe
	.uleb128 0xc
	.string	"laser_safety__mult"
	.byte	0x7
	.uahalf	0x924
	.uaword	0x1c2
	.byte	0xf
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_0"
	.byte	0x7
	.uahalf	0x92e
	.uaword	0x1c2
	.byte	0x10
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_1"
	.byte	0x7
	.uahalf	0x938
	.uaword	0x1c2
	.byte	0x11
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_2"
	.byte	0x7
	.uahalf	0x942
	.uaword	0x1c2
	.byte	0x12
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_3"
	.byte	0x7
	.uahalf	0x94c
	.uaword	0x1c2
	.byte	0x13
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_4"
	.byte	0x7
	.uahalf	0x956
	.uaword	0x1c2
	.byte	0x14
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_5"
	.byte	0x7
	.uahalf	0x960
	.uaword	0x1c2
	.byte	0x15
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_6"
	.byte	0x7
	.uahalf	0x96a
	.uaword	0x1c2
	.byte	0x16
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_7"
	.byte	0x7
	.uahalf	0x974
	.uaword	0x1c2
	.byte	0x17
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_8"
	.byte	0x7
	.uahalf	0x97e
	.uaword	0x1c2
	.byte	0x18
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_9"
	.byte	0x7
	.uahalf	0x988
	.uaword	0x1c2
	.byte	0x19
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_10"
	.byte	0x7
	.uahalf	0x992
	.uaword	0x1c2
	.byte	0x1a
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_11"
	.byte	0x7
	.uahalf	0x99c
	.uaword	0x1c2
	.byte	0x1b
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_12"
	.byte	0x7
	.uahalf	0x9a6
	.uaword	0x1c2
	.byte	0x1c
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_13"
	.byte	0x7
	.uahalf	0x9b0
	.uaword	0x1c2
	.byte	0x1d
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_14"
	.byte	0x7
	.uahalf	0x9ba
	.uaword	0x1c2
	.byte	0x1e
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_15"
	.byte	0x7
	.uahalf	0x9c4
	.uaword	0x1c2
	.byte	0x1f
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_16"
	.byte	0x7
	.uahalf	0x9ce
	.uaword	0x1c2
	.byte	0x20
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_17"
	.byte	0x7
	.uahalf	0x9d8
	.uaword	0x1c2
	.byte	0x21
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_18"
	.byte	0x7
	.uahalf	0x9e2
	.uaword	0x1c2
	.byte	0x22
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_19"
	.byte	0x7
	.uahalf	0x9ec
	.uaword	0x1c2
	.byte	0x23
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_20"
	.byte	0x7
	.uahalf	0x9f6
	.uaword	0x1c2
	.byte	0x24
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_21"
	.byte	0x7
	.uahalf	0xa00
	.uaword	0x1c2
	.byte	0x25
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_22"
	.byte	0x7
	.uahalf	0xa0a
	.uaword	0x1c2
	.byte	0x26
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_23"
	.byte	0x7
	.uahalf	0xa14
	.uaword	0x1c2
	.byte	0x27
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_24"
	.byte	0x7
	.uahalf	0xa1e
	.uaword	0x1c2
	.byte	0x28
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_25"
	.byte	0x7
	.uahalf	0xa28
	.uaword	0x1c2
	.byte	0x29
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_26"
	.byte	0x7
	.uahalf	0xa32
	.uaword	0x1c2
	.byte	0x2a
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_27"
	.byte	0x7
	.uahalf	0xa3c
	.uaword	0x1c2
	.byte	0x2b
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_28"
	.byte	0x7
	.uahalf	0xa46
	.uaword	0x1c2
	.byte	0x2c
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_29"
	.byte	0x7
	.uahalf	0xa50
	.uaword	0x1c2
	.byte	0x2d
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_30"
	.byte	0x7
	.uahalf	0xa5a
	.uaword	0x1c2
	.byte	0x2e
	.uleb128 0xc
	.string	"global_config__spad_enables_rtn_31"
	.byte	0x7
	.uahalf	0xa64
	.uaword	0x1c2
	.byte	0x2f
	.uleb128 0xc
	.string	"roi_config__mode_roi_centre_spad"
	.byte	0x7
	.uahalf	0xa6e
	.uaword	0x1c2
	.byte	0x30
	.uleb128 0xc
	.string	"roi_config__mode_roi_xy_size"
	.byte	0x7
	.uahalf	0xa78
	.uaword	0x1c2
	.byte	0x31
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_nvm_copy_data_t"
	.byte	0x7
	.uahalf	0xa82
	.uaword	0x1ff6
	.uleb128 0x7
	.byte	0x8
	.byte	0x8
	.byte	0x9d
	.uaword	0x2817
	.uleb128 0x8
	.string	"ll_revision"
	.byte	0x8
	.byte	0x9e
	.uaword	0x23f
	.byte	0
	.uleb128 0x8
	.string	"ll_major"
	.byte	0x8
	.byte	0x9f
	.uaword	0x1c2
	.byte	0x4
	.uleb128 0x8
	.string	"ll_minor"
	.byte	0x8
	.byte	0xa0
	.uaword	0x1c2
	.byte	0x5
	.uleb128 0x8
	.string	"ll_build"
	.byte	0x8
	.byte	0xa1
	.uaword	0x1c2
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.string	"VL53L1_ll_version_t"
	.byte	0x8
	.byte	0xa2
	.uaword	0x27c7
	.uleb128 0x7
	.byte	0x10
	.byte	0x8
	.byte	0xa8
	.uaword	0x28cf
	.uleb128 0x8
	.string	"device_test_mode"
	.byte	0x8
	.byte	0xaa
	.uaword	0x1c2
	.byte	0
	.uleb128 0x9
	.uaword	.LASF19
	.byte	0x8
	.byte	0xab
	.uaword	0x1c2
	.byte	0x1
	.uleb128 0x9
	.uaword	.LASF20
	.byte	0x8
	.byte	0xac
	.uaword	0x23f
	.byte	0x4
	.uleb128 0x8
	.string	"target_count_rate_mcps"
	.byte	0x8
	.byte	0xad
	.uaword	0x1fe
	.byte	0x8
	.uleb128 0x8
	.string	"min_count_rate_limit_mcps"
	.byte	0x8
	.byte	0xaf
	.uaword	0x1fe
	.byte	0xa
	.uleb128 0x8
	.string	"max_count_rate_limit_mcps"
	.byte	0x8
	.byte	0xb1
	.uaword	0x1fe
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"VL53L1_refspadchar_config_t"
	.byte	0x8
	.byte	0xb4
	.uaword	0x2832
	.uleb128 0x7
	.byte	0xc
	.byte	0x8
	.byte	0xbb
	.uaword	0x2968
	.uleb128 0x8
	.string	"array_select"
	.byte	0x8
	.byte	0xbd
	.uaword	0x405
	.byte	0
	.uleb128 0x9
	.uaword	.LASF19
	.byte	0x8
	.byte	0xc1
	.uaword	0x1c2
	.byte	0x1
	.uleb128 0x8
	.string	"vcsel_start"
	.byte	0x8
	.byte	0xc3
	.uaword	0x1c2
	.byte	0x2
	.uleb128 0x8
	.string	"vcsel_width"
	.byte	0x8
	.byte	0xc5
	.uaword	0x1c2
	.byte	0x3
	.uleb128 0x9
	.uaword	.LASF20
	.byte	0x8
	.byte	0xc7
	.uaword	0x23f
	.byte	0x4
	.uleb128 0x8
	.string	"rate_limit_mcps"
	.byte	0x8
	.byte	0xc9
	.uaword	0x1fe
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"VL53L1_ssc_config_t"
	.byte	0x8
	.byte	0xce
	.uaword	0x28f2
	.uleb128 0x7
	.byte	0x18
	.byte	0x8
	.byte	0xd4
	.uaword	0x2b28
	.uleb128 0x9
	.uaword	.LASF9
	.byte	0x8
	.byte	0xd7
	.uaword	0x23f
	.byte	0
	.uleb128 0x9
	.uaword	.LASF10
	.byte	0x8
	.byte	0xd9
	.uaword	0x1e2
	.byte	0x4
	.uleb128 0x9
	.uaword	.LASF11
	.byte	0x8
	.byte	0xdb
	.uaword	0x1e2
	.byte	0x6
	.uleb128 0x8
	.string	"nvm_default__crosstalk_compensation_plane_offset_kcps"
	.byte	0x8
	.byte	0xdd
	.uaword	0x23f
	.byte	0x8
	.uleb128 0x8
	.string	"nvm_default__crosstalk_compensation_x_plane_gradient_kcps"
	.byte	0x8
	.byte	0xdf
	.uaword	0x1e2
	.byte	0xc
	.uleb128 0x8
	.string	"nvm_default__crosstalk_compensation_y_plane_gradient_kcps"
	.byte	0x8
	.byte	0xe1
	.uaword	0x1e2
	.byte	0xe
	.uleb128 0x8
	.string	"global_crosstalk_compensation_enable"
	.byte	0x8
	.byte	0xe3
	.uaword	0x1c2
	.byte	0x10
	.uleb128 0x8
	.string	"lite_mode_crosstalk_margin_kcps"
	.byte	0x8
	.byte	0xe5
	.uaword	0x1e2
	.byte	0x12
	.uleb128 0x8
	.string	"crosstalk_range_ignore_threshold_mult"
	.byte	0x8
	.byte	0xeb
	.uaword	0x1c2
	.byte	0x14
	.uleb128 0x8
	.string	"crosstalk_range_ignore_threshold_rate_mcps"
	.byte	0x8
	.byte	0xed
	.uaword	0x1fe
	.byte	0x16
	.byte	0
	.uleb128 0x3
	.string	"VL53L1_xtalk_config_t"
	.byte	0x8
	.byte	0xf2
	.uaword	0x2983
	.uleb128 0x7
	.byte	0x4c
	.byte	0x8
	.byte	0xfe
	.uaword	0x304b
	.uleb128 0xc
	.string	"tp_tuning_parm_version"
	.byte	0x8
	.uahalf	0x101
	.uaword	0x1fe
	.byte	0
	.uleb128 0xc
	.string	"tp_tuning_parm_key_table_version"
	.byte	0x8
	.uahalf	0x104
	.uaword	0x1fe
	.byte	0x2
	.uleb128 0xc
	.string	"tp_tuning_parm_lld_version"
	.byte	0x8
	.uahalf	0x108
	.uaword	0x1fe
	.byte	0x4
	.uleb128 0xc
	.string	"tp_init_phase_rtn_lite_long"
	.byte	0x8
	.uahalf	0x10c
	.uaword	0x1c2
	.byte	0x6
	.uleb128 0xc
	.string	"tp_init_phase_rtn_lite_med"
	.byte	0x8
	.uahalf	0x110
	.uaword	0x1c2
	.byte	0x7
	.uleb128 0xc
	.string	"tp_init_phase_rtn_lite_short"
	.byte	0x8
	.uahalf	0x114
	.uaword	0x1c2
	.byte	0x8
	.uleb128 0xc
	.string	"tp_init_phase_ref_lite_long"
	.byte	0x8
	.uahalf	0x118
	.uaword	0x1c2
	.byte	0x9
	.uleb128 0xc
	.string	"tp_init_phase_ref_lite_med"
	.byte	0x8
	.uahalf	0x11c
	.uaword	0x1c2
	.byte	0xa
	.uleb128 0xc
	.string	"tp_init_phase_ref_lite_short"
	.byte	0x8
	.uahalf	0x120
	.uaword	0x1c2
	.byte	0xb
	.uleb128 0xc
	.string	"tp_consistency_lite_phase_tolerance"
	.byte	0x8
	.uahalf	0x125
	.uaword	0x1c2
	.byte	0xc
	.uleb128 0xc
	.string	"tp_phasecal_target"
	.byte	0x8
	.uahalf	0x129
	.uaword	0x1c2
	.byte	0xd
	.uleb128 0xc
	.string	"tp_cal_repeat_rate"
	.byte	0x8
	.uahalf	0x12c
	.uaword	0x1fe
	.byte	0xe
	.uleb128 0xc
	.string	"tp_lite_min_clip"
	.byte	0x8
	.uahalf	0x130
	.uaword	0x1c2
	.byte	0x10
	.uleb128 0xc
	.string	"tp_lite_long_sigma_thresh_mm"
	.byte	0x8
	.uahalf	0x135
	.uaword	0x1fe
	.byte	0x12
	.uleb128 0xc
	.string	"tp_lite_med_sigma_thresh_mm"
	.byte	0x8
	.uahalf	0x139
	.uaword	0x1fe
	.byte	0x14
	.uleb128 0xc
	.string	"tp_lite_short_sigma_thresh_mm"
	.byte	0x8
	.uahalf	0x13d
	.uaword	0x1fe
	.byte	0x16
	.uleb128 0xc
	.string	"tp_lite_long_min_count_rate_rtn_mcps"
	.byte	0x8
	.uahalf	0x142
	.uaword	0x1fe
	.byte	0x18
	.uleb128 0xc
	.string	"tp_lite_med_min_count_rate_rtn_mcps"
	.byte	0x8
	.uahalf	0x146
	.uaword	0x1fe
	.byte	0x1a
	.uleb128 0xc
	.string	"tp_lite_short_min_count_rate_rtn_mcps"
	.byte	0x8
	.uahalf	0x14a
	.uaword	0x1fe
	.byte	0x1c
	.uleb128 0xc
	.string	"tp_lite_sigma_est_pulse_width_ns"
	.byte	0x8
	.uahalf	0x14f
	.uaword	0x1c2
	.byte	0x1e
	.uleb128 0xc
	.string	"tp_lite_sigma_est_amb_width_ns"
	.byte	0x8
	.uahalf	0x152
	.uaword	0x1c2
	.byte	0x1f
	.uleb128 0xc
	.string	"tp_lite_sigma_ref_mm"
	.byte	0x8
	.uahalf	0x155
	.uaword	0x1c2
	.byte	0x20
	.uleb128 0xc
	.string	"tp_lite_seed_cfg"
	.byte	0x8
	.uahalf	0x158
	.uaword	0x1c2
	.byte	0x21
	.uleb128 0xc
	.string	"tp_timed_seed_cfg"
	.byte	0x8
	.uahalf	0x15b
	.uaword	0x1c2
	.byte	0x22
	.uleb128 0xc
	.string	"tp_lite_quantifier"
	.byte	0x8
	.uahalf	0x15f
	.uaword	0x1c2
	.byte	0x23
	.uleb128 0xc
	.string	"tp_lite_first_order_select"
	.byte	0x8
	.uahalf	0x162
	.uaword	0x1c2
	.byte	0x24
	.uleb128 0xc
	.string	"tp_dss_target_lite_mcps"
	.byte	0x8
	.uahalf	0x166
	.uaword	0x1fe
	.byte	0x26
	.uleb128 0xc
	.string	"tp_dss_target_timed_mcps"
	.byte	0x8
	.uahalf	0x169
	.uaword	0x1fe
	.byte	0x28
	.uleb128 0xc
	.string	"tp_phasecal_timeout_lite_us"
	.byte	0x8
	.uahalf	0x16d
	.uaword	0x23f
	.byte	0x2c
	.uleb128 0xc
	.string	"tp_phasecal_timeout_timed_us"
	.byte	0x8
	.uahalf	0x171
	.uaword	0x23f
	.byte	0x30
	.uleb128 0xc
	.string	"tp_mm_timeout_lite_us"
	.byte	0x8
	.uahalf	0x175
	.uaword	0x23f
	.byte	0x34
	.uleb128 0xc
	.string	"tp_mm_timeout_timed_us"
	.byte	0x8
	.uahalf	0x178
	.uaword	0x23f
	.byte	0x38
	.uleb128 0xc
	.string	"tp_mm_timeout_lpa_us"
	.byte	0x8
	.uahalf	0x17b
	.uaword	0x23f
	.byte	0x3c
	.uleb128 0xc
	.string	"tp_range_timeout_lite_us"
	.byte	0x8
	.uahalf	0x17f
	.uaword	0x23f
	.byte	0x40
	.uleb128 0xc
	.string	"tp_range_timeout_timed_us"
	.byte	0x8
	.uahalf	0x182
	.uaword	0x23f
	.byte	0x44
	.uleb128 0xc
	.string	"tp_range_timeout_lpa_us"
	.byte	0x8
	.uahalf	0x185
	.uaword	0x23f
	.byte	0x48
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_tuning_parm_storage_t"
	.byte	0x8
	.uahalf	0x189
	.uaword	0x2b45
	.uleb128 0xb
	.byte	0x2
	.byte	0x8
	.uahalf	0x191
	.uaword	0x3094
	.uleb128 0xa
	.uaword	.LASF21
	.byte	0x8
	.uahalf	0x193
	.uaword	0x1c2
	.byte	0
	.uleb128 0xa
	.uaword	.LASF22
	.byte	0x8
	.uahalf	0x194
	.uaword	0x1c2
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_optical_centre_t"
	.byte	0x8
	.uahalf	0x196
	.uaword	0x3070
	.uleb128 0xb
	.byte	0x4
	.byte	0x8
	.uahalf	0x19d
	.uaword	0x30f7
	.uleb128 0xa
	.uaword	.LASF21
	.byte	0x8
	.uahalf	0x19f
	.uaword	0x1c2
	.byte	0
	.uleb128 0xa
	.uaword	.LASF22
	.byte	0x8
	.uahalf	0x1a0
	.uaword	0x1c2
	.byte	0x1
	.uleb128 0xc
	.string	"width"
	.byte	0x8
	.uahalf	0x1a1
	.uaword	0x1c2
	.byte	0x2
	.uleb128 0xc
	.string	"height"
	.byte	0x8
	.uahalf	0x1a2
	.uaword	0x1c2
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_user_zone_t"
	.byte	0x8
	.uahalf	0x1a4
	.uaword	0x30b4
	.uleb128 0xb
	.byte	0xe
	.byte	0x8
	.uahalf	0x1ae
	.uaword	0x321e
	.uleb128 0xc
	.string	"intr_mode_distance"
	.byte	0x8
	.uahalf	0x1b1
	.uaword	0x423
	.byte	0
	.uleb128 0xc
	.string	"intr_mode_rate"
	.byte	0x8
	.uahalf	0x1b4
	.uaword	0x423
	.byte	0x1
	.uleb128 0xc
	.string	"intr_new_measure_ready"
	.byte	0x8
	.uahalf	0x1b9
	.uaword	0x1c2
	.byte	0x2
	.uleb128 0xc
	.string	"intr_no_target"
	.byte	0x8
	.uahalf	0x1bc
	.uaword	0x1c2
	.byte	0x3
	.uleb128 0xc
	.string	"intr_combined_mode"
	.byte	0x8
	.uahalf	0x1c2
	.uaword	0x1c2
	.byte	0x4
	.uleb128 0xc
	.string	"threshold_distance_high"
	.byte	0x8
	.uahalf	0x1ca
	.uaword	0x1fe
	.byte	0x6
	.uleb128 0xc
	.string	"threshold_distance_low"
	.byte	0x8
	.uahalf	0x1cd
	.uaword	0x1fe
	.byte	0x8
	.uleb128 0xc
	.string	"threshold_rate_high"
	.byte	0x8
	.uahalf	0x1d0
	.uaword	0x1fe
	.byte	0xa
	.uleb128 0xc
	.string	"threshold_rate_low"
	.byte	0x8
	.uahalf	0x1d3
	.uaword	0x1fe
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_GPIO_interrupt_config_t"
	.byte	0x8
	.uahalf	0x1d5
	.uaword	0x3112
	.uleb128 0xb
	.byte	0x10
	.byte	0x8
	.uahalf	0x1e0
	.uaword	0x3365
	.uleb128 0xc
	.string	"vhv_loop_bound"
	.byte	0x8
	.uahalf	0x1e6
	.uaword	0x1c2
	.byte	0
	.uleb128 0xc
	.string	"is_low_power_auto_mode"
	.byte	0x8
	.uahalf	0x1e9
	.uaword	0x1c2
	.byte	0x1
	.uleb128 0xc
	.string	"low_power_auto_range_count"
	.byte	0x8
	.uahalf	0x1ed
	.uaword	0x1c2
	.byte	0x2
	.uleb128 0xc
	.string	"saved_interrupt_config"
	.byte	0x8
	.uahalf	0x1f0
	.uaword	0x1c2
	.byte	0x3
	.uleb128 0xc
	.string	"saved_vhv_init"
	.byte	0x8
	.uahalf	0x1f3
	.uaword	0x1c2
	.byte	0x4
	.uleb128 0xc
	.string	"saved_vhv_timeout"
	.byte	0x8
	.uahalf	0x1f6
	.uaword	0x1c2
	.byte	0x5
	.uleb128 0xc
	.string	"first_run_phasecal_result"
	.byte	0x8
	.uahalf	0x1f9
	.uaword	0x1c2
	.byte	0x6
	.uleb128 0xc
	.string	"dss__total_rate_per_spad_mcps"
	.byte	0x8
	.uahalf	0x1fc
	.uaword	0x23f
	.byte	0x8
	.uleb128 0xc
	.string	"dss__required_spads"
	.byte	0x8
	.uahalf	0x1ff
	.uaword	0x1fe
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_low_power_auto_data_t"
	.byte	0x8
	.uahalf	0x201
	.uaword	0x3245
	.uleb128 0xb
	.byte	0x40
	.byte	0x8
	.uahalf	0x20b
	.uaword	0x35ce
	.uleb128 0xc
	.string	"range_id"
	.byte	0x8
	.uahalf	0x20f
	.uaword	0x1c2
	.byte	0
	.uleb128 0xc
	.string	"time_stamp"
	.byte	0x8
	.uahalf	0x211
	.uaword	0x23f
	.byte	0x4
	.uleb128 0xc
	.string	"width"
	.byte	0x8
	.uahalf	0x214
	.uaword	0x1fe
	.byte	0x8
	.uleb128 0xc
	.string	"woi"
	.byte	0x8
	.uahalf	0x216
	.uaword	0x1c2
	.byte	0xa
	.uleb128 0xc
	.string	"fast_osc_frequency"
	.byte	0x8
	.uahalf	0x219
	.uaword	0x1fe
	.byte	0xc
	.uleb128 0xc
	.string	"zero_distance_phase"
	.byte	0x8
	.uahalf	0x21b
	.uaword	0x1fe
	.byte	0xe
	.uleb128 0xc
	.string	"actual_effective_spads"
	.byte	0x8
	.uahalf	0x21d
	.uaword	0x1fe
	.byte	0x10
	.uleb128 0xc
	.string	"total_periods_elapsed"
	.byte	0x8
	.uahalf	0x220
	.uaword	0x23f
	.byte	0x14
	.uleb128 0xc
	.string	"peak_duration_us"
	.byte	0x8
	.uahalf	0x223
	.uaword	0x23f
	.byte	0x18
	.uleb128 0xc
	.string	"woi_duration_us"
	.byte	0x8
	.uahalf	0x226
	.uaword	0x23f
	.byte	0x1c
	.uleb128 0xc
	.string	"ambient_window_events"
	.byte	0x8
	.uahalf	0x22c
	.uaword	0x23f
	.byte	0x20
	.uleb128 0xc
	.string	"ranging_total_events"
	.byte	0x8
	.uahalf	0x22e
	.uaword	0x23f
	.byte	0x24
	.uleb128 0xc
	.string	"signal_total_events"
	.byte	0x8
	.uahalf	0x231
	.uaword	0x224
	.byte	0x28
	.uleb128 0xc
	.string	"peak_signal_count_rate_mcps"
	.byte	0x8
	.uahalf	0x237
	.uaword	0x1fe
	.byte	0x2c
	.uleb128 0xc
	.string	"avg_signal_count_rate_mcps"
	.byte	0x8
	.uahalf	0x239
	.uaword	0x1fe
	.byte	0x2e
	.uleb128 0xc
	.string	"ambient_count_rate_mcps"
	.byte	0x8
	.uahalf	0x23b
	.uaword	0x1fe
	.byte	0x30
	.uleb128 0xc
	.string	"total_rate_per_spad_mcps"
	.byte	0x8
	.uahalf	0x23d
	.uaword	0x1fe
	.byte	0x32
	.uleb128 0xc
	.string	"peak_rate_per_spad_kcps"
	.byte	0x8
	.uahalf	0x23f
	.uaword	0x23f
	.byte	0x34
	.uleb128 0xa
	.uaword	.LASF23
	.byte	0x8
	.uahalf	0x244
	.uaword	0x1fe
	.byte	0x38
	.uleb128 0xc
	.string	"median_phase"
	.byte	0x8
	.uahalf	0x249
	.uaword	0x1fe
	.byte	0x3a
	.uleb128 0xa
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x24e
	.uaword	0x1e2
	.byte	0x3c
	.uleb128 0xc
	.string	"range_status"
	.byte	0x8
	.uahalf	0x255
	.uaword	0x1c2
	.byte	0x3e
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_range_data_t"
	.byte	0x8
	.uahalf	0x257
	.uaword	0x338a
	.uleb128 0xb
	.byte	0x84
	.byte	0x8
	.uahalf	0x260
	.uaword	0x363f
	.uleb128 0xa
	.uaword	.LASF25
	.byte	0x8
	.uahalf	0x262
	.uaword	0x2df
	.byte	0
	.uleb128 0xa
	.uaword	.LASF26
	.byte	0x8
	.uahalf	0x264
	.uaword	0x2df
	.byte	0x1
	.uleb128 0xc
	.string	"stream_count"
	.byte	0x8
	.uahalf	0x266
	.uaword	0x1c2
	.byte	0x2
	.uleb128 0xa
	.uaword	.LASF27
	.byte	0x8
	.uahalf	0x269
	.uaword	0x1c2
	.byte	0x3
	.uleb128 0xc
	.string	"data"
	.byte	0x8
	.uahalf	0x26c
	.uaword	0x363f
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.uaword	0x35ce
	.uaword	0x364f
	.uleb128 0xe
	.uaword	0x2a4
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_range_results_t"
	.byte	0x8
	.uahalf	0x26f
	.uaword	0x35ea
	.uleb128 0xb
	.byte	0x1c
	.byte	0x8
	.uahalf	0x279
	.uaword	0x370f
	.uleb128 0xa
	.uaword	.LASF28
	.byte	0x8
	.uahalf	0x27b
	.uaword	0x1c2
	.byte	0
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x8
	.uahalf	0x27d
	.uaword	0x1c2
	.byte	0x1
	.uleb128 0xa
	.uaword	.LASF18
	.byte	0x8
	.uahalf	0x27f
	.uaword	0x1fe
	.byte	0x2
	.uleb128 0xc
	.string	"no_of_samples"
	.byte	0x8
	.uahalf	0x281
	.uaword	0x1c2
	.byte	0x4
	.uleb128 0xc
	.string	"effective_spads"
	.byte	0x8
	.uahalf	0x283
	.uaword	0x23f
	.byte	0x8
	.uleb128 0xa
	.uaword	.LASF29
	.byte	0x8
	.uahalf	0x285
	.uaword	0x23f
	.byte	0xc
	.uleb128 0xa
	.uaword	.LASF23
	.byte	0x8
	.uahalf	0x287
	.uaword	0x23f
	.byte	0x10
	.uleb128 0xa
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x289
	.uaword	0x224
	.byte	0x14
	.uleb128 0xc
	.string	"range_mm_offset"
	.byte	0x8
	.uahalf	0x28c
	.uaword	0x224
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_offset_range_data_t"
	.byte	0x8
	.uahalf	0x28f
	.uaword	0x366e
	.uleb128 0xb
	.byte	0x5c
	.byte	0x8
	.uahalf	0x299
	.uaword	0x37a1
	.uleb128 0xa
	.uaword	.LASF30
	.byte	0x8
	.uahalf	0x29b
	.uaword	0x1e2
	.byte	0
	.uleb128 0xc
	.string	"cal_status"
	.byte	0x8
	.uahalf	0x29d
	.uaword	0x461
	.byte	0x2
	.uleb128 0xc
	.string	"cal_report"
	.byte	0x8
	.uahalf	0x29f
	.uaword	0x1c2
	.byte	0x3
	.uleb128 0xc
	.string	"max_results"
	.byte	0x8
	.uahalf	0x2a1
	.uaword	0x1c2
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF31
	.byte	0x8
	.uahalf	0x2a4
	.uaword	0x1c2
	.byte	0x5
	.uleb128 0xc
	.string	"data"
	.byte	0x8
	.uahalf	0x2a6
	.uaword	0x37a1
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	0x370f
	.uaword	0x37b1
	.uleb128 0xe
	.uaword	0x2a4
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_offset_range_results_t"
	.byte	0x8
	.uahalf	0x2a9
	.uaword	0x3732
	.uleb128 0xb
	.byte	0x8
	.byte	0x8
	.uahalf	0x2b4
	.uaword	0x38ad
	.uleb128 0xc
	.string	"result__mm_inner_actual_effective_spads"
	.byte	0x8
	.uahalf	0x2b6
	.uaword	0x1fe
	.byte	0
	.uleb128 0xc
	.string	"result__mm_outer_actual_effective_spads"
	.byte	0x8
	.uahalf	0x2b8
	.uaword	0x1fe
	.byte	0x2
	.uleb128 0xc
	.string	"result__mm_inner_peak_signal_count_rtn_mcps"
	.byte	0x8
	.uahalf	0x2ba
	.uaword	0x1fe
	.byte	0x4
	.uleb128 0xc
	.string	"result__mm_outer_peak_signal_count_rtn_mcps"
	.byte	0x8
	.uahalf	0x2bc
	.uaword	0x1fe
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_additional_offset_cal_data_t"
	.byte	0x8
	.uahalf	0x2bf
	.uaword	0x37d7
	.uleb128 0xb
	.byte	0x3a
	.byte	0x8
	.uahalf	0x2ca
	.uaword	0x3931
	.uleb128 0xa
	.uaword	.LASF30
	.byte	0x8
	.uahalf	0x2cc
	.uaword	0x1e2
	.byte	0
	.uleb128 0xc
	.string	"max_samples"
	.byte	0x8
	.uahalf	0x2ce
	.uaword	0x1fe
	.byte	0x2
	.uleb128 0xc
	.string	"width"
	.byte	0x8
	.uahalf	0x2d0
	.uaword	0x1fe
	.byte	0x4
	.uleb128 0xc
	.string	"height"
	.byte	0x8
	.uahalf	0x2d2
	.uaword	0x1fe
	.byte	0x6
	.uleb128 0xa
	.uaword	.LASF29
	.byte	0x8
	.uahalf	0x2d4
	.uaword	0x3931
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	0x1fe
	.uaword	0x3941
	.uleb128 0xe
	.uaword	0x2a4
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_cal_peak_rate_map_t"
	.byte	0x8
	.uahalf	0x2d7
	.uaword	0x38d9
	.uleb128 0xb
	.byte	0x2
	.byte	0x8
	.uahalf	0x2e1
	.uaword	0x3994
	.uleb128 0xc
	.string	"standard_ranging_gain_factor"
	.byte	0x8
	.uahalf	0x2e3
	.uaword	0x1fe
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_gain_calibration_data_t"
	.byte	0x8
	.uahalf	0x2e6
	.uaword	0x3964
	.uleb128 0xb
	.byte	0x8
	.byte	0x8
	.uahalf	0x2f0
	.uaword	0x3a6e
	.uleb128 0xa
	.uaword	.LASF25
	.byte	0x8
	.uahalf	0x2f2
	.uaword	0x2df
	.byte	0
	.uleb128 0xc
	.string	"cfg_stream_count"
	.byte	0x8
	.uahalf	0x2f4
	.uaword	0x1c2
	.byte	0x1
	.uleb128 0xc
	.string	"cfg_gph_id"
	.byte	0x8
	.uahalf	0x2f7
	.uaword	0x1c2
	.byte	0x2
	.uleb128 0xc
	.string	"cfg_timing_status"
	.byte	0x8
	.uahalf	0x2f9
	.uaword	0x1c2
	.byte	0x3
	.uleb128 0xa
	.uaword	.LASF26
	.byte	0x8
	.uahalf	0x2fc
	.uaword	0x2df
	.byte	0x4
	.uleb128 0xc
	.string	"rd_stream_count"
	.byte	0x8
	.uahalf	0x2fe
	.uaword	0x1c2
	.byte	0x5
	.uleb128 0xc
	.string	"rd_gph_id"
	.byte	0x8
	.uahalf	0x300
	.uaword	0x1c2
	.byte	0x6
	.uleb128 0xc
	.string	"rd_timing_status"
	.byte	0x8
	.uahalf	0x302
	.uaword	0x1c2
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_ll_driver_state_t"
	.byte	0x8
	.uahalf	0x305
	.uaword	0x39bb
	.uleb128 0xb
	.byte	0x14
	.byte	0x8
	.uahalf	0x30a
	.uaword	0x3b21
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x8
	.uahalf	0x30c
	.uaword	0x1fe
	.byte	0
	.uleb128 0xa
	.uaword	.LASF32
	.byte	0x8
	.uahalf	0x30f
	.uaword	0x23f
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF33
	.byte	0x8
	.uahalf	0x312
	.uaword	0x23f
	.byte	0x8
	.uleb128 0xa
	.uaword	.LASF34
	.byte	0x8
	.uahalf	0x315
	.uaword	0x23f
	.byte	0xc
	.uleb128 0xc
	.string	"pre_num_of_samples"
	.byte	0x8
	.uahalf	0x319
	.uaword	0x1c2
	.byte	0x10
	.uleb128 0xc
	.string	"mm1_num_of_samples"
	.byte	0x8
	.uahalf	0x31c
	.uaword	0x1c2
	.byte	0x11
	.uleb128 0xc
	.string	"mm2_num_of_samples"
	.byte	0x8
	.uahalf	0x31f
	.uaword	0x1c2
	.byte	0x12
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_offsetcal_config_t"
	.byte	0x8
	.uahalf	0x323
	.uaword	0x3a8f
	.uleb128 0xf
	.uahalf	0x2f4
	.byte	0x8
	.uahalf	0x32e
	.uaword	0x3e5e
	.uleb128 0xc
	.string	"wait_method"
	.byte	0x8
	.uahalf	0x330
	.uaword	0x1c2
	.byte	0
	.uleb128 0xa
	.uaword	.LASF28
	.byte	0x8
	.uahalf	0x332
	.uaword	0x2f9
	.byte	0x1
	.uleb128 0xa
	.uaword	.LASF35
	.byte	0x8
	.uahalf	0x334
	.uaword	0x319
	.byte	0x2
	.uleb128 0xc
	.string	"offset_calibration_mode"
	.byte	0x8
	.uahalf	0x336
	.uaword	0x33e
	.byte	0x3
	.uleb128 0xc
	.string	"offset_correction_mode"
	.byte	0x8
	.uahalf	0x338
	.uaword	0x362
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF32
	.byte	0x8
	.uahalf	0x33a
	.uaword	0x23f
	.byte	0x8
	.uleb128 0xa
	.uaword	.LASF34
	.byte	0x8
	.uahalf	0x33c
	.uaword	0x23f
	.byte	0xc
	.uleb128 0xa
	.uaword	.LASF33
	.byte	0x8
	.uahalf	0x33e
	.uaword	0x23f
	.byte	0x10
	.uleb128 0xa
	.uaword	.LASF36
	.byte	0x8
	.uahalf	0x340
	.uaword	0x23f
	.byte	0x14
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x8
	.uahalf	0x342
	.uaword	0x1fe
	.byte	0x18
	.uleb128 0xc
	.string	"fw_ready_poll_duration_ms"
	.byte	0x8
	.uahalf	0x345
	.uaword	0x23f
	.byte	0x1c
	.uleb128 0xc
	.string	"fw_ready"
	.byte	0x8
	.uahalf	0x347
	.uaword	0x1c2
	.byte	0x20
	.uleb128 0xc
	.string	"debug_mode"
	.byte	0x8
	.uahalf	0x349
	.uaword	0x1c2
	.byte	0x21
	.uleb128 0xc
	.string	"version"
	.byte	0x8
	.uahalf	0x34d
	.uaword	0x2817
	.byte	0x24
	.uleb128 0xc
	.string	"ll_state"
	.byte	0x8
	.uahalf	0x350
	.uaword	0x3a6e
	.byte	0x2c
	.uleb128 0xc
	.string	"gpio_interrupt_config"
	.byte	0x8
	.uahalf	0x353
	.uaword	0x321e
	.byte	0x34
	.uleb128 0xa
	.uaword	.LASF37
	.byte	0x8
	.uahalf	0x356
	.uaword	0x6dd
	.byte	0x42
	.uleb128 0xa
	.uaword	.LASF38
	.byte	0x8
	.uahalf	0x357
	.uaword	0x3941
	.byte	0x5a
	.uleb128 0xa
	.uaword	.LASF39
	.byte	0x8
	.uahalf	0x358
	.uaword	0x38ad
	.byte	0x94
	.uleb128 0xa
	.uaword	.LASF40
	.byte	0x8
	.uahalf	0x359
	.uaword	0x3994
	.byte	0x9c
	.uleb128 0xc
	.string	"mm_roi"
	.byte	0x8
	.uahalf	0x35a
	.uaword	0x30f7
	.byte	0x9e
	.uleb128 0xa
	.uaword	.LASF41
	.byte	0x8
	.uahalf	0x35b
	.uaword	0x3094
	.byte	0xa2
	.uleb128 0xc
	.string	"tuning_parms"
	.byte	0x8
	.uahalf	0x35e
	.uaword	0x304b
	.byte	0xa4
	.uleb128 0xc
	.string	"rtn_good_spads"
	.byte	0x8
	.uahalf	0x361
	.uaword	0x3e5e
	.byte	0xf0
	.uleb128 0x10
	.string	"refspadchar"
	.byte	0x8
	.uahalf	0x364
	.uaword	0x28cf
	.uahalf	0x110
	.uleb128 0x10
	.string	"ssc_cfg"
	.byte	0x8
	.uahalf	0x365
	.uaword	0x2968
	.uahalf	0x120
	.uleb128 0x10
	.string	"xtalk_cfg"
	.byte	0x8
	.uahalf	0x366
	.uaword	0x2b28
	.uahalf	0x12c
	.uleb128 0x10
	.string	"offsetcal_cfg"
	.byte	0x8
	.uahalf	0x367
	.uaword	0x3b21
	.uahalf	0x144
	.uleb128 0x10
	.string	"stat_nvm"
	.byte	0x8
	.uahalf	0x36a
	.uaword	0x5e3
	.uahalf	0x158
	.uleb128 0x10
	.string	"stat_cfg"
	.byte	0x8
	.uahalf	0x36b
	.uaword	0xb49
	.uahalf	0x164
	.uleb128 0x10
	.string	"gen_cfg"
	.byte	0x8
	.uahalf	0x36c
	.uaword	0xdbc
	.uahalf	0x184
	.uleb128 0x10
	.string	"tim_cfg"
	.byte	0x8
	.uahalf	0x36d
	.uaword	0x1072
	.uahalf	0x19c
	.uleb128 0x10
	.string	"dyn_cfg"
	.byte	0x8
	.uahalf	0x36e
	.uaword	0x12e4
	.uahalf	0x1b4
	.uleb128 0x10
	.string	"sys_ctrl"
	.byte	0x8
	.uahalf	0x36f
	.uaword	0x13b3
	.uahalf	0x1c8
	.uleb128 0x10
	.string	"sys_results"
	.byte	0x8
	.uahalf	0x370
	.uaword	0x17c2
	.uahalf	0x1ce
	.uleb128 0x10
	.string	"nvm_copy_data"
	.byte	0x8
	.uahalf	0x371
	.uaword	0x27a8
	.uahalf	0x1fa
	.uleb128 0x10
	.string	"offset_results"
	.byte	0x8
	.uahalf	0x374
	.uaword	0x37b1
	.uahalf	0x22c
	.uleb128 0x10
	.string	"core_results"
	.byte	0x8
	.uahalf	0x377
	.uaword	0x1984
	.uahalf	0x288
	.uleb128 0x10
	.string	"dbg_results"
	.byte	0x8
	.uahalf	0x378
	.uaword	0x1fd7
	.uahalf	0x2ac
	.uleb128 0x10
	.string	"low_power_auto_data"
	.byte	0x8
	.uahalf	0x37c
	.uaword	0x3365
	.uahalf	0x2e4
	.byte	0
	.uleb128 0xd
	.uaword	0x1c2
	.uaword	0x3e6e
	.uleb128 0xe
	.uaword	0x2a4
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_LLDriverData_t"
	.byte	0x8
	.uahalf	0x388
	.uaword	0x3b43
	.uleb128 0xb
	.byte	0x84
	.byte	0x8
	.uahalf	0x392
	.uaword	0x3ead
	.uleb128 0xc
	.string	"range_results"
	.byte	0x8
	.uahalf	0x395
	.uaword	0x364f
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_LLDriverResults_t"
	.byte	0x8
	.uahalf	0x397
	.uaword	0x3e8c
	.uleb128 0xb
	.byte	0x64
	.byte	0x8
	.uahalf	0x3a0
	.uaword	0x3f26
	.uleb128 0xa
	.uaword	.LASF42
	.byte	0x8
	.uahalf	0x3a2
	.uaword	0x23f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF37
	.byte	0x8
	.uahalf	0x3a3
	.uaword	0x6dd
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF39
	.byte	0x8
	.uahalf	0x3a4
	.uaword	0x38ad
	.byte	0x1c
	.uleb128 0xa
	.uaword	.LASF41
	.byte	0x8
	.uahalf	0x3a5
	.uaword	0x3094
	.byte	0x24
	.uleb128 0xa
	.uaword	.LASF40
	.byte	0x8
	.uahalf	0x3a6
	.uaword	0x3994
	.byte	0x26
	.uleb128 0xa
	.uaword	.LASF38
	.byte	0x8
	.uahalf	0x3a7
	.uaword	0x3941
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_calibration_data_t"
	.byte	0x8
	.uahalf	0x3a9
	.uaword	0x3ece
	.uleb128 0x7
	.byte	0x8
	.byte	0x9
	.byte	0x65
	.uaword	0x3f8c
	.uleb128 0x8
	.string	"revision"
	.byte	0x9
	.byte	0x66
	.uaword	0x23f
	.byte	0
	.uleb128 0x8
	.string	"major"
	.byte	0x9
	.byte	0x67
	.uaword	0x1c2
	.byte	0x4
	.uleb128 0x8
	.string	"minor"
	.byte	0x9
	.byte	0x68
	.uaword	0x1c2
	.byte	0x5
	.uleb128 0x8
	.string	"build"
	.byte	0x9
	.byte	0x69
	.uaword	0x1c2
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.string	"VL53L1_Version_t"
	.byte	0x9
	.byte	0x6a
	.uaword	0x3f48
	.uleb128 0x7
	.byte	0x64
	.byte	0x9
	.byte	0x71
	.uaword	0x4027
	.uleb128 0x8
	.string	"Name"
	.byte	0x9
	.byte	0x72
	.uaword	0x4027
	.byte	0
	.uleb128 0x8
	.string	"Type"
	.byte	0x9
	.byte	0x74
	.uaword	0x4027
	.byte	0x20
	.uleb128 0x8
	.string	"ProductId"
	.byte	0x9
	.byte	0x76
	.uaword	0x4027
	.byte	0x40
	.uleb128 0x8
	.string	"ProductType"
	.byte	0x9
	.byte	0x7a
	.uaword	0x1c2
	.byte	0x60
	.uleb128 0x8
	.string	"ProductRevisionMajor"
	.byte	0x9
	.byte	0x7c
	.uaword	0x1c2
	.byte	0x61
	.uleb128 0x8
	.string	"ProductRevisionMinor"
	.byte	0x9
	.byte	0x7e
	.uaword	0x1c2
	.byte	0x62
	.byte	0
	.uleb128 0xd
	.uaword	0x2b6
	.uaword	0x4037
	.uleb128 0xe
	.uaword	0x2a4
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.string	"VL53L1_DeviceInfo_t"
	.byte	0x9
	.byte	0x80
	.uaword	0x3fa4
	.uleb128 0x3
	.string	"VL53L1_PresetModes"
	.byte	0x9
	.byte	0x88
	.uaword	0x1c2
	.uleb128 0x3
	.string	"VL53L1_DistanceModes"
	.byte	0x9
	.byte	0x96
	.uaword	0x1c2
	.uleb128 0x3
	.string	"VL53L1_OffsetCalibrationModes"
	.byte	0x9
	.byte	0xb4
	.uaword	0x1c2
	.uleb128 0x3
	.string	"VL53L1_ThresholdMode"
	.byte	0x9
	.byte	0xd5
	.uaword	0x1c2
	.uleb128 0x7
	.byte	0x6
	.byte	0x9
	.byte	0xe8
	.uaword	0x40f7
	.uleb128 0x9
	.uaword	.LASF43
	.byte	0x9
	.byte	0xe9
	.uaword	0x40ad
	.byte	0
	.uleb128 0x8
	.string	"High"
	.byte	0x9
	.byte	0xea
	.uaword	0x1fe
	.byte	0x2
	.uleb128 0x8
	.string	"Low"
	.byte	0x9
	.byte	0xeb
	.uaword	0x1fe
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"VL53L1_DistanceThreshold_t"
	.byte	0x9
	.byte	0xec
	.uaword	0x40c9
	.uleb128 0x7
	.byte	0xc
	.byte	0x9
	.byte	0xf0
	.uaword	0x4147
	.uleb128 0x9
	.uaword	.LASF43
	.byte	0x9
	.byte	0xf1
	.uaword	0x40ad
	.byte	0
	.uleb128 0x8
	.string	"High"
	.byte	0x9
	.byte	0xf2
	.uaword	0x2c9
	.byte	0x4
	.uleb128 0x8
	.string	"Low"
	.byte	0x9
	.byte	0xf3
	.uaword	0x2c9
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"VL53L1_RateThreshold_t"
	.byte	0x9
	.byte	0xf4
	.uaword	0x4119
	.uleb128 0x3
	.string	"VL53L1_DetectionMode"
	.byte	0x9
	.byte	0xfa
	.uaword	0x1c2
	.uleb128 0xb
	.byte	0x14
	.byte	0x9
	.uahalf	0x114
	.uaword	0x41d8
	.uleb128 0xc
	.string	"DetectionMode"
	.byte	0x9
	.uahalf	0x115
	.uaword	0x4165
	.byte	0
	.uleb128 0xc
	.string	"IntrNoTarget"
	.byte	0x9
	.uahalf	0x116
	.uaword	0x1c2
	.byte	0x1
	.uleb128 0xc
	.string	"Distance"
	.byte	0x9
	.uahalf	0x117
	.uaword	0x40f7
	.byte	0x2
	.uleb128 0xc
	.string	"Rate"
	.byte	0x9
	.uahalf	0x118
	.uaword	0x4147
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_DetectionConfig_t"
	.byte	0x9
	.uahalf	0x119
	.uaword	0x4181
	.uleb128 0xb
	.byte	0x1c
	.byte	0x9
	.uahalf	0x11e
	.uaword	0x42a2
	.uleb128 0xa
	.uaword	.LASF44
	.byte	0x9
	.uahalf	0x11f
	.uaword	0x4052
	.byte	0
	.uleb128 0xa
	.uaword	.LASF45
	.byte	0x9
	.uahalf	0x121
	.uaword	0x406c
	.byte	0x1
	.uleb128 0xa
	.uaword	.LASF46
	.byte	0x9
	.uahalf	0x123
	.uaword	0x406c
	.byte	0x2
	.uleb128 0xa
	.uaword	.LASF47
	.byte	0x9
	.uahalf	0x127
	.uaword	0x406c
	.byte	0x3
	.uleb128 0xa
	.uaword	.LASF48
	.byte	0x9
	.uahalf	0x12b
	.uaword	0x23f
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF49
	.byte	0x9
	.uahalf	0x12d
	.uaword	0x42a2
	.byte	0x8
	.uleb128 0xc
	.string	"LimitChecksStatus"
	.byte	0x9
	.uahalf	0x12f
	.uaword	0x42a2
	.byte	0xa
	.uleb128 0xc
	.string	"LimitChecksValue"
	.byte	0x9
	.uahalf	0x133
	.uaword	0x42b2
	.byte	0xc
	.uleb128 0xc
	.string	"LimitChecksCurrent"
	.byte	0x9
	.uahalf	0x135
	.uaword	0x42b2
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.uaword	0x1c2
	.uaword	0x42b2
	.uleb128 0xe
	.uaword	0x2a4
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.uaword	0x2c9
	.uaword	0x42c2
	.uleb128 0xe
	.uaword	0x2a4
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_DeviceParameters_t"
	.byte	0x9
	.uahalf	0x139
	.uaword	0x41f9
	.uleb128 0x6
	.string	"VL53L1_State"
	.byte	0x9
	.uahalf	0x141
	.uaword	0x1c2
	.uleb128 0xb
	.byte	0x1c
	.byte	0x9
	.uahalf	0x15c
	.uaword	0x43fe
	.uleb128 0xc
	.string	"TimeStamp"
	.byte	0x9
	.uahalf	0x15d
	.uaword	0x23f
	.byte	0
	.uleb128 0xc
	.string	"StreamCount"
	.byte	0x9
	.uahalf	0x162
	.uaword	0x1c2
	.byte	0x4
	.uleb128 0xc
	.string	"RangeQualityLevel"
	.byte	0x9
	.uahalf	0x165
	.uaword	0x1c2
	.byte	0x5
	.uleb128 0xc
	.string	"SignalRateRtnMegaCps"
	.byte	0x9
	.uahalf	0x16a
	.uaword	0x2c9
	.byte	0x8
	.uleb128 0xc
	.string	"AmbientRateRtnMegaCps"
	.byte	0x9
	.uahalf	0x170
	.uaword	0x2c9
	.byte	0xc
	.uleb128 0xc
	.string	"EffectiveSpadRtnCount"
	.byte	0x9
	.uahalf	0x176
	.uaword	0x1fe
	.byte	0x10
	.uleb128 0xc
	.string	"SigmaMilliMeter"
	.byte	0x9
	.uahalf	0x17b
	.uaword	0x2c9
	.byte	0x14
	.uleb128 0xc
	.string	"RangeMilliMeter"
	.byte	0x9
	.uahalf	0x17e
	.uaword	0x1e2
	.byte	0x18
	.uleb128 0xc
	.string	"RangeFractionalPart"
	.byte	0x9
	.uahalf	0x183
	.uaword	0x1c2
	.byte	0x1a
	.uleb128 0xa
	.uaword	.LASF50
	.byte	0x9
	.uahalf	0x189
	.uaword	0x1c2
	.byte	0x1b
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_RangingMeasurementData_t"
	.byte	0x9
	.uahalf	0x18d
	.uaword	0x42f9
	.uleb128 0xb
	.byte	0x4
	.byte	0x9
	.uahalf	0x194
	.uaword	0x447a
	.uleb128 0xc
	.string	"TopLeftX"
	.byte	0x9
	.uahalf	0x196
	.uaword	0x1c2
	.byte	0
	.uleb128 0xc
	.string	"TopLeftY"
	.byte	0x9
	.uahalf	0x197
	.uaword	0x1c2
	.byte	0x1
	.uleb128 0xc
	.string	"BotRightX"
	.byte	0x9
	.uahalf	0x198
	.uaword	0x1c2
	.byte	0x2
	.uleb128 0xc
	.string	"BotRightY"
	.byte	0x9
	.uahalf	0x199
	.uaword	0x1c2
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_UserRoi_t"
	.byte	0x9
	.uahalf	0x19b
	.uaword	0x4426
	.uleb128 0xb
	.byte	0x1c
	.byte	0x9
	.uahalf	0x1a9
	.uaword	0x456d
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x9
	.uahalf	0x1aa
	.uaword	0x1c2
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x9
	.uahalf	0x1ab
	.uaword	0x1c2
	.byte	0x1
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x9
	.uahalf	0x1ac
	.uaword	0x1c2
	.byte	0x2
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x9
	.uahalf	0x1ad
	.uaword	0x1c2
	.byte	0x3
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x9
	.uahalf	0x1ae
	.uaword	0x1c2
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x9
	.uahalf	0x1af
	.uaword	0x1c2
	.byte	0x5
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x9
	.uahalf	0x1b0
	.uaword	0x1c2
	.byte	0x6
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x9
	.uahalf	0x1b1
	.uaword	0x1c2
	.byte	0x7
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0x9
	.uahalf	0x1b2
	.uaword	0x1c2
	.byte	0x8
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0x9
	.uahalf	0x1b3
	.uaword	0x23f
	.byte	0xc
	.uleb128 0xa
	.uaword	.LASF10
	.byte	0x9
	.uahalf	0x1b4
	.uaword	0x1e2
	.byte	0x10
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x9
	.uahalf	0x1b5
	.uaword	0x1e2
	.byte	0x12
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x9
	.uahalf	0x1b6
	.uaword	0x1fe
	.byte	0x14
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x9
	.uahalf	0x1b7
	.uaword	0x1e2
	.byte	0x16
	.uleb128 0xa
	.uaword	.LASF14
	.byte	0x9
	.uahalf	0x1b8
	.uaword	0x1e2
	.byte	0x18
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x9
	.uahalf	0x1b9
	.uaword	0x1e2
	.byte	0x1a
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_CustomerNvmManaged_t"
	.byte	0x9
	.uahalf	0x1ba
	.uaword	0x4493
	.uleb128 0xb
	.byte	0x68
	.byte	0x9
	.uahalf	0x1c2
	.uaword	0x45e9
	.uleb128 0xa
	.uaword	.LASF42
	.byte	0x9
	.uahalf	0x1c4
	.uaword	0x23f
	.byte	0
	.uleb128 0xa
	.uaword	.LASF37
	.byte	0x9
	.uahalf	0x1c5
	.uaword	0x456d
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF39
	.byte	0x9
	.uahalf	0x1c6
	.uaword	0x38ad
	.byte	0x20
	.uleb128 0xa
	.uaword	.LASF41
	.byte	0x9
	.uahalf	0x1c7
	.uaword	0x3094
	.byte	0x28
	.uleb128 0xa
	.uaword	.LASF40
	.byte	0x9
	.uahalf	0x1c8
	.uaword	0x3994
	.byte	0x2a
	.uleb128 0xa
	.uaword	.LASF38
	.byte	0x9
	.uahalf	0x1c9
	.uaword	0x3941
	.byte	0x2c
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_CalibrationData_t"
	.byte	0x9
	.uahalf	0x1cb
	.uaword	0x4591
	.uleb128 0x6
	.string	"VL53L1_SequenceStepId"
	.byte	0x9
	.uahalf	0x1df
	.uaword	0x1c2
	.uleb128 0xf
	.uahalf	0x398
	.byte	0x9
	.uahalf	0x222
	.uaword	0x4686
	.uleb128 0xc
	.string	"LLData"
	.byte	0x9
	.uahalf	0x223
	.uaword	0x3e6e
	.byte	0
	.uleb128 0x10
	.string	"llresults"
	.byte	0x9
	.uahalf	0x226
	.uaword	0x3ead
	.uahalf	0x2f4
	.uleb128 0x10
	.string	"PalState"
	.byte	0x9
	.uahalf	0x229
	.uaword	0x42e4
	.uahalf	0x378
	.uleb128 0x10
	.string	"CurrentParameters"
	.byte	0x9
	.uahalf	0x22a
	.uaword	0x42c2
	.uahalf	0x37c
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_DevData_t"
	.byte	0x9
	.uahalf	0x22d
	.uaword	0x4628
	.uleb128 0x7
	.byte	0x4
	.byte	0xa
	.byte	0x4a
	.uaword	0x46b6
	.uleb128 0x8
	.string	"dummy"
	.byte	0xa
	.byte	0x4b
	.uaword	0x23f
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"I2C_HandleTypeDef"
	.byte	0xa
	.byte	0x4c
	.uaword	0x469f
	.uleb128 0x11
	.uahalf	0x3a4
	.byte	0xa
	.byte	0x4e
	.uaword	0x4763
	.uleb128 0x8
	.string	"Data"
	.byte	0xa
	.byte	0x50
	.uaword	0x4686
	.byte	0
	.uleb128 0x12
	.string	"I2cDevAddr"
	.byte	0xa
	.byte	0x52
	.uaword	0x1c2
	.uahalf	0x398
	.uleb128 0x12
	.string	"comms_type"
	.byte	0xa
	.byte	0x53
	.uaword	0x1c2
	.uahalf	0x399
	.uleb128 0x12
	.string	"comms_speed_khz"
	.byte	0xa
	.byte	0x54
	.uaword	0x1fe
	.uahalf	0x39a
	.uleb128 0x12
	.string	"new_data_ready_poll_duration_ms"
	.byte	0xa
	.byte	0x55
	.uaword	0x23f
	.uahalf	0x39c
	.uleb128 0x12
	.string	"I2cHandle"
	.byte	0xa
	.byte	0x56
	.uaword	0x4763
	.uahalf	0x3a0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x46b6
	.uleb128 0x3
	.string	"VL53L1_Dev_t"
	.byte	0xa
	.byte	0x58
	.uaword	0x46cf
	.uleb128 0x3
	.string	"VL53L1_DEV"
	.byte	0xa
	.byte	0x5a
	.uaword	0x478f
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4769
	.uleb128 0x13
	.string	"VL53L1_Tuning_t"
	.byte	0x1
	.byte	0x13
	.byte	0x49
	.uaword	0x48fe
	.uleb128 0x14
	.string	"VL53L1_TUNING_VERSION"
	.sleb128 0
	.uleb128 0x14
	.string	"VL53L1_TUNING_PROXY_MIN"
	.sleb128 1
	.uleb128 0x14
	.string	"VL53L1_TUNING_SINGLE_TARGET_XTALK_TARGET_DISTANCE_MM"
	.sleb128 2
	.uleb128 0x14
	.string	"VL53L1_TUNING_SINGLE_TARGET_XTALK_SAMPLE_NUMBER"
	.sleb128 3
	.uleb128 0x14
	.string	"VL53L1_TUNING_MIN_AMBIENT_DMAX_VALID"
	.sleb128 4
	.uleb128 0x14
	.string	"VL53L1_TUNING_MAX_SIMPLE_OFFSET_CALIBRATION_SAMPLE_NUMBER"
	.sleb128 5
	.uleb128 0x14
	.string	"VL53L1_TUNING_XTALK_FULL_ROI_TARGET_DISTANCE_MM"
	.sleb128 6
	.uleb128 0x14
	.string	"VL53L1_TUNING_MAX_TUNABLE_KEY"
	.sleb128 7
	.byte	0
	.uleb128 0x15
	.string	"ComputeRQL"
	.byte	0x1
	.uahalf	0x781
	.byte	0x1
	.uaword	0x1c2
	.byte	0x1
	.uaword	0x49c9
	.uleb128 0x16
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x781
	.uaword	0x1c2
	.uleb128 0x16
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x782
	.uaword	0x1c2
	.uleb128 0x16
	.uaword	.LASF52
	.byte	0x1
	.uahalf	0x783
	.uaword	0x49c9
	.uleb128 0x17
	.string	"SRL"
	.byte	0x1
	.uahalf	0x785
	.uaword	0x1e2
	.uleb128 0x17
	.string	"SRAS"
	.byte	0x1
	.uahalf	0x786
	.uaword	0x1fe
	.uleb128 0x17
	.string	"RAS"
	.byte	0x1
	.uahalf	0x787
	.uaword	0x2c9
	.uleb128 0x17
	.string	"SRQL"
	.byte	0x1
	.uahalf	0x788
	.uaword	0x2c9
	.uleb128 0x17
	.string	"GI"
	.byte	0x1
	.uahalf	0x789
	.uaword	0x2c9
	.uleb128 0x17
	.string	"GGm"
	.byte	0x1
	.uahalf	0x78a
	.uaword	0x2c9
	.uleb128 0x17
	.string	"LRAP"
	.byte	0x1
	.uahalf	0x78b
	.uaword	0x2c9
	.uleb128 0x17
	.string	"partial"
	.byte	0x1
	.uahalf	0x78c
	.uaword	0x2c9
	.uleb128 0x17
	.string	"finalvalue"
	.byte	0x1
	.uahalf	0x78d
	.uaword	0x1c2
	.uleb128 0x17
	.string	"returnvalue"
	.byte	0x1
	.uahalf	0x78e
	.uaword	0x1c2
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x35ce
	.uleb128 0x15
	.string	"ConvertStatusLite"
	.byte	0x1
	.uahalf	0x7af
	.byte	0x1
	.uaword	0x1c2
	.byte	0x1
	.uaword	0x4a08
	.uleb128 0x16
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x7af
	.uaword	0x1c2
	.uleb128 0x18
	.uaword	.LASF50
	.byte	0x1
	.uahalf	0x7b1
	.uaword	0x1c2
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"VL53L1_GetLimitCheckEnable"
	.byte	0x1
	.uahalf	0x5b6
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x4a7f
	.uleb128 0x1a
	.string	"Dev"
	.byte	0x1
	.uahalf	0x5b6
	.uaword	0x477d
	.uleb128 0x16
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x5b6
	.uaword	0x1fe
	.uleb128 0x1a
	.string	"pLimitCheckEnable"
	.byte	0x1
	.uahalf	0x5b7
	.uaword	0x4a7f
	.uleb128 0x18
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x5b9
	.uaword	0x461
	.uleb128 0x17
	.string	"Temp8"
	.byte	0x1
	.uahalf	0x5ba
	.uaword	0x1c2
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1c2
	.uleb128 0x15
	.string	"CheckValidRectRoi"
	.byte	0x1
	.uahalf	0x21e
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x4abe
	.uleb128 0x1a
	.string	"ROI"
	.byte	0x1
	.uahalf	0x21e
	.uaword	0x447a
	.uleb128 0x18
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x220
	.uaword	0x461
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"VL53L1_GetSequenceStepEnable"
	.byte	0x1
	.uahalf	0x6aa
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x4b2c
	.uleb128 0x1a
	.string	"Dev"
	.byte	0x1
	.uahalf	0x6aa
	.uaword	0x477d
	.uleb128 0x16
	.uaword	.LASF55
	.byte	0x1
	.uahalf	0x6ab
	.uaword	0x460a
	.uleb128 0x1a
	.string	"pSequenceStepEnabled"
	.byte	0x1
	.uahalf	0x6ab
	.uaword	0x4a7f
	.uleb128 0x18
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x6ad
	.uaword	0x461
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"VL53L1_SetInterMeasurementPeriodMilliSeconds"
	.byte	0x1
	.uahalf	0x52a
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x4bac
	.uleb128 0x1a
	.string	"Dev"
	.byte	0x1
	.uahalf	0x52a
	.uaword	0x477d
	.uleb128 0x1a
	.string	"InterMeasurementPeriodMilliSeconds"
	.byte	0x1
	.uahalf	0x52b
	.uaword	0x23f
	.uleb128 0x18
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x52d
	.uaword	0x461
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"VL53L1_SetPresetMode"
	.byte	0x1
	.uahalf	0x3cf
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x4c01
	.uleb128 0x1a
	.string	"Dev"
	.byte	0x1
	.uahalf	0x3cf
	.uaword	0x477d
	.uleb128 0x16
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x3cf
	.uaword	0x4052
	.uleb128 0x18
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x3d1
	.uaword	0x461
	.uleb128 0x18
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x3d2
	.uaword	0x406c
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"VL53L1_WaitMeasurementDataReady"
	.byte	0x1
	.uahalf	0x76e
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x4c49
	.uleb128 0x1a
	.string	"Dev"
	.byte	0x1
	.uahalf	0x76e
	.uaword	0x477d
	.uleb128 0x18
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x770
	.uaword	0x461
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"VL53L1_StopMeasurement"
	.byte	0x1
	.uahalf	0x6ed
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x4c88
	.uleb128 0x1a
	.string	"Dev"
	.byte	0x1
	.uahalf	0x6ed
	.uaword	0x477d
	.uleb128 0x18
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x6ef
	.uaword	0x461
	.byte	0
	.uleb128 0x15
	.string	"ConvertModeToLLD"
	.byte	0x1
	.uahalf	0x230
	.byte	0x1
	.uaword	0x423
	.byte	0x1
	.uaword	0x4cd1
	.uleb128 0x1a
	.string	"pStatus"
	.byte	0x1
	.uahalf	0x230
	.uaword	0x4cd1
	.uleb128 0x16
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x231
	.uaword	0x40ad
	.uleb128 0x17
	.string	"Mode"
	.byte	0x1
	.uahalf	0x233
	.uaword	0x423
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x461
	.uleb128 0x15
	.string	"ConvertModeFromLLD"
	.byte	0x1
	.uahalf	0x24a
	.byte	0x1
	.uaword	0x40ad
	.byte	0x1
	.uaword	0x4d22
	.uleb128 0x1a
	.string	"pStatus"
	.byte	0x1
	.uahalf	0x24a
	.uaword	0x4cd1
	.uleb128 0x16
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x24b
	.uaword	0x423
	.uleb128 0x17
	.string	"Mode"
	.byte	0x1
	.uahalf	0x24d
	.uaword	0x40ad
	.byte	0
	.uleb128 0x1b
	.string	"VL53L1_nvm_enable"
	.byte	0x1
	.byte	0x91
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x4d91
	.uleb128 0x1c
	.string	"Dev"
	.byte	0x1
	.byte	0x92
	.uaword	0x477d
	.uleb128 0x1c
	.string	"nvm_ctrl_pulse_width"
	.byte	0x1
	.byte	0x93
	.uaword	0x1fe
	.uleb128 0x1c
	.string	"nvm_power_up_delay_us"
	.byte	0x1
	.byte	0x94
	.uaword	0x224
	.uleb128 0x1d
	.uaword	.LASF56
	.byte	0x1
	.byte	0xa0
	.uaword	0x461
	.byte	0
	.uleb128 0x1b
	.string	"VL53L1_nvm_read"
	.byte	0x1
	.byte	0xe5
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x4dfa
	.uleb128 0x1c
	.string	"Dev"
	.byte	0x1
	.byte	0xe6
	.uaword	0x477d
	.uleb128 0x1e
	.uaword	.LASF57
	.byte	0x1
	.byte	0xe7
	.uaword	0x1c2
	.uleb128 0x1c
	.string	"count"
	.byte	0x1
	.byte	0xe8
	.uaword	0x1c2
	.uleb128 0x1c
	.string	"pdata"
	.byte	0x1
	.byte	0xe9
	.uaword	0x4a7f
	.uleb128 0x1d
	.uaword	.LASF56
	.byte	0x1
	.byte	0xf4
	.uaword	0x461
	.uleb128 0x1f
	.string	"nvm_addr"
	.byte	0x1
	.byte	0xf5
	.uaword	0x1c2
	.byte	0
	.uleb128 0x15
	.string	"VL53L1_read_nvm_raw_data"
	.byte	0x1
	.uahalf	0x155
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x4e6a
	.uleb128 0x1a
	.string	"Dev"
	.byte	0x1
	.uahalf	0x156
	.uaword	0x477d
	.uleb128 0x16
	.uaword	.LASF57
	.byte	0x1
	.uahalf	0x157
	.uaword	0x1c2
	.uleb128 0x1a
	.string	"count"
	.byte	0x1
	.uahalf	0x158
	.uaword	0x1c2
	.uleb128 0x1a
	.string	"pnvm_raw_data"
	.byte	0x1
	.uahalf	0x159
	.uaword	0x4a7f
	.uleb128 0x18
	.uaword	.LASF56
	.byte	0x1
	.uahalf	0x160
	.uaword	0x461
	.byte	0
	.uleb128 0x15
	.string	"SetSimpleData"
	.byte	0x1
	.uahalf	0x7d8
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x4f80
	.uleb128 0x1a
	.string	"Dev"
	.byte	0x1
	.uahalf	0x7d8
	.uaword	0x477d
	.uleb128 0x16
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x7d9
	.uaword	0x1c2
	.uleb128 0x16
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x7d9
	.uaword	0x1c2
	.uleb128 0x16
	.uaword	.LASF52
	.byte	0x1
	.uahalf	0x7da
	.uaword	0x49c9
	.uleb128 0x1a
	.string	"pRangeData"
	.byte	0x1
	.uahalf	0x7db
	.uaword	0x4f80
	.uleb128 0x18
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x7dd
	.uaword	0x461
	.uleb128 0x18
	.uaword	.LASF51
	.byte	0x1
	.uahalf	0x7de
	.uaword	0x1c2
	.uleb128 0x17
	.string	"SigmaLimitflag"
	.byte	0x1
	.uahalf	0x7df
	.uaword	0x1c2
	.uleb128 0x17
	.string	"SignalLimitflag"
	.byte	0x1
	.uahalf	0x7e0
	.uaword	0x1c2
	.uleb128 0x17
	.string	"Temp8Enable"
	.byte	0x1
	.uahalf	0x7e1
	.uaword	0x1c2
	.uleb128 0x17
	.string	"Temp8"
	.byte	0x1
	.uahalf	0x7e2
	.uaword	0x1c2
	.uleb128 0x17
	.string	"AmbientRate"
	.byte	0x1
	.uahalf	0x7e3
	.uaword	0x2c9
	.uleb128 0x17
	.string	"SignalRate"
	.byte	0x1
	.uahalf	0x7e4
	.uaword	0x2c9
	.uleb128 0x18
	.uaword	.LASF58
	.byte	0x1
	.uahalf	0x7e5
	.uaword	0x2c9
	.uleb128 0x18
	.uaword	.LASF59
	.byte	0x1
	.uahalf	0x7e6
	.uaword	0x2c9
	.uleb128 0x17
	.string	"Range"
	.byte	0x1
	.uahalf	0x7e7
	.uaword	0x1e2
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x43fe
	.uleb128 0x15
	.string	"ComputeDevicePresetMode"
	.byte	0x1
	.uahalf	0x35f
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x503c
	.uleb128 0x16
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x360
	.uaword	0x4052
	.uleb128 0x16
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x361
	.uaword	0x406c
	.uleb128 0x1a
	.string	"pDevicePresetMode"
	.byte	0x1
	.uahalf	0x362
	.uaword	0x503c
	.uleb128 0x18
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x364
	.uaword	0x461
	.uleb128 0x17
	.string	"DistIdx"
	.byte	0x1
	.uahalf	0x366
	.uaword	0x1c2
	.uleb128 0x17
	.string	"LightModes"
	.byte	0x1
	.uahalf	0x367
	.uaword	0x5042
	.uleb128 0x17
	.string	"TimedModes"
	.byte	0x1
	.uahalf	0x36d
	.uaword	0x5042
	.uleb128 0x17
	.string	"LowPowerTimedModes"
	.byte	0x1
	.uahalf	0x372
	.uaword	0x5042
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2f9
	.uleb128 0xd
	.uaword	0x2f9
	.uaword	0x5052
	.uleb128 0xe
	.uaword	0x2a4
	.byte	0x2
	.byte	0
	.uleb128 0x20
	.string	"SetPresetMode"
	.byte	0x1
	.uahalf	0x39a
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x51ee
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x39a
	.uaword	0x477d
	.uaword	.LLST0
	.uleb128 0x22
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x39b
	.uaword	0x4052
	.uaword	.LLST1
	.uleb128 0x22
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x39c
	.uaword	0x406c
	.uaword	.LLST2
	.uleb128 0x22
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x39d
	.uaword	0x23f
	.uaword	.LLST3
	.uleb128 0x23
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x39f
	.uaword	0x461
	.uaword	.LLST4
	.uleb128 0x24
	.string	"device_preset_mode"
	.byte	0x1
	.uahalf	0x3a0
	.uaword	0x2f9
	.uaword	.LLST5
	.uleb128 0x25
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x3a1
	.uaword	0x1c2
	.byte	0x1
	.byte	0x59
	.uleb128 0x25
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x3a2
	.uaword	0x1fe
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x25
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x3a3
	.uaword	0x23f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x25
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x3a4
	.uaword	0x23f
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x26
	.string	"lld_range_config_timeout_us"
	.byte	0x1
	.uahalf	0x3a5
	.uaword	0x23f
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x27
	.uaword	0x4f86
	.uaword	.LBB46
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x3b0
	.uaword	0x51a9
	.uleb128 0x28
	.uaword	0x4fc4
	.byte	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+20680
	.sleb128 0
	.uleb128 0x29
	.uaword	0x4fb8
	.uaword	.LLST6
	.uleb128 0x29
	.uaword	0x4fac
	.uaword	.LLST7
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x2b
	.uaword	0x4fde
	.byte	0
	.uleb128 0x2c
	.uaword	0x4fea
	.uaword	.LLST8
	.uleb128 0x2d
	.uaword	0x4ffa
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2d
	.uaword	0x500d
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x2d
	.uaword	0x5020
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL10
	.uaword	0x831b
	.uaword	0x51d0
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x2f
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x30
	.uaword	.LVL12
	.uaword	0x836b
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x2f
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.string	"SetLimitValue"
	.byte	0x1
	.uahalf	0x57a
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB32
	.uaword	.LFE32
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x52a6
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x57a
	.uaword	0x477d
	.uaword	.LLST9
	.uleb128 0x22
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x57a
	.uaword	0x1fe
	.uaword	.LLST10
	.uleb128 0x21
	.string	"value"
	.byte	0x1
	.uahalf	0x57b
	.uaword	0x2c9
	.uaword	.LLST11
	.uleb128 0x23
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x57d
	.uaword	0x461
	.uaword	.LLST12
	.uleb128 0x24
	.string	"tmpuint16"
	.byte	0x1
	.uahalf	0x57e
	.uaword	0x1fe
	.uaword	.LLST13
	.uleb128 0x2e
	.uaword	.LVL21
	.uaword	0x83b5
	.uaword	0x528e
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9
	.byte	0xeb
	.byte	0x24
	.byte	0x9
	.byte	0xf4
	.byte	0x25
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.uleb128 0x30
	.uaword	.LVL26
	.uaword	0x83ee
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9
	.byte	0xe6
	.byte	0x24
	.byte	0x9
	.byte	0xf4
	.byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_GetVersion"
	.byte	0x1
	.uahalf	0x266
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x52f2
	.uleb128 0x32
	.string	"pVersion"
	.byte	0x1
	.uahalf	0x266
	.uaword	0x52f2
	.byte	0x1
	.byte	0x64
	.uleb128 0x33
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x268
	.uaword	0x461
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3f8c
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_GetProductRevision"
	.byte	0x1
	.uahalf	0x276
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x53a9
	.uleb128 0x32
	.string	"Dev"
	.byte	0x1
	.uahalf	0x276
	.uaword	0x477d
	.byte	0x1
	.byte	0x64
	.uleb128 0x32
	.string	"pProductRevisionMajor"
	.byte	0x1
	.uahalf	0x277
	.uaword	0x4a7f
	.byte	0x1
	.byte	0x65
	.uleb128 0x32
	.string	"pProductRevisionMinor"
	.byte	0x1
	.uahalf	0x277
	.uaword	0x4a7f
	.byte	0x1
	.byte	0x66
	.uleb128 0x33
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x279
	.uaword	0x461
	.byte	0
	.uleb128 0x23
	.uaword	.LASF60
	.byte	0x1
	.uahalf	0x27a
	.uaword	0x1c2
	.uaword	.LLST14
	.uleb128 0x26
	.string	"pLLData"
	.byte	0x1
	.uahalf	0x27b
	.uaword	0x53a9
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3e6e
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_GetDeviceInfo"
	.byte	0x1
	.uahalf	0x289
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB10
	.uaword	.LFE10
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x54bd
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x289
	.uaword	0x477d
	.uaword	.LLST15
	.uleb128 0x21
	.string	"pVL53L1_DeviceInfo"
	.byte	0x1
	.uahalf	0x28a
	.uaword	0x54bd
	.uaword	.LLST16
	.uleb128 0x33
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x28c
	.uaword	0x461
	.byte	0
	.uleb128 0x23
	.uaword	.LASF60
	.byte	0x1
	.uahalf	0x28d
	.uaword	0x1c2
	.uaword	.LLST17
	.uleb128 0x24
	.string	"pLLData"
	.byte	0x1
	.uahalf	0x28e
	.uaword	0x53a9
	.uaword	.LLST18
	.uleb128 0x2e
	.uaword	.LVL35
	.uaword	0x8428
	.uaword	0x5460
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x4f
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC3
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 64
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL38
	.uaword	0x8428
	.uaword	0x5482
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x4f
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC5
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL39
	.uaword	0x8428
	.uaword	0x54a4
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x4f
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC6
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 32
	.byte	0
	.uleb128 0x30
	.uaword	.LVL41
	.uaword	0x8428
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x4f
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC4
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4037
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_GetRangeStatusString"
	.byte	0x1
	.uahalf	0x2b3
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB11
	.uaword	.LFE11
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5547
	.uleb128 0x22
	.uaword	.LASF50
	.byte	0x1
	.uahalf	0x2b3
	.uaword	0x1c2
	.uaword	.LLST19
	.uleb128 0x21
	.string	"pRangeStatusString"
	.byte	0x1
	.uahalf	0x2b4
	.uaword	0x2b0
	.uaword	.LLST20
	.uleb128 0x33
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x2b6
	.uaword	0x461
	.byte	0
	.uleb128 0x34
	.uaword	.LVL43
	.byte	0x1
	.uaword	0x844e
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_GetPalErrorString"
	.byte	0x1
	.uahalf	0x2c1
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB12
	.uaword	.LFE12
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x55ce
	.uleb128 0x21
	.string	"PalErrorCode"
	.byte	0x1
	.uahalf	0x2c1
	.uaword	0x461
	.uaword	.LLST21
	.uleb128 0x21
	.string	"pPalErrorString"
	.byte	0x1
	.uahalf	0x2c2
	.uaword	0x2b0
	.uaword	.LLST22
	.uleb128 0x33
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x2c4
	.uaword	0x461
	.byte	0
	.uleb128 0x34
	.uaword	.LVL45
	.byte	0x1
	.uaword	0x8486
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_GetPalStateString"
	.byte	0x1
	.uahalf	0x2ce
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB13
	.uaword	.LFE13
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5655
	.uleb128 0x21
	.string	"PalStateCode"
	.byte	0x1
	.uahalf	0x2ce
	.uaword	0x42e4
	.uaword	.LLST23
	.uleb128 0x21
	.string	"pPalStateString"
	.byte	0x1
	.uahalf	0x2cf
	.uaword	0x2b0
	.uaword	.LLST24
	.uleb128 0x33
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x2d1
	.uaword	0x461
	.byte	0
	.uleb128 0x34
	.uaword	.LVL47
	.byte	0x1
	.uaword	0x84bb
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_GetPalState"
	.byte	0x1
	.uahalf	0x2db
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB14
	.uaword	.LFE14
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x56b1
	.uleb128 0x32
	.string	"Dev"
	.byte	0x1
	.uahalf	0x2db
	.uaword	0x477d
	.byte	0x1
	.byte	0x64
	.uleb128 0x32
	.string	"pPalState"
	.byte	0x1
	.uahalf	0x2db
	.uaword	0x56b1
	.byte	0x1
	.byte	0x65
	.uleb128 0x33
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x2dd
	.uaword	0x461
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x42e4
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_SetDeviceAddress"
	.byte	0x1
	.uahalf	0x2ea
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB15
	.uaword	.LFE15
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5737
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x2ea
	.uaword	0x477d
	.uaword	.LLST25
	.uleb128 0x21
	.string	"DeviceAddress"
	.byte	0x1
	.uahalf	0x2ea
	.uaword	0x1c2
	.uaword	.LLST26
	.uleb128 0x33
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x2ec
	.uaword	0x461
	.byte	0
	.uleb128 0x34
	.uaword	.LVL51
	.byte	0x1
	.uaword	0x84f0
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_WaitDeviceBooted"
	.byte	0x1
	.uahalf	0x34f
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB18
	.uaword	.LFE18
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x579f
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x34f
	.uaword	0x477d
	.uaword	.LLST27
	.uleb128 0x33
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x351
	.uaword	0x461
	.byte	0
	.uleb128 0x34
	.uaword	.LVL53
	.byte	0x1
	.uaword	0x851c
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1f4
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_GetPresetMode"
	.byte	0x1
	.uahalf	0x3f8
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x57ff
	.uleb128 0x32
	.string	"Dev"
	.byte	0x1
	.uahalf	0x3f8
	.uaword	0x477d
	.byte	0x1
	.byte	0x64
	.uleb128 0x32
	.string	"pPresetMode"
	.byte	0x1
	.uahalf	0x3f9
	.uaword	0x57ff
	.byte	0x1
	.byte	0x65
	.uleb128 0x33
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x3fb
	.uaword	0x461
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4052
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_SetDistanceMode"
	.byte	0x1
	.uahalf	0x405
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5962
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x405
	.uaword	0x477d
	.uaword	.LLST28
	.uleb128 0x22
	.uaword	.LASF45
	.byte	0x1
	.uahalf	0x406
	.uaword	0x406c
	.uaword	.LLST29
	.uleb128 0x23
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x408
	.uaword	0x461
	.uaword	.LLST30
	.uleb128 0x23
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x409
	.uaword	0x4052
	.uaword	.LLST31
	.uleb128 0x23
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x40a
	.uaword	0x406c
	.uaword	.LLST32
	.uleb128 0x23
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x40b
	.uaword	0x23f
	.uaword	.LLST33
	.uleb128 0x25
	.uaword	.LASF61
	.byte	0x1
	.uahalf	0x40c
	.uaword	0x23f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x25
	.uaword	.LASF62
	.byte	0x1
	.uahalf	0x40d
	.uaword	0x23f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x25
	.uaword	.LASF63
	.byte	0x1
	.uahalf	0x40e
	.uaword	0x23f
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x25
	.uaword	.LASF64
	.byte	0x1
	.uahalf	0x40f
	.uaword	0x30f7
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2e
	.uaword	.LVL58
	.uaword	0x8555
	.uaword	0x58eb
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL62
	.uaword	0x858a
	.uaword	0x5911
	.uleb128 0x2f
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x2f
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL63
	.uaword	0x5052
	.uaword	0x5937
	.uleb128 0x2f
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2f
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL64
	.uaword	0x85c5
	.uaword	0x594b
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL66
	.uaword	0x8600
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_GetDistanceMode"
	.byte	0x1
	.uahalf	0x453
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x59c6
	.uleb128 0x32
	.string	"Dev"
	.byte	0x1
	.uahalf	0x453
	.uaword	0x477d
	.byte	0x1
	.byte	0x64
	.uleb128 0x32
	.string	"pDistanceMode"
	.byte	0x1
	.uahalf	0x454
	.uaword	0x59c6
	.byte	0x1
	.byte	0x65
	.uleb128 0x33
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x456
	.uaword	0x461
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x406c
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_SetMeasurementTimingBudgetMicroSeconds"
	.byte	0x1
	.uahalf	0x463
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5c16
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x463
	.uaword	0x477d
	.uaword	.LLST34
	.uleb128 0x22
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0x464
	.uaword	0x23f
	.uaword	.LLST35
	.uleb128 0x23
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x466
	.uaword	0x461
	.uaword	.LLST36
	.uleb128 0x25
	.uaword	.LASF65
	.byte	0x1
	.uahalf	0x467
	.uaword	0x1c2
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x25
	.uaword	.LASF66
	.byte	0x1
	.uahalf	0x468
	.uaword	0x1c2
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x23
	.uaword	.LASF67
	.byte	0x1
	.uahalf	0x469
	.uaword	0x23f
	.uaword	.LLST37
	.uleb128 0x24
	.string	"divisor"
	.byte	0x1
	.uahalf	0x46a
	.uaword	0x23f
	.uaword	.LLST38
	.uleb128 0x25
	.uaword	.LASF61
	.byte	0x1
	.uahalf	0x46b
	.uaword	0x23f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x25
	.uaword	.LASF62
	.byte	0x1
	.uahalf	0x46c
	.uaword	0x23f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x23
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x46d
	.uaword	0x4052
	.uaword	.LLST39
	.uleb128 0x25
	.uaword	.LASF63
	.byte	0x1
	.uahalf	0x46e
	.uaword	0x23f
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x24
	.string	"vhv"
	.byte	0x1
	.uahalf	0x46f
	.uaword	0x23f
	.uaword	.LLST40
	.uleb128 0x25
	.uaword	.LASF68
	.byte	0x1
	.uahalf	0x470
	.uaword	0x224
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x24
	.string	"FDAMaxTimingBudgetUs"
	.byte	0x1
	.uahalf	0x471
	.uaword	0x23f
	.uaword	.LLST41
	.uleb128 0x35
	.uaword	0x4abe
	.uaword	.LBB58
	.uaword	.LBE58
	.byte	0x1
	.uahalf	0x47a
	.uaword	0x5b60
	.uleb128 0x29
	.uaword	0x4b02
	.uaword	.LLST42
	.uleb128 0x29
	.uaword	0x4af6
	.uaword	.LLST43
	.uleb128 0x29
	.uaword	0x4aea
	.uaword	.LLST44
	.uleb128 0x36
	.uaword	.LBB59
	.uaword	.LBE59
	.uleb128 0x2c
	.uaword	0x4b1f
	.uaword	.LLST45
	.uleb128 0x30
	.uaword	.LVL72
	.uaword	0x862f
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0x4abe
	.uaword	.LBB60
	.uaword	.LBE60
	.byte	0x1
	.uahalf	0x47f
	.uaword	0x5bbe
	.uleb128 0x29
	.uaword	0x4b02
	.uaword	.LLST46
	.uleb128 0x29
	.uaword	0x4af6
	.uaword	.LLST47
	.uleb128 0x29
	.uaword	0x4aea
	.uaword	.LLST48
	.uleb128 0x36
	.uaword	.LBB61
	.uaword	.LBE61
	.uleb128 0x2c
	.uaword	0x4b1f
	.uaword	.LLST49
	.uleb128 0x30
	.uaword	.LVL75
	.uaword	0x862f
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x36
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL76
	.uaword	0x858a
	.uaword	0x5be4
	.uleb128 0x2f
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2f
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL81
	.uaword	0x866d
	.uaword	0x5c05
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xb
	.uahalf	0x8036
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL92
	.uaword	0x85c5
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	0x4bac
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5d20
	.uleb128 0x29
	.uaword	0x4bd0
	.uaword	.LLST50
	.uleb128 0x29
	.uaword	0x4bdc
	.uaword	.LLST51
	.uleb128 0x2c
	.uaword	0x4be8
	.uaword	.LLST52
	.uleb128 0x2b
	.uaword	0x4bf4
	.byte	0x3
	.uleb128 0x38
	.uaword	.LBB66
	.uaword	.LBE66
	.uaword	0x5ccd
	.uleb128 0x29
	.uaword	0x4bdc
	.uaword	.LLST53
	.uleb128 0x29
	.uaword	0x4bd0
	.uaword	.LLST54
	.uleb128 0x36
	.uaword	.LBB67
	.uaword	.LBE67
	.uleb128 0x39
	.uaword	0x4be8
	.uleb128 0x39
	.uaword	0x4bf4
	.uleb128 0x3a
	.uaword	0x4b2c
	.uaword	.LBB68
	.uaword	.LBE68
	.byte	0x1
	.uahalf	0x3ef
	.uleb128 0x29
	.uaword	0x4b74
	.uaword	.LLST55
	.uleb128 0x29
	.uaword	0x4b68
	.uaword	.LLST54
	.uleb128 0x36
	.uaword	.LBB69
	.uaword	.LBE69
	.uleb128 0x2c
	.uaword	0x4b9f
	.uaword	.LLST57
	.uleb128 0x34
	.uaword	.LVL101
	.byte	0x1
	.uaword	0x86a3
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x3e8
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL97
	.uaword	0x5052
	.uaword	0x5cf3
	.uleb128 0x2f
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0xa
	.uahalf	0x3e8
	.uleb128 0x2f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL99
	.uaword	0x59cc
	.uaword	0x5d0e
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0xa028
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL103
	.uaword	0x59cc
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x8235
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_StaticInit"
	.byte	0x1
	.uahalf	0x332
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5d8d
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x332
	.uaword	0x477d
	.uaword	.LLST58
	.uleb128 0x33
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x334
	.uaword	0x461
	.byte	0
	.uleb128 0x33
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x335
	.uaword	0x1c2
	.byte	0x20
	.uleb128 0x34
	.uaword	.LVL106
	.byte	0x1
	.uaword	0x4bac
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_GetMeasurementTimingBudgetMicroSeconds"
	.byte	0x1
	.uahalf	0x4d8
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5fc8
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x4d8
	.uaword	0x477d
	.uaword	.LLST59
	.uleb128 0x21
	.string	"pMeasurementTimingBudgetMicroSeconds"
	.byte	0x1
	.uahalf	0x4d9
	.uaword	0x5fc8
	.uaword	.LLST60
	.uleb128 0x23
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x4db
	.uaword	0x461
	.uaword	.LLST61
	.uleb128 0x25
	.uaword	.LASF65
	.byte	0x1
	.uahalf	0x4dc
	.uaword	0x1c2
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x25
	.uaword	.LASF66
	.byte	0x1
	.uahalf	0x4dd
	.uaword	0x1c2
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x25
	.uaword	.LASF62
	.byte	0x1
	.uahalf	0x4de
	.uaword	0x23f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x26
	.string	"RangeTimeoutUs"
	.byte	0x1
	.uahalf	0x4df
	.uaword	0x23f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x24
	.string	"MeasTimingBdg"
	.byte	0x1
	.uahalf	0x4e0
	.uaword	0x23f
	.uaword	.LLST62
	.uleb128 0x25
	.uaword	.LASF63
	.byte	0x1
	.uahalf	0x4e1
	.uaword	0x23f
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x23
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x4e2
	.uaword	0x4052
	.uaword	.LLST63
	.uleb128 0x23
	.uaword	.LASF67
	.byte	0x1
	.uahalf	0x4e3
	.uaword	0x23f
	.uaword	.LLST64
	.uleb128 0x24
	.string	"vhv"
	.byte	0x1
	.uahalf	0x4e4
	.uaword	0x23f
	.uaword	.LLST65
	.uleb128 0x25
	.uaword	.LASF68
	.byte	0x1
	.uahalf	0x4e5
	.uaword	0x224
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x27
	.uaword	0x4abe
	.uaword	.LBB70
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x1
	.uahalf	0x4ec
	.uaword	0x5f2b
	.uleb128 0x29
	.uaword	0x4b02
	.uaword	.LLST66
	.uleb128 0x3b
	.uaword	0x4af6
	.byte	0x5
	.uleb128 0x29
	.uaword	0x4aea
	.uaword	.LLST67
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x38
	.uleb128 0x2c
	.uaword	0x4b1f
	.uaword	.LLST68
	.uleb128 0x30
	.uaword	.LVL110
	.uaword	0x862f
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0x4abe
	.uaword	.LBB76
	.uaword	.LBE76
	.byte	0x1
	.uahalf	0x4f0
	.uaword	0x5f84
	.uleb128 0x29
	.uaword	0x4b02
	.uaword	.LLST69
	.uleb128 0x3b
	.uaword	0x4af6
	.byte	0x6
	.uleb128 0x28
	.uaword	0x4aea
	.byte	0x1
	.byte	0x6f
	.uleb128 0x36
	.uaword	.LBB77
	.uaword	.LBE77
	.uleb128 0x2c
	.uaword	0x4b1f
	.uaword	.LLST70
	.uleb128 0x30
	.uaword	.LVL115
	.uaword	0x862f
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x36
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL117
	.uaword	0x858a
	.uaword	0x5faa
	.uleb128 0x2f
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2f
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL130
	.uaword	0x866d
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xb
	.uahalf	0x8036
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x23f
	.uleb128 0x37
	.uaword	0x4b2c
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6014
	.uleb128 0x29
	.uaword	0x4b68
	.uaword	.LLST71
	.uleb128 0x29
	.uaword	0x4b74
	.uaword	.LLST72
	.uleb128 0x2b
	.uaword	0x4b9f
	.byte	0
	.uleb128 0x34
	.uaword	.LVL138
	.byte	0x1
	.uaword	0x86a3
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_GetInterMeasurementPeriodMilliSeconds"
	.byte	0x1
	.uahalf	0x538
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x60c1
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x538
	.uaword	0x477d
	.uaword	.LLST73
	.uleb128 0x21
	.string	"pInterMeasurementPeriodMilliSeconds"
	.byte	0x1
	.uahalf	0x539
	.uaword	0x5fc8
	.uaword	.LLST74
	.uleb128 0x33
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x53b
	.uaword	0x461
	.byte	0
	.uleb128 0x34
	.uaword	.LVL140
	.byte	0x1
	.uaword	0x86e3
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_GetNumberOfLimitCheck"
	.byte	0x1
	.uahalf	0x54c
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB29
	.uaword	.LFE29
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6123
	.uleb128 0x32
	.string	"pNumberOfLimitCheck"
	.byte	0x1
	.uahalf	0x54c
	.uaword	0x6123
	.byte	0x1
	.byte	0x64
	.uleb128 0x33
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x54e
	.uaword	0x461
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1fe
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_GetLimitCheckInfo"
	.byte	0x1
	.uahalf	0x558
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB30
	.uaword	.LFE30
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x61a9
	.uleb128 0x22
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x558
	.uaword	0x1fe
	.uaword	.LLST75
	.uleb128 0x21
	.string	"pLimitCheckString"
	.byte	0x1
	.uahalf	0x559
	.uaword	0x2b0
	.uaword	.LLST76
	.uleb128 0x33
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x55b
	.uaword	0x461
	.byte	0
	.uleb128 0x34
	.uaword	.LVL143
	.byte	0x1
	.uaword	0x8723
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_GetLimitCheckStatus"
	.byte	0x1
	.uahalf	0x566
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x623a
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x566
	.uaword	0x477d
	.uaword	.LLST77
	.uleb128 0x3c
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x566
	.uaword	0x1fe
	.byte	0x1
	.byte	0x54
	.uleb128 0x32
	.string	"pLimitCheckStatus"
	.byte	0x1
	.uahalf	0x567
	.uaword	0x4a7f
	.byte	0x1
	.byte	0x65
	.uleb128 0x23
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x569
	.uaword	0x461
	.uaword	.LLST78
	.uleb128 0x24
	.string	"Temp8"
	.byte	0x1
	.uahalf	0x56a
	.uaword	0x1c2
	.uaword	.LLST79
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_SetLimitCheckEnable"
	.byte	0x1
	.uahalf	0x594
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB33
	.uaword	.LFE33
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x62e2
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x594
	.uaword	0x477d
	.uaword	.LLST80
	.uleb128 0x22
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x594
	.uaword	0x1fe
	.uaword	.LLST81
	.uleb128 0x21
	.string	"LimitCheckEnable"
	.byte	0x1
	.uahalf	0x595
	.uaword	0x1c2
	.uaword	.LLST82
	.uleb128 0x23
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x597
	.uaword	0x461
	.uaword	.LLST83
	.uleb128 0x23
	.uaword	.LASF58
	.byte	0x1
	.uahalf	0x598
	.uaword	0x2c9
	.uaword	.LLST84
	.uleb128 0x30
	.uaword	.LVL152
	.uaword	0x51ee
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	0x4a08
	.uaword	.LFB34
	.uaword	.LFE34
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6320
	.uleb128 0x29
	.uaword	0x4a32
	.uaword	.LLST85
	.uleb128 0x28
	.uaword	0x4a3e
	.byte	0x1
	.byte	0x54
	.uleb128 0x28
	.uaword	0x4a4a
	.byte	0x1
	.byte	0x65
	.uleb128 0x2c
	.uaword	0x4a64
	.uaword	.LLST86
	.uleb128 0x2c
	.uaword	0x4a70
	.uaword	.LLST87
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_SetLimitCheckValue"
	.byte	0x1
	.uahalf	0x5cc
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB35
	.uaword	.LFE35
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x63b4
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x5cc
	.uaword	0x477d
	.uaword	.LLST88
	.uleb128 0x22
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x5cc
	.uaword	0x1fe
	.uaword	.LLST89
	.uleb128 0x22
	.uaword	.LASF59
	.byte	0x1
	.uahalf	0x5cd
	.uaword	0x2c9
	.uaword	.LLST90
	.uleb128 0x23
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x5cf
	.uaword	0x461
	.uaword	.LLST91
	.uleb128 0x23
	.uaword	.LASF49
	.byte	0x1
	.uahalf	0x5d0
	.uaword	0x1c2
	.uaword	.LLST92
	.uleb128 0x30
	.uaword	.LVL163
	.uaword	0x51ee
	.uleb128 0x2f
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_DataInit"
	.byte	0x1
	.uahalf	0x2f9
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB16
	.uaword	.LFE16
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x64b3
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x2f9
	.uaword	0x477d
	.uaword	.LLST93
	.uleb128 0x23
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x2fb
	.uaword	0x461
	.uaword	.LLST94
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.uahalf	0x2fc
	.uaword	0x1c2
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2e
	.uaword	.LVL167
	.uaword	0x8758
	.uaword	0x642a
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x2e
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL169
	.uaword	0x84f0
	.uaword	0x6444
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x2e
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL170
	.uaword	0x8784
	.uaword	0x645d
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL176
	.uaword	0x623a
	.uaword	0x6476
	.uleb128 0x2f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL177
	.uaword	0x6320
	.uaword	0x6496
	.uleb128 0x2f
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0x42
	.byte	0x40
	.byte	0x24
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL178
	.uaword	0x6320
	.uleb128 0x2f
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xa
	.uahalf	0x4000
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_GetLimitCheckValue"
	.byte	0x1
	.uahalf	0x5f1
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB36
	.uaword	.LFE36
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x659d
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x5f1
	.uaword	0x477d
	.uaword	.LLST95
	.uleb128 0x22
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x5f1
	.uaword	0x1fe
	.uaword	.LLST96
	.uleb128 0x21
	.string	"pLimitCheckValue"
	.byte	0x1
	.uahalf	0x5f2
	.uaword	0x659d
	.uaword	.LLST97
	.uleb128 0x23
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x5f4
	.uaword	0x461
	.uaword	.LLST98
	.uleb128 0x26
	.string	"MinCountRate"
	.byte	0x1
	.uahalf	0x5f5
	.uaword	0x1fe
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x23
	.uaword	.LASF58
	.byte	0x1
	.uahalf	0x5f6
	.uaword	0x2c9
	.uaword	.LLST99
	.uleb128 0x26
	.string	"SigmaThresh"
	.byte	0x1
	.uahalf	0x5f7
	.uaword	0x1fe
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0x2e
	.uaword	.LVL181
	.uaword	0x87ae
	.uaword	0x658c
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL188
	.uaword	0x87e7
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2c9
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_GetLimitCheckCurrent"
	.byte	0x1
	.uahalf	0x620
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB37
	.uaword	.LFE37
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6634
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x620
	.uaword	0x477d
	.uaword	.LLST100
	.uleb128 0x3c
	.uaword	.LASF53
	.byte	0x1
	.uahalf	0x620
	.uaword	0x1fe
	.byte	0x1
	.byte	0x54
	.uleb128 0x32
	.string	"pLimitCheckCurrent"
	.byte	0x1
	.uahalf	0x621
	.uaword	0x659d
	.byte	0x1
	.byte	0x65
	.uleb128 0x23
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x623
	.uaword	0x461
	.uaword	.LLST101
	.uleb128 0x23
	.uaword	.LASF58
	.byte	0x1
	.uahalf	0x624
	.uaword	0x2c9
	.uaword	.LLST102
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_SetUserROI"
	.byte	0x1
	.uahalf	0x63b
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB38
	.uaword	.LFE38
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x66db
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x63b
	.uaword	0x477d
	.uaword	.LLST103
	.uleb128 0x21
	.string	"pRoi"
	.byte	0x1
	.uahalf	0x63c
	.uaword	0x66db
	.uaword	.LLST104
	.uleb128 0x23
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x63e
	.uaword	0x461
	.uaword	.LLST105
	.uleb128 0x25
	.uaword	.LASF64
	.byte	0x1
	.uahalf	0x63f
	.uaword	0x30f7
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x27
	.uaword	0x4a85
	.uaword	.LBB78
	.uaword	.Ldebug_ranges0+0x58
	.byte	0x1
	.uahalf	0x641
	.uaword	0x66c9
	.uleb128 0x29
	.uaword	0x4aa5
	.uaword	.LLST106
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x58
	.uleb128 0x2b
	.uaword	0x4ab1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL204
	.byte	0x1
	.uaword	0x8600
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x447a
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_GetUserROI"
	.byte	0x1
	.uahalf	0x652
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB39
	.uaword	.LFE39
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6764
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x652
	.uaword	0x477d
	.uaword	.LLST107
	.uleb128 0x21
	.string	"pRoi"
	.byte	0x1
	.uahalf	0x653
	.uaword	0x66db
	.uaword	.LLST108
	.uleb128 0x23
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x655
	.uaword	0x461
	.uaword	.LLST109
	.uleb128 0x25
	.uaword	.LASF64
	.byte	0x1
	.uahalf	0x656
	.uaword	0x30f7
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x30
	.uaword	.LVL207
	.uaword	0x8555
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_GetNumberOfSequenceSteps"
	.byte	0x1
	.uahalf	0x66a
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB40
	.uaword	.LFE40
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x67da
	.uleb128 0x32
	.string	"Dev"
	.byte	0x1
	.uahalf	0x66a
	.uaword	0x477d
	.byte	0x1
	.byte	0x64
	.uleb128 0x32
	.string	"pNumberOfSequenceSteps"
	.byte	0x1
	.uahalf	0x66b
	.uaword	0x4a7f
	.byte	0x1
	.byte	0x65
	.uleb128 0x33
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x66d
	.uaword	0x461
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_GetSequenceStepsInfo"
	.byte	0x1
	.uahalf	0x679
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB41
	.uaword	.LFE41
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6860
	.uleb128 0x22
	.uaword	.LASF55
	.byte	0x1
	.uahalf	0x679
	.uaword	0x460a
	.uaword	.LLST110
	.uleb128 0x21
	.string	"pSequenceStepsString"
	.byte	0x1
	.uahalf	0x67a
	.uaword	0x2b0
	.uaword	.LLST111
	.uleb128 0x33
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x67c
	.uaword	0x461
	.byte	0
	.uleb128 0x34
	.uaword	.LVL210
	.byte	0x1
	.uaword	0x8821
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_SetSequenceStepEnable"
	.byte	0x1
	.uahalf	0x689
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB42
	.uaword	.LFE42
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x691b
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x689
	.uaword	0x477d
	.uaword	.LLST112
	.uleb128 0x22
	.uaword	.LASF55
	.byte	0x1
	.uahalf	0x68a
	.uaword	0x460a
	.uaword	.LLST113
	.uleb128 0x21
	.string	"SequenceStepEnabled"
	.byte	0x1
	.uahalf	0x68a
	.uaword	0x1c2
	.uaword	.LLST114
	.uleb128 0x23
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x68c
	.uaword	0x461
	.uaword	.LLST115
	.uleb128 0x23
	.uaword	.LASF48
	.byte	0x1
	.uahalf	0x68d
	.uaword	0x23f
	.uaword	.LLST116
	.uleb128 0x2e
	.uaword	.LVL212
	.uaword	0x8859
	.uaword	0x690a
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL215
	.uaword	0x59cc
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	0x4abe
	.uaword	.LFB43
	.uaword	.LFE43
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x696a
	.uleb128 0x29
	.uaword	0x4aea
	.uaword	.LLST117
	.uleb128 0x29
	.uaword	0x4af6
	.uaword	.LLST118
	.uleb128 0x29
	.uaword	0x4b02
	.uaword	.LLST119
	.uleb128 0x2b
	.uaword	0x4b1f
	.byte	0
	.uleb128 0x34
	.uaword	.LVL217
	.byte	0x1
	.uaword	0x862f
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_StartMeasurement"
	.byte	0x1
	.uahalf	0x6c2
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB44
	.uaword	.LFE44
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x69fa
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x6c2
	.uaword	0x477d
	.uaword	.LLST120
	.uleb128 0x23
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x6c4
	.uaword	0x461
	.uaword	.LLST121
	.uleb128 0x23
	.uaword	.LASF69
	.byte	0x1
	.uahalf	0x6c5
	.uaword	0x1c2
	.uaword	.LLST122
	.uleb128 0x24
	.string	"CurrPalState"
	.byte	0x1
	.uahalf	0x6c6
	.uaword	0x42e4
	.uaword	.LLST123
	.uleb128 0x30
	.uaword	.LVL220
	.uaword	0x8897
	.uleb128 0x2f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x36
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	0x4c49
	.uaword	.LFB45
	.uaword	.LFE45
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6a31
	.uleb128 0x29
	.uaword	0x4c6f
	.uaword	.LLST124
	.uleb128 0x2c
	.uaword	0x4c7b
	.uaword	.LLST125
	.uleb128 0x30
	.uaword	.LVL225
	.uaword	0x88d2
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"ChangePresetMode"
	.byte	0x1
	.uahalf	0x6fd
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x6ac9
	.uleb128 0x1a
	.string	"Dev"
	.byte	0x1
	.uahalf	0x6fd
	.uaword	0x477d
	.uleb128 0x18
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x6ff
	.uaword	0x461
	.uleb128 0x18
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x700
	.uaword	0x4052
	.uleb128 0x18
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x701
	.uaword	0x406c
	.uleb128 0x18
	.uaword	.LASF64
	.byte	0x1
	.uahalf	0x702
	.uaword	0x30f7
	.uleb128 0x18
	.uaword	.LASF61
	.byte	0x1
	.uahalf	0x703
	.uaword	0x23f
	.uleb128 0x18
	.uaword	.LASF62
	.byte	0x1
	.uahalf	0x704
	.uaword	0x23f
	.uleb128 0x18
	.uaword	.LASF63
	.byte	0x1
	.uahalf	0x705
	.uaword	0x23f
	.uleb128 0x18
	.uaword	.LASF69
	.byte	0x1
	.uahalf	0x706
	.uaword	0x1c2
	.uleb128 0x18
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x707
	.uaword	0x23f
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_ClearInterruptAndStartMeasurement"
	.byte	0x1
	.uahalf	0x746
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB47
	.uaword	.LFE47
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6ca8
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x746
	.uaword	0x477d
	.uaword	.LLST126
	.uleb128 0x23
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x748
	.uaword	0x461
	.uaword	.LLST127
	.uleb128 0x23
	.uaword	.LASF69
	.byte	0x1
	.uahalf	0x749
	.uaword	0x1c2
	.uaword	.LLST128
	.uleb128 0x23
	.uaword	.LASF46
	.byte	0x1
	.uahalf	0x74a
	.uaword	0x406c
	.uaword	.LLST129
	.uleb128 0x23
	.uaword	.LASF47
	.byte	0x1
	.uahalf	0x74b
	.uaword	0x406c
	.uaword	.LLST130
	.uleb128 0x27
	.uaword	0x6a31
	.uaword	.LBB84
	.uaword	.Ldebug_ranges0+0x70
	.byte	0x1
	.uahalf	0x756
	.uaword	0x6c9e
	.uleb128 0x29
	.uaword	0x6a50
	.uaword	.LLST131
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x70
	.uleb128 0x2c
	.uaword	0x6a5c
	.uaword	.LLST132
	.uleb128 0x2c
	.uaword	0x6a68
	.uaword	.LLST133
	.uleb128 0x2c
	.uaword	0x6a74
	.uaword	.LLST134
	.uleb128 0x2d
	.uaword	0x6a80
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2d
	.uaword	0x6a8c
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2d
	.uaword	0x6a98
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2d
	.uaword	0x6aa4
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x2c
	.uaword	0x6ab0
	.uaword	.LLST135
	.uleb128 0x2c
	.uaword	0x6abc
	.uaword	.LLST136
	.uleb128 0x2e
	.uaword	.LVL229
	.uaword	0x8555
	.uaword	0x6be4
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL236
	.uaword	0x858a
	.uaword	0x6c0a
	.uleb128 0x2f
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x2f
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL237
	.uaword	0x88d2
	.uaword	0x6c1e
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL238
	.uaword	0x88f9
	.uaword	0x6c39
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1f4
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL240
	.uaword	0x5052
	.uaword	0x6c59
	.uleb128 0x2f
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL241
	.uaword	0x85c5
	.uaword	0x6c6d
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL244
	.uaword	0x8600
	.uaword	0x6c87
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL246
	.uaword	0x8897
	.uleb128 0x2f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x36
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uaword	.LVL234
	.uaword	0x8920
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_GetMeasurementDataReady"
	.byte	0x1
	.uahalf	0x761
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB48
	.uaword	.LFE48
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6d39
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x761
	.uaword	0x477d
	.uaword	.LLST137
	.uleb128 0x21
	.string	"pMeasurementDataReady"
	.byte	0x1
	.uahalf	0x762
	.uaword	0x4a7f
	.uaword	.LLST138
	.uleb128 0x33
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x764
	.uaword	0x461
	.byte	0
	.uleb128 0x34
	.uaword	.LVL249
	.byte	0x1
	.uaword	0x8967
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	0x4c01
	.uaword	.LFB49
	.uaword	.LFE49
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6d76
	.uleb128 0x29
	.uaword	0x4c30
	.uaword	.LLST139
	.uleb128 0x2b
	.uaword	0x4c3c
	.byte	0
	.uleb128 0x34
	.uaword	.LVL251
	.byte	0x1
	.uaword	0x8999
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x7d0
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_GetRangingMeasurementData"
	.byte	0x1
	.uahalf	0x85a
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB53
	.uaword	.LFE53
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6faa
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x85a
	.uaword	0x477d
	.uaword	.LLST140
	.uleb128 0x21
	.string	"pRangingMeasurementData"
	.byte	0x1
	.uahalf	0x85b
	.uaword	0x4f80
	.uaword	.LLST141
	.uleb128 0x23
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x85d
	.uaword	0x461
	.uaword	.LLST142
	.uleb128 0x26
	.string	"results"
	.byte	0x1
	.uahalf	0x85e
	.uaword	0x364f
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x24
	.string	"presults"
	.byte	0x1
	.uahalf	0x85f
	.uaword	0x6faa
	.uaword	.LLST143
	.uleb128 0x25
	.uaword	.LASF52
	.byte	0x1
	.uahalf	0x860
	.uaword	0x49c9
	.byte	0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.uleb128 0x27
	.uaword	0x4e6a
	.uaword	.LBB98
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.uahalf	0x876
	.uaword	0x6f8d
	.uleb128 0x3b
	.uaword	0x4e92
	.byte	0x1
	.uleb128 0x28
	.uaword	0x4eb6
	.byte	0x1
	.byte	0x6f
	.uleb128 0x28
	.uaword	0x4eaa
	.byte	0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x9f
	.uleb128 0x29
	.uaword	0x4e9e
	.uaword	.LLST144
	.uleb128 0x28
	.uaword	0x4e86
	.byte	0x1
	.byte	0x6c
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x88
	.uleb128 0x2b
	.uaword	0x4ec9
	.byte	0
	.uleb128 0x2d
	.uaword	0x4ed5
	.byte	0x1
	.byte	0x58
	.uleb128 0x2c
	.uaword	0x4ee1
	.uaword	.LLST145
	.uleb128 0x2c
	.uaword	0x4ef8
	.uaword	.LLST146
	.uleb128 0x2c
	.uaword	0x4f10
	.uaword	.LLST147
	.uleb128 0x2c
	.uaword	0x4f24
	.uaword	.LLST148
	.uleb128 0x2c
	.uaword	0x4f32
	.uaword	.LLST149
	.uleb128 0x2c
	.uaword	0x4f46
	.uaword	.LLST150
	.uleb128 0x2c
	.uaword	0x4f59
	.uaword	.LLST151
	.uleb128 0x2d
	.uaword	0x4f65
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2c
	.uaword	0x4f71
	.uaword	.LLST152
	.uleb128 0x27
	.uaword	0x48fe
	.uaword	.LBB100
	.uaword	.Ldebug_ranges0+0xa8
	.byte	0x1
	.uahalf	0x7ed
	.uaword	0x6f51
	.uleb128 0x3b
	.uaword	0x4917
	.byte	0x1
	.uleb128 0x3e
	.uaword	0x492f
	.uleb128 0x3e
	.uaword	0x492f
	.uleb128 0x28
	.uaword	0x4923
	.byte	0x1
	.byte	0x58
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0xa8
	.uleb128 0x3f
	.uaword	0x493b
	.uahalf	0x12c
	.uleb128 0x2b
	.uaword	0x4947
	.byte	0x1e
	.uleb128 0x2c
	.uaword	0x4954
	.uaword	.LLST153
	.uleb128 0x2c
	.uaword	0x4960
	.uaword	.LLST154
	.uleb128 0x40
	.uaword	0x496d
	.uaword	0x75b333
	.uleb128 0x40
	.uaword	0x4978
	.uaword	0x30cccd
	.uleb128 0x3f
	.uaword	0x4984
	.uahalf	0x199a
	.uleb128 0x2c
	.uaword	0x4991
	.uaword	.LLST155
	.uleb128 0x2c
	.uaword	0x49a1
	.uaword	.LLST156
	.uleb128 0x2c
	.uaword	0x49b4
	.uaword	.LLST157
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL281
	.uaword	0x64b3
	.uaword	0x6f70
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL282
	.uaword	0x64b3
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL255
	.uaword	0x89d4
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x364f
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_SetTuningParameter"
	.byte	0x1
	.uahalf	0x888
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB54
	.uaword	.LFE54
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x703f
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x888
	.uaword	0x477d
	.uaword	.LLST158
	.uleb128 0x22
	.uaword	.LASF70
	.byte	0x1
	.uahalf	0x889
	.uaword	0x1fe
	.uaword	.LLST159
	.uleb128 0x21
	.string	"TuningParameterValue"
	.byte	0x1
	.uahalf	0x889
	.uaword	0x224
	.uaword	.LLST160
	.uleb128 0x23
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x88b
	.uaword	0x461
	.uaword	.LLST161
	.uleb128 0x41
	.uaword	.LVL294
	.byte	0x1
	.uaword	0x8a0d
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_GetTuningParameter"
	.byte	0x1
	.uahalf	0x89e
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB55
	.uaword	.LFE55
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x70cf
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x89e
	.uaword	0x477d
	.uaword	.LLST162
	.uleb128 0x22
	.uaword	.LASF70
	.byte	0x1
	.uahalf	0x89f
	.uaword	0x1fe
	.uaword	.LLST163
	.uleb128 0x21
	.string	"pTuningParameterValue"
	.byte	0x1
	.uahalf	0x89f
	.uaword	0x70cf
	.uaword	.LLST164
	.uleb128 0x23
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x8a1
	.uaword	0x461
	.uaword	.LLST165
	.uleb128 0x41
	.uaword	.LVL298
	.byte	0x1
	.uaword	0x866d
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x224
	.uleb128 0x15
	.string	"VL53L1_nvm_disable"
	.byte	0x1
	.uahalf	0x12c
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x710f
	.uleb128 0x1a
	.string	"Dev"
	.byte	0x1
	.uahalf	0x12d
	.uaword	0x477d
	.uleb128 0x18
	.uaword	.LASF56
	.byte	0x1
	.uahalf	0x133
	.uaword	0x461
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_PerformRefSpadManagement"
	.byte	0x1
	.uahalf	0x8b5
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB56
	.uaword	.LFE56
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7534
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x8b5
	.uaword	0x477d
	.uaword	.LLST166
	.uleb128 0x23
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x8be
	.uaword	0x461
	.uaword	.LLST167
	.uleb128 0x26
	.string	"RawStatus"
	.byte	0x1
	.uahalf	0x8bf
	.uaword	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x26
	.string	"dcrbuffer"
	.byte	0x1
	.uahalf	0x8c0
	.uaword	0x7534
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.string	"comms_buffer"
	.byte	0x1
	.uahalf	0x8c1
	.uaword	0x4a7f
	.uaword	.LLST168
	.uleb128 0x26
	.string	"numloc"
	.byte	0x1
	.uahalf	0x8c2
	.uaword	0x42a2
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x24
	.string	"pdev"
	.byte	0x1
	.uahalf	0x8c3
	.uaword	0x53a9
	.uaword	.LLST169
	.uleb128 0x24
	.string	"pc"
	.byte	0x1
	.uahalf	0x8c4
	.uaword	0x7544
	.uaword	.LLST170
	.uleb128 0x23
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x8c5
	.uaword	0x4052
	.uaword	.LLST171
	.uleb128 0x35
	.uaword	0x4dfa
	.uaword	.LBB116
	.uaword	.LBE116
	.byte	0x1
	.uahalf	0x8db
	.uaword	0x74bb
	.uleb128 0x3b
	.uaword	0x4e2d
	.byte	0x28
	.uleb128 0x3b
	.uaword	0x4e39
	.byte	0x6
	.uleb128 0x29
	.uaword	0x4e47
	.uaword	.LLST172
	.uleb128 0x28
	.uaword	0x4e21
	.byte	0x1
	.byte	0x6f
	.uleb128 0x36
	.uaword	.LBB117
	.uaword	.LBE117
	.uleb128 0x2c
	.uaword	0x4e5d
	.uaword	.LLST173
	.uleb128 0x35
	.uaword	0x4d22
	.uaword	.LBB118
	.uaword	.LBE118
	.byte	0x1
	.uahalf	0x169
	.uaword	0x7342
	.uleb128 0x3b
	.uaword	0x4d4c
	.byte	0x4
	.uleb128 0x3b
	.uaword	0x4d68
	.byte	0x32
	.uleb128 0x28
	.uaword	0x4d41
	.byte	0x1
	.byte	0x6f
	.uleb128 0x36
	.uaword	.LBB119
	.uaword	.LBE119
	.uleb128 0x2c
	.uaword	0x4d85
	.uaword	.LLST174
	.uleb128 0x2e
	.uaword	.LVL309
	.uaword	0x8a43
	.uaword	0x727c
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL310
	.uaword	0x8a70
	.uaword	0x7290
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL311
	.uaword	0x88f9
	.uaword	0x72aa
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xfa
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL312
	.uaword	0x84f0
	.uaword	0x72ca
	.uleb128 0x2f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x781
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL313
	.uaword	0x84f0
	.uaword	0x72ea
	.uleb128 0x2f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x35
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x683
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL314
	.uaword	0x88f9
	.uaword	0x7304
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL315
	.uaword	0x84f0
	.uaword	0x7324
	.uleb128 0x2f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x780
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL316
	.uaword	0x8a9e
	.uleb128 0x2f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x34
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x784
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uaword	0x4d91
	.uaword	.LBB120
	.uaword	.LBE120
	.byte	0x1
	.uahalf	0x174
	.uaword	0x742a
	.uleb128 0x3e
	.uaword	0x4db9
	.uleb128 0x3e
	.uaword	0x4dc4
	.uleb128 0x29
	.uaword	0x4dd1
	.uaword	.LLST175
	.uleb128 0x3e
	.uaword	0x4dae
	.uleb128 0x36
	.uaword	.LBB121
	.uaword	.LBE121
	.uleb128 0x2c
	.uaword	0x4dde
	.uaword	.LLST176
	.uleb128 0x2c
	.uaword	0x4de9
	.uaword	.LLST177
	.uleb128 0x2e
	.uaword	.LVL323
	.uaword	0x84f0
	.uaword	0x73ad
	.uleb128 0x2f
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.byte	0x8
	.byte	0x2e
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x794
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL324
	.uaword	0x84f0
	.uaword	0x73cd
	.uleb128 0x2f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x783
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL325
	.uaword	0x88f9
	.uaword	0x73e6
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL326
	.uaword	0x84f0
	.uaword	0x7406
	.uleb128 0x2f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x783
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL327
	.uaword	0x8aca
	.uleb128 0x2f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x34
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x790
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uaword	0x70d5
	.uaword	.LBB122
	.uaword	.LBE122
	.byte	0x1
	.uahalf	0x17f
	.uleb128 0x28
	.uaword	0x70f6
	.byte	0x1
	.byte	0x6f
	.uleb128 0x36
	.uaword	.LBB123
	.uaword	.LBE123
	.uleb128 0x2c
	.uaword	0x7102
	.uaword	.LLST178
	.uleb128 0x2e
	.uaword	.LVL330
	.uaword	0x84f0
	.uaword	0x7473
	.uleb128 0x2f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x783
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL331
	.uaword	0x84f0
	.uaword	0x7493
	.uleb128 0x2f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x781
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL332
	.uaword	0x8afe
	.uaword	0x74a7
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL333
	.uaword	0x8b2d
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL302
	.uaword	0x8b59
	.uaword	0x74d5
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL306
	.uaword	0x4bac
	.uaword	0x74ef
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL334
	.uaword	0x8b8b
	.uaword	0x7513
	.uleb128 0x2f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x44
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL338
	.uaword	0x8b8b
	.uleb128 0x2f
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x36
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.uaword	0x1c2
	.uaword	0x7544
	.uleb128 0xe
	.uaword	0x2a4
	.byte	0x17
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x6dd
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_SetXTalkCompensationEnable"
	.byte	0x1
	.uahalf	0x908
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB57
	.uaword	.LFE57
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x75e7
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x908
	.uaword	0x477d
	.uaword	.LLST179
	.uleb128 0x21
	.string	"XTalkCompensationEnable"
	.byte	0x1
	.uahalf	0x909
	.uaword	0x1c2
	.uaword	.LLST180
	.uleb128 0x33
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x90b
	.uaword	0x461
	.byte	0
	.uleb128 0x42
	.uaword	.LVL340
	.byte	0x1
	.uaword	0x8bc0
	.uaword	0x75dc
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.uleb128 0x41
	.uaword	.LVL341
	.byte	0x1
	.uaword	0x8bf6
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_GetXTalkCompensationEnable"
	.byte	0x1
	.uahalf	0x919
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB58
	.uaword	.LFE58
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x767d
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x919
	.uaword	0x477d
	.uaword	.LLST181
	.uleb128 0x21
	.string	"pXTalkCompensationEnable"
	.byte	0x1
	.uahalf	0x91a
	.uaword	0x4a7f
	.uaword	.LLST182
	.uleb128 0x33
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x91c
	.uaword	0x461
	.byte	0
	.uleb128 0x30
	.uaword	.LVL343
	.uaword	0x8c2d
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_SetOffsetCalibrationMode"
	.byte	0x1
	.uahalf	0x93b
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB60
	.uaword	.LFE60
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x772a
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x93b
	.uaword	0x477d
	.uaword	.LLST183
	.uleb128 0x21
	.string	"OffsetCalibrationMode"
	.byte	0x1
	.uahalf	0x93c
	.uaword	0x4088
	.uaword	.LLST184
	.uleb128 0x33
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x93e
	.uaword	0x461
	.byte	0
	.uleb128 0x23
	.uaword	.LASF71
	.byte	0x1
	.uahalf	0x93f
	.uaword	0x33e
	.uaword	.LLST185
	.uleb128 0x42
	.uaword	.LVL346
	.byte	0x1
	.uaword	0x8c68
	.uaword	0x7719
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x34
	.uaword	.LVL348
	.byte	0x1
	.uaword	0x8c68
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_PerformOffsetCalibration"
	.byte	0x1
	.uahalf	0x957
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB61
	.uaword	.LFE61
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x77f5
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x957
	.uaword	0x477d
	.uaword	.LLST186
	.uleb128 0x22
	.uaword	.LASF72
	.byte	0x1
	.uahalf	0x958
	.uaword	0x224
	.uaword	.LLST187
	.uleb128 0x23
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x95a
	.uaword	0x461
	.uaword	.LLST188
	.uleb128 0x26
	.string	"UnfilteredStatus"
	.byte	0x1
	.uahalf	0x95b
	.uaword	0x461
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0x25
	.uaword	.LASF71
	.byte	0x1
	.uahalf	0x95c
	.uaword	0x33e
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2e
	.uaword	.LVL350
	.uaword	0x8ca5
	.uaword	0x77d8
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL352
	.uaword	0x8ce8
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_PerformOffsetSimpleCalibration"
	.byte	0x1
	.uahalf	0x985
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB62
	.uaword	.LFE62
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7a01
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x985
	.uaword	0x477d
	.uaword	.LLST189
	.uleb128 0x22
	.uaword	.LASF72
	.byte	0x1
	.uahalf	0x986
	.uaword	0x224
	.uaword	.LLST190
	.uleb128 0x23
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x988
	.uaword	0x461
	.uaword	.LLST191
	.uleb128 0x23
	.uaword	.LASF73
	.byte	0x1
	.uahalf	0x989
	.uaword	0x224
	.uaword	.LLST192
	.uleb128 0x24
	.string	"offset_meas"
	.byte	0x1
	.uahalf	0x98a
	.uaword	0x1c2
	.uaword	.LLST193
	.uleb128 0x24
	.string	"Max"
	.byte	0x1
	.uahalf	0x98b
	.uaword	0x1c2
	.uaword	.LLST194
	.uleb128 0x23
	.uaword	.LASF74
	.byte	0x1
	.uahalf	0x98c
	.uaword	0x1c2
	.uaword	.LLST195
	.uleb128 0x24
	.string	"meanDistance_mm"
	.byte	0x1
	.uahalf	0x98d
	.uaword	0x1e2
	.uaword	.LLST196
	.uleb128 0x24
	.string	"offset"
	.byte	0x1
	.uahalf	0x98e
	.uaword	0x1e2
	.uaword	.LLST197
	.uleb128 0x26
	.string	"RangingMeasurementData"
	.byte	0x1
	.uahalf	0x98f
	.uaword	0x43fe
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.string	"pdev"
	.byte	0x1
	.uahalf	0x990
	.uaword	0x53a9
	.uaword	.LLST189
	.uleb128 0x35
	.uaword	0x4c01
	.uaword	.LBB124
	.uaword	.LBE124
	.byte	0x1
	.uahalf	0x9a1
	.uaword	0x7956
	.uleb128 0x29
	.uaword	0x4c30
	.uaword	.LLST199
	.uleb128 0x36
	.uaword	.LBB125
	.uaword	.LBE125
	.uleb128 0x2c
	.uaword	0x4c3c
	.uaword	.LLST200
	.uleb128 0x30
	.uaword	.LVL359
	.uaword	0x8999
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x7d0
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0x4c49
	.uaword	.LBB126
	.uaword	.Ldebug_ranges0+0xc0
	.byte	0x1
	.uahalf	0x9b5
	.uaword	0x79a7
	.uleb128 0x29
	.uaword	0x4c6f
	.uaword	.LLST201
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0xc0
	.uleb128 0x2c
	.uaword	0x4c7b
	.uaword	.LLST202
	.uleb128 0x2e
	.uaword	.LVL362
	.uaword	0x88d2
	.uaword	0x7995
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL367
	.uaword	0x88d2
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL355
	.uaword	0x696a
	.uaword	0x79bb
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL371
	.uaword	0x6d76
	.uaword	0x79d5
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL376
	.uaword	0x6ac9
	.uaword	0x79e9
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL384
	.uaword	0x8d24
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x8f
	.sleb128 66
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_SetCalibrationData"
	.byte	0x1
	.uahalf	0x9d1
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB63
	.uaword	.LFE63
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7aa8
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x9d1
	.uaword	0x477d
	.uaword	.LLST203
	.uleb128 0x22
	.uaword	.LASF75
	.byte	0x1
	.uahalf	0x9d2
	.uaword	0x7aa8
	.uaword	.LLST204
	.uleb128 0x33
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x9d4
	.uaword	0x461
	.byte	0
	.uleb128 0x26
	.string	"pC"
	.byte	0x1
	.uahalf	0x9d5
	.uaword	0x7aae
	.byte	0x3
	.byte	0x8f
	.sleb128 4
	.byte	0x9f
	.uleb128 0x25
	.uaword	.LASF76
	.byte	0x1
	.uahalf	0x9d6
	.uaword	0x3f26
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.uahalf	0x9d7
	.uaword	0x23f
	.uaword	.LLST205
	.uleb128 0x34
	.uaword	.LVL391
	.byte	0x1
	.uaword	0x8d5d
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x45e9
	.uleb128 0x4
	.byte	0x4
	.uaword	0x456d
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_GetCalibrationData"
	.byte	0x1
	.uahalf	0xa22
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB64
	.uaword	.LFE64
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7b60
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0xa22
	.uaword	0x477d
	.uaword	.LLST206
	.uleb128 0x22
	.uaword	.LASF75
	.byte	0x1
	.uahalf	0xa23
	.uaword	0x7aa8
	.uaword	.LLST207
	.uleb128 0x23
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0xa25
	.uaword	0x461
	.uaword	.LLST208
	.uleb128 0x25
	.uaword	.LASF76
	.byte	0x1
	.uahalf	0xa26
	.uaword	0x3f26
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x26
	.string	"pC"
	.byte	0x1
	.uahalf	0xa27
	.uaword	0x7aae
	.byte	0x3
	.byte	0x8f
	.sleb128 4
	.byte	0x9f
	.uleb128 0x26
	.string	"pC2"
	.byte	0x1
	.uahalf	0xa28
	.uaword	0x7544
	.byte	0x4
	.byte	0x91
	.sleb128 -96
	.byte	0x9f
	.uleb128 0x30
	.uaword	.LVL394
	.uaword	0x8d99
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"SingleTargetXTalkCalibration"
	.byte	0x1
	.uahalf	0x187
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x7d33
	.uleb128 0x1a
	.string	"Dev"
	.byte	0x1
	.uahalf	0x187
	.uaword	0x477d
	.uleb128 0x18
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x189
	.uaword	0x461
	.uleb128 0x18
	.uaword	.LASF73
	.byte	0x1
	.uahalf	0x18b
	.uaword	0x1fe
	.uleb128 0x17
	.string	"sum_spads"
	.byte	0x1
	.uahalf	0x18c
	.uaword	0x1fe
	.uleb128 0x17
	.string	"sum_signalRate"
	.byte	0x1
	.uahalf	0x18d
	.uaword	0x2c9
	.uleb128 0x18
	.uaword	.LASF74
	.byte	0x1
	.uahalf	0x18e
	.uaword	0x2c9
	.uleb128 0x17
	.string	"xtalk_meas"
	.byte	0x1
	.uahalf	0x18f
	.uaword	0x1c2
	.uleb128 0x17
	.string	"xtalk_measmax"
	.byte	0x1
	.uahalf	0x190
	.uaword	0x1c2
	.uleb128 0x17
	.string	"RMData"
	.byte	0x1
	.uahalf	0x192
	.uaword	0x43fe
	.uleb128 0x17
	.string	"xTalkStoredMeanSignalRate"
	.byte	0x1
	.uahalf	0x193
	.uaword	0x2c9
	.uleb128 0x17
	.string	"xTalkStoredMeanRange"
	.byte	0x1
	.uahalf	0x194
	.uaword	0x2c9
	.uleb128 0x17
	.string	"xTalkStoredMeanRtnSpads"
	.byte	0x1
	.uahalf	0x195
	.uaword	0x2c9
	.uleb128 0x17
	.string	"xTalkStoredMeanRtnSpadsAsInt"
	.byte	0x1
	.uahalf	0x196
	.uaword	0x23f
	.uleb128 0x17
	.string	"xTalkCalDistanceAsInt"
	.byte	0x1
	.uahalf	0x197
	.uaword	0x23f
	.uleb128 0x17
	.string	"XTalkCompensationRateMegaCps"
	.byte	0x1
	.uahalf	0x198
	.uaword	0x2c9
	.uleb128 0x17
	.string	"signalXTalkTotalPerSpad"
	.byte	0x1
	.uahalf	0x199
	.uaword	0x23f
	.uleb128 0x18
	.uaword	.LASF44
	.byte	0x1
	.uahalf	0x19a
	.uaword	0x4052
	.uleb128 0x18
	.uaword	.LASF77
	.byte	0x1
	.uahalf	0x19b
	.uaword	0x45e9
	.uleb128 0x17
	.string	"pC"
	.byte	0x1
	.uahalf	0x19c
	.uaword	0x7aae
	.uleb128 0x43
	.string	"ENDFUNC"
	.byte	0x1
	.uahalf	0x210
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_PerformSingleTargetXTalkCalibration"
	.byte	0x1
	.uahalf	0x928
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB59
	.uaword	.LFE59
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7fa1
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0x928
	.uaword	0x477d
	.uaword	.LLST209
	.uleb128 0x22
	.uaword	.LASF72
	.byte	0x1
	.uahalf	0x929
	.uaword	0x224
	.uaword	.LLST210
	.uleb128 0x33
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0x92b
	.uaword	0x461
	.byte	0
	.uleb128 0x27
	.uaword	0x7b60
	.uaword	.LBB138
	.uaword	.Ldebug_ranges0+0xe0
	.byte	0x1
	.uahalf	0x932
	.uaword	0x7f8f
	.uleb128 0x29
	.uaword	0x7b8b
	.uaword	.LLST211
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0xe0
	.uleb128 0x2c
	.uaword	0x7b97
	.uaword	.LLST212
	.uleb128 0x2c
	.uaword	0x7ba3
	.uaword	.LLST213
	.uleb128 0x2c
	.uaword	0x7baf
	.uaword	.LLST214
	.uleb128 0x2c
	.uaword	0x7bc1
	.uaword	.LLST215
	.uleb128 0x2c
	.uaword	0x7bd8
	.uaword	.LLST216
	.uleb128 0x2c
	.uaword	0x7be4
	.uaword	.LLST217
	.uleb128 0x2c
	.uaword	0x7bf7
	.uaword	.LLST218
	.uleb128 0x2d
	.uaword	0x7c0d
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2c
	.uaword	0x7c1c
	.uaword	.LLST219
	.uleb128 0x2c
	.uaword	0x7c3e
	.uaword	.LLST220
	.uleb128 0x2c
	.uaword	0x7c5b
	.uaword	.LLST221
	.uleb128 0x2c
	.uaword	0x7c7b
	.uaword	.LLST222
	.uleb128 0x2c
	.uaword	0x7ca0
	.uaword	.LLST223
	.uleb128 0x2c
	.uaword	0x7cbe
	.uaword	.LLST224
	.uleb128 0x39
	.uaword	0x7ce3
	.uleb128 0x2c
	.uaword	0x7d03
	.uaword	.LLST225
	.uleb128 0x2d
	.uaword	0x7d0f
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.uaword	0x7d1b
	.uaword	.LLST226
	.uleb128 0x44
	.uaword	0x7d26
	.uaword	.L304
	.uleb128 0x35
	.uaword	0x4c01
	.uaword	.LBB140
	.uaword	.LBE140
	.byte	0x1
	.uahalf	0x1bb
	.uaword	0x7eb5
	.uleb128 0x29
	.uaword	0x4c30
	.uaword	.LLST227
	.uleb128 0x36
	.uaword	.LBB141
	.uaword	.LBE141
	.uleb128 0x2c
	.uaword	0x4c3c
	.uaword	.LLST228
	.uleb128 0x30
	.uaword	.LVL405
	.uaword	0x8999
	.uleb128 0x2f
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x7d0
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0x4c49
	.uaword	.LBB142
	.uaword	.Ldebug_ranges0+0x108
	.byte	0x1
	.uahalf	0x1c5
	.uaword	0x7f04
	.uleb128 0x28
	.uaword	0x4c6f
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x108
	.uleb128 0x2c
	.uaword	0x4c7b
	.uaword	.LLST229
	.uleb128 0x2e
	.uaword	.LVL416
	.uaword	0x88d2
	.uaword	0x7ef2
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL430
	.uaword	0x88d2
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL399
	.uaword	0x8bf6
	.uaword	0x7f18
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL402
	.uaword	0x696a
	.uaword	0x7f2c
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL406
	.uaword	0x6d76
	.uaword	0x7f47
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL407
	.uaword	0x6ac9
	.uaword	0x7f5b
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL425
	.uaword	0x7ab4
	.uaword	0x7f76
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL428
	.uaword	0x7a01
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL429
	.byte	0x1
	.uaword	0x8bc0
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_GetOpticalCenter"
	.byte	0x1
	.uahalf	0xa76
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB65
	.uaword	.LFE65
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x8053
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0xa76
	.uaword	0x477d
	.uaword	.LLST230
	.uleb128 0x21
	.string	"pOpticalCenterX"
	.byte	0x1
	.uahalf	0xa77
	.uaword	0x659d
	.uaword	.LLST231
	.uleb128 0x21
	.string	"pOpticalCenterY"
	.byte	0x1
	.uahalf	0xa78
	.uaword	0x659d
	.uaword	.LLST232
	.uleb128 0x23
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0xa7a
	.uaword	0x461
	.uaword	.LLST233
	.uleb128 0x25
	.uaword	.LASF77
	.byte	0x1
	.uahalf	0xa7b
	.uaword	0x3f26
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x30
	.uaword	.LVL434
	.uaword	0x8d99
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_SetThresholdConfig"
	.byte	0x1
	.uahalf	0xa92
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB66
	.uaword	.LFE66
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x81db
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0xa92
	.uaword	0x477d
	.uaword	.LLST234
	.uleb128 0x21
	.string	"pConfig"
	.byte	0x1
	.uahalf	0xa93
	.uaword	0x81db
	.uaword	.LLST235
	.uleb128 0x23
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0xa99
	.uaword	0x461
	.uaword	.LLST236
	.uleb128 0x26
	.string	"Cfg"
	.byte	0x1
	.uahalf	0xa9a
	.uaword	0x321e
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x24
	.string	"g"
	.byte	0x1
	.uahalf	0xa9b
	.uaword	0x1fe
	.uaword	.LLST237
	.uleb128 0x24
	.string	"gain"
	.byte	0x1
	.uahalf	0xa9c
	.uaword	0x2c9
	.uaword	.LLST238
	.uleb128 0x24
	.string	"high1616"
	.byte	0x1
	.uahalf	0xa9c
	.uaword	0x2c9
	.uaword	.LLST239
	.uleb128 0x24
	.string	"low1616"
	.byte	0x1
	.uahalf	0xa9c
	.uaword	0x2c9
	.uaword	.LLST240
	.uleb128 0x24
	.string	"pdev"
	.byte	0x1
	.uahalf	0xa9d
	.uaword	0x53a9
	.uaword	.LLST241
	.uleb128 0x27
	.uaword	0x4c88
	.uaword	.LBB152
	.uaword	.Ldebug_ranges0+0x120
	.byte	0x1
	.uahalf	0xacc
	.uaword	0x8158
	.uleb128 0x29
	.uaword	0x4cb7
	.uaword	.LLST242
	.uleb128 0x29
	.uaword	0x4ca7
	.uaword	.LLST243
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x120
	.uleb128 0x2c
	.uaword	0x4cc3
	.uaword	.LLST244
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0x4c88
	.uaword	.LBB158
	.uaword	.Ldebug_ranges0+0x148
	.byte	0x1
	.uahalf	0xad1
	.uaword	0x818e
	.uleb128 0x29
	.uaword	0x4cb7
	.uaword	.LLST245
	.uleb128 0x29
	.uaword	0x4ca7
	.uaword	.LLST246
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x148
	.uleb128 0x2c
	.uaword	0x4cc3
	.uaword	.LLST247
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL438
	.uaword	0x8dcf
	.uaword	0x81a8
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x42
	.uaword	.LVL453
	.byte	0x1
	.uaword	0x8e10
	.uaword	0x81c3
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL461
	.byte	0x1
	.uaword	0x8e10
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x41d8
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_GetThresholdConfig"
	.byte	0x1
	.uahalf	0xafc
	.byte	0x1
	.uaword	0x461
	.uaword	.LFB67
	.uaword	.LFE67
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x82db
	.uleb128 0x21
	.string	"Dev"
	.byte	0x1
	.uahalf	0xafc
	.uaword	0x477d
	.uaword	.LLST248
	.uleb128 0x21
	.string	"pConfig"
	.byte	0x1
	.uahalf	0xafd
	.uaword	0x81db
	.uaword	.LLST249
	.uleb128 0x23
	.uaword	.LASF54
	.byte	0x1
	.uahalf	0xaff
	.uaword	0x461
	.uaword	.LLST250
	.uleb128 0x26
	.string	"Cfg"
	.byte	0x1
	.uahalf	0xb00
	.uaword	0x321e
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x27
	.uaword	0x4cd7
	.uaword	.LBB166
	.uaword	.Ldebug_ranges0+0x168
	.byte	0x1
	.uahalf	0xb14
	.uaword	0x828d
	.uleb128 0x29
	.uaword	0x4d08
	.uaword	.LLST251
	.uleb128 0x29
	.uaword	0x4cf8
	.uaword	.LLST252
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x168
	.uleb128 0x2c
	.uaword	0x4d14
	.uaword	.LLST253
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0x4cd7
	.uaword	.LBB175
	.uaword	.Ldebug_ranges0+0x1a0
	.byte	0x1
	.uahalf	0xb17
	.uaword	0x82c3
	.uleb128 0x29
	.uaword	0x4d08
	.uaword	.LLST254
	.uleb128 0x29
	.uaword	0x4cf8
	.uaword	.LLST255
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x1a0
	.uleb128 0x2c
	.uaword	0x4d14
	.uaword	.LLST256
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	.LVL471
	.uaword	0x8dcf
	.uleb128 0x2f
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x2f
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0xd
	.uaword	0x224
	.uaword	0x82eb
	.uleb128 0xe
	.uaword	0x2a4
	.byte	0x6
	.byte	0
	.uleb128 0x45
	.string	"BDTable"
	.byte	0x1
	.byte	0x84
	.uaword	0x82db
	.byte	0x5
	.byte	0x3
	.uaword	BDTable
	.uleb128 0x46
	.string	"get_api_data"
	.byte	0x1
	.byte	0x4c
	.uaword	0x1c2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	get_api_data
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_get_preset_mode_timing_cfg"
	.byte	0xb
	.uahalf	0x23e
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x836b
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x2f9
	.uleb128 0x48
	.uaword	0x6123
	.uleb128 0x48
	.uaword	0x5fc8
	.uleb128 0x48
	.uaword	0x5fc8
	.uleb128 0x48
	.uaword	0x5fc8
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_set_preset_mode"
	.byte	0xb
	.uahalf	0x224
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x83b5
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x2f9
	.uleb128 0x48
	.uaword	0x1fe
	.uleb128 0x48
	.uaword	0x23f
	.uleb128 0x48
	.uaword	0x23f
	.uleb128 0x48
	.uaword	0x23f
	.uleb128 0x48
	.uaword	0x23f
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_set_lite_min_count_rate"
	.byte	0xb
	.uahalf	0x3d2
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x83ee
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x1fe
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_set_lite_sigma_threshold"
	.byte	0xb
	.uahalf	0x3ff
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8428
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x1fe
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.string	"strncpy"
	.byte	0xc
	.byte	0x25
	.byte	0x1
	.uaword	0x2b0
	.byte	0x1
	.uaword	0x844e
	.uleb128 0x48
	.uaword	0x2b0
	.uleb128 0x48
	.uaword	0x2be
	.uleb128 0x48
	.uaword	0x296
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.string	"VL53L1_get_range_status_string"
	.byte	0xd
	.byte	0x5c
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8486
	.uleb128 0x48
	.uaword	0x1c2
	.uleb128 0x48
	.uaword	0x2b0
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.string	"VL53L1_get_pal_error_string"
	.byte	0xd
	.byte	0x6a
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x84bb
	.uleb128 0x48
	.uaword	0x461
	.uleb128 0x48
	.uaword	0x2b0
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.string	"VL53L1_get_pal_state_string"
	.byte	0xd
	.byte	0x78
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x84f0
	.uleb128 0x48
	.uaword	0x42e4
	.uleb128 0x48
	.uaword	0x2b0
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.string	"VL53L1_WrByte"
	.byte	0xe
	.byte	0x64
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x851c
	.uleb128 0x48
	.uaword	0x478f
	.uleb128 0x48
	.uaword	0x1fe
	.uleb128 0x48
	.uaword	0x1c2
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.string	"VL53L1_poll_for_boot_completion"
	.byte	0xf
	.byte	0xe1
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8555
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x23f
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_get_user_zone"
	.byte	0xb
	.uahalf	0x1f2
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8584
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x8584
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x30f7
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_get_timeouts_us"
	.byte	0xb
	.uahalf	0x120
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x85c5
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x5fc8
	.uleb128 0x48
	.uaword	0x5fc8
	.uleb128 0x48
	.uaword	0x5fc8
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_set_timeouts_us"
	.byte	0xb
	.uahalf	0x10a
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8600
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x23f
	.uleb128 0x48
	.uaword	0x23f
	.uleb128 0x48
	.uaword	0x23f
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_set_user_zone"
	.byte	0xb
	.uahalf	0x1e3
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x862f
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x8584
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_get_sequence_config_bit"
	.byte	0xb
	.uahalf	0x16a
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x866d
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x385
	.uleb128 0x48
	.uaword	0x4a7f
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_get_tuning_parm"
	.byte	0xb
	.uahalf	0x47b
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x86a3
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x446
	.uleb128 0x48
	.uaword	0x70cf
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.string	"VL53L1_set_inter_measurement_period_ms"
	.byte	0xb
	.byte	0xe5
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x86e3
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x23f
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.string	"VL53L1_get_inter_measurement_period_ms"
	.byte	0xb
	.byte	0xf6
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8723
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x5fc8
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.string	"VL53L1_get_limit_check_info"
	.byte	0xd
	.byte	0x93
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8758
	.uleb128 0x48
	.uaword	0x1fe
	.uleb128 0x48
	.uaword	0x2b0
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.string	"VL53L1_RdByte"
	.byte	0xe
	.byte	0x73
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8784
	.uleb128 0x48
	.uaword	0x478f
	.uleb128 0x48
	.uaword	0x1fe
	.uleb128 0x48
	.uaword	0x4a7f
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.string	"VL53L1_data_init"
	.byte	0xb
	.byte	0x79
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x87ae
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x1c2
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_get_lite_min_count_rate"
	.byte	0xb
	.uahalf	0x3bc
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x87e7
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x6123
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_get_lite_sigma_threshold"
	.byte	0xb
	.uahalf	0x3e9
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8821
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x6123
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.string	"VL53L1_get_sequence_steps_info"
	.byte	0xd
	.byte	0x86
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8859
	.uleb128 0x48
	.uaword	0x460a
	.uleb128 0x48
	.uaword	0x2b0
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_set_sequence_config_bit"
	.byte	0xb
	.uahalf	0x159
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8897
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x385
	.uleb128 0x48
	.uaword	0x1c2
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_init_and_start_range"
	.byte	0xb
	.uahalf	0x29f
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x88d2
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x1c2
	.uleb128 0x48
	.uaword	0x3c2
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_stop_range"
	.byte	0xb
	.uahalf	0x2af
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x88f9
	.uleb128 0x48
	.uaword	0x477d
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.string	"VL53L1_WaitUs"
	.byte	0xe
	.byte	0x82
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8920
	.uleb128 0x48
	.uaword	0x478f
	.uleb128 0x48
	.uaword	0x224
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_clear_interrupt_and_enable_next_range"
	.byte	0xb
	.uahalf	0x309
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8967
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x1c2
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.string	"VL53L1_is_new_data_ready"
	.byte	0xf
	.byte	0xc7
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8999
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x4a7f
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_poll_for_range_completion"
	.byte	0xf
	.uahalf	0x10a
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x89d4
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x23f
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_get_device_results"
	.byte	0xb
	.uahalf	0x2ea
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8a0d
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x3e3
	.uleb128 0x48
	.uaword	0x6faa
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_set_tuning_parm"
	.byte	0xb
	.uahalf	0x495
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8a43
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x446
	.uleb128 0x48
	.uaword	0x224
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_disable_firmware"
	.byte	0x10
	.uahalf	0x182
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8a70
	.uleb128 0x48
	.uaword	0x477d
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_enable_powerforce"
	.byte	0x10
	.uahalf	0x1a7
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8a9e
	.uleb128 0x48
	.uaword	0x477d
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.string	"VL53L1_WrWord"
	.byte	0xe
	.byte	0x69
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8aca
	.uleb128 0x48
	.uaword	0x478f
	.uleb128 0x48
	.uaword	0x1fe
	.uleb128 0x48
	.uaword	0x1fe
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.string	"VL53L1_ReadMulti"
	.byte	0xe
	.byte	0x5e
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8afe
	.uleb128 0x48
	.uaword	0x478f
	.uleb128 0x48
	.uaword	0x1fe
	.uleb128 0x48
	.uaword	0x4a7f
	.uleb128 0x48
	.uaword	0x23f
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_disable_powerforce"
	.byte	0x10
	.uahalf	0x1b7
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8b2d
	.uleb128 0x48
	.uaword	0x477d
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_enable_firmware"
	.byte	0x10
	.uahalf	0x173
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8b59
	.uleb128 0x48
	.uaword	0x477d
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.string	"VL53L1_run_ref_spad_char"
	.byte	0x11
	.byte	0x79
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8b8b
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x4cd1
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.string	"VL53L1_WriteMulti"
	.byte	0xe
	.byte	0x58
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8bc0
	.uleb128 0x48
	.uaword	0x478f
	.uleb128 0x48
	.uaword	0x1fe
	.uleb128 0x48
	.uaword	0x4a7f
	.uleb128 0x48
	.uaword	0x23f
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_enable_xtalk_compensation"
	.byte	0xb
	.uahalf	0x252
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8bf6
	.uleb128 0x48
	.uaword	0x477d
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_disable_xtalk_compensation"
	.byte	0xb
	.uahalf	0x261
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8c2d
	.uleb128 0x48
	.uaword	0x477d
	.byte	0
	.uleb128 0x4a
	.byte	0x1
	.string	"VL53L1_get_xtalk_compensation_enable"
	.byte	0xb
	.uahalf	0x270
	.byte	0x1
	.byte	0x1
	.uaword	0x8c68
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x4a7f
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_set_offset_calibration_mode"
	.byte	0xb
	.uahalf	0x35a
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8ca5
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x33e
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_get_offset_calibration_mode"
	.byte	0xb
	.uahalf	0x369
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8ce2
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x8ce2
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x33e
	.uleb128 0x49
	.byte	0x1
	.string	"VL53L1_run_offset_calibration"
	.byte	0x11
	.byte	0xe1
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8d24
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x1e2
	.uleb128 0x48
	.uaword	0x4cd1
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.string	"VL53L1_set_customer_nvm_managed"
	.byte	0x12
	.byte	0xc6
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8d5d
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x7544
	.byte	0
	.uleb128 0x49
	.byte	0x1
	.string	"VL53L1_set_part_to_part_data"
	.byte	0xb
	.byte	0xae
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8d93
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x8d93
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3f26
	.uleb128 0x49
	.byte	0x1
	.string	"VL53L1_get_part_to_part_data"
	.byte	0xb
	.byte	0xc0
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8dcf
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x8d93
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"VL53L1_get_GPIO_interrupt_config"
	.byte	0xb
	.uahalf	0x34c
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uaword	0x8e0a
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x8e0a
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x321e
	.uleb128 0x4b
	.byte	0x1
	.string	"VL53L1_set_GPIO_interrupt_config_struct"
	.byte	0xb
	.uahalf	0x340
	.byte	0x1
	.uaword	0x461
	.byte	0x1
	.uleb128 0x48
	.uaword	0x477d
	.uleb128 0x48
	.uaword	0x321e
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x25
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
	.uleb128 0xa
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x48
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9
	.uaword	.LVL13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL4
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL7
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL10-1
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL13
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL17
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL13
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL17
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL7
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL13
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL18
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL21-1
	.uaword	.LVL22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL26-1
	.uaword	.LFE32
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL25
	.uaword	.LFE32
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL18
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL21-1
	.uaword	.LVL22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL26-1
	.uaword	.LFE32
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL18
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL24
	.uaword	.LFE32
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL19
	.uaword	.LVL21-1
	.uahalf	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x39
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL21-1
	.uaword	.LVL22
	.uahalf	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x39
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL26-1
	.uahalf	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x3e
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL26-1
	.uaword	.LFE32
	.uahalf	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x3e
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x3
	.byte	0x84
	.sleb128 508
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL33
	.uaword	.LFE10
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL31
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL34
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL40
	.uaword	.LVL41-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL41-1
	.uaword	.LFE10
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x3
	.byte	0x8c
	.sleb128 508
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL33
	.uaword	.LFE10
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL42
	.uaword	.LVL43-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL43-1
	.uaword	.LFE11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL42
	.uaword	.LVL43-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL43-1
	.uaword	.LFE11
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL44
	.uaword	.LVL45-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL45-1
	.uaword	.LFE12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL44
	.uaword	.LVL45-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL45-1
	.uaword	.LFE12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL46
	.uaword	.LVL47-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL47-1
	.uaword	.LFE13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL46
	.uaword	.LVL47-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL47-1
	.uaword	.LFE13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL49
	.uaword	.LVL51-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL51-1
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL50
	.uaword	.LFE15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL52
	.uaword	.LVL53-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL53-1
	.uaword	.LFE18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL55
	.uaword	.LVL58-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL58-1
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL55
	.uaword	.LVL58-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL58-1
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL55
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL60
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
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL56
	.uaword	.LVL58-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 892
	.uaword	.LVL58-1
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL57
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL61
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL61
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL68
	.uaword	.LVL72-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL72-1
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL68
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL71
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL68
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LVL75-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL75
	.uaword	.LVL76-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL76
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x3
	.byte	0x9
	.byte	0xf8
	.byte	0x9f
	.uaword	.LVL84
	.uaword	.LVL86
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x3
	.byte	0x9
	.byte	0xfc
	.byte	0x9f
	.uaword	.LVL90
	.uaword	.LVL92
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL94
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL77
	.uaword	.LVL83
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL83
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL88
	.uaword	.LVL90
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL77
	.uaword	.LVL83
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL84
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL88
	.uaword	.LVL90
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL77
	.uaword	.LVL81-1
	.uahalf	0x3
	.byte	0x8f
	.sleb128 892
	.uaword	.LVL88
	.uaword	.LVL90
	.uahalf	0x3
	.byte	0x8f
	.sleb128 892
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL80
	.uaword	.LVL82
	.uahalf	0x3
	.byte	0x8
	.byte	0xf5
	.byte	0x9f
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xf5
	.byte	0x1e
	.byte	0x23
	.uleb128 0xf5
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL68
	.uaword	.LVL80
	.uahalf	0x6
	.byte	0xc
	.uaword	0x86470
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LVL84
	.uahalf	0x6
	.byte	0xc
	.uaword	0x10c8e0
	.byte	0x9f
	.uaword	.LVL84
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x6
	.byte	0xc
	.uaword	0x10c8e0
	.byte	0x9f
	.uaword	.LVL89
	.uaword	.LVL90
	.uahalf	0x6
	.byte	0xc
	.uaword	0x86470
	.byte	0x9f
	.uaword	.LVL90
	.uaword	.LVL92-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL94
	.uaword	.LFE25
	.uahalf	0x6
	.byte	0xc
	.uaword	0x86470
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x3
	.byte	0x91
	.sleb128 -18
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL72-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL72-1
	.uaword	.LVL86
	.uahalf	0x3
	.byte	0x91
	.sleb128 -18
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LFE25
	.uahalf	0x3
	.byte	0x91
	.sleb128 -18
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL69
	.uaword	.LVL86
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LFE25
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL69
	.uaword	.LVL72-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL72-1
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL87
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL69
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LVL75-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL94
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x3
	.byte	0x91
	.sleb128 -17
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LVL75-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL75-1
	.uaword	.LVL86
	.uahalf	0x3
	.byte	0x91
	.sleb128 -17
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LVL94
	.uahalf	0x3
	.byte	0x91
	.sleb128 -17
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL73
	.uaword	.LVL86
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LVL94
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL73
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL87
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL73
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL76-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL95
	.uaword	.LVL97-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL97-1
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL102
	.uaword	.LVL103-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL103-1
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL95
	.uaword	.LVL97-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL97-1
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL99
	.uaword	.LVL101-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL101
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL103
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x4
	.byte	0xa
	.uahalf	0x3e8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL100
	.uaword	.LVL101
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL104
	.uaword	.LVL106-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL106-1
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL107
	.uaword	.LVL110-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL110-1
	.uaword	.LFE26
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL108
	.uaword	.LFE26
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL107
	.uaword	.LVL111
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL111
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL113
	.uaword	.LVL115-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL115-1
	.uaword	.LVL116
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL116
	.uaword	.LVL117-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL117-1
	.uaword	.LVL118
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL118
	.uaword	.LVL120
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL120
	.uaword	.LVL121
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL121
	.uaword	.LVL122
	.uahalf	0x3
	.byte	0x9
	.byte	0xf8
	.byte	0x9f
	.uaword	.LVL122
	.uaword	.LVL123
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL123
	.uaword	.LVL126
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL127
	.uaword	.LVL129
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL129
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL133
	.uaword	.LVL134
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL134
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL135
	.uaword	.LFE26
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL109
	.uaword	.LVL123
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL123
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL126
	.uaword	.LVL127
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL127
	.uaword	.LVL129
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL129
	.uaword	.LVL133
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL133
	.uaword	.LVL134
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL134
	.uaword	.LVL135
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL135
	.uaword	.LFE26
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL119
	.uaword	.LVL124
	.uahalf	0x3
	.byte	0x8f
	.sleb128 892
	.uaword	.LVL126
	.uaword	.LVL128
	.uahalf	0x3
	.byte	0x8f
	.sleb128 892
	.uaword	.LVL129
	.uaword	.LVL130-1
	.uahalf	0x3
	.byte	0x8f
	.sleb128 892
	.uaword	.LVL134
	.uaword	.LVL136
	.uahalf	0x3
	.byte	0x8f
	.sleb128 892
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL131
	.uaword	.LVL132
	.uahalf	0x4
	.byte	0x72
	.sleb128 3548
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL129
	.uaword	.LVL131
	.uahalf	0x3
	.byte	0x8
	.byte	0xf5
	.byte	0x9f
	.uaword	.LVL131
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL109
	.uaword	.LVL110-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL110-1
	.uaword	.LFE26
	.uahalf	0x3
	.byte	0x91
	.sleb128 -18
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL109
	.uaword	.LVL110-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL110-1
	.uaword	.LFE26
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL109
	.uaword	.LVL111
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL111
	.uaword	.LVL112
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL113
	.uaword	.LVL115-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL115-1
	.uaword	.LVL116
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL113
	.uaword	.LVL114
	.uahalf	0x3
	.byte	0x91
	.sleb128 -17
	.byte	0x9f
	.uaword	.LVL114
	.uaword	.LVL115-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL115-1
	.uaword	.LFE26
	.uahalf	0x3
	.byte	0x91
	.sleb128 -17
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL113
	.uaword	.LVL116
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL116
	.uaword	.LVL117-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL117-1
	.uaword	.LVL118
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL137
	.uaword	.LVL138-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL138-1
	.uaword	.LFE27
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL137
	.uaword	.LVL138-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL138-1
	.uaword	.LFE27
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL139
	.uaword	.LVL140-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL140-1
	.uaword	.LFE28
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL139
	.uaword	.LVL140-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL140-1
	.uaword	.LFE28
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL142
	.uaword	.LVL143-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL143-1
	.uaword	.LFE30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL142
	.uaword	.LVL143-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL143-1
	.uaword	.LFE30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL144
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL145
	.uaword	.LFE31
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL144
	.uaword	.LVL147
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL147
	.uaword	.LFE31
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL146
	.uaword	.LVL147
	.uahalf	0x3
	.byte	0x84
	.sleb128 902
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL148
	.uaword	.LVL152-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL152-1
	.uaword	.LVL153
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL153
	.uaword	.LVL154
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL154
	.uaword	.LFE33
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL148
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL150
	.uaword	.LVL154
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL154
	.uaword	.LFE33
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL148
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL150
	.uaword	.LVL154
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL154
	.uaword	.LFE33
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL148
	.uaword	.LVL152
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL152
	.uaword	.LVL153
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL154
	.uaword	.LFE33
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL148
	.uaword	.LVL149
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL151
	.uaword	.LVL152-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL154
	.uaword	.LVL155
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL155
	.uaword	.LFE33
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL156
	.uaword	.LVL157
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL157
	.uaword	.LVL160
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL160
	.uaword	.LFE34
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL156
	.uaword	.LVL158
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL158
	.uaword	.LVL160
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL160
	.uaword	.LFE34
	.uahalf	0x3
	.byte	0x9
	.byte	0xfc
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL158
	.uaword	.LVL159
	.uahalf	0x3
	.byte	0x84
	.sleb128 900
	.uaword	.LVL159
	.uaword	.LVL160
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL161
	.uaword	.LVL163-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL163-1
	.uaword	.LVL164
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL164
	.uaword	.LFE35
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL161
	.uaword	.LVL163-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL163-1
	.uaword	.LFE35
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL161
	.uaword	.LVL163-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL163-1
	.uaword	.LVL165
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL165
	.uaword	.LFE35
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL161
	.uaword	.LVL163
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL163
	.uaword	.LFE35
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL162
	.uaword	.LVL163-1
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x384
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL166
	.uaword	.LVL167-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL167-1
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL166
	.uaword	.LVL167
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL167
	.uaword	.LVL169-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL169
	.uaword	.LVL170-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL171
	.uaword	.LVL172
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL172
	.uaword	.LVL173
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL173
	.uaword	.LVL174
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL174
	.uaword	.LVL175
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL175
	.uaword	.LVL176
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL176
	.uaword	.LVL177-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL177
	.uaword	.LVL178-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL178
	.uaword	.LFE16
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL179
	.uaword	.LVL181-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL181-1
	.uaword	.LVL183
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL183
	.uaword	.LVL184
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL184
	.uaword	.LVL185
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL185
	.uaword	.LVL186
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL186
	.uaword	.LVL188-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL188-1
	.uaword	.LVL190
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL190
	.uaword	.LFE36
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL179
	.uaword	.LVL181-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL181-1
	.uaword	.LVL184
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL184
	.uaword	.LVL185
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL185
	.uaword	.LVL186
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL186
	.uaword	.LVL188-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL188-1
	.uaword	.LFE36
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL179
	.uaword	.LVL180
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL180
	.uaword	.LVL184
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL184
	.uaword	.LVL185
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL185
	.uaword	.LVL186
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL186
	.uaword	.LVL187
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL187
	.uaword	.LFE36
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL179
	.uaword	.LVL181
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL181
	.uaword	.LVL184
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL184
	.uaword	.LVL185
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL186
	.uaword	.LVL188
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL188
	.uaword	.LFE36
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL182
	.uaword	.LVL184
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL189
	.uaword	.LVL191
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL192
	.uaword	.LVL193
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL194
	.uaword	.LVL195
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL195
	.uaword	.LFE37
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL194
	.uaword	.LVL196
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL196
	.uaword	.LFE37
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL194
	.uaword	.LVL196
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL197
	.uaword	.LVL204-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL204-1
	.uaword	.LFE38
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL197
	.uaword	.LVL203
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL203
	.uaword	.LFE38
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL197
	.uaword	.LVL202
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST106:
	.uaword	.LVL198
	.uaword	.LVL199
	.uahalf	0x6
	.byte	0x85
	.sleb128 0
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.uaword	.LVL199
	.uaword	.LVL200
	.uahalf	0xa
	.byte	0x85
	.sleb128 0
	.byte	0x93
	.uleb128 0x1
	.byte	0x85
	.sleb128 1
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.uaword	.LVL200
	.uaword	.LVL201
	.uahalf	0xe
	.byte	0x85
	.sleb128 0
	.byte	0x93
	.uleb128 0x1
	.byte	0x85
	.sleb128 1
	.byte	0x93
	.uleb128 0x1
	.byte	0x85
	.sleb128 2
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.uaword	.LVL201
	.uaword	.LVL203
	.uahalf	0x10
	.byte	0x85
	.sleb128 0
	.byte	0x93
	.uleb128 0x1
	.byte	0x85
	.sleb128 1
	.byte	0x93
	.uleb128 0x1
	.byte	0x85
	.sleb128 2
	.byte	0x93
	.uleb128 0x1
	.byte	0x85
	.sleb128 3
	.byte	0x93
	.uleb128 0x1
	.uaword	.LVL203
	.uaword	.LVL204-1
	.uahalf	0x16
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x23
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x23
	.uleb128 0x3
	.byte	0x93
	.uleb128 0x1
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL205
	.uaword	.LVL207-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL207-1
	.uaword	.LFE39
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL205
	.uaword	.LVL206
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL206
	.uaword	.LFE39
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL205
	.uaword	.LVL207
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL207
	.uaword	.LFE39
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST110:
	.uaword	.LVL209
	.uaword	.LVL210-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL210-1
	.uaword	.LFE41
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST111:
	.uaword	.LVL209
	.uaword	.LVL210-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL210-1
	.uaword	.LFE41
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST112:
	.uaword	.LVL211
	.uaword	.LVL212-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL212-1
	.uaword	.LFE42
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST113:
	.uaword	.LVL211
	.uaword	.LVL212-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL212-1
	.uaword	.LFE42
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST114:
	.uaword	.LVL211
	.uaword	.LVL212-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL212-1
	.uaword	.LFE42
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST115:
	.uaword	.LVL211
	.uaword	.LVL213
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL213
	.uaword	.LVL215-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL215-1
	.uaword	.LFE42
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST116:
	.uaword	.LVL214
	.uaword	.LVL215-1
	.uahalf	0x3
	.byte	0x8f
	.sleb128 896
	.uaword	0
	.uaword	0
.LLST117:
	.uaword	.LVL216
	.uaword	.LVL217-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL217-1
	.uaword	.LFE43
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST118:
	.uaword	.LVL216
	.uaword	.LVL217-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL217-1
	.uaword	.LFE43
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST119:
	.uaword	.LVL216
	.uaword	.LVL217-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL217-1
	.uaword	.LFE43
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST120:
	.uaword	.LVL218
	.uaword	.LVL220-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL220-1
	.uaword	.LVL221
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL221
	.uaword	.LVL222
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL222
	.uaword	.LVL223
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL223
	.uaword	.LFE44
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST121:
	.uaword	.LVL218
	.uaword	.LVL220
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL220
	.uaword	.LVL221
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL221
	.uaword	.LVL222
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL223
	.uaword	.LFE44
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST122:
	.uaword	.LVL219
	.uaword	.LVL220-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 2
	.uaword	0
	.uaword	0
.LLST123:
	.uaword	.LVL218
	.uaword	.LVL220-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 888
	.uaword	.LVL221
	.uaword	.LVL222
	.uahalf	0x3
	.byte	0x84
	.sleb128 888
	.uaword	.LVL223
	.uaword	.LFE44
	.uahalf	0x3
	.byte	0x84
	.sleb128 888
	.uaword	0
	.uaword	0
.LLST124:
	.uaword	.LVL224
	.uaword	.LVL225-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL225-1
	.uaword	.LFE45
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST125:
	.uaword	.LVL224
	.uaword	.LVL225
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL225
	.uaword	.LFE45
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST126:
	.uaword	.LVL226
	.uaword	.LVL229-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL229-1
	.uaword	.LVL233
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL233
	.uaword	.LVL234-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL234-1
	.uaword	.LFE47
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST127:
	.uaword	.LVL226
	.uaword	.LVL232
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL232
	.uaword	.LVL233
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL233
	.uaword	.LVL234
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL234
	.uaword	.LVL235
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL235
	.uaword	.LVL247
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST128:
	.uaword	.LVL227
	.uaword	.LVL229-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 2
	.uaword	.LVL233
	.uaword	.LVL234-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 2
	.uaword	0
	.uaword	0
.LLST129:
	.uaword	.LVL227
	.uaword	.LVL229-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 894
	.uaword	.LVL229-1
	.uaword	.LVL231
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL233
	.uaword	.LVL234-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 894
	.uaword	.LVL234-1
	.uaword	.LVL235
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST130:
	.uaword	.LVL227
	.uaword	.LVL229-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 895
	.uaword	.LVL233
	.uaword	.LVL234-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 895
	.uaword	0
	.uaword	0
.LLST131:
	.uaword	.LVL228
	.uaword	.LVL229-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL229-1
	.uaword	.LVL233
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL235
	.uaword	.LFE47
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST132:
	.uaword	.LVL228
	.uaword	.LVL229
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL229
	.uaword	.LVL232
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL235
	.uaword	.LVL236-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL236
	.uaword	.LVL237-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL237
	.uaword	.LVL238-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL238
	.uaword	.LVL240-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL240
	.uaword	.LVL241-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL241
	.uaword	.LVL242
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL243
	.uaword	.LVL244
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL244
	.uaword	.LVL246-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL246
	.uaword	.LFE47
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST133:
	.uaword	.LVL230
	.uaword	.LVL232
	.uahalf	0x3
	.byte	0x8f
	.sleb128 892
	.uaword	.LVL232
	.uaword	.LVL233
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL235
	.uaword	.LVL236-1
	.uahalf	0x3
	.byte	0x8f
	.sleb128 892
	.uaword	.LVL236-1
	.uaword	.LFE47
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST134:
	.uaword	.LVL231
	.uaword	.LVL232
	.uahalf	0x3
	.byte	0x8f
	.sleb128 895
	.uaword	.LVL232
	.uaword	.LVL233
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL235
	.uaword	.LVL236-1
	.uahalf	0x3
	.byte	0x8f
	.sleb128 895
	.uaword	.LVL236-1
	.uaword	.LFE47
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST135:
	.uaword	.LVL245
	.uaword	.LVL246-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 2
	.uaword	0
	.uaword	0
.LLST136:
	.uaword	.LVL239
	.uaword	.LVL240-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 20
	.uaword	0
	.uaword	0
.LLST137:
	.uaword	.LVL248
	.uaword	.LVL249-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL249-1
	.uaword	.LFE48
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST138:
	.uaword	.LVL248
	.uaword	.LVL249-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL249-1
	.uaword	.LFE48
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST139:
	.uaword	.LVL250
	.uaword	.LVL251-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL251-1
	.uaword	.LFE49
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST140:
	.uaword	.LVL252
	.uaword	.LVL255-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL255-1
	.uaword	.LFE53
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST141:
	.uaword	.LVL252
	.uaword	.LVL254
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL254
	.uaword	.LFE53
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST142:
	.uaword	.LVL252
	.uaword	.LVL256
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL256
	.uaword	.LVL257
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL257
	.uaword	.LVL258
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL258
	.uaword	.LVL259
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL259
	.uaword	.LVL284
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL285
	.uaword	.LFE53
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST143:
	.uaword	.LVL253
	.uaword	.LVL254
	.uahalf	0x4
	.byte	0x91
	.sleb128 -132
	.byte	0x9f
	.uaword	.LVL254
	.uaword	.LVL255-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL255-1
	.uaword	.LFE53
	.uahalf	0x4
	.byte	0x91
	.sleb128 -132
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST144:
	.uaword	.LVL261
	.uaword	.LVL281-1
	.uahalf	0x3
	.byte	0x91
	.sleb128 -129
	.uaword	.LVL285
	.uaword	.LVL289
	.uahalf	0x3
	.byte	0x91
	.sleb128 -129
	.uaword	0
	.uaword	0
.LLST145:
	.uaword	.LVL281
	.uaword	.LVL285
	.uahalf	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x36
	.byte	0x29
	.byte	0x9f
	.uaword	.LVL289
	.uaword	.LFE53
	.uahalf	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x36
	.byte	0x29
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST146:
	.uaword	.LVL282
	.uaword	.LVL285
	.uahalf	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x34
	.byte	0x29
	.byte	0x9f
	.uaword	.LVL289
	.uaword	.LFE53
	.uahalf	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x34
	.byte	0x29
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST147:
	.uaword	.LVL281
	.uaword	.LVL282-1
	.uahalf	0x3
	.byte	0x8c
	.sleb128 900
	.uaword	.LVL282
	.uaword	.LVL284
	.uahalf	0x3
	.byte	0x8c
	.sleb128 901
	.uaword	.LVL289
	.uaword	.LVL290
	.uahalf	0x3
	.byte	0x8c
	.sleb128 901
	.uaword	0
	.uaword	0
.LLST148:
	.uaword	.LVL281
	.uaword	.LVL282-1
	.uahalf	0x10
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x36
	.byte	0x29
	.byte	0x8c
	.sleb128 900
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x29
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL282
	.uaword	.LVL284
	.uahalf	0x10
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x34
	.byte	0x29
	.byte	0x8c
	.sleb128 901
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x29
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL289
	.uaword	.LVL290
	.uahalf	0x10
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x34
	.byte	0x29
	.byte	0x8c
	.sleb128 901
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x29
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST149:
	.uaword	.LVL275
	.uaword	.LVL281-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
	.uaword	.LVL285
	.uaword	.LVL286
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
	.uaword	.LVL288
	.uaword	.LVL289
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST150:
	.uaword	.LVL274
	.uaword	.LVL280
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL280
	.uaword	.LVL281-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL285
	.uaword	.LVL286
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL288
	.uaword	.LVL289
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST151:
	.uaword	.LVL275
	.uaword	.LVL279
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL279
	.uaword	.LVL280
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL280
	.uaword	.LVL281-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 916
	.uaword	.LVL285
	.uaword	.LVL286
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL288
	.uaword	.LVL289
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST152:
	.uaword	.LVL283
	.uaword	.LVL284
	.uahalf	0x2
	.byte	0x8f
	.sleb128 24
	.uaword	.LVL289
	.uaword	.LFE53
	.uahalf	0x2
	.byte	0x8f
	.sleb128 24
	.uaword	0
	.uaword	0
.LLST153:
	.uaword	.LVL262
	.uaword	.LVL266
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL287
	.uaword	.LVL288
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST154:
	.uaword	.LVL268
	.uaword	.LVL269
	.uahalf	0x9
	.byte	0xc
	.uaword	0x75b333
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST155:
	.uaword	.LVL263
	.uaword	.LVL264
	.uahalf	0x9
	.byte	0x73
	.sleb128 0
	.byte	0xc
	.uaword	0x30cccd
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL264
	.uaword	.LVL269
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST156:
	.uaword	.LVL270
	.uaword	.LVL271
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST157:
	.uaword	.LVL272
	.uaword	.LVL273
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST158:
	.uaword	.LVL291
	.uaword	.LVL294-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL294-1
	.uaword	.LFE54
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST159:
	.uaword	.LVL291
	.uaword	.LVL294-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL294-1
	.uaword	.LFE54
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST160:
	.uaword	.LVL291
	.uaword	.LVL294-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL294-1
	.uaword	.LFE54
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST161:
	.uaword	.LVL291
	.uaword	.LVL292
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL292
	.uaword	.LVL293
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL293
	.uaword	.LFE54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST162:
	.uaword	.LVL295
	.uaword	.LVL298-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL298-1
	.uaword	.LFE55
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST163:
	.uaword	.LVL295
	.uaword	.LVL298-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL298-1
	.uaword	.LFE55
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST164:
	.uaword	.LVL295
	.uaword	.LVL298-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL298-1
	.uaword	.LFE55
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST165:
	.uaword	.LVL295
	.uaword	.LVL296
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL296
	.uaword	.LVL297
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL297
	.uaword	.LFE55
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST166:
	.uaword	.LVL299
	.uaword	.LVL302-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL302-1
	.uaword	.LFE56
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST167:
	.uaword	.LVL299
	.uaword	.LVL302
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL302
	.uaword	.LVL304
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL305
	.uaword	.LVL306-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL306
	.uaword	.LVL308
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL334
	.uaword	.LVL338-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL338
	.uaword	.LFE56
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST168:
	.uaword	.LVL336
	.uaword	.LVL337
	.uahalf	0x3
	.byte	0x91
	.sleb128 -8
	.byte	0x9f
	.uaword	.LVL337
	.uaword	.LVL338-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL338-1
	.uaword	.LFE56
	.uahalf	0x3
	.byte	0x91
	.sleb128 -8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST169:
	.uaword	.LVL300
	.uaword	.LVL302-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL302-1
	.uaword	.LFE56
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST170:
	.uaword	.LVL300
	.uaword	.LVL302-1
	.uahalf	0x4
	.byte	0x84
	.sleb128 66
	.byte	0x9f
	.uaword	.LVL302-1
	.uaword	.LFE56
	.uahalf	0x4
	.byte	0x8f
	.sleb128 66
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST171:
	.uaword	.LVL301
	.uaword	.LVL302-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 892
	.uaword	.LVL302-1
	.uaword	.LVL303
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL305
	.uaword	.LVL307
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST172:
	.uaword	.LVL308
	.uaword	.LVL320
	.uahalf	0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x9f
	.uaword	.LVL320
	.uaword	.LVL323-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL323-1
	.uaword	.LFE56
	.uahalf	0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST173:
	.uaword	.LVL308
	.uaword	.LVL316
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL328
	.uaword	.LVL329
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL329
	.uaword	.LVL333
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL333
	.uaword	.LVL334-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST174:
	.uaword	.LVL308
	.uaword	.LVL309
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL309
	.uaword	.LVL310-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL310
	.uaword	.LVL311-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL311
	.uaword	.LVL312-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL312
	.uaword	.LVL313-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL313
	.uaword	.LVL314-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL314
	.uaword	.LVL315-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL315
	.uaword	.LVL316-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL316
	.uaword	.LVL317
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST175:
	.uaword	.LVL317
	.uaword	.LVL318
	.uahalf	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.uaword	.LVL318
	.uaword	.LVL319
	.uahalf	0xb
	.byte	0x7f
	.sleb128 1
	.byte	0x9
	.byte	0xfc
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.uaword	.LVL321
	.uaword	.LVL328
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL328
	.uaword	.LVL335
	.uahalf	0xb
	.byte	0x7f
	.sleb128 1
	.byte	0x9
	.byte	0xfc
	.byte	0x1e
	.byte	0x91
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST176:
	.uaword	.LVL317
	.uaword	.LVL319
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL321
	.uaword	.LVL322
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL322
	.uaword	.LVL323
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL323
	.uaword	.LVL324-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL324
	.uaword	.LVL325-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL325
	.uaword	.LVL326-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL326
	.uaword	.LVL327-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL327
	.uaword	.LVL330-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST177:
	.uaword	.LVL317
	.uaword	.LVL318
	.uahalf	0x6
	.byte	0x8
	.byte	0x2f
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL318
	.uaword	.LVL319
	.uahalf	0x6
	.byte	0x8
	.byte	0x2f
	.byte	0x7f
	.sleb128 1
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL321
	.uaword	.LVL323-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL323-1
	.uaword	.LVL328
	.uahalf	0x6
	.byte	0x8
	.byte	0x2e
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL328
	.uaword	.LVL335
	.uahalf	0x6
	.byte	0x8
	.byte	0x2f
	.byte	0x7f
	.sleb128 1
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST178:
	.uaword	.LVL329
	.uaword	.LVL330
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL330
	.uaword	.LVL331-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL331
	.uaword	.LVL332-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL332
	.uaword	.LVL333-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL333
	.uaword	.LVL334-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST179:
	.uaword	.LVL339
	.uaword	.LVL340-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL340-1
	.uaword	.LVL340
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL340
	.uaword	.LVL341-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL341-1
	.uaword	.LFE57
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST180:
	.uaword	.LVL339
	.uaword	.LVL340-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL340-1
	.uaword	.LVL340
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL340
	.uaword	.LVL341-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL341-1
	.uaword	.LFE57
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST181:
	.uaword	.LVL342
	.uaword	.LVL343-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL343-1
	.uaword	.LFE58
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST182:
	.uaword	.LVL342
	.uaword	.LVL343-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL343-1
	.uaword	.LFE58
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST183:
	.uaword	.LVL344
	.uaword	.LVL346-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL346-1
	.uaword	.LVL346
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL346
	.uaword	.LVL348-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL348-1
	.uaword	.LFE60
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST184:
	.uaword	.LVL344
	.uaword	.LVL345
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL345
	.uaword	.LVL346
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL346
	.uaword	.LVL347
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL347
	.uaword	.LFE60
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST185:
	.uaword	.LVL345
	.uaword	.LVL346-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL346-1
	.uaword	.LVL346
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL347
	.uaword	.LVL348-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL348-1
	.uaword	.LFE60
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST186:
	.uaword	.LVL349
	.uaword	.LVL350-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL350-1
	.uaword	.LFE61
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST187:
	.uaword	.LVL349
	.uaword	.LVL350-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL350-1
	.uaword	.LFE61
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST188:
	.uaword	.LVL349
	.uaword	.LVL350
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL350
	.uaword	.LVL351
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST189:
	.uaword	.LVL353
	.uaword	.LVL355-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL355-1
	.uaword	.LFE62
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST190:
	.uaword	.LVL353
	.uaword	.LVL355-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL355-1
	.uaword	.LFE62
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST191:
	.uaword	.LVL353
	.uaword	.LVL356
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL356
	.uaword	.LVL357
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL357
	.uaword	.LVL358
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL358
	.uaword	.LVL360
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL364
	.uaword	.LVL365
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL366
	.uaword	.LVL368
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL372
	.uaword	.LVL376-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL377
	.uaword	.LVL378
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL378
	.uaword	.LVL385
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL385
	.uaword	.LVL386
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL386
	.uaword	.LFE62
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST192:
	.uaword	.LVL356
	.uaword	.LVL358
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL358
	.uaword	.LVL361
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL366
	.uaword	.LVL368
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL370
	.uaword	.LVL380
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL386
	.uaword	.LFE62
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST193:
	.uaword	.LVL356
	.uaword	.LVL358
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL366
	.uaword	.LVL368
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL379
	.uaword	.LVL380
	.uahalf	0x3
	.byte	0x73
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL386
	.uaword	.LFE62
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST194:
	.uaword	.LVL354
	.uaword	.LVL355-1
	.uahalf	0x5
	.byte	0x3
	.uaword	BDTable+20
	.uaword	.LVL355-1
	.uaword	.LFE62
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST195:
	.uaword	.LVL356
	.uaword	.LVL358
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL358
	.uaword	.LVL361
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL366
	.uaword	.LVL368
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL370
	.uaword	.LVL373
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL373
	.uaword	.LVL375
	.uahalf	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL375
	.uaword	.LVL380
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL386
	.uaword	.LFE62
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST196:
	.uaword	.LVL381
	.uaword	.LVL382
	.uahalf	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST197:
	.uaword	.LVL383
	.uaword	.LVL386
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST199:
	.uaword	.LVL358
	.uaword	.LVL363
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL370
	.uaword	.LVL380
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST200:
	.uaword	.LVL358
	.uaword	.LVL360
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL360
	.uaword	.LVL361
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL370
	.uaword	.LVL371-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL371-1
	.uaword	.LVL372
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST201:
	.uaword	.LVL361
	.uaword	.LVL370
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL380
	.uaword	.LFE62
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST202:
	.uaword	.LVL361
	.uaword	.LVL362
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL362
	.uaword	.LVL363
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL366
	.uaword	.LVL367
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL367
	.uaword	.LVL369
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL386
	.uaword	.LFE62
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST203:
	.uaword	.LVL388
	.uaword	.LVL391-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL391-1
	.uaword	.LFE63
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST204:
	.uaword	.LVL388
	.uaword	.LVL389
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL389
	.uaword	.LFE63
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST205:
	.uaword	.LVL390
	.uaword	.LVL391-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST206:
	.uaword	.LVL392
	.uaword	.LVL394-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL394-1
	.uaword	.LFE64
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST207:
	.uaword	.LVL392
	.uaword	.LVL393
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL393
	.uaword	.LFE64
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST208:
	.uaword	.LVL392
	.uaword	.LVL394
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL394
	.uaword	.LFE64
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST209:
	.uaword	.LVL396
	.uaword	.LVL399-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL399-1
	.uaword	.LFE59
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST210:
	.uaword	.LVL396
	.uaword	.LVL399-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL399-1
	.uaword	.LFE59
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST211:
	.uaword	.LVL397
	.uaword	.LVL399-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL399-1
	.uaword	.LVL400
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL401
	.uaword	.LFE59
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST212:
	.uaword	.LVL397
	.uaword	.LVL399
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL399
	.uaword	.LVL400
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL401
	.uaword	.LVL402-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL402
	.uaword	.LVL404
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL425
	.uaword	.LVL427
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL428
	.uaword	.LVL429-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL429
	.uaword	.LVL430-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST213:
	.uaword	.LVL397
	.uaword	.LVL400
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL401
	.uaword	.LVL404
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL404
	.uaword	.LVL409
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL410
	.uaword	.LVL417
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL429
	.uaword	.LVL431
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST214:
	.uaword	.LVL397
	.uaword	.LVL400
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL401
	.uaword	.LVL404
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL404
	.uaword	.LVL412
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL413
	.uaword	.LVL417
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL429
	.uaword	.LVL431
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST215:
	.uaword	.LVL397
	.uaword	.LVL400
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL401
	.uaword	.LVL404
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL404
	.uaword	.LVL417
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL429
	.uaword	.LVL431
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST216:
	.uaword	.LVL397
	.uaword	.LVL400
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL401
	.uaword	.LVL404
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL404
	.uaword	.LVL408
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL408
	.uaword	.LVL413
	.uahalf	0x3
	.byte	0x7b
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL413
	.uaword	.LVL417
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL429
	.uaword	.LVL431
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST217:
	.uaword	.LVL397
	.uaword	.LVL400
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL401
	.uaword	.LVL404
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL404
	.uaword	.LVL413
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL413
	.uaword	.LVL414
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL414
	.uaword	.LVL417
	.uahalf	0x3
	.byte	0x78
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL429
	.uaword	.LVL431
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST218:
	.uaword	.LVL398
	.uaword	.LVL400
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL401
	.uaword	.LVL403
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST219:
	.uaword	.LVL419
	.uaword	.LVL423
	.uahalf	0xe
	.byte	0x7f
	.sleb128 0
	.byte	0xf7
	.uleb128 0x195
	.byte	0x7b
	.sleb128 0
	.byte	0xf7
	.uleb128 0x195
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST220:
	.uaword	.LVL419
	.uaword	.LVL421
	.uahalf	0x14
	.byte	0x7c
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0xf7
	.uleb128 0x195
	.byte	0x7b
	.sleb128 0
	.byte	0xf7
	.uleb128 0x195
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST221:
	.uaword	.LVL419
	.uaword	.LVL429
	.uahalf	0x14
	.byte	0x7a
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0xf7
	.uleb128 0x195
	.byte	0x7b
	.sleb128 0
	.byte	0xf7
	.uleb128 0x195
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST222:
	.uaword	.LVL420
	.uaword	.LVL425-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST223:
	.uaword	.LVL420
	.uaword	.LVL422
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL422
	.uaword	.LVL425-1
	.uahalf	0x5
	.byte	0x3
	.uaword	BDTable+8
	.uaword	0
	.uaword	0
.LLST224:
	.uaword	.LVL424
	.uaword	.LVL429
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST225:
	.uaword	.LVL398
	.uaword	.LVL399-1
	.uahalf	0x3
	.byte	0x84
	.sleb128 892
	.uaword	0
	.uaword	0
.LLST226:
	.uaword	.LVL426
	.uaword	.LVL429
	.uahalf	0x4
	.byte	0x91
	.sleb128 -100
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST227:
	.uaword	.LVL404
	.uaword	.LVL417
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST228:
	.uaword	.LVL404
	.uaword	.LVL405
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST229:
	.uaword	.LVL415
	.uaword	.LVL416
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL416
	.uaword	.LVL418
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL429
	.uaword	.LVL430
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL430
	.uaword	.LVL431
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST230:
	.uaword	.LVL432
	.uaword	.LVL434-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL434-1
	.uaword	.LFE65
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST231:
	.uaword	.LVL432
	.uaword	.LVL433
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL433
	.uaword	.LFE65
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST232:
	.uaword	.LVL432
	.uaword	.LVL434-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL434-1
	.uaword	.LFE65
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST233:
	.uaword	.LVL432
	.uaword	.LVL434
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL434
	.uaword	.LFE65
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST234:
	.uaword	.LVL435
	.uaword	.LVL438-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL438-1
	.uaword	.LFE66
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST235:
	.uaword	.LVL435
	.uaword	.LVL436
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL436
	.uaword	.LVL450
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL450
	.uaword	.LVL452
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL452
	.uaword	.LVL454
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL454
	.uaword	.LVL461
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL461
	.uaword	.LVL464
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL464
	.uaword	.LFE66
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST236:
	.uaword	.LVL435
	.uaword	.LVL438
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL438
	.uaword	.LVL439
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL439
	.uaword	.LVL450
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL450
	.uaword	.LVL451
	.uahalf	0x3
	.byte	0x9
	.byte	0xfc
	.byte	0x9f
	.uaword	.LVL451
	.uaword	.LVL453-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL453
	.uaword	.LVL461
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL461
	.uaword	.LVL462
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL463
	.uaword	.LFE66
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST237:
	.uaword	.LVL440
	.uaword	.LVL450
	.uahalf	0x3
	.byte	0x8c
	.sleb128 156
	.uaword	.LVL453
	.uaword	.LVL461-1
	.uahalf	0x3
	.byte	0x8c
	.sleb128 156
	.uaword	.LVL464
	.uaword	.LFE66
	.uahalf	0x3
	.byte	0x8c
	.sleb128 156
	.uaword	0
	.uaword	0
.LLST238:
	.uaword	.LVL441
	.uaword	.LVL450
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL453
	.uaword	.LVL461-1
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL464
	.uaword	.LFE66
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST239:
	.uaword	.LVL441
	.uaword	.LVL442
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL442
	.uaword	.LVL445
	.uahalf	0x5
	.byte	0x74
	.sleb128 32768
	.byte	0x9f
	.uaword	.LVL445
	.uaword	.LVL447
	.uahalf	0xe
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x195
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x195
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL447
	.uaword	.LVL450
	.uahalf	0x1a
	.byte	0x8f
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x23
	.uleb128 0x8000
	.byte	0xf7
	.uleb128 0x195
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x195
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL453
	.uaword	.LVL454
	.uahalf	0x1a
	.byte	0x8f
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x23
	.uleb128 0x8000
	.byte	0xf7
	.uleb128 0x195
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x195
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL454
	.uaword	.LVL461-1
	.uahalf	0x1d
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x23
	.uleb128 0x4
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x23
	.uleb128 0x8000
	.byte	0xf7
	.uleb128 0x195
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x195
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL464
	.uaword	.LFE66
	.uahalf	0x1d
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x23
	.uleb128 0x4
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x23
	.uleb128 0x8000
	.byte	0xf7
	.uleb128 0x195
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x195
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST240:
	.uaword	.LVL441
	.uaword	.LVL443
	.uahalf	0xb
	.byte	0x8f
	.sleb128 6
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL443
	.uaword	.LVL444
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL444
	.uaword	.LVL446
	.uahalf	0x5
	.byte	0x72
	.sleb128 32768
	.byte	0x9f
	.uaword	.LVL446
	.uaword	.LVL448
	.uahalf	0xe
	.byte	0x72
	.sleb128 0
	.byte	0xf7
	.uleb128 0x195
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x195
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL448
	.uaword	.LVL450
	.uahalf	0x1a
	.byte	0x8f
	.sleb128 6
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x23
	.uleb128 0x8000
	.byte	0xf7
	.uleb128 0x195
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x195
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL453
	.uaword	.LVL454
	.uahalf	0x1a
	.byte	0x8f
	.sleb128 6
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x23
	.uleb128 0x8000
	.byte	0xf7
	.uleb128 0x195
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x195
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL454
	.uaword	.LVL461-1
	.uahalf	0x1d
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x23
	.uleb128 0x6
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x23
	.uleb128 0x8000
	.byte	0xf7
	.uleb128 0x195
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x195
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	.LVL464
	.uaword	.LFE66
	.uahalf	0x1d
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x23
	.uleb128 0x6
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x23
	.uleb128 0x8000
	.byte	0xf7
	.uleb128 0x195
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x195
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST241:
	.uaword	.LVL437
	.uaword	.LVL438-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL438-1
	.uaword	.LFE66
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST242:
	.uaword	.LVL449
	.uaword	.LVL450
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL453
	.uaword	.LVL461-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL464
	.uaword	.LFE66
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST243:
	.uaword	.LVL449
	.uaword	.LVL450
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+32938
	.sleb128 0
	.uaword	.LVL453
	.uaword	.LVL461
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+32938
	.sleb128 0
	.uaword	.LVL464
	.uaword	.LFE66
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+32938
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST244:
	.uaword	.LVL455
	.uaword	.LVL457
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST245:
	.uaword	.LVL456
	.uaword	.LVL457
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL458
	.uaword	.LVL459
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST246:
	.uaword	.LVL456
	.uaword	.LVL457
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+32938
	.sleb128 0
	.uaword	.LVL458
	.uaword	.LVL461
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+32938
	.sleb128 0
	.uaword	.LVL464
	.uaword	.LVL465
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+32938
	.sleb128 0
	.uaword	.LVL466
	.uaword	.LFE66
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+32938
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST247:
	.uaword	.LVL466
	.uaword	.LVL467
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL467
	.uaword	.LVL468
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL468
	.uaword	.LFE66
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST248:
	.uaword	.LVL469
	.uaword	.LVL471-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL471-1
	.uaword	.LFE67
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST249:
	.uaword	.LVL469
	.uaword	.LVL470
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL470
	.uaword	.LFE67
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST250:
	.uaword	.LVL469
	.uaword	.LVL471
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL471
	.uaword	.LVL473
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL473
	.uaword	.LVL475
	.uahalf	0x3
	.byte	0x9
	.byte	0xfd
	.byte	0x9f
	.uaword	.LVL475
	.uaword	.LVL477
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL477
	.uaword	.LVL479
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL479
	.uaword	.LVL481
	.uahalf	0x3
	.byte	0x9
	.byte	0xfd
	.byte	0x9f
	.uaword	.LVL482
	.uaword	.LVL483
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL483
	.uaword	.LVL486
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL486
	.uaword	.LVL488
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL488
	.uaword	.LFE67
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST251:
	.uaword	.LVL472
	.uaword	.LVL475
	.uahalf	0x2
	.byte	0x91
	.sleb128 -14
	.uaword	.LVL476
	.uaword	.LFE67
	.uahalf	0x2
	.byte	0x91
	.sleb128 -14
	.uaword	0
	.uaword	0
.LLST252:
	.uaword	.LVL472
	.uaword	.LVL475
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+33336
	.sleb128 0
	.uaword	.LVL476
	.uaword	.LFE67
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+33336
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST253:
	.uaword	.LVL473
	.uaword	.LVL474
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL483
	.uaword	.LVL485
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL487
	.uaword	.LVL488
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST254:
	.uaword	.LVL478
	.uaword	.LVL480
	.uahalf	0x2
	.byte	0x91
	.sleb128 -13
	.uaword	.LVL484
	.uaword	.LVL486
	.uahalf	0x2
	.byte	0x91
	.sleb128 -13
	.uaword	.LVL488
	.uaword	.LFE67
	.uahalf	0x2
	.byte	0x91
	.sleb128 -13
	.uaword	0
	.uaword	0
.LLST255:
	.uaword	.LVL478
	.uaword	.LVL480
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+33336
	.sleb128 0
	.uaword	.LVL484
	.uaword	.LVL486
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+33336
	.sleb128 0
	.uaword	.LVL488
	.uaword	.LFE67
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+33336
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST256:
	.uaword	.LVL479
	.uaword	.LVL480
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL488
	.uaword	.LVL489
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL490
	.uaword	.LVL491
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x1cc
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
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
	.uaword	.LFB18
	.uaword	.LFE18-.LFB18
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
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
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.uaword	.LFB16
	.uaword	.LFE16-.LFB16
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
	.uaword	.LFB47
	.uaword	.LFE47-.LFB47
	.uaword	.LFB48
	.uaword	.LFE48-.LFB48
	.uaword	.LFB49
	.uaword	.LFE49-.LFB49
	.uaword	.LFB53
	.uaword	.LFE53-.LFB53
	.uaword	.LFB54
	.uaword	.LFE54-.LFB54
	.uaword	.LFB55
	.uaword	.LFE55-.LFB55
	.uaword	.LFB56
	.uaword	.LFE56-.LFB56
	.uaword	.LFB57
	.uaword	.LFE57-.LFB57
	.uaword	.LFB58
	.uaword	.LFE58-.LFB58
	.uaword	.LFB60
	.uaword	.LFE60-.LFB60
	.uaword	.LFB61
	.uaword	.LFE61-.LFB61
	.uaword	.LFB62
	.uaword	.LFE62-.LFB62
	.uaword	.LFB63
	.uaword	.LFE63-.LFB63
	.uaword	.LFB64
	.uaword	.LFE64-.LFB64
	.uaword	.LFB59
	.uaword	.LFE59-.LFB59
	.uaword	.LFB65
	.uaword	.LFE65-.LFB65
	.uaword	.LFB66
	.uaword	.LFE66-.LFB66
	.uaword	.LFB67
	.uaword	.LFE67-.LFB67
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB46
	.uaword	.LBE46
	.uaword	.LBB53
	.uaword	.LBE53
	.uaword	.LBB54
	.uaword	.LBE54
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	.LBB56
	.uaword	.LBE56
	.uaword	.LBB57
	.uaword	.LBE57
	.uaword	0
	.uaword	0
	.uaword	.LBB70
	.uaword	.LBE70
	.uaword	.LBB74
	.uaword	.LBE74
	.uaword	.LBB75
	.uaword	.LBE75
	.uaword	0
	.uaword	0
	.uaword	.LBB78
	.uaword	.LBE78
	.uaword	.LBB81
	.uaword	.LBE81
	.uaword	0
	.uaword	0
	.uaword	.LBB84
	.uaword	.LBE84
	.uaword	.LBB87
	.uaword	.LBE87
	.uaword	0
	.uaword	0
	.uaword	.LBB98
	.uaword	.LBE98
	.uaword	.LBB106
	.uaword	.LBE106
	.uaword	.LBB107
	.uaword	.LBE107
	.uaword	0
	.uaword	0
	.uaword	.LBB100
	.uaword	.LBE100
	.uaword	.LBB103
	.uaword	.LBE103
	.uaword	0
	.uaword	0
	.uaword	.LBB126
	.uaword	.LBE126
	.uaword	.LBB130
	.uaword	.LBE130
	.uaword	.LBB131
	.uaword	.LBE131
	.uaword	0
	.uaword	0
	.uaword	.LBB138
	.uaword	.LBE138
	.uaword	.LBB149
	.uaword	.LBE149
	.uaword	.LBB150
	.uaword	.LBE150
	.uaword	.LBB151
	.uaword	.LBE151
	.uaword	0
	.uaword	0
	.uaword	.LBB142
	.uaword	.LBE142
	.uaword	.LBB145
	.uaword	.LBE145
	.uaword	0
	.uaword	0
	.uaword	.LBB152
	.uaword	.LBE152
	.uaword	.LBB157
	.uaword	.LBE157
	.uaword	.LBB162
	.uaword	.LBE162
	.uaword	.LBB164
	.uaword	.LBE164
	.uaword	0
	.uaword	0
	.uaword	.LBB158
	.uaword	.LBE158
	.uaword	.LBB163
	.uaword	.LBE163
	.uaword	.LBB165
	.uaword	.LBE165
	.uaword	0
	.uaword	0
	.uaword	.LBB166
	.uaword	.LBE166
	.uaword	.LBB173
	.uaword	.LBE173
	.uaword	.LBB174
	.uaword	.LBE174
	.uaword	.LBB179
	.uaword	.LBE179
	.uaword	.LBB180
	.uaword	.LBE180
	.uaword	.LBB182
	.uaword	.LBE182
	.uaword	0
	.uaword	0
	.uaword	.LBB175
	.uaword	.LBE175
	.uaword	.LBB181
	.uaword	.LBE181
	.uaword	.LBB183
	.uaword	.LBE183
	.uaword	0
	.uaword	0
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	.LFB32
	.uaword	.LFE32
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
	.uaword	.LFB18
	.uaword	.LFE18
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LFB17
	.uaword	.LFE17
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
	.uaword	.LFB33
	.uaword	.LFE33
	.uaword	.LFB34
	.uaword	.LFE34
	.uaword	.LFB35
	.uaword	.LFE35
	.uaword	.LFB16
	.uaword	.LFE16
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
	.uaword	.LFB47
	.uaword	.LFE47
	.uaword	.LFB48
	.uaword	.LFE48
	.uaword	.LFB49
	.uaword	.LFE49
	.uaword	.LFB53
	.uaword	.LFE53
	.uaword	.LFB54
	.uaword	.LFE54
	.uaword	.LFB55
	.uaword	.LFE55
	.uaword	.LFB56
	.uaword	.LFE56
	.uaword	.LFB57
	.uaword	.LFE57
	.uaword	.LFB58
	.uaword	.LFE58
	.uaword	.LFB60
	.uaword	.LFE60
	.uaword	.LFB61
	.uaword	.LFE61
	.uaword	.LFB62
	.uaword	.LFE62
	.uaword	.LFB63
	.uaword	.LFE63
	.uaword	.LFB64
	.uaword	.LFE64
	.uaword	.LFB59
	.uaword	.LFE59
	.uaword	.LFB65
	.uaword	.LFE65
	.uaword	.LFB66
	.uaword	.LFE66
	.uaword	.LFB67
	.uaword	.LFE67
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF67:
	.string	"TimingGuard"
.LASF36:
	.string	"inter_measurement_period_ms"
.LASF15:
	.string	"mm_config__outer_offset_mm"
.LASF40:
	.string	"gain_cal"
.LASF33:
	.string	"range_config_timeout_us"
.LASF49:
	.string	"LimitChecksEnable"
.LASF38:
	.string	"cal_peak_rate_map"
.LASF55:
	.string	"SequenceStepId"
.LASF53:
	.string	"LimitCheckId"
.LASF59:
	.string	"LimitCheckValue"
.LASF68:
	.string	"vhv_loops"
.LASF21:
	.string	"x_centre"
.LASF52:
	.string	"presults_data"
.LASF69:
	.string	"DeviceMeasurementMode"
.LASF70:
	.string	"TuningParameterId"
.LASF9:
	.string	"algo__crosstalk_compensation_plane_offset_kcps"
.LASF51:
	.string	"FilteredRangeStatus"
.LASF41:
	.string	"optical_centre"
.LASF0:
	.string	"global_config__spad_enables_ref_0"
.LASF75:
	.string	"pCalibrationData"
.LASF61:
	.string	"TimingBudget"
.LASF4:
	.string	"global_config__spad_enables_ref_4"
.LASF6:
	.string	"global_config__ref_en_start_select"
.LASF19:
	.string	"vcsel_period"
.LASF72:
	.string	"CalDistanceMilliMeter"
.LASF11:
	.string	"algo__crosstalk_compensation_y_plane_gradient_kcps"
.LASF62:
	.string	"MmTimeoutUs"
.LASF12:
	.string	"ref_spad_char__total_rate_target_mcps"
.LASF1:
	.string	"global_config__spad_enables_ref_1"
.LASF2:
	.string	"global_config__spad_enables_ref_2"
.LASF3:
	.string	"global_config__spad_enables_ref_3"
.LASF50:
	.string	"RangeStatus"
.LASF5:
	.string	"global_config__spad_enables_ref_5"
.LASF65:
	.string	"Mm1Enabled"
.LASF71:
	.string	"offset_cal_mode"
.LASF25:
	.string	"cfg_device_state"
.LASF76:
	.string	"cal_data"
.LASF32:
	.string	"phasecal_config_timeout_us"
.LASF17:
	.string	"dss_config__roi_mode_control"
.LASF13:
	.string	"algo__part_to_part_range_offset_mm"
.LASF22:
	.string	"y_centre"
.LASF14:
	.string	"mm_config__inner_offset_mm"
.LASF29:
	.string	"peak_rate_mcps"
.LASF39:
	.string	"add_off_cal_data"
.LASF57:
	.string	"start_address"
.LASF16:
	.string	"dss_config__target_total_rate_mcps"
.LASF60:
	.string	"revision_id"
.LASF28:
	.string	"preset_mode"
.LASF58:
	.string	"TempFix1616"
.LASF35:
	.string	"measurement_mode"
.LASF56:
	.string	"status"
.LASF46:
	.string	"InternalDistanceMode"
.LASF37:
	.string	"customer"
.LASF30:
	.string	"cal_distance_mm"
.LASF27:
	.string	"device_status"
.LASF73:
	.string	"sum_ranging"
.LASF43:
	.string	"CrossMode"
.LASF48:
	.string	"MeasurementTimingBudgetMicroSeconds"
.LASF64:
	.string	"user_zone"
.LASF66:
	.string	"Mm2Enabled"
.LASF47:
	.string	"NewDistanceMode"
.LASF74:
	.string	"total_count"
.LASF24:
	.string	"median_range_mm"
.LASF44:
	.string	"PresetMode"
.LASF63:
	.string	"PhaseCalTimeoutUs"
.LASF26:
	.string	"rd_device_state"
.LASF45:
	.string	"DistanceMode"
.LASF54:
	.string	"Status"
.LASF77:
	.string	"CalibrationData"
.LASF23:
	.string	"sigma_mm"
.LASF10:
	.string	"algo__crosstalk_compensation_x_plane_gradient_kcps"
.LASF20:
	.string	"timeout_us"
.LASF18:
	.string	"dss_config__manual_effective_spads_select"
.LASF8:
	.string	"ref_spad_man__ref_location"
.LASF34:
	.string	"mm_config_timeout_us"
.LASF31:
	.string	"active_results"
.LASF42:
	.string	"struct_version"
.LASF7:
	.string	"ref_spad_man__num_requested_ref_spads"
	.extern	VL53L1_set_GPIO_interrupt_config_struct,STT_FUNC,0
	.extern	VL53L1_get_GPIO_interrupt_config,STT_FUNC,0
	.extern	VL53L1_get_part_to_part_data,STT_FUNC,0
	.extern	VL53L1_set_part_to_part_data,STT_FUNC,0
	.extern	VL53L1_set_customer_nvm_managed,STT_FUNC,0
	.extern	VL53L1_run_offset_calibration,STT_FUNC,0
	.extern	VL53L1_get_offset_calibration_mode,STT_FUNC,0
	.extern	VL53L1_set_offset_calibration_mode,STT_FUNC,0
	.extern	VL53L1_get_xtalk_compensation_enable,STT_FUNC,0
	.extern	VL53L1_disable_xtalk_compensation,STT_FUNC,0
	.extern	VL53L1_enable_xtalk_compensation,STT_FUNC,0
	.extern	VL53L1_WriteMulti,STT_FUNC,0
	.extern	VL53L1_enable_firmware,STT_FUNC,0
	.extern	VL53L1_disable_powerforce,STT_FUNC,0
	.extern	VL53L1_ReadMulti,STT_FUNC,0
	.extern	VL53L1_WrWord,STT_FUNC,0
	.extern	VL53L1_enable_powerforce,STT_FUNC,0
	.extern	VL53L1_disable_firmware,STT_FUNC,0
	.extern	VL53L1_run_ref_spad_char,STT_FUNC,0
	.extern	VL53L1_set_tuning_parm,STT_FUNC,0
	.extern	VL53L1_get_device_results,STT_FUNC,0
	.extern	VL53L1_poll_for_range_completion,STT_FUNC,0
	.extern	VL53L1_is_new_data_ready,STT_FUNC,0
	.extern	VL53L1_WaitUs,STT_FUNC,0
	.extern	VL53L1_clear_interrupt_and_enable_next_range,STT_FUNC,0
	.extern	VL53L1_stop_range,STT_FUNC,0
	.extern	VL53L1_init_and_start_range,STT_FUNC,0
	.extern	VL53L1_set_sequence_config_bit,STT_FUNC,0
	.extern	VL53L1_get_sequence_steps_info,STT_FUNC,0
	.extern	VL53L1_get_lite_sigma_threshold,STT_FUNC,0
	.extern	VL53L1_get_lite_min_count_rate,STT_FUNC,0
	.extern	VL53L1_data_init,STT_FUNC,0
	.extern	VL53L1_RdByte,STT_FUNC,0
	.extern	VL53L1_get_limit_check_info,STT_FUNC,0
	.extern	VL53L1_get_inter_measurement_period_ms,STT_FUNC,0
	.extern	VL53L1_set_inter_measurement_period_ms,STT_FUNC,0
	.extern	VL53L1_get_tuning_parm,STT_FUNC,0
	.extern	VL53L1_get_sequence_config_bit,STT_FUNC,0
	.extern	VL53L1_set_user_zone,STT_FUNC,0
	.extern	VL53L1_set_timeouts_us,STT_FUNC,0
	.extern	VL53L1_get_timeouts_us,STT_FUNC,0
	.extern	VL53L1_get_user_zone,STT_FUNC,0
	.extern	VL53L1_poll_for_boot_completion,STT_FUNC,0
	.extern	VL53L1_WrByte,STT_FUNC,0
	.extern	VL53L1_get_pal_state_string,STT_FUNC,0
	.extern	VL53L1_get_pal_error_string,STT_FUNC,0
	.extern	VL53L1_get_range_status_string,STT_FUNC,0
	.extern	strncpy,STT_FUNC,0
	.extern	VL53L1_set_lite_sigma_threshold,STT_FUNC,0
	.extern	VL53L1_set_lite_min_count_rate,STT_FUNC,0
	.extern	VL53L1_set_preset_mode,STT_FUNC,0
	.extern	VL53L1_get_preset_mode_timing_cfg,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
