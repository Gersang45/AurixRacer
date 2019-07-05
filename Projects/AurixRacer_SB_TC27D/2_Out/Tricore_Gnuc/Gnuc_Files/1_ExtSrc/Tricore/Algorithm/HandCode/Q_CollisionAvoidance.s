	.file	"Q_CollisionAvoidance.c"
.section .text,"ax",@progbits
.Ltext0:
	.global	__extendsfdf2
	.global	__muldf3
	.global	__truncdfsf2
.section .text.InfineonRacer_DetectObstacle,"ax",@progbits
	.align 1
	.global	InfineonRacer_DetectObstacle
	.type	InfineonRacer_DetectObstacle, @function
InfineonRacer_DetectObstacle:
.LFB883:
	.file 1 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/Q_CollisionAvoidance.c"
	.loc 1 27 0
.LVL0:
	movh.a	%a4, hi:flag_obs
	movh.a	%a3, hi:IR_Radar
	ld.bu	%d3, [%a4] lo:flag_obs
	.loc 1 30 0
	mov	%d15, 0
	lea	%a3, [%a3] lo:IR_Radar
	.loc 1 32 0
	mov	%d2, 1001
	.loc 1 44 0
	lea	%a15, 23
.LVL1:
.L4:
	.loc 1 32 0
	addsc.a	%a2, %a3, %d15, 1
	ld.hu	%d4, [%a2]0
	jge.u	%d4, %d2, .L5
	add	%d5, %d15, -1
	.loc 1 34 0
	jge.u	%d5, 3, .L2
.LBB2:
	.loc 1 35 0
	utof	%d4, %d4
	movh.a	%a15, hi:Obstacle_Distance
	st.b	[%a4] lo:flag_obs, %d3
	st.w	[%a15] lo:Obstacle_Distance, %d4
	.loc 1 36 0
	call	__extendsfdf2
.LVL2:
	mov	%e6, %d3, %d2
	mov	%e4, %d3, %d2
	.loc 1 37 0
	movh.a	%a15, hi:TargetPoint_Dsitacne
	.loc 1 36 0
	call	__muldf3
.LVL3:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL4:
	.loc 1 37 0
	movh	%d4, 18608
	addi	%d4, %d4, -14336
	add.f	%d4, %d2, %d4
	call	sqrtf
.LVL5:
	st.w	[%a15] lo:TargetPoint_Dsitacne, %d2
	.loc 1 38 0
	movh.a	%a15, hi:Speed
	ld.w	%d15, [%a15] lo:Speed
.LVL6:
	movh	%d3, 16800
	mul.f	%d15, %d3, %d15
	movh.a	%a15, hi:RefCnt
	div.f	%d2, %d2, %d15
	.loc 1 39 0
	mov	%d15, 3
	.loc 1 38 0
	ftouz	%d2, %d2
	st.h	[%a15] lo:RefCnt, %d2
	.loc 1 39 0
	movh.a	%a15, hi:State_Track
	st.b	[%a15] lo:State_Track, %d15
	.loc 1 40 0
	mov	%d15, 0
	movh.a	%a15, hi:avoidingState
	st.b	[%a15] lo:avoidingState, %d15
	.loc 1 41 0
	ret
.LVL7:
.L5:
.LBE2:
	.loc 1 44 0
	mov	%d3, 0
.L2:
	.loc 1 30 0 discriminator 2
	add	%d15, 1
.LVL8:
	loop	%a15, .L4
	st.b	[%a4] lo:flag_obs, %d3
	ret
.LFE883:
	.size	InfineonRacer_DetectObstacle, .-InfineonRacer_DetectObstacle
.section .text.InfineonRacer_AvoidObstacle,"ax",@progbits
	.align 1
	.global	InfineonRacer_AvoidObstacle
	.type	InfineonRacer_AvoidObstacle, @function
