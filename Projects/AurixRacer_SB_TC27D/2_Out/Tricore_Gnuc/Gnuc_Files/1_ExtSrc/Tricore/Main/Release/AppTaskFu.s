	.file	"AppTaskFu.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.appTaskfu_init,"ax",@progbits
	.align 1
	.global	appTaskfu_init
	.type	appTaskfu_init, @function
appTaskfu_init:
.LFB883:
	.file 1 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Main/Release/AppTaskFu.c"
	.loc 1 13 0
	.loc 1 14 0
	call	BasicLineScan_init
.LVL0:
	.loc 1 15 0
	call	BasicPort_init
.LVL1:
	.loc 1 16 0
	call	BasicGtmTom_init
.LVL2:
	.loc 1 17 0
	call	BasicVadcBgScan_init
.LVL3:
	.loc 1 18 0
	call	BasicGpt12Enc_init
.LVL4:
	.loc 1 19 0
	call	AsclinShellInterface_init
.LVL5:
	.loc 1 29 0
	j	InfineonRacer_init
.LVL6:
.LFE883:
	.size	appTaskfu_init, .-appTaskfu_init
.section .text.appTaskfu_1ms,"ax",@progbits
	.align 1
	.global	appTaskfu_1ms
	.type	appTaskfu_1ms, @function
appTaskfu_1ms:
.LFB884:
	.loc 1 38 0
	.loc 1 39 0
	movh.a	%a15, hi:task_cnt_1m
	ld.w	%d15, [%a15] lo:task_cnt_1m
	.loc 1 40 0
	mov	%d2, 1000
	.loc 1 39 0
	add	%d15, 1
	.loc 1 40 0
	jne	%d15, %d2, .L5
	.loc 1 41 0
	mov	%d15, 0
.L5:
	st.w	[%a15] lo:task_cnt_1m, %d15
	ret
.LFE884:
	.size	appTaskfu_1ms, .-appTaskfu_1ms
.section .text.appTaskfu_10ms,"ax",@progbits
	.align 1
	.global	appTaskfu_10ms
	.type	appTaskfu_10ms, @function
appTaskfu_10ms:
.LFB885:
	.loc 1 47 0
	.loc 1 48 0
	movh.a	%a15, hi:task_cnt_10m
	ld.w	%d15, [%a15] lo:task_cnt_10m
	.loc 1 49 0
	mov	%d2, 1000
	.loc 1 48 0
	add	%d15, 1
	.loc 1 49 0
	jeq	%d15, %d2, .L13
.L12:
	.loc 1 50 0
	st.w	[%a15] lo:task_cnt_10m, %d15
	.loc 1 52 0
	call	InfineonRacer_checkEdge
.LVL7:
	.loc 1 54 0
	ld.w	%d15, [%a15] lo:task_cnt_10m
	jz.t	%d15, 0, .L14
	ret
.L14:
	.loc 1 64 0
	movh.a	%a15, hi:IR_Ctrl
	lea	%a15, [%a15] lo:IR_Ctrl
	.loc 1 55 0
	call	BasicLineScan_run
.LVL8:
	.loc 1 56 0
	call	InfineonRacer_detectLane
.LVL9:
	.loc 1 57 0
	call	InfineonRacer_DetectCrosswalk
.LVL10:
	.loc 1 59 0
	call	BasicPort_run
.LVL11:
	.loc 1 60 0
	call	BasicGtmTom_run
.LVL12:
	.loc 1 61 0
	call	BasicVadcBgScan_run
.LVL13:
	.loc 1 62 0
	call	InfineonRacer_CalSpeed
.LVL14:
	.loc 1 64 0
	ld.bu	%d15, [%a15] 8
	jz	%d15, .L15
	.loc 1 73 0
	call	AsclinShellInterface_runLineScan
.LVL15:
	.loc 1 74 0
	j	AsclinShellInterface_runRadar
.LVL16:
.L13:
	.loc 1 50 0
	mov	%d15, 0
	j	.L12
