	.file	"vl53l1_api_strings.c"
.section .text,"ax",@progbits
.Ltext0:
.section .rodata,"a",@progbits
.LC0:
	.string	"Range Valid"
.LC1:
	.string	"Sigma Fail"
.LC2:
	.string	"Signal Fail"
.LC3:
	.string	"Min Range Fail"
.LC4:
	.string	"Phase Fail"
.LC5:
	.string	"Hardware Fail"
.LC6:
	.string	"No Update"
.section .text.VL53L1_get_range_status_string,"ax",@progbits
	.align 1
	.global	VL53L1_get_range_status_string
	.type	VL53L1_get_range_status_string, @function
VL53L1_get_range_status_string:
.LFB0:
	.file 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_strings.c"
	.loc 1 86 0
.LVL0:
	.loc 1 94 0
	jlt.u	%d4, 6, .L12
	.loc 1 121 0
	movh.a	%a5, hi:.LC6
	lea	%a5, [%a5] lo:.LC6
	mov	%d4, 511
.LVL1:
	call	strncpy
.LVL2:
	.loc 1 128 0
	mov	%d2, 0
	ret
.LVL3:
.L12:
	.loc 1 94 0
	movh.a	%a2, hi:.L4
	lea	%a2, [%a2] lo:.L4
	addsc.a	%a2, %a2, %d4, 2
	ji	%a2
	.align 2
	.align 2
.L4:
	.code32
	j	.L3
	.code32
	j	.L5
	.code32
	j	.L6
	.code32
	j	.L7
	.code32
	j	.L8
	.code32
	j	.L9
.L8:
	.loc 1 112 0
	movh.a	%a5, hi:.LC4
	lea	%a5, [%a5] lo:.LC4
	mov	%d4, 511
.LVL4:
	call	strncpy
.LVL5:
	.loc 1 128 0
	mov	%d2, 0
	ret
.LVL6:
.L9:
	.loc 1 116 0
	movh.a	%a5, hi:.LC5
	lea	%a5, [%a5] lo:.LC5
	mov	%d4, 511
.LVL7:
	call	strncpy
.LVL8:
	.loc 1 128 0
	mov	%d2, 0
	ret
.LVL9:
.L3:
	.loc 1 96 0
	movh.a	%a5, hi:.LC0
	lea	%a5, [%a5] lo:.LC0
	mov	%d4, 511
.LVL10:
	call	strncpy
.LVL11:
	.loc 1 128 0
	mov	%d2, 0
	ret
.LVL12:
.L5:
	.loc 1 100 0
	movh.a	%a5, hi:.LC1
	lea	%a5, [%a5] lo:.LC1
	mov	%d4, 511
.LVL13:
	call	strncpy
.LVL14:
	.loc 1 128 0
	mov	%d2, 0
	ret
.LVL15:
.L6:
	.loc 1 104 0
	movh.a	%a5, hi:.LC2
	lea	%a5, [%a5] lo:.LC2
	mov	%d4, 511
.LVL16:
	call	strncpy
.LVL17:
	.loc 1 128 0
	mov	%d2, 0
	ret
.LVL18:
.L7:
	.loc 1 108 0
	movh.a	%a5, hi:.LC3
	lea	%a5, [%a5] lo:.LC3
	mov	%d4, 511
.LVL19:
	call	strncpy
.LVL20:
	.loc 1 128 0
	mov	%d2, 0
	ret
.LFE0:
	.size	VL53L1_get_range_status_string, .-VL53L1_get_range_status_string
.section .rodata,"a",@progbits
.LC7:
	.string	"POWERDOWN State"
.LC8:
	.string	"Wait for staticinit State"
.LC9:
	.string	"STANDBY State"
.LC10:
	.string	"IDLE State"
.LC11:
	.string	"RUNNING State"
.LC12:
	.string	"RESET State"
.LC13:
	.string	"UNKNOWN State"
.LC14:
	.string	"ERROR State"
.section .text.VL53L1_get_pal_state_string,"ax",@progbits
	.align 1
	.global	VL53L1_get_pal_state_string
	.type	VL53L1_get_pal_state_string, @function
VL53L1_get_pal_state_string:
.LFB1:
	.loc 1 134 0
.LVL21:
	.loc 1 142 0
	jeq	%d4, 3, .L15
	jlt.u	%d4, 4, .L28
	jeq	%d4, 5, .L20
	jlt.u	%d4, 5, .L21
	eq	%d15, %d4, 98
	jnz	%d15, .L26
	eq	%d4, %d4, 99
