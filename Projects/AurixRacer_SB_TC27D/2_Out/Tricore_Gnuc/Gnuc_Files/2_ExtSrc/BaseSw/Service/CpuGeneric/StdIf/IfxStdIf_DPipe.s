	.file	"IfxStdIf_DPipe.c"
.section .text,"ax",@progbits
.Ltext0:
.section .rodata,"a",@progbits
.LC0:
	.string	"count < STDIF_DPIPE_MAX_PRINT_SIZE"
.LC1:
	.string	"../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.c"
.section .text.IfxStdIf_DPipe_print,"ax",@progbits
	.align 1
	.global	IfxStdIf_DPipe_print
	.type	IfxStdIf_DPipe_print, @function
IfxStdIf_DPipe_print:
.LFB17:
	.file 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.c"
	.loc 1 34 0
.LVL0:
	.loc 1 35 0
	ld.bu	%d15, [%a4] 4
	.loc 1 34 0
	lea	%SP, [%SP] -264
.LCFI0:
	.loc 1 35 0
	jz	%d15, .L5
	ret
.L5:
.LBB5:
	.loc 1 41 0
	lea	%a6, [%SP] 264
	mov.aa	%a15, %a4
.LVL1:
	lea	%a4, [%SP] 8
.LVL2:
	call	vsprintf
.LVL3:
	.loc 1 43 0
	lea	%a4, [%SP] 8
	call	strlen
.LVL4:
	extr	%d2, %d2, 0, 16
	st.h	[%SP] 6, %d2
	.loc 1 44 0
	lt	%d2, %d2, 255
	jnz	%d2, .L3
	.loc 1 44 0 is_stmt 0 discriminator 1
	movh.a	%a2, hi:Assert_verboseLevel
	ld.w	%d15, [%a2] lo:Assert_verboseLevel
	jlt.u	%d15, 2, .L3
	.loc 1 44 0 discriminator 2
	movh.a	%a4, hi:.LC0
	movh.a	%a5, hi:.LC1
	movh.a	%a6, hi:__func__.2386
	mov	%d4, 2
	lea	%a4, [%a4] lo:.LC0
	lea	%a5, [%a5] lo:.LC1
	mov	%d5, 44
	lea	%a6, [%a6] lo:__func__.2386
	call	Ifx_Assert_doLevel
.LVL5:
.L3:
.LBB6:
.LBB7:
	.file 2 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
	.loc 2 244 0 is_stmt 1
	ld.a	%a2, [%a15] 8
	ld.a	%a4, [%a15]0
	mov	%d4, -1
	lea	%a5, [%SP] 8
.LVL6:
	lea	%a6, [%SP] 6
.LVL7:
	addih	%d5, %d4, 32768
	calli	%a2
.LVL8:
	ret
.LBE7:
.LBE6:
.LBE5:
.LFE17:
	.size	IfxStdIf_DPipe_print, .-IfxStdIf_DPipe_print
.section .rodata.__func__.2386,"a",@progbits
	.type	__func__.2386, @object
	.size	__func__.2386, 21