.L15:
	.loc 1 66 0
	call	InfineonRacer_control
.LVL17:
	.loc 1 73 0
	call	AsclinShellInterface_runLineScan
.LVL18:
	.loc 1 74 0
	j	AsclinShellInterface_runRadar
.LVL19:
.LFE885:
	.size	appTaskfu_10ms, .-appTaskfu_10ms
.section .text.appTaskfu_100ms,"ax",@progbits
	.align 1
	.global	appTaskfu_100ms
	.type	appTaskfu_100ms, @function
appTaskfu_100ms:
.LFB886:
	.loc 1 79 0
	.loc 1 80 0
	movh.a	%a15, hi:task_cnt_100m
	ld.w	%d15, [%a15] lo:task_cnt_100m
	.loc 1 81 0
	mov	%d2, 1000
	.loc 1 80 0
	add	%d15, 1
	.loc 1 81 0
	jne	%d15, %d2, .L19
	.loc 1 82 0
	mov	%d15, 0
.L19:
	st.w	[%a15] lo:task_cnt_100m, %d15
	ret
.LFE886:
	.size	appTaskfu_100ms, .-appTaskfu_100ms
.section .text.appTaskfu_1000ms,"ax",@progbits
	.align 1
	.global	appTaskfu_1000ms
	.type	appTaskfu_1000ms, @function
appTaskfu_1000ms:
.LFB887:
	.loc 1 95 0
	.loc 1 96 0
	movh.a	%a15, hi:task_cnt_1000m
	ld.w	%d15, [%a15] lo:task_cnt_1000m
	.loc 1 97 0
	mov	%d2, 1000
	.loc 1 96 0
	add	%d15, 1
	.loc 1 97 0
	jne	%d15, %d2, .L23
	.loc 1 98 0
	mov	%d15, 0
.L23:
	st.w	[%a15] lo:task_cnt_1000m, %d15
	ret
.LFE887:
	.size	appTaskfu_1000ms, .-appTaskfu_1000ms
.section .text.appTaskfu_idle,"ax",@progbits
	.align 1
	.global	appTaskfu_idle
	.type	appTaskfu_idle, @function
appTaskfu_idle:
.LFB888:
	.loc 1 102 0
	.loc 1 103 0
	j	AsclinShellInterface_run
.LVL20:
.LFE888:
	.size	appTaskfu_idle, .-appTaskfu_idle
.section .text.appIsrCb_1ms,"ax",@progbits
	.align 1
	.global	appIsrCb_1ms
	.type	appIsrCb_1ms, @function
appIsrCb_1ms:
.LFB889:
	.loc 1 112 0
	ret
.LFE889:
	.size	appIsrCb_1ms, .-appIsrCb_1ms
	.global	task_flag_1000m
.section .bss.task_flag_1000m,"aw",@nobits
	.type	task_flag_1000m, @object
	.size	task_flag_1000m, 1
task_flag_1000m:
	.zero	1
	.global	task_flag_100m
.section .bss.task_flag_100m,"aw",@nobits
	.type	task_flag_100m, @object
	.size	task_flag_100m, 1
task_flag_100m:
	.zero	1
	.global	task_flag_10m
.section .bss.task_flag_10m,"aw",@nobits
	.type	task_flag_10m, @object
	.size	task_flag_10m, 1
task_flag_10m:
	.zero	1
	.global	task_flag_1m
.section .bss.task_flag_1m,"aw",@nobits
	.type	task_flag_1m, @object
	.size	task_flag_1m, 1
task_flag_1m:
	.zero	1
.section .bss.task_cnt_1000m,"aw",@nobits
	.align 2
	.type	task_cnt_1000m, @object
	.size	task_cnt_1000m, 4
task_cnt_1000m:
	.zero	4
.section .bss.task_cnt_100m,"aw",@nobits
	.align 2
	.type	task_cnt_100m, @object
	.size	task_cnt_100m, 4
task_cnt_100m:
	.zero	4