.LVL22:
	jz	%d4, .L26
	.loc 1 172 0
	movh.a	%a5, hi:.LC14
	lea	%a5, [%a5] lo:.LC14
	mov	%d4, 511
	call	strncpy
.LVL23:
	.loc 1 184 0
	mov	%d2, 0
	ret
.LVL24:
.L28:
	.loc 1 142 0
	jeq	%d4, 1, .L17
	jge.u	%d4, 2, .L29
	.loc 1 144 0
	movh.a	%a5, hi:.LC7
	lea	%a5, [%a5] lo:.LC7
	mov	%d4, 511
.LVL25:
	call	strncpy
.LVL26:
	.loc 1 184 0
	mov	%d2, 0
	ret
.LVL27:
.L26:
	.loc 1 177 0
	movh.a	%a5, hi:.LC13
	lea	%a5, [%a5] lo:.LC13
	mov	%d4, 511
	call	strncpy
.LVL28:
	.loc 1 184 0
	mov	%d2, 0
	ret
.LVL29:
.L29:
	.loc 1 152 0
	movh.a	%a5, hi:.LC9
	lea	%a5, [%a5] lo:.LC9
	mov	%d4, 511
.LVL30:
	call	strncpy
.LVL31:
	.loc 1 184 0
	mov	%d2, 0
	ret
.LVL32:
.L15:
	.loc 1 156 0
	movh.a	%a5, hi:.LC10
	lea	%a5, [%a5] lo:.LC10
	mov	%d4, 511
.LVL33:
	call	strncpy
.LVL34:
	.loc 1 184 0
	mov	%d2, 0
	ret
.LVL35:
.L17:
	.loc 1 148 0
	movh.a	%a5, hi:.LC8
	lea	%a5, [%a5] lo:.LC8
	mov	%d4, 511
.LVL36:
	call	strncpy
.LVL37:
	.loc 1 184 0
	mov	%d2, 0
	ret
.LVL38:
.L21:
	.loc 1 160 0
	movh.a	%a5, hi:.LC11
	lea	%a5, [%a5] lo:.LC11
	mov	%d4, 511
.LVL39:
	call	strncpy
.LVL40:
	.loc 1 184 0
	mov	%d2, 0
	ret
.LVL41:
.L20:
	.loc 1 164 0
	movh.a	%a5, hi:.LC12
	lea	%a5, [%a5] lo:.LC12
	mov	%d4, 511
.LVL42:
	call	strncpy
.LVL43:
	.loc 1 184 0
	mov	%d2, 0
	ret
.LFE1:
	.size	VL53L1_get_pal_state_string, .-VL53L1_get_pal_state_string
.section .rodata,"a",@progbits
.LC15:
	.string	"VHV"
.LC16:
	.string	"PHASE CAL"
.LC17:
	.string	"DSS1"
.LC18:
	.string	"DSS2"
.LC19:
	.string	"MM1"
.LC20:
	.string	"MM2"
.LC21:
	.string	"RANGE"
.section .text.VL53L1_get_sequence_steps_info,"ax",@progbits
	.align 1
	.global	VL53L1_get_sequence_steps_info
	.type	VL53L1_get_sequence_steps_info, @function
VL53L1_get_sequence_steps_info:
.LFB2:
	.loc 1 189 0
.LVL44:
	.loc 1 231 0
	mov	%d2, -4
	.loc 1 197 0
	jge.u	%d4, 8, .L31
	movh.a	%a15, hi:.L33
	lea	%a15, [%a15] lo:.L33
	addsc.a	%a15, %a15, %d4, 2
	ji	%a15
	.align 2
	.align 2
.L33:
	.code32
	j	.L32
	.code32
	j	.L34
	.code32
	j	.L36
	.code32
	j	.L36
	.code32
	j	.L37
	.code32
	j	.L38
	.code32
	j	.L39
	.code32
	j	.L40
.L40:
	.loc 1 227 0
	movh.a	%a5, hi:.LC21
	lea	%a5, [%a5] lo:.LC21
	mov	%d4, 511
.LVL45:
	call	strncpy
.LVL46:
	.loc 1 190 0
	mov	%d2, 0
.L31:
.LVL47:
	.loc 1 238 0
	ret