InfineonRacer_AvoidObstacle:
.LFB884:
	.loc 1 50 0
	.loc 1 51 0
	movh.a	%a15, hi:Pos_DL
	ld.b	%d15, [%a15] lo:Pos_DL
	jeq	%d15, -1, .L10
	jne	%d15, 1, .L8
	.loc 1 55 0
	movh.a	%a12, hi:avoidingState
	ld.bu	%d2, [%a12] lo:avoidingState
	movh.a	%a15, hi:AvoidCnt
	jeq	%d2, 1, .L12
	jz	%d2, .L13
	jeq	%d2, 2, .L14
	ret
.L8:
	ret
.L10:
	.loc 1 82 0
	movh.a	%a12, hi:avoidingState
	ld.bu	%d15, [%a12] lo:avoidingState
	movh.a	%a15, hi:AvoidCnt
	jeq	%d15, 1, .L17
	jz	%d15, .L18
	jeq	%d15, 2, .L19
	ret
.L18:
	.loc 1 85 0
	movh.a	%a15, hi:AvoidCnt
	st.h	[%a15] lo:AvoidCnt, %d15
	.loc 1 86 0
	mov	%d15, 1
	st.b	[%a12] lo:avoidingState, %d15
.L17:
	.loc 1 89 0
	movh	%d4, 16051
	addi	%d4, %d4, 13107
.L28:
	.loc 1 62 0
	call	IR_setSrvAngle
.LVL9:
	.loc 1 63 0
	ld.h	%d15, [%a15] lo:AvoidCnt
	.loc 1 64 0
	movh.a	%a2, hi:RefCnt
	.loc 1 63 0
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	.loc 1 64 0
	ld.hu	%d2, [%a2] lo:RefCnt
	.loc 1 63 0
	st.h	[%a15] lo:AvoidCnt, %d15
	.loc 1 64 0
	jne	%d2, %d15, .L8
	.loc 1 66 0
	mov	%d15, 0
	st.h	[%a15] lo:AvoidCnt, %d15
	.loc 1 67 0
	mov	%d15, 2
	st.b	[%a12] lo:avoidingState, %d15
	ret
.L13:
	.loc 1 58 0
	movh.a	%a15, hi:AvoidCnt
	st.h	[%a15] lo:AvoidCnt, %d2
	.loc 1 59 0
	st.b	[%a12] lo:avoidingState, %d15
.L12:
	.loc 1 62 0
	movh	%d4, 48461
	addi	%d4, %d4, -13107
	j	.L28
.L14:
	.loc 1 72 0
	movh	%d4, 16102
	addi	%d4, %d4, 26214
.L29:
	.loc 1 73 0
	movh.a	%a15, hi:AvoidCnt
	.loc 1 72 0
	call	IR_setSrvAngle
.LVL10:
	.loc 1 73 0
	ld.h	%d15, [%a15] lo:AvoidCnt
	.loc 1 74 0
	mov	%d2, 0
	.loc 1 73 0
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15] lo:AvoidCnt, %d15
	.loc 1 74 0
	movh.a	%a15, hi:init_dash
	st.b	[%a15] lo:init_dash, %d2
	.loc 1 75 0
	movh.a	%a15, hi:RefCnt
	ld.hu	%d2, [%a15] lo:RefCnt
	jne	%d2, %d15, .L8
	.loc 1 75 0 is_stmt 0 discriminator 1
	mov	%d15, 2
	movh.a	%a15, hi:State_Track
	st.b	[%a15] lo:State_Track, %d15
	ret
.L19:
	.loc 1 99 0 is_stmt 1
	movh	%d4, 48666
	addi	%d4, %d4, -26214
	j	.L29
.LFE884:
	.size	InfineonRacer_AvoidObstacle, .-InfineonRacer_AvoidObstacle
	.global	TargetPoint_Dsitacne
.section .bss.TargetPoint_Dsitacne,"aw",@nobits
	.align 2
	.type	TargetPoint_Dsitacne, @object
	.size	TargetPoint_Dsitacne, 4
TargetPoint_Dsitacne:
	.zero	4
	.global	Obstacle_Distance
.section .bss.Obstacle_Distance,"aw",@nobits
	.align 2
	.type	Obstacle_Distance, @object
	.size	Obstacle_Distance, 4
Obstacle_Distance:
	.zero	4
	.global	AvoidCnt