.section .bss.task_cnt_10m,"aw",@nobits
	.align 2
	.type	task_cnt_10m, @object
	.size	task_cnt_10m, 4
task_cnt_10m:
	.zero	4
.section .bss.task_cnt_1m,"aw",@nobits
	.align 2
	.type	task_cnt_1m, @object
	.size	task_cnt_1m, 4
task_cnt_1m:
	.zero	4
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
	.uaword	.LFB883
	.uaword	.LFE883-.LFB883
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB884
	.uaword	.LFE884-.LFB884
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB885
	.uaword	.LFE885-.LFB885
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB886
	.uaword	.LFE886-.LFB886
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB887
	.uaword	.LFE887-.LFB887
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB888
	.uaword	.LFE888-.LFB888
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB889
	.uaword	.LFE889-.LFB889
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
	.file 4 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h"
	.file 5 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
	.file 6 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/InfineonRacer.h"
	.file 7 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Console.h"
	.file 8 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h"
	.file 9 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Assert.h"
	.file 10 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicLineScan.h"
	.file 11 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicPort.h"
	.file 12 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicGtmTom.h"
	.file 13 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicVadcBgScan.h"
	.file 14 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicGpt12Enc.h"
	.file 15 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/AsclinShellInterface.h"
	.file 16 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/Q_Linescan.h"
	.file 17 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/Q_Control.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xe1d
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Main/Release/AppTaskFu.c"
	.string	"D:\\\\MinKyu_AurixRacer\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x2
	.byte	0x5a
	.uaword	0x1e4
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
	.byte	0x2
	.byte	0x5c
	.uaword	0x18e
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x19a
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
	.byte	0x2
	.byte	0x68
	.uaword	0x1c5
	.uleb128 0x3
	.string	"sint64"
	.byte	0x3
	.byte	0x24
	.uaword	0x253
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x28e
	.uleb128 0x6
	.uleb128 0x3
	.string	"Ifx_TickTime"
	.byte	0x3
	.byte	0x3e
	.uaword	0x245
	.uleb128 0x3
	.string	"Ifx_SizeT"
	.byte	0x3
	.byte	0x4b
	.uaword	0x1d6
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.byte	0x7e
	.uaword	0x2da
	.uleb128 0x8
	.string	"module"
	.byte	0x3
	.byte	0x80
	.uaword	0x288
	.byte	0
	.uleb128 0x8
	.string	"index"
	.byte	0x3
	.byte	0x81
	.uaword	0x207
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x82
	.uaword	0x2b4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.byte	0x76
	.uaword	0x360
	.uleb128 0xa
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0xa
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0xa
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0xa
	.string	"IfxCpu_Index_none"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_InterfaceDriver"
	.byte	0x4
	.byte	0x62
	.uaword	0x286
	.uleb128 0x3
	.string	"IfxStdIf_DPipe"
	.byte	0x5
	.byte	0x33
	.uaword	0x396
	.uleb128 0xb
	.string	"IfxStdIf_DPipe_"
	.byte	0x4c
	.byte	0x5
	.byte	0xd5
	.uaword	0x515
	.uleb128 0x8
	.string	"driver"
	.byte	0x5
	.byte	0xd7
	.uaword	0x360
	.byte	0
	.uleb128 0x8
	.string	"txDisabled"
	.byte	0x5
	.byte	0xd8
	.uaword	0x236
	.byte	0x4
	.uleb128 0x8
	.string	"write"
	.byte	0x5
	.byte	0xdb
	.uaword	0x561
	.byte	0x8
	.uleb128 0x8
	.string	"read"
	.byte	0x5
	.byte	0xdc
	.uaword	0x5a8
	.byte	0xc
	.uleb128 0x8
	.string	"getReadCount"
	.byte	0x5
	.byte	0xdd
	.uaword	0x5c3
	.byte	0x10
	.uleb128 0x8
	.string	"getReadEvent"
	.byte	0x5
	.byte	0xde
	.uaword	0x5fc
	.byte	0x14
	.uleb128 0x8
	.string	"getWriteCount"
	.byte	0x5
	.byte	0xdf
	.uaword	0x6a9
	.byte	0x18
	.uleb128 0x8
	.string	"getWriteEvent"
	.byte	0x5
	.byte	0xe0
	.uaword	0x6cd
	.byte	0x1c
	.uleb128 0x8
	.string	"canReadCount"
	.byte	0x5
	.byte	0xe1
	.uaword	0x707
	.byte	0x20
	.uleb128 0x8
	.string	"canWriteCount"
	.byte	0x5
	.byte	0xe2
	.uaword	0x74a
	.byte	0x24
	.uleb128 0x8
	.string	"flushTx"
	.byte	0x5
	.byte	0xe3
	.uaword	0x76e
	.byte	0x28
	.uleb128 0x8
	.string	"clearTx"
	.byte	0x5
	.byte	0xe4
	.uaword	0x7d7
	.byte	0x2c
	.uleb128 0x8
	.string	"clearRx"
	.byte	0x5
	.byte	0xe5
	.uaword	0x7a7
	.byte	0x30
	.uleb128 0x8
	.string	"onReceive"
	.byte	0x5
	.byte	0xe6
	.uaword	0x7f5
	.byte	0x34
	.uleb128 0x8
	.string	"onTransmit"
	.byte	0x5
	.byte	0xe7
	.uaword	0x815
	.byte	0x38
	.uleb128 0x8
	.string	"onError"
	.byte	0x5
	.byte	0xe8
	.uaword	0x836
	.byte	0x3c
	.uleb128 0x8
	.string	"getSendCount"
	.byte	0x5
	.byte	0xea
	.uaword	0x635
	.byte	0x40
	.uleb128 0x8
	.string	"getTxTimeStamp"
	.byte	0x5
	.byte	0xeb
	.uaword	0x66e
	.byte	0x44
	.uleb128 0x8
	.string	"resetSendCount"
	.byte	0x5
	.byte	0xec
	.uaword	0x854
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_WriteEvent"
	.byte	0x5
	.byte	0x35
	.uaword	0x536
	.uleb128 0x5
	.byte	0x4
	.uaword	0x53c
	.uleb128 0xc
	.uaword	0x236
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ReadEvent"
	.byte	0x5
	.byte	0x36
	.uaword	0x536
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Write"
	.byte	0x5
	.byte	0x48
	.uaword	0x57d
	.uleb128 0x5
	.byte	0x4
	.uaword	0x583
	.uleb128 0xd
	.byte	0x1
	.uaword	0x236
	.uaword	0x5a2
	.uleb128 0xe
	.uaword	0x360
	.uleb128 0xe
	.uaword	0x286
	.uleb128 0xe
	.uaword	0x5a2
	.uleb128 0xe
	.uaword	0x28f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2a3
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Read"
	.byte	0x5
	.byte	0x57
	.uaword	0x57d
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadCount"
	.byte	0x5
	.byte	0x5f
	.uaword	0x5e6
	.uleb128 0x5
	.byte	0x4
	.uaword	0x5ec
	.uleb128 0xd
	.byte	0x1
	.uaword	0x207
	.uaword	0x5fc
	.uleb128 0xe
	.uaword	0x360
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadEvent"
	.byte	0x5
	.byte	0x67
	.uaword	0x61f
	.uleb128 0x5
	.byte	0x4
	.uaword	0x625
	.uleb128 0xd
	.byte	0x1
	.uaword	0x541
	.uaword	0x635
	.uleb128 0xe
	.uaword	0x360
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetSendCount"
	.byte	0x5
	.byte	0x6f
	.uaword	0x658
	.uleb128 0x5
	.byte	0x4
	.uaword	0x65e
	.uleb128 0xd
	.byte	0x1
	.uaword	0x215
	.uaword	0x66e
	.uleb128 0xe
	.uaword	0x360
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetTxTimeStamp"
	.byte	0x5
	.byte	0x77
	.uaword	0x693
	.uleb128 0x5
	.byte	0x4
	.uaword	0x699
	.uleb128 0xd
	.byte	0x1
	.uaword	0x28f
	.uaword	0x6a9
	.uleb128 0xe
	.uaword	0x360
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteCount"
	.byte	0x5
	.byte	0x7f
	.uaword	0x5e6
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteEvent"
	.byte	0x5
	.byte	0x87
	.uaword	0x6f1
	.uleb128 0x5
	.byte	0x4
	.uaword	0x6f7
	.uleb128 0xd
	.byte	0x1
	.uaword	0x515
	.uaword	0x707
	.uleb128 0xe
	.uaword	0x360
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanReadCount"
	.byte	0x5
	.byte	0x92
	.uaword	0x72a
	.uleb128 0x5
	.byte	0x4
	.uaword	0x730
	.uleb128 0xd
	.byte	0x1
	.uaword	0x236
	.uaword	0x74a
	.uleb128 0xe
	.uaword	0x360
	.uleb128 0xe
	.uaword	0x2a3
	.uleb128 0xe
	.uaword	0x28f
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanWriteCount"
	.byte	0x5
	.byte	0x9d
	.uaword	0x72a
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_FlushTx"
	.byte	0x5
	.byte	0xa6
	.uaword	0x78c
	.uleb128 0x5
	.byte	0x4
	.uaword	0x792
	.uleb128 0xd
	.byte	0x1
	.uaword	0x236
	.uaword	0x7a7
	.uleb128 0xe
	.uaword	0x360
	.uleb128 0xe
	.uaword	0x28f
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearRx"
	.byte	0x5
	.byte	0xad
	.uaword	0x7c5
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7cb
	.uleb128 0xf
	.byte	0x1
	.uaword	0x7d7
	.uleb128 0xe
	.uaword	0x360
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearTx"
	.byte	0x5
	.byte	0xb4
	.uaword	0x7c5
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnReceive"
	.byte	0x5
	.byte	0xbc
	.uaword	0x7c5
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnTransmit"
	.byte	0x5
	.byte	0xc3
	.uaword	0x7c5
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnError"
	.byte	0x5
	.byte	0xca
	.uaword	0x7c5
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ResetSendCount"
	.byte	0x5
	.byte	0xd1
	.uaword	0x7c5
	.uleb128 0x7
	.byte	0xc
	.byte	0x6
	.byte	0x22
	.uaword	0x8b8
	.uleb128 0x8
	.string	"Ls0Margin"
	.byte	0x6
	.byte	0x23
	.uaword	0x207
	.byte	0
	.uleb128 0x8
	.string	"Ls1Margin"
	.byte	0x6
	.byte	0x24
	.uaword	0x207
	.byte	0x4
	.uleb128 0x8
	.string	"basicTest"
	.byte	0x6
	.byte	0x25
	.uaword	0x236
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"InfineonRacer_t"
	.byte	0x6
	.byte	0x26
	.uaword	0x879
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.byte	0x26
	.uaword	0x8f9
	.uleb128 0x8
	.string	"standardIo"
	.byte	0x7
	.byte	0x28
	.uaword	0x8f9
	.byte	0
	.uleb128 0x8
	.string	"align"
	.byte	0x7
	.byte	0x29
	.uaword	0x1d6
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x380
	.uleb128 0x3
	.string	"Ifx_Console"
	.byte	0x7
	.byte	0x2a
	.uaword	0x8cf
	.uleb128 0x10
	.byte	0x1
	.string	"appTaskfu_init"
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.uaword	.LFB883
	.uaword	.LFE883
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x976
	.uleb128 0x11
	.uaword	.LVL0
	.uaword	0xc0e
	.uleb128 0x11
	.uaword	.LVL1
	.uaword	0xc27
	.uleb128 0x11
	.uaword	.LVL2
	.uaword	0xc3c
	.uleb128 0x11
	.uaword	.LVL3
	.uaword	0xc53
	.uleb128 0x11
	.uaword	.LVL4
	.uaword	0xc6e
	.uleb128 0x11
	.uaword	.LVL5
	.uaword	0xc87
	.uleb128 0x12
	.uaword	.LVL6
	.byte	0x1
	.uaword	0xca7
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"appTaskfu_1ms"
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.uaword	.LFB884
	.uaword	.LFE884
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.string	"appTaskfu_10ms"
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.uaword	.LFB885
	.uaword	.LFE885
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa2f
	.uleb128 0x11
	.uaword	.LVL7
	.uaword	0xcc0
	.uleb128 0x11
	.uaword	.LVL8
	.uaword	0xcde
	.uleb128 0x11
	.uaword	.LVL9
	.uaword	0xcf6
	.uleb128 0x11
	.uaword	.LVL10
	.uaword	0xd15
	.uleb128 0x11
	.uaword	.LVL11
	.uaword	0xd39
	.uleb128 0x11
	.uaword	.LVL12
	.uaword	0xd4d
	.uleb128 0x11
	.uaword	.LVL13
	.uaword	0xd63
	.uleb128 0x11
	.uaword	.LVL14
	.uaword	0xd7d
	.uleb128 0x11
	.uaword	.LVL15
	.uaword	0xd9a
	.uleb128 0x12
	.uaword	.LVL16
	.byte	0x1
	.uaword	0xdc1
	.uleb128 0x11
	.uaword	.LVL17
	.uaword	0xde5
	.uleb128 0x11
	.uaword	.LVL18
	.uaword	0xd9a
	.uleb128 0x12
	.uaword	.LVL19
	.byte	0x1
	.uaword	0xdc1
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"appTaskfu_100ms"
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.uaword	.LFB886
	.uaword	.LFE886
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"appTaskfu_1000ms"
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.uaword	.LFB887
	.uaword	.LFE887
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.string	"appTaskfu_idle"
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.uaword	.LFB888
	.uaword	.LFE888
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa9e
	.uleb128 0x12
	.uaword	.LVL20
	.byte	0x1
	.uaword	0xe01
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"appIsrCb_1ms"
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.uaword	.LFB889
	.uaword	.LFE889
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x14
	.string	"task_cnt_1m"
	.byte	0x1
	.byte	0x3
	.uaword	0x207
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1m
	.uleb128 0x14
	.string	"task_cnt_10m"
	.byte	0x1
	.byte	0x4
	.uaword	0x207
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_10m
	.uleb128 0x14
	.string	"task_cnt_100m"
	.byte	0x1
	.byte	0x5
	.uaword	0x207
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_100m
	.uleb128 0x14
	.string	"task_cnt_1000m"
	.byte	0x1
	.byte	0x6
	.uaword	0x207
	.byte	0x5
	.byte	0x3
	.uaword	task_cnt_1000m
	.uleb128 0x15
	.uaword	0x2da
	.uaword	0xb35
	.uleb128 0x16
	.uaword	0x304
	.byte	0x2
	.byte	0
	.uleb128 0x17
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x8
	.byte	0x96
	.uaword	0xb52
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.uaword	0xb25
	.uleb128 0x17
	.string	"Assert_verboseLevel"
	.byte	0x9
	.byte	0x79
	.uaword	0x215
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.string	"IR_Ctrl"
	.byte	0x6
	.byte	0x33
	.uaword	0x8b8
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.string	"Ifx_g_console"
	.byte	0x7
	.byte	0x2c
	.uaword	0x8ff
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"task_flag_1m"
	.byte	0x1
	.byte	0x8
	.uaword	0x236
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1m
	.uleb128 0x19
	.string	"task_flag_10m"
	.byte	0x1
	.byte	0x9
	.uaword	0x236
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_10m
	.uleb128 0x19
	.string	"task_flag_100m"
	.byte	0x1
	.byte	0xa
	.uaword	0x236
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_100m
	.uleb128 0x19
	.string	"task_flag_1000m"
	.byte	0x1
	.byte	0xb
	.uaword	0x236
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	task_flag_1000m
	.uleb128 0x1a
	.byte	0x1
	.string	"BasicLineScan_init"
	.byte	0xa
	.byte	0x27
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"BasicPort_init"
	.byte	0xb
	.byte	0x5f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"BasicGtmTom_init"
	.byte	0xc
	.byte	0x7b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"BasicVadcBgScan_init"
	.byte	0xd
	.byte	0x29
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"BasicGpt12Enc_init"
	.byte	0xe
	.byte	0x2e
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"AsclinShellInterface_init"
	.byte	0xf
	.byte	0x4f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"InfineonRacer_init"
	.byte	0x6
	.byte	0x42
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"InfineonRacer_checkEdge"
	.byte	0x6
	.byte	0x46
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"BasicLineScan_run"
	.byte	0xa
	.byte	0x28
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"InfineonRacer_detectLane"
	.byte	0x6
	.byte	0x43
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"InfineonRacer_DetectCrosswalk"
	.byte	0x10
	.byte	0x3d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"BasicPort_run"
	.byte	0xb
	.byte	0x60
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"BasicGtmTom_run"
	.byte	0xc
	.byte	0x7c
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"BasicVadcBgScan_run"
	.byte	0xd
	.byte	0x2a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"InfineonRacer_CalSpeed"
	.byte	0x11
	.byte	0x2e
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"AsclinShellInterface_runLineScan"
	.byte	0xf
	.byte	0x51
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"AsclinShellInterface_runRadar"
	.byte	0xf
	.byte	0x52
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"InfineonRacer_control"
	.byte	0x6
	.byte	0x44
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.string	"AsclinShellInterface_run"
	.byte	0xf
	.byte	0x50
	.byte	0x1
	.byte	0x1
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
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x4
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0
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
.section .debug_aranges,"",@progbits
	.uaword	0x4c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB883
	.uaword	.LFE883-.LFB883
	.uaword	.LFB884
	.uaword	.LFE884-.LFB884
	.uaword	.LFB885
	.uaword	.LFE885-.LFB885
	.uaword	.LFB886
	.uaword	.LFE886-.LFB886
	.uaword	.LFB887
	.uaword	.LFE887-.LFB887
	.uaword	.LFB888
	.uaword	.LFE888-.LFB888
	.uaword	.LFB889
	.uaword	.LFE889-.LFB889
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB883
	.uaword	.LFE883
	.uaword	.LFB884
	.uaword	.LFE884
	.uaword	.LFB885
	.uaword	.LFE885
	.uaword	.LFB886
	.uaword	.LFE886
	.uaword	.LFB887
	.uaword	.LFE887
	.uaword	.LFB888
	.uaword	.LFE888
	.uaword	.LFB889
	.uaword	.LFE889
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	AsclinShellInterface_run,STT_FUNC,0
	.extern	InfineonRacer_control,STT_FUNC,0
	.extern	AsclinShellInterface_runRadar,STT_FUNC,0
	.extern	AsclinShellInterface_runLineScan,STT_FUNC,0
	.extern	InfineonRacer_CalSpeed,STT_FUNC,0
	.extern	BasicVadcBgScan_run,STT_FUNC,0
	.extern	BasicGtmTom_run,STT_FUNC,0
	.extern	BasicPort_run,STT_FUNC,0
	.extern	InfineonRacer_DetectCrosswalk,STT_FUNC,0
	.extern	InfineonRacer_detectLane,STT_FUNC,0
	.extern	BasicLineScan_run,STT_FUNC,0
	.extern	IR_Ctrl,STT_OBJECT,12
	.extern	InfineonRacer_checkEdge,STT_FUNC,0
	.extern	InfineonRacer_init,STT_FUNC,0
	.extern	AsclinShellInterface_init,STT_FUNC,0
	.extern	BasicGpt12Enc_init,STT_FUNC,0
	.extern	BasicVadcBgScan_init,STT_FUNC,0
	.extern	BasicGtmTom_init,STT_FUNC,0
	.extern	BasicPort_init,STT_FUNC,0
	.extern	BasicLineScan_init,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