.LVL48:
.L36:
	.loc 1 211 0
	movh.a	%a5, hi:.LC17
	lea	%a5, [%a5] lo:.LC17
	mov	%d4, 511
.LVL49:
	call	strncpy
.LVL50:
	.loc 1 190 0
	mov	%d2, 0
	.loc 1 213 0
	ret
.LVL51:
.L39:
	.loc 1 223 0
	movh.a	%a5, hi:.LC20
	lea	%a5, [%a5] lo:.LC20
	mov	%d4, 511
.LVL52:
	call	strncpy
.LVL53:
	.loc 1 190 0
	mov	%d2, 0
	.loc 1 225 0
	ret
.LVL54:
.L37:
	.loc 1 215 0
	movh.a	%a5, hi:.LC18
	lea	%a5, [%a5] lo:.LC18
	mov	%d4, 511
.LVL55:
	call	strncpy
.LVL56:
	.loc 1 190 0
	mov	%d2, 0
	.loc 1 217 0
	ret
.LVL57:
.L38:
	.loc 1 219 0
	movh.a	%a5, hi:.LC19
	lea	%a5, [%a5] lo:.LC19
	mov	%d4, 511
.LVL58:
	call	strncpy
.LVL59:
	.loc 1 190 0
	mov	%d2, 0
	.loc 1 221 0
	ret
.LVL60:
.L32:
	.loc 1 199 0
	movh.a	%a5, hi:.LC15
	lea	%a5, [%a5] lo:.LC15
	mov	%d4, 511
.LVL61:
	call	strncpy
.LVL62:
	.loc 1 190 0
	mov	%d2, 0
	.loc 1 201 0
	ret
.LVL63:
.L34:
	.loc 1 203 0
	movh.a	%a5, hi:.LC16
	lea	%a5, [%a5] lo:.LC16
	mov	%d4, 511
.LVL64:
	call	strncpy
.LVL65:
	.loc 1 190 0
	mov	%d2, 0
	.loc 1 205 0
	ret
.LFE2:
	.size	VL53L1_get_sequence_steps_info, .-VL53L1_get_sequence_steps_info
.section .rodata,"a",@progbits
.LC22:
	.string	"SIGMA FINAL RANGE"
.LC23:
	.string	"SIGNAL RATE FINAL RANGE"
.LC24:
	.string	"Unknown Error Code"
.section .text.VL53L1_get_limit_check_info,"ax",@progbits
	.align 1
	.global	VL53L1_get_limit_check_info
	.type	VL53L1_get_limit_check_info, @function
VL53L1_get_limit_check_info:
.LFB3:
	.loc 1 242 0
.LVL66:
	.loc 1 250 0
	jz	%d4, .L44
	jeq	%d4, 1, .L45
	.loc 1 260 0
	movh.a	%a5, hi:.LC24
	lea	%a5, [%a5] lo:.LC24
	mov	%d4, 511
.LVL67:
	call	strncpy
.LVL68:
	.loc 1 267 0
	mov	%d2, 0
	ret
.LVL69:
.L45:
	.loc 1 256 0
	movh.a	%a5, hi:.LC23
	lea	%a5, [%a5] lo:.LC23
	mov	%d4, 511
.LVL70:
	call	strncpy
.LVL71:
	.loc 1 267 0
	mov	%d2, 0
	ret
.LVL72:
.L44:
	.loc 1 252 0
	movh.a	%a5, hi:.LC22
	lea	%a5, [%a5] lo:.LC22
	mov	%d4, 511
.LVL73:
	call	strncpy
.LVL74:
	.loc 1 267 0
	mov	%d2, 0
	ret