.section .bss.AvoidCnt,"aw",@nobits
	.align 1
	.type	AvoidCnt, @object
	.size	AvoidCnt, 2
AvoidCnt:
	.zero	2
	.global	RefCnt
.section .bss.RefCnt,"aw",@nobits
	.align 1
	.type	RefCnt, @object
	.size	RefCnt, 2
RefCnt:
	.zero	2
	.global	avoidingState
.section .bss.avoidingState,"aw",@nobits
	.type	avoidingState, @object
	.size	avoidingState, 1
avoidingState:
	.zero	1
	.global	flag_obs
.section .bss.flag_obs,"aw",@nobits
	.type	flag_obs, @object
	.size	flag_obs, 1
flag_obs:
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
	.file 4 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h"
	.file 5 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
	.file 6 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Console.h"
	.file 7 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h"
	.file 8 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/Q_Linescan.h"
	.file 9 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/InfineonRacer.h"
	.file 10 "<built-in>"
	.file 11 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Assert.h"
	.file 12 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/Q_Control.h"
	.file 13 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicGtmTom.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xc50
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/Q_CollisionAvoidance.c"
	.string	"D:\\\\MinKyu_AurixRacer\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
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
	.uaword	0x208
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x223
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x5c
	.uaword	0x1b2
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x1be
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x5e
	.uaword	0x1a9
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x68
	.uaword	0x1e9
	.uleb128 0x3
	.string	"sint64"
	.byte	0x3
	.byte	0x24
	.uaword	0x281
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
	.uaword	0x2bc
	.uleb128 0x6
	.uleb128 0x3
	.string	"Ifx_TickTime"
	.byte	0x3
	.byte	0x3e
	.uaword	0x273
	.uleb128 0x3
	.string	"Ifx_SizeT"
	.byte	0x3
	.byte	0x4b
	.uaword	0x1fa
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.byte	0x7e
	.uaword	0x308
	.uleb128 0x8
	.string	"module"
	.byte	0x3
	.byte	0x80
	.uaword	0x2b6
	.byte	0
	.uleb128 0x8
	.string	"index"
	.byte	0x3
	.byte	0x81
	.uaword	0x239
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x82
	.uaword	0x2e2
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
	.byte	0x7
	.byte	0x76
	.uaword	0x38e
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
	.uaword	0x2b4
	.uleb128 0x3
	.string	"IfxStdIf_DPipe"
	.byte	0x5
	.byte	0x33
	.uaword	0x3c4
	.uleb128 0xb
	.string	"IfxStdIf_DPipe_"
	.byte	0x4c
	.byte	0x5
	.byte	0xd5
	.uaword	0x543
	.uleb128 0x8
	.string	"driver"
	.byte	0x5
	.byte	0xd7
	.uaword	0x38e
	.byte	0
	.uleb128 0x8
	.string	"txDisabled"
	.byte	0x5
	.byte	0xd8
	.uaword	0x264
	.byte	0x4
	.uleb128 0x8
	.string	"write"
	.byte	0x5
	.byte	0xdb
	.uaword	0x58f
	.byte	0x8
	.uleb128 0x8
	.string	"read"
	.byte	0x5
	.byte	0xdc
	.uaword	0x5d6
	.byte	0xc
	.uleb128 0x8
	.string	"getReadCount"
	.byte	0x5
	.byte	0xdd
	.uaword	0x5f1
	.byte	0x10
	.uleb128 0x8
	.string	"getReadEvent"
	.byte	0x5
	.byte	0xde
	.uaword	0x62a
	.byte	0x14
	.uleb128 0x8
	.string	"getWriteCount"
	.byte	0x5
	.byte	0xdf
	.uaword	0x6d7
	.byte	0x18
	.uleb128 0x8
	.string	"getWriteEvent"
	.byte	0x5
	.byte	0xe0
	.uaword	0x6fb
	.byte	0x1c
	.uleb128 0x8
	.string	"canReadCount"
	.byte	0x5
	.byte	0xe1
	.uaword	0x735
	.byte	0x20
	.uleb128 0x8
	.string	"canWriteCount"
	.byte	0x5
	.byte	0xe2
	.uaword	0x778
	.byte	0x24
	.uleb128 0x8
	.string	"flushTx"
	.byte	0x5
	.byte	0xe3
	.uaword	0x79c
	.byte	0x28
	.uleb128 0x8
	.string	"clearTx"
	.byte	0x5
	.byte	0xe4
	.uaword	0x805
	.byte	0x2c
	.uleb128 0x8
	.string	"clearRx"
	.byte	0x5
	.byte	0xe5
	.uaword	0x7d5
	.byte	0x30
	.uleb128 0x8
	.string	"onReceive"
	.byte	0x5
	.byte	0xe6
	.uaword	0x823
	.byte	0x34
	.uleb128 0x8
	.string	"onTransmit"
	.byte	0x5
	.byte	0xe7
	.uaword	0x843
	.byte	0x38
	.uleb128 0x8
	.string	"onError"
	.byte	0x5
	.byte	0xe8
	.uaword	0x864
	.byte	0x3c
	.uleb128 0x8
	.string	"getSendCount"
	.byte	0x5
	.byte	0xea
	.uaword	0x663
	.byte	0x40
	.uleb128 0x8
	.string	"getTxTimeStamp"
	.byte	0x5
	.byte	0xeb
	.uaword	0x69c
	.byte	0x44
	.uleb128 0x8
	.string	"resetSendCount"
	.byte	0x5
	.byte	0xec
	.uaword	0x882
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_WriteEvent"
	.byte	0x5
	.byte	0x35
	.uaword	0x564
	.uleb128 0x5
	.byte	0x4
	.uaword	0x56a
	.uleb128 0xc
	.uaword	0x264
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ReadEvent"
	.byte	0x5
	.byte	0x36
	.uaword	0x564
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Write"
	.byte	0x5
	.byte	0x48
	.uaword	0x5ab
	.uleb128 0x5
	.byte	0x4
	.uaword	0x5b1
	.uleb128 0xd
	.byte	0x1
	.uaword	0x264
	.uaword	0x5d0
	.uleb128 0xe
	.uaword	0x38e
	.uleb128 0xe
	.uaword	0x2b4
	.uleb128 0xe
	.uaword	0x5d0
	.uleb128 0xe
	.uaword	0x2bd
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2d1
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Read"
	.byte	0x5
	.byte	0x57
	.uaword	0x5ab
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadCount"
	.byte	0x5
	.byte	0x5f
	.uaword	0x614
	.uleb128 0x5
	.byte	0x4
	.uaword	0x61a
	.uleb128 0xd
	.byte	0x1
	.uaword	0x239
	.uaword	0x62a
	.uleb128 0xe
	.uaword	0x38e
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadEvent"
	.byte	0x5
	.byte	0x67
	.uaword	0x64d
	.uleb128 0x5
	.byte	0x4
	.uaword	0x653
	.uleb128 0xd
	.byte	0x1
	.uaword	0x56f
	.uaword	0x663
	.uleb128 0xe
	.uaword	0x38e
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetSendCount"
	.byte	0x5
	.byte	0x6f
	.uaword	0x686
	.uleb128 0x5
	.byte	0x4
	.uaword	0x68c
	.uleb128 0xd
	.byte	0x1
	.uaword	0x247
	.uaword	0x69c
	.uleb128 0xe
	.uaword	0x38e
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetTxTimeStamp"
	.byte	0x5
	.byte	0x77
	.uaword	0x6c1
	.uleb128 0x5
	.byte	0x4
	.uaword	0x6c7
	.uleb128 0xd
	.byte	0x1
	.uaword	0x2bd
	.uaword	0x6d7
	.uleb128 0xe
	.uaword	0x38e
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteCount"
	.byte	0x5
	.byte	0x7f
	.uaword	0x614
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteEvent"
	.byte	0x5
	.byte	0x87
	.uaword	0x71f
	.uleb128 0x5
	.byte	0x4
	.uaword	0x725
	.uleb128 0xd
	.byte	0x1
	.uaword	0x543
	.uaword	0x735
	.uleb128 0xe
	.uaword	0x38e
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanReadCount"
	.byte	0x5
	.byte	0x92
	.uaword	0x758
	.uleb128 0x5
	.byte	0x4
	.uaword	0x75e
	.uleb128 0xd
	.byte	0x1
	.uaword	0x264
	.uaword	0x778
	.uleb128 0xe
	.uaword	0x38e
	.uleb128 0xe
	.uaword	0x2d1
	.uleb128 0xe
	.uaword	0x2bd
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanWriteCount"
	.byte	0x5
	.byte	0x9d
	.uaword	0x758
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_FlushTx"
	.byte	0x5
	.byte	0xa6
	.uaword	0x7ba
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7c0
	.uleb128 0xd
	.byte	0x1
	.uaword	0x264
	.uaword	0x7d5
	.uleb128 0xe
	.uaword	0x38e
	.uleb128 0xe
	.uaword	0x2bd
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearRx"
	.byte	0x5
	.byte	0xad
	.uaword	0x7f3
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7f9
	.uleb128 0xf
	.byte	0x1
	.uaword	0x805
	.uleb128 0xe
	.uaword	0x38e
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearTx"
	.byte	0x5
	.byte	0xb4
	.uaword	0x7f3
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnReceive"
	.byte	0x5
	.byte	0xbc
	.uaword	0x7f3
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnTransmit"
	.byte	0x5
	.byte	0xc3
	.uaword	0x7f3
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnError"
	.byte	0x5
	.byte	0xca
	.uaword	0x7f3
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ResetSendCount"
	.byte	0x5
	.byte	0xd1
	.uaword	0x7f3
	.uleb128 0x7
	.byte	0x8
	.byte	0x6
	.byte	0x26
	.uaword	0x8d1
	.uleb128 0x8
	.string	"standardIo"
	.byte	0x6
	.byte	0x28
	.uaword	0x8d1
	.byte	0
	.uleb128 0x8
	.string	"align"
	.byte	0x6
	.byte	0x29
	.uaword	0x1fa
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x3ae
	.uleb128 0x3
	.string	"Ifx_Console"
	.byte	0x6
	.byte	0x2a
	.uaword	0x8a7
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.byte	0x23
	.uaword	0x918
	.uleb128 0xa
	.string	"Dash_left"
	.sleb128 -1
	.uleb128 0xa
	.string	"Dash_null"
	.sleb128 0
	.uleb128 0xa
	.string	"Dash_right"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"PosDL_t"
	.byte	0x8
	.byte	0x27
	.uaword	0x8ea
	.uleb128 0x9
	.byte	0x1
	.byte	0x9
	.byte	0x28
	.uaword	0x96c
	.uleb128 0xa
	.string	"Normal"
	.sleb128 0
	.uleb128 0xa
	.string	"Crossin"
	.sleb128 1
	.uleb128 0xa
	.string	"Dashline"
	.sleb128 2
	.uleb128 0xa
	.string	"Lanechange"
	.sleb128 3
	.uleb128 0xa
	.string	"Crossout"
	.sleb128 4
	.uleb128 0xa
	.string	"AEB"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"Track_t"
	.byte	0x9
	.byte	0x2f
	.uaword	0x927
	.uleb128 0x9
	.byte	0x1
	.byte	0x1
	.byte	0xb
	.uaword	0x9b1
	.uleb128 0xa
	.string	"Avoid_Start"
	.sleb128 0
	.uleb128 0xa
	.string	"Avoid_Obstacle"
	.sleb128 1
	.uleb128 0xa
	.string	"Fixing_Line"
	.sleb128 2
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"InfineonRacer_DetectObstacle"
	.byte	0x1
	.byte	0x1a
	.byte	0x1
	.uaword	.LFB883
	.uaword	.LFE883
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa5a
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x1c
	.uaword	0x1d3
	.uaword	.LLST0
	.uleb128 0x12
	.uaword	.LBB2
	.uaword	.LBE2
	.uleb128 0x11
	.string	"pow_Obstacle_Distance"
	.byte	0x1
	.byte	0x24
	.uaword	0x1a9
	.uaword	.LLST1
	.uleb128 0x13
	.byte	0x1
	.string	"pow"
	.byte	0xa
	.byte	0
	.byte	0x1
	.uaword	0x19f
	.byte	0x1
	.uaword	0xa36
	.uleb128 0xe
	.uaword	0x19f
	.uleb128 0xe
	.uaword	0x19f
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"sqrt"
	.byte	0xa
	.byte	0
	.byte	0x1
	.uaword	0x19f
	.byte	0x1
	.uaword	0xa4f
	.uleb128 0xe
	.uaword	0x19f
	.byte	0
	.uleb128 0x14
	.uaword	.LVL5
	.uaword	0xc0e
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"InfineonRacer_AvoidObstacle"
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.uaword	.LFB884
	.uaword	.LFE884
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa9d
	.uleb128 0x14
	.uaword	.LVL9
	.uaword	0xc38
	.uleb128 0x14
	.uaword	.LVL10
	.uaword	0xc38
	.byte	0
	.uleb128 0x16
	.uaword	0x308
	.uaword	0xaad
	.uleb128 0x17
	.uaword	0x332
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x7
	.byte	0x96
	.uaword	0xaca
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.uaword	0xa9d
	.uleb128 0x18
	.string	"Assert_verboseLevel"
	.byte	0xb
	.byte	0x79
	.uaword	0x247
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.string	"Ifx_g_console"
	.byte	0x6
	.byte	0x2c
	.uaword	0x8d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.string	"Pos_DL"
	.byte	0x8
	.byte	0x35
	.uaword	0x918
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.string	"init_dash"
	.byte	0x8
	.byte	0x36
	.uaword	0x264
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.string	"Speed"
	.byte	0xc
	.byte	0x27
	.uaword	0x1a9
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.uaword	0x215
	.uaword	0xb45
	.uleb128 0x17
	.uaword	0x332
	.byte	0x17
	.byte	0
	.uleb128 0x18
	.string	"IR_Radar"
	.byte	0x9
	.byte	0x34
	.uaword	0xb35
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.string	"State_Track"
	.byte	0x9
	.byte	0x38
	.uaword	0x96c
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"flag_obs"
	.byte	0x1
	.byte	0x6
	.uaword	0x264
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	flag_obs
	.uleb128 0x1a
	.string	"avoidingState"
	.byte	0x1
	.byte	0xf
	.uaword	0x97b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	avoidingState
	.uleb128 0x1a
	.string	"RefCnt"
	.byte	0x1
	.byte	0x11
	.uaword	0x215
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	RefCnt
	.uleb128 0x1a
	.string	"AvoidCnt"
	.byte	0x1
	.byte	0x12
	.uaword	0x215
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	AvoidCnt
	.uleb128 0x1a
	.string	"Obstacle_Distance"
	.byte	0x1
	.byte	0x13
	.uaword	0x1a9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Obstacle_Distance
	.uleb128 0x1a
	.string	"TargetPoint_Dsitacne"
	.byte	0x1
	.byte	0x14
	.uaword	0x1a9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TargetPoint_Dsitacne
	.uleb128 0x1b
	.byte	0x1
	.string	"__builtin_sqrtf"
	.byte	0xa
	.byte	0
	.string	"sqrtf"
	.byte	0x1
	.uaword	0x1a9
	.byte	0x1
	.uaword	0xc38
	.uleb128 0xe
	.uaword	0x1a9
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"IR_setSrvAngle"
	.byte	0xd
	.byte	0x76
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0x255
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x2007
	.uleb128 0x8
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
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL7
	.uaword	.LFE883
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL3-1
	.uahalf	0xd
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x19f
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x19f
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x1a9
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x24
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB883
	.uaword	.LFE883
	.uaword	.LFB884
	.uaword	.LFE884
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	init_dash,STT_OBJECT,1
	.extern	IR_setSrvAngle,STT_FUNC,0
	.extern	Pos_DL,STT_OBJECT,1
	.extern	State_Track,STT_OBJECT,1
	.extern	Speed,STT_OBJECT,4
	.extern	sqrtf,STT_FUNC,0
	.extern	IR_Radar,STT_OBJECT,48
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