__func__.2386:
	.string	"IfxStdIf_DPipe_print"
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
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.byte	0x4
	.uaword	.LCFI0-.LFB17
	.byte	0xe
	.uleb128 0x108
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 3 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h"
	.file 4 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
	.file 5 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
	.file 6 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h"
	.file 7 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\lib\\gcc\\tricore\\4.9.4\\include\\stdarg.h"
	.file 8 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h"
	.file 9 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\string.h"
	.file 10 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Assert.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xad1
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.c"
	.string	"D:\\\\MinKyu_AurixRacer\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"size_t"
	.byte	0x3
	.byte	0xd4
	.uaword	0x1bd
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x4
	.byte	0x59
	.uaword	0x1f5
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x4
	.byte	0x5a
	.uaword	0x214
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x4
	.byte	0x5c
	.uaword	0x1a3
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x5d
	.uaword	0x1bd
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x4
	.byte	0x68
	.uaword	0x1f5
	.uleb128 0x3
	.string	"sint64"
	.byte	0x5
	.byte	0x24
	.uaword	0x283
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.string	"pchar"
	.byte	0x5
	.byte	0x27
	.uaword	0x2bb
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2c1
	.uleb128 0x5
	.uaword	0x2c6
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x3
	.string	"Ifx_TickTime"
	.byte	0x5
	.byte	0x3e
	.uaword	0x275
	.uleb128 0x3
	.string	"Ifx_SizeT"
	.byte	0x5
	.byte	0x4b
	.uaword	0x206
	.uleb128 0x3
	.string	"IfxStdIf_InterfaceDriver"
	.byte	0x6
	.byte	0x62
	.uaword	0x2ce
	.uleb128 0x3
	.string	"IfxStdIf_DPipe"
	.byte	0x2
	.byte	0x33
	.uaword	0x32b
	.uleb128 0x7
	.string	"IfxStdIf_DPipe_"
	.byte	0x4c
	.byte	0x2
	.byte	0xd5
	.uaword	0x4aa
	.uleb128 0x8
	.string	"driver"
	.byte	0x2
	.byte	0xd7
	.uaword	0x2f5
	.byte	0
	.uleb128 0x8
	.string	"txDisabled"
	.byte	0x2
	.byte	0xd8
	.uaword	0x266
	.byte	0x4
	.uleb128 0x8
	.string	"write"
	.byte	0x2
	.byte	0xdb
	.uaword	0x4f6
	.byte	0x8
	.uleb128 0x8
	.string	"read"
	.byte	0x2
	.byte	0xdc
	.uaword	0x53d
	.byte	0xc
	.uleb128 0x8
	.string	"getReadCount"
	.byte	0x2
	.byte	0xdd
	.uaword	0x558
	.byte	0x10
	.uleb128 0x8
	.string	"getReadEvent"
	.byte	0x2
	.byte	0xde
	.uaword	0x591
	.byte	0x14
	.uleb128 0x8
	.string	"getWriteCount"
	.byte	0x2
	.byte	0xdf
	.uaword	0x63e
	.byte	0x18
	.uleb128 0x8
	.string	"getWriteEvent"
	.byte	0x2
	.byte	0xe0
	.uaword	0x662
	.byte	0x1c
	.uleb128 0x8
	.string	"canReadCount"
	.byte	0x2
	.byte	0xe1
	.uaword	0x69c
	.byte	0x20
	.uleb128 0x8
	.string	"canWriteCount"
	.byte	0x2
	.byte	0xe2
	.uaword	0x6df
	.byte	0x24
	.uleb128 0x8
	.string	"flushTx"
	.byte	0x2
	.byte	0xe3
	.uaword	0x703
	.byte	0x28
	.uleb128 0x8
	.string	"clearTx"
	.byte	0x2
	.byte	0xe4
	.uaword	0x76c
	.byte	0x2c
	.uleb128 0x8
	.string	"clearRx"
	.byte	0x2
	.byte	0xe5
	.uaword	0x73c
	.byte	0x30
	.uleb128 0x8
	.string	"onReceive"
	.byte	0x2
	.byte	0xe6
	.uaword	0x78a
	.byte	0x34
	.uleb128 0x8
	.string	"onTransmit"
	.byte	0x2
	.byte	0xe7
	.uaword	0x7aa
	.byte	0x38
	.uleb128 0x8
	.string	"onError"
	.byte	0x2
	.byte	0xe8
	.uaword	0x7cb
	.byte	0x3c
	.uleb128 0x8
	.string	"getSendCount"
	.byte	0x2
	.byte	0xea
	.uaword	0x5ca
	.byte	0x40
	.uleb128 0x8
	.string	"getTxTimeStamp"
	.byte	0x2
	.byte	0xeb
	.uaword	0x603
	.byte	0x44
	.uleb128 0x8
	.string	"resetSendCount"
	.byte	0x2
	.byte	0xec
	.uaword	0x7e9
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_WriteEvent"
	.byte	0x2
	.byte	0x35
	.uaword	0x4cb
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4d1
	.uleb128 0x9
	.uaword	0x266
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ReadEvent"
	.byte	0x2
	.byte	0x36
	.uaword	0x4cb
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Write"
	.byte	0x2
	.byte	0x48
	.uaword	0x512
	.uleb128 0x4
	.byte	0x4
	.uaword	0x518
	.uleb128 0xa
	.byte	0x1
	.uaword	0x266
	.uaword	0x537
	.uleb128 0xb
	.uaword	0x2f5
	.uleb128 0xb
	.uaword	0x2ce
	.uleb128 0xb
	.uaword	0x537
	.uleb128 0xb
	.uaword	0x2d0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2e4
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Read"
	.byte	0x2
	.byte	0x57
	.uaword	0x512
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadCount"
	.byte	0x2
	.byte	0x5f
	.uaword	0x57b
	.uleb128 0x4
	.byte	0x4
	.uaword	0x581
	.uleb128 0xa
	.byte	0x1
	.uaword	0x237
	.uaword	0x591
	.uleb128 0xb
	.uaword	0x2f5
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadEvent"
	.byte	0x2
	.byte	0x67
	.uaword	0x5b4
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5ba
	.uleb128 0xa
	.byte	0x1
	.uaword	0x4d6
	.uaword	0x5ca
	.uleb128 0xb
	.uaword	0x2f5
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetSendCount"
	.byte	0x2
	.byte	0x6f
	.uaword	0x5ed
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5f3
	.uleb128 0xa
	.byte	0x1
	.uaword	0x245
	.uaword	0x603
	.uleb128 0xb
	.uaword	0x2f5
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetTxTimeStamp"
	.byte	0x2
	.byte	0x77
	.uaword	0x628
	.uleb128 0x4
	.byte	0x4
	.uaword	0x62e
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2d0
	.uaword	0x63e
	.uleb128 0xb
	.uaword	0x2f5
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteCount"
	.byte	0x2
	.byte	0x7f
	.uaword	0x57b
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteEvent"
	.byte	0x2
	.byte	0x87
	.uaword	0x686
	.uleb128 0x4
	.byte	0x4
	.uaword	0x68c
	.uleb128 0xa
	.byte	0x1
	.uaword	0x4aa
	.uaword	0x69c
	.uleb128 0xb
	.uaword	0x2f5
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanReadCount"
	.byte	0x2
	.byte	0x92
	.uaword	0x6bf
	.uleb128 0x4
	.byte	0x4
	.uaword	0x6c5
	.uleb128 0xa
	.byte	0x1
	.uaword	0x266
	.uaword	0x6df
	.uleb128 0xb
	.uaword	0x2f5
	.uleb128 0xb
	.uaword	0x2e4
	.uleb128 0xb
	.uaword	0x2d0
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanWriteCount"
	.byte	0x2
	.byte	0x9d
	.uaword	0x6bf
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_FlushTx"
	.byte	0x2
	.byte	0xa6
	.uaword	0x721
	.uleb128 0x4
	.byte	0x4
	.uaword	0x727
	.uleb128 0xa
	.byte	0x1
	.uaword	0x266
	.uaword	0x73c
	.uleb128 0xb
	.uaword	0x2f5
	.uleb128 0xb
	.uaword	0x2d0
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearRx"
	.byte	0x2
	.byte	0xad
	.uaword	0x75a
	.uleb128 0x4
	.byte	0x4
	.uaword	0x760
	.uleb128 0xc
	.byte	0x1
	.uaword	0x76c
	.uleb128 0xb
	.uaword	0x2f5
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearTx"
	.byte	0x2
	.byte	0xb4
	.uaword	0x75a
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnReceive"
	.byte	0x2
	.byte	0xbc
	.uaword	0x75a
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnTransmit"
	.byte	0x2
	.byte	0xc3
	.uaword	0x75a
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnError"
	.byte	0x2
	.byte	0xca
	.uaword	0x75a
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ResetSendCount"
	.byte	0x2
	.byte	0xd1
	.uaword	0x75a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2c6
	.uleb128 0x3
	.string	"__gnuc_va_list"
	.byte	0x7
	.byte	0x28
	.uaword	0x846
	.uleb128 0xd
	.byte	0x4
	.string	"__builtin_va_list"
	.uleb128 0x3
	.string	"va_list"
	.byte	0x7
	.byte	0x62
	.uaword	0x830
	.uleb128 0xe
	.string	"IfxStdIf_DPipe_write"
	.byte	0x2
	.byte	0xf2
	.byte	0x1
	.uaword	0x266
	.byte	0x3
	.uaword	0x8c1
	.uleb128 0xf
	.string	"stdif"
	.byte	0x2
	.byte	0xf2
	.uaword	0x8c1
	.uleb128 0xf
	.string	"data"
	.byte	0x2
	.byte	0xf2
	.uaword	0x2ce
	.uleb128 0xf
	.string	"count"
	.byte	0x2
	.byte	0xf2
	.uaword	0x537
	.uleb128 0xf
	.string	"timeout"
	.byte	0x2
	.byte	0xf2
	.uaword	0x2d0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x315
	.uleb128 0x10
	.byte	0x1
	.string	"IfxStdIf_DPipe_print"
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.uaword	.LFB17
	.uaword	.LFE17
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa1d
	.uleb128 0x11
	.string	"stdif"
	.byte	0x1
	.byte	0x21
	.uaword	0x8c1
	.uaword	.LLST0
	.uleb128 0x11
	.string	"format"
	.byte	0x1
	.byte	0x21
	.uaword	0x2ae
	.uaword	.LLST1
	.uleb128 0x12
	.uleb128 0x13
	.string	"__func__"
	.uaword	0xa2d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	__func__.2386
	.uleb128 0x14
	.uaword	.LBB5
	.uaword	.LBE5
	.uleb128 0x15
	.string	"message"
	.byte	0x1
	.byte	0x25
	.uaword	0xa32
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x15
	.string	"count"
	.byte	0x1
	.byte	0x26
	.uaword	0x2e4
	.byte	0x3
	.byte	0x91
	.sleb128 -258
	.uleb128 0x16
	.string	"args"
	.byte	0x1
	.byte	0x27
	.uaword	0x85a
	.uaword	.LLST2
	.uleb128 0x17
	.uaword	0x869
	.uaword	.LBB6
	.uaword	.LBE6
	.byte	0x1
	.byte	0x2e
	.uaword	0x9bb
	.uleb128 0x18
	.uaword	0x88b
	.byte	0x1
	.byte	0x6f
	.uleb128 0x18
	.uaword	0x88b
	.byte	0x1
	.byte	0x6f
	.uleb128 0x19
	.uaword	0x8b1
	.uaxword	0x7fffffffffffffff
	.uleb128 0x1a
	.uaword	0x8a4
	.uaword	.LLST3
	.uleb128 0x1a
	.uaword	0x898
	.uaword	.LLST4
	.uleb128 0x1b
	.uaword	.LVL8
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0x91
	.sleb128 -258
	.uleb128 0x1c
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL3
	.uaword	0xa5f
	.uaword	0x9d6
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL4
	.uaword	0xa86
	.uaword	0x9eb
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL5
	.uaword	0xaa1
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x5
	.byte	0x3
	.uaword	__func__.2386
	.uleb128 0x1c
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x2c
	.uleb128 0x1c
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	.LC1
	.uleb128 0x1c
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x2c6
	.uaword	0xa2d
	.uleb128 0x20
	.uaword	0x81e
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.uaword	0xa1d
	.uleb128 0x1f
	.uaword	0x2c6
	.uaword	0xa42
	.uleb128 0x20
	.uaword	0x81e
	.byte	0xff
	.byte	0
	.uleb128 0x21
	.string	"Assert_verboseLevel"
	.byte	0xa
	.byte	0x79
	.uaword	0x245
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.byte	0x1
	.string	"vsprintf"
	.byte	0x8
	.byte	0xc4
	.byte	0x1
	.uaword	0x1d2
	.byte	0x1
	.uaword	0xa86
	.uleb128 0xb
	.uaword	0x82a
	.uleb128 0xb
	.uaword	0x2bb
	.uleb128 0xb
	.uaword	0x2ce
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"strlen"
	.byte	0x9
	.byte	0x22
	.byte	0x1
	.uaword	0x1af
	.byte	0x1
	.uaword	0xaa1
	.uleb128 0xb
	.uaword	0x2bb
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"Ifx_Assert_doLevel"
	.byte	0xa
	.byte	0x67
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.uaword	0x1e8
	.uleb128 0xb
	.uaword	0x2ae
	.uleb128 0xb
	.uaword	0x2ae
	.uleb128 0xb
	.uaword	0x80e
	.uleb128 0xb
	.uaword	0x2ae
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x7
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uaword	.LFE17
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL3-1
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL3-1
	.uaword	.LFE17
	.uahalf	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x4
	.byte	0x91
	.sleb128 -258
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL8-1
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0x91
	.sleb128 -258
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x4
	.byte	0x91
	.sleb128 -256
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL8-1
	.uaword	.LFE17
	.uahalf	0x4
	.byte	0x91
	.sleb128 -256
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB17
	.uaword	.LFE17-.LFB17
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB17
	.uaword	.LFE17
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Ifx_Assert_doLevel,STT_FUNC,0
	.extern	Assert_verboseLevel,STT_OBJECT,4
	.extern	strlen,STT_FUNC,0
	.extern	vsprintf,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"