.LFE3:
	.size	VL53L1_get_limit_check_info, .-VL53L1_get_limit_check_info
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdint.h"
	.file 3 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h"
	.file 4 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_error_codes.h"
	.file 5 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_def.h"
	.file 6 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x7ec
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_api_strings.c"
	.string	"D:\\\\MinKyu_AurixRacer\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"int8_t"
	.byte	0x2
	.byte	0x29
	.uaword	0x1ab
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.string	"uint8_t"
	.byte	0x2
	.byte	0x2a
	.uaword	0x1c9
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.string	"uint16_t"
	.byte	0x2
	.byte	0x36
	.uaword	0x1f7
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"long int"
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
	.uleb128 0x2
	.string	"size_t"
	.byte	0x3
	.byte	0xd4
	.uaword	0x219
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x290
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x29e
	.uleb128 0x5
	.uaword	0x290
	.uleb128 0x2
	.string	"VL53L1_Error"
	.byte	0x4
	.byte	0x59
	.uaword	0x19d
	.uleb128 0x6
	.string	"VL53L1_State"
	.byte	0x5
	.uahalf	0x141
	.uaword	0x1ba
	.uleb128 0x6
	.string	"VL53L1_SequenceStepId"
	.byte	0x5
	.uahalf	0x1df
	.uaword	0x1ba
	.uleb128 0x7
	.byte	0x1
	.string	"VL53L1_get_range_status_string"
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.uaword	0x2a3
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x43b
	.uleb128 0x8
	.string	"RangeStatus"
	.byte	0x1
	.byte	0x54
	.uaword	0x1ba
	.uaword	.LLST0
	.uleb128 0x8
	.string	"pRangeStatusString"
	.byte	0x1
	.byte	0x55
	.uaword	0x28a
	.uaword	.LLST1
	.uleb128 0x9
	.string	"status"
	.byte	0x1
	.byte	0x57
	.uaword	0x2a3
	.byte	0
	.uleb128 0xa
	.uaword	.LVL2
	.uaword	0x7cd
	.uaword	0x38a
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1ff
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC6
	.uleb128 0xb
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.uleb128 0xa
	.uaword	.LVL5
	.uaword	0x7cd
	.uaword	0x3a8
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1ff
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC4
	.byte	0
	.uleb128 0xa
	.uaword	.LVL8
	.uaword	0x7cd
	.uaword	0x3c6
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1ff
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC5
	.byte	0
	.uleb128 0xa
	.uaword	.LVL11
	.uaword	0x7cd
	.uaword	0x3e4
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1ff
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.byte	0
	.uleb128 0xa
	.uaword	.LVL14
	.uaword	0x7cd
	.uaword	0x402
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1ff
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.byte	0
	.uleb128 0xa
	.uaword	.LVL17
	.uaword	0x7cd
	.uaword	0x420
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1ff
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC2
	.byte	0
	.uleb128 0xc
	.uaword	.LVL20
	.uaword	0x7cd
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1ff
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC3
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"VL53L1_get_pal_state_string"
	.byte	0x1
	.byte	0x83
	.byte	0x1
	.uaword	0x2a3
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x5a5
	.uleb128 0x8
	.string	"PalStateCode"
	.byte	0x1
	.byte	0x84
	.uaword	0x2b7
	.uaword	.LLST2
	.uleb128 0x8
	.string	"pPalStateString"
	.byte	0x1
	.byte	0x85
	.uaword	0x28a
	.uaword	.LLST3
	.uleb128 0x9
	.string	"status"
	.byte	0x1
	.byte	0x87
	.uaword	0x2a3
	.byte	0
	.uleb128 0xa
	.uaword	.LVL23
	.uaword	0x7cd
	.uaword	0x4d6
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1ff
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC14
	.uleb128 0xb
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.uleb128 0xa
	.uaword	.LVL26
	.uaword	0x7cd
	.uaword	0x4f4
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1ff
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC7
	.byte	0
	.uleb128 0xa
	.uaword	.LVL28
	.uaword	0x7cd
	.uaword	0x512
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1ff
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC13
	.byte	0
	.uleb128 0xa
	.uaword	.LVL31
	.uaword	0x7cd
	.uaword	0x530
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1ff
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC9
	.byte	0
	.uleb128 0xa
	.uaword	.LVL34
	.uaword	0x7cd
	.uaword	0x54e
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1ff
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC10
	.byte	0
	.uleb128 0xa
	.uaword	.LVL37
	.uaword	0x7cd
	.uaword	0x56c
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1ff
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC8
	.byte	0
	.uleb128 0xa
	.uaword	.LVL40
	.uaword	0x7cd
	.uaword	0x58a
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1ff
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC11
	.byte	0
	.uleb128 0xc
	.uaword	.LVL43
	.uaword	0x7cd
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1ff
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC12
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"VL53L1_get_sequence_steps_info"
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.uaword	0x2a3
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6f7
	.uleb128 0x8
	.string	"SequenceStepId"
	.byte	0x1
	.byte	0xbb
	.uaword	0x2cc
	.uaword	.LLST4
	.uleb128 0x8
	.string	"pSequenceStepsString"
	.byte	0x1
	.byte	0xbc
	.uaword	0x28a
	.uaword	.LLST5
	.uleb128 0xd
	.string	"Status"
	.byte	0x1
	.byte	0xbe
	.uaword	0x2a3
	.uaword	.LLST6
	.uleb128 0xa
	.uaword	.LVL46
	.uaword	0x7cd
	.uaword	0x646
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1ff
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC21
	.byte	0
	.uleb128 0xa
	.uaword	.LVL50
	.uaword	0x7cd
	.uaword	0x664
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1ff
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC17
	.byte	0
	.uleb128 0xa
	.uaword	.LVL53
	.uaword	0x7cd
	.uaword	0x682
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1ff
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC20
	.byte	0
	.uleb128 0xa
	.uaword	.LVL56
	.uaword	0x7cd
	.uaword	0x6a0
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1ff
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC18
	.byte	0
	.uleb128 0xa
	.uaword	.LVL59
	.uaword	0x7cd
	.uaword	0x6be
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1ff
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC19
	.byte	0
	.uleb128 0xa
	.uaword	.LVL62
	.uaword	0x7cd
	.uaword	0x6dc
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1ff
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC15
	.byte	0
	.uleb128 0xc
	.uaword	.LVL65
	.uaword	0x7cd
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1ff
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC16
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"VL53L1_get_limit_check_info"
	.byte	0x1
	.byte	0xf0
	.byte	0x1
	.uaword	0x2a3
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7cd
	.uleb128 0x8
	.string	"LimitCheckId"
	.byte	0x1
	.byte	0xf0
	.uaword	0x1e7
	.uaword	.LLST7
	.uleb128 0x8
	.string	"pLimitCheckString"
	.byte	0x1
	.byte	0xf1
	.uaword	0x28a
	.uaword	.LLST8
	.uleb128 0x9
	.string	"Status"
	.byte	0x1
	.byte	0xf3
	.uaword	0x2a3
	.byte	0
	.uleb128 0xa
	.uaword	.LVL68
	.uaword	0x7cd
	.uaword	0x794
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1ff
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC24
	.uleb128 0xb
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.uleb128 0xa
	.uaword	.LVL71
	.uaword	0x7cd
	.uaword	0x7b2
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1ff
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC23
	.byte	0
	.uleb128 0xc
	.uaword	.LVL74
	.uaword	0x7cd
	.uleb128 0xb
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1ff
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC22
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"strncpy"
	.byte	0x6
	.byte	0x25
	.byte	0x1
	.uaword	0x28a
	.byte	0x1
	.uleb128 0xf
	.uaword	0x28a
	.uleb128 0xf
	.uaword	0x298
	.uleb128 0xf
	.uaword	0x270
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uaword	.LVL3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL19
	.uaword	.LFE0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2-1
	.uaword	.LVL3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5-1
	.uaword	.LVL6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL8-1
	.uaword	.LVL9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL11-1
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL14-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL14-1
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL17-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL17-1
	.uaword	.LVL18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL20-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20-1
	.uaword	.LFE0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL25
	.uaword	.LVL29
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL42
	.uaword	.LFE1
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL21
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL23-1
	.uaword	.LVL24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL26-1
	.uaword	.LVL27
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL28-1
	.uaword	.LVL29
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL31-1
	.uaword	.LVL32
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL34-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL34-1
	.uaword	.LVL35
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL37-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL37-1
	.uaword	.LVL38
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL40-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL40-1
	.uaword	.LVL41
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL43-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL43-1
	.uaword	.LFE1
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL45
	.uaword	.LVL48
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL49
	.uaword	.LVL51
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL52
	.uaword	.LVL54
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL55
	.uaword	.LVL57
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL58
	.uaword	.LVL60
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL61
	.uaword	.LVL63
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL64
	.uaword	.LFE2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL44
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL46-1
	.uaword	.LVL48
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL50-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL50-1
	.uaword	.LVL51
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL53-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL53-1
	.uaword	.LVL54
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL56-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL56-1
	.uaword	.LVL57
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL59-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL59-1
	.uaword	.LVL60
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL62-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL62-1
	.uaword	.LVL63
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL65-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL65-1
	.uaword	.LFE2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL44
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL48
	.uaword	.LFE2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL67
	.uaword	.LVL69
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL70
	.uaword	.LVL72
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL73
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL66
	.uaword	.LVL68-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL68-1
	.uaword	.LVL69
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL71-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL71-1
	.uaword	.LVL72
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LVL74-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL74-1
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	strncpy,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
