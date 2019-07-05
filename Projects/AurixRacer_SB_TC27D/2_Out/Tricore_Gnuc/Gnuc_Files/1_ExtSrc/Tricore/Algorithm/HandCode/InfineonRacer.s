	.file	"InfineonRacer.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.InfineonRacer_init,"ax",@progbits
	.align 1
	.global	InfineonRacer_init
	.type	InfineonRacer_init, @function
InfineonRacer_init:
.LFB883:
	.file 1 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/InfineonRacer.c"
	.loc 1 47 0
	.loc 1 48 0
	call	Ccu6IcuDemo_init
.LVL0:
	.loc 1 49 0
	call	IR_Encoder_init
.LVL1:
	.loc 1 50 0
	call	I2cBasicDemo_init
.LVL2:
	.loc 1 51 0
	movh	%d4, 16256
	j	IR_setSrvScanAngle
.LVL3:
.LFE883:
	.size	InfineonRacer_init, .-InfineonRacer_init
.section .text.InfineonRacer_control,"ax",@progbits
	.align 1
	.global	InfineonRacer_control
	.type	InfineonRacer_control, @function
InfineonRacer_control:
.LFB884:
	.loc 1 55 0
	.loc 1 56 0
	movh.a	%a15, hi:State_Track
	ld.bu	%d15, [%a15] lo:State_Track
	jge.u	%d15, 6, .L2
	movh.a	%a2, hi:.L5
	lea	%a2, [%a2] lo:.L5
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L5:
	.code32
	j	.L13
	.code32
	j	.L6
	.code32
	j	.L7
	.code32
	j	.L8
	.code32
	j	.L9
	.code32
	j	.L10
.L7:
	.loc 1 71 0
	movh.a	%a15, hi:cnt_cross
	ld.h	%d15, [%a15] lo:cnt_cross
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15] lo:cnt_cross, %d15
	.loc 1 72 0
	jge.u	%d15, 11, .L11
	.loc 1 73 0
	mov	%d15, 27
	movh.a	%a15, hi:Line_Left
	st.h	[%a15] lo:Line_Left, %d15
	.loc 1 74 0
	mov	%d15, 105
	movh.a	%a15, hi:Line_Right
	st.h	[%a15] lo:Line_Right, %d15
	.loc 1 75 0
	mov	%d15, 66
	movh.a	%a15, hi:Offset
	st.h	[%a15] lo:Offset, %d15
.L11:
	.loc 1 77 0
	call	InfineonRacer_DetectDashline
.LVL4:
	.loc 1 78 0
	call	InfineonRacer_DetectObstacle
.LVL5:
.L13:
	.loc 1 108 0
	call	InfineonRacer_PDControlSteer
.LVL6:
	movh.a	%a15, hi:IR_Srv
	st.w	[%a15] lo:IR_Srv, %d2
	.loc 1 110 0
	movh.a	%a15, hi:Duty_Motor
	ld.w	%d4, [%a15] lo:Duty_Motor
	movh.a	%a15, hi:MotorDutyRef
	call	InfineonRacer_RefMotor
.LVL7:
	st.w	[%a15] lo:MotorDutyRef, %d2
	.loc 1 111 0
	movh.a	%a15, hi:IR_Motor
	st.w	[%a15] lo:IR_Motor, %d2
.L2:
	ret
.L10:
	.loc 1 95 0
	movh.a	%a2, hi:cnt_cross
	ld.h	%d15, [%a2] lo:cnt_cross
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	st.h	[%a2] lo:cnt_cross, %d15
	.loc 1 96 0
	ge.u	%d15, %d15, 21
	jnz	%d15, .L12
	.loc 1 98 0
	mov	%d15, 27
	movh.a	%a15, hi:Line_Left
	st.h	[%a15] lo:Line_Left, %d15
	.loc 1 99 0
	mov	%d15, 105
	movh.a	%a15, hi:Line_Right
	st.h	[%a15] lo:Line_Right, %d15
	.loc 1 100 0
	mov	%d15, 66
	movh.a	%a15, hi:Offset
	st.h	[%a15] lo:Offset, %d15
	j	.L13
.L6:
	.loc 1 66 0
	mov	%d15, 2
	st.b	[%a15] lo:State_Track, %d15
	.loc 1 68 0
	ret
.L8:
	.loc 1 86 0
	j	InfineonRacer_AvoidObstacle
.LVL8:
.L9:
	.loc 1 90 0
	mov	%d15, 5
	st.b	[%a15] lo:State_Track, %d15
	.loc 1 91 0
	mov	%d15, 0
	movh.a	%a15, hi:cnt_cross
	st.h	[%a15] lo:cnt_cross, %d15
	.loc 1 92 0
	ret
.L12:
	.loc 1 104 0
	mov	%d15, 0
	st.b	[%a15] lo:State_Track, %d15
	.loc 1 105 0
	mov	%d15, 0
	st.h	[%a2] lo:cnt_cross, %d15
	j	.L13
.LFE884:
	.size	InfineonRacer_control, .-InfineonRacer_control
.section .text.InfineonRacer_runRadar,"ax",@progbits
	.align 1
	.global	InfineonRacer_runRadar
	.type	InfineonRacer_runRadar, @function
InfineonRacer_runRadar:
.LFB885:
	.loc 1 119 0
	.loc 1 120 0
	movh.a	%a3, hi:IR_Radar_index
	ld.hu	%d15, [%a3] lo:IR_Radar_index
	movh.a	%a15, hi:IR_Radar
	lea	%a15, [%a15] lo:IR_Radar
	addsc.a	%a15, %a15, %d15, 1
	movh.a	%a2, hi:IR_Radar_dist
	ld.h	%d2, [%a2] lo:IR_Radar_dist
	st.h	[%a15]0, %d2
	.loc 1 121 0
	lt.u	%d15, %d15, 24
	jnz	%d15, .L15
	.loc 1 121 0 is_stmt 0 discriminator 1
	mov	%d15, 24
	st.h	[%a3] lo:IR_Radar_index, %d15
.L15:
	ret
.LFE885:
	.size	InfineonRacer_runRadar, .-InfineonRacer_runRadar
.section .text.InfineonRacer_checkEdge,"ax",@progbits
	.align 1
	.global	InfineonRacer_checkEdge
	.type	InfineonRacer_checkEdge, @function
InfineonRacer_checkEdge:
.LFB886:
	.loc 1 124 0 is_stmt 1
	.loc 1 125 0
	movh.a	%a15, hi:IR_Port
	lea	%a15, [%a15] lo:IR_Port
	ld.bu	%d15, [%a15] 3
	jeq	%d15, 1, .L20
	ret
.L20:
	.loc 1 127 0
	mov	%d15, 0
	movh.a	%a15, hi:IR_Radar_index
	st.h	[%a15] lo:IR_Radar_index, %d15
	.loc 1 128 0
	movh.a	%a15, hi:State_Track
	ld.bu	%d15, [%a15] lo:State_Track
	jeq	%d15, 5, .L21
	.loc 1 135 0
	movh	%d4, 16256
	j	IR_setSrvScanAngle
.LVL9:
.L21:
	.loc 1 130 0
	movh	%d4, 49024
	call	IR_setSrvScanAngle
.LVL10:
	.loc 1 131 0
	mov	%d4, 0
	j	IR_setSrvScanAngle
.LVL11:
.LFE886:
	.size	InfineonRacer_checkEdge, .-InfineonRacer_checkEdge
	.global	cnt_cross
.section .bss.cnt_cross,"aw",@nobits
	.align 1
	.type	cnt_cross, @object
	.size	cnt_cross, 2
cnt_cross:
	.zero	2
	.global	Duty_Motor
.section .data.Duty_Motor,"aw",@progbits
	.align 2
	.type	Duty_Motor, @object
	.size	Duty_Motor, 4
Duty_Motor:
	.word	1049918177
	.global	test_val
.section .bss.test_val,"aw",@nobits
	.align 1
	.type	test_val, @object
	.size	test_val, 2
test_val:
	.zero	2
	.global	State_Track
.section .bss.State_Track,"aw",@nobits
	.type	State_Track, @object
	.size	State_Track, 1
State_Track:
	.zero	1
	.global	IR_Radar_dist
.section .bss.IR_Radar_dist,"aw",@nobits
	.align 1
	.type	IR_Radar_dist, @object
	.size	IR_Radar_dist, 2
IR_Radar_dist:
	.zero	2
	.global	IR_Radar_index
.section .bss.IR_Radar_index,"aw",@nobits
	.align 1
	.type	IR_Radar_index, @object
	.size	IR_Radar_index, 2
IR_Radar_index:
	.zero	2
	.global	IR_Radar
.section .data.IR_Radar,"aw",@progbits
	.align 1
	.type	IR_Radar, @object
	.size	IR_Radar, 48
IR_Radar:
	.short	1300
	.zero	46
	.global	IR_Ctrl
.section .data.IR_Ctrl,"aw",@progbits
	.align 2
	.type	IR_Ctrl, @object
	.size	IR_Ctrl, 12
IR_Ctrl:
	.word	64
	.word	64
	.byte	0
	.zero	3
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
	.file 4 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h"
	.file 5 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
	.file 6 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicPort.h"
	.file 7 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicGtmTom.h"
	.file 8 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Console.h"
	.file 9 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/InfineonRacer.h"
	.file 10 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h"
	.file 11 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Assert.h"
	.file 12 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/Q_Linescan.h"
	.file 13 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/Q_Control.h"
	.file 14 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/Ccu6IcuDemo.h"
	.file 15 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/I2cBasicDemo.h"
	.file 16 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/Q_CollisionAvoidance.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xeee
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/InfineonRacer.c"
	.string	"D:\\\\MinKyu_AurixRacer\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
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
	.uaword	0x1f7
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x212
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x5c
	.uaword	0x1a1
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x1ad
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x5e
	.uaword	0x198
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x68
	.uaword	0x1d8
	.uleb128 0x3
	.string	"sint64"
	.byte	0x3
	.byte	0x24
	.uaword	0x27a
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
	.uaword	0x2b5
	.uleb128 0x6
	.uleb128 0x3
	.string	"Ifx_TickTime"
	.byte	0x3
	.byte	0x3e
	.uaword	0x26c
	.uleb128 0x3
	.string	"Ifx_SizeT"
	.byte	0x3
	.byte	0x4b
	.uaword	0x1e9
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.byte	0x7e
	.uaword	0x301
	.uleb128 0x8
	.string	"module"
	.byte	0x3
	.byte	0x80
	.uaword	0x2af
	.byte	0
	.uleb128 0x8
	.string	"index"
	.byte	0x3
	.byte	0x81
	.uaword	0x228
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x82
	.uaword	0x2db
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
	.byte	0xa
	.byte	0x76
	.uaword	0x387
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
	.uaword	0x2ad
	.uleb128 0x3
	.string	"IfxStdIf_DPipe"
	.byte	0x5
	.byte	0x33
	.uaword	0x3bd
	.uleb128 0xb
	.string	"IfxStdIf_DPipe_"
	.byte	0x4c
	.byte	0x5
	.byte	0xd5
	.uaword	0x53c
	.uleb128 0x8
	.string	"driver"
	.byte	0x5
	.byte	0xd7
	.uaword	0x387
	.byte	0
	.uleb128 0x8
	.string	"txDisabled"
	.byte	0x5
	.byte	0xd8
	.uaword	0x25d
	.byte	0x4
	.uleb128 0x8
	.string	"write"
	.byte	0x5
	.byte	0xdb
	.uaword	0x588
	.byte	0x8
	.uleb128 0x8
	.string	"read"
	.byte	0x5
	.byte	0xdc
	.uaword	0x5cf
	.byte	0xc
	.uleb128 0x8
	.string	"getReadCount"
	.byte	0x5
	.byte	0xdd
	.uaword	0x5ea
	.byte	0x10
	.uleb128 0x8
	.string	"getReadEvent"
	.byte	0x5
	.byte	0xde
	.uaword	0x623
	.byte	0x14
	.uleb128 0x8
	.string	"getWriteCount"
	.byte	0x5
	.byte	0xdf
	.uaword	0x6d0
	.byte	0x18
	.uleb128 0x8
	.string	"getWriteEvent"
	.byte	0x5
	.byte	0xe0
	.uaword	0x6f4
	.byte	0x1c
	.uleb128 0x8
	.string	"canReadCount"
	.byte	0x5
	.byte	0xe1
	.uaword	0x72e
	.byte	0x20
	.uleb128 0x8
	.string	"canWriteCount"
	.byte	0x5
	.byte	0xe2
	.uaword	0x771
	.byte	0x24
	.uleb128 0x8
	.string	"flushTx"
	.byte	0x5
	.byte	0xe3
	.uaword	0x795
	.byte	0x28
	.uleb128 0x8
	.string	"clearTx"
	.byte	0x5
	.byte	0xe4
	.uaword	0x7fe
	.byte	0x2c
	.uleb128 0x8
	.string	"clearRx"
	.byte	0x5
	.byte	0xe5
	.uaword	0x7ce
	.byte	0x30
	.uleb128 0x8
	.string	"onReceive"
	.byte	0x5
	.byte	0xe6
	.uaword	0x81c
	.byte	0x34
	.uleb128 0x8
	.string	"onTransmit"
	.byte	0x5
	.byte	0xe7
	.uaword	0x83c
	.byte	0x38
	.uleb128 0x8
	.string	"onError"
	.byte	0x5
	.byte	0xe8
	.uaword	0x85d
	.byte	0x3c
	.uleb128 0x8
	.string	"getSendCount"
	.byte	0x5
	.byte	0xea
	.uaword	0x65c
	.byte	0x40
	.uleb128 0x8
	.string	"getTxTimeStamp"
	.byte	0x5
	.byte	0xeb
	.uaword	0x695
	.byte	0x44
	.uleb128 0x8
	.string	"resetSendCount"
	.byte	0x5
	.byte	0xec
	.uaword	0x87b
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_WriteEvent"
	.byte	0x5
	.byte	0x35
	.uaword	0x55d
	.uleb128 0x5
	.byte	0x4
	.uaword	0x563
	.uleb128 0xc
	.uaword	0x25d
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ReadEvent"
	.byte	0x5
	.byte	0x36
	.uaword	0x55d
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Write"
	.byte	0x5
	.byte	0x48
	.uaword	0x5a4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x5aa
	.uleb128 0xd
	.byte	0x1
	.uaword	0x25d
	.uaword	0x5c9
	.uleb128 0xe
	.uaword	0x387
	.uleb128 0xe
	.uaword	0x2ad
	.uleb128 0xe
	.uaword	0x5c9
	.uleb128 0xe
	.uaword	0x2b6
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2ca
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Read"
	.byte	0x5
	.byte	0x57
	.uaword	0x5a4
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadCount"
	.byte	0x5
	.byte	0x5f
	.uaword	0x60d
	.uleb128 0x5
	.byte	0x4
	.uaword	0x613
	.uleb128 0xd
	.byte	0x1
	.uaword	0x228
	.uaword	0x623
	.uleb128 0xe
	.uaword	0x387
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadEvent"
	.byte	0x5
	.byte	0x67
	.uaword	0x646
	.uleb128 0x5
	.byte	0x4
	.uaword	0x64c
	.uleb128 0xd
	.byte	0x1
	.uaword	0x568
	.uaword	0x65c
	.uleb128 0xe
	.uaword	0x387
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetSendCount"
	.byte	0x5
	.byte	0x6f
	.uaword	0x67f
	.uleb128 0x5
	.byte	0x4
	.uaword	0x685
	.uleb128 0xd
	.byte	0x1
	.uaword	0x236
	.uaword	0x695
	.uleb128 0xe
	.uaword	0x387
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetTxTimeStamp"
	.byte	0x5
	.byte	0x77
	.uaword	0x6ba
	.uleb128 0x5
	.byte	0x4
	.uaword	0x6c0
	.uleb128 0xd
	.byte	0x1
	.uaword	0x2b6
	.uaword	0x6d0
	.uleb128 0xe
	.uaword	0x387
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteCount"
	.byte	0x5
	.byte	0x7f
	.uaword	0x60d
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteEvent"
	.byte	0x5
	.byte	0x87
	.uaword	0x718
	.uleb128 0x5
	.byte	0x4
	.uaword	0x71e
	.uleb128 0xd
	.byte	0x1
	.uaword	0x53c
	.uaword	0x72e
	.uleb128 0xe
	.uaword	0x387
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanReadCount"
	.byte	0x5
	.byte	0x92
	.uaword	0x751
	.uleb128 0x5
	.byte	0x4
	.uaword	0x757
	.uleb128 0xd
	.byte	0x1
	.uaword	0x25d
	.uaword	0x771
	.uleb128 0xe
	.uaword	0x387
	.uleb128 0xe
	.uaword	0x2ca
	.uleb128 0xe
	.uaword	0x2b6
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanWriteCount"
	.byte	0x5
	.byte	0x9d
	.uaword	0x751
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_FlushTx"
	.byte	0x5
	.byte	0xa6
	.uaword	0x7b3
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7b9
	.uleb128 0xd
	.byte	0x1
	.uaword	0x25d
	.uaword	0x7ce
	.uleb128 0xe
	.uaword	0x387
	.uleb128 0xe
	.uaword	0x2b6
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearRx"
	.byte	0x5
	.byte	0xad
	.uaword	0x7ec
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7f2
	.uleb128 0xf
	.byte	0x1
	.uaword	0x7fe
	.uleb128 0xe
	.uaword	0x387
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearTx"
	.byte	0x5
	.byte	0xb4
	.uaword	0x7ec
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnReceive"
	.byte	0x5
	.byte	0xbc
	.uaword	0x7ec
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnTransmit"
	.byte	0x5
	.byte	0xc3
	.uaword	0x7ec
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnError"
	.byte	0x5
	.byte	0xca
	.uaword	0x7ec
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ResetSendCount"
	.byte	0x5
	.byte	0xd1
	.uaword	0x7ec
	.uleb128 0x7
	.byte	0x8
	.byte	0x6
	.byte	0x2e
	.uaword	0x922
	.uleb128 0x8
	.string	"led0"
	.byte	0x6
	.byte	0x30
	.uaword	0x563
	.byte	0
	.uleb128 0x8
	.string	"led1"
	.byte	0x6
	.byte	0x31
	.uaword	0x563
	.byte	0x1
	.uleb128 0x8
	.string	"led2"
	.byte	0x6
	.byte	0x32
	.uaword	0x563
	.byte	0x2
	.uleb128 0x8
	.string	"port00_0"
	.byte	0x6
	.byte	0x33
	.uaword	0x563
	.byte	0x3
	.uleb128 0x8
	.string	"port00_1"
	.byte	0x6
	.byte	0x34
	.uaword	0x563
	.byte	0x4
	.uleb128 0x8
	.string	"m_inh_u"
	.byte	0x6
	.byte	0x3c
	.uaword	0x563
	.byte	0x5
	.uleb128 0x8
	.string	"m_inh_v"
	.byte	0x6
	.byte	0x3d
	.uaword	0x563
	.byte	0x6
	.uleb128 0x8
	.string	"m_inh_w"
	.byte	0x6
	.byte	0x3e
	.uaword	0x563
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.string	"Basic_Port"
	.byte	0x6
	.byte	0x40
	.uaword	0x8a0
	.uleb128 0x7
	.byte	0x10
	.byte	0x7
	.byte	0x5f
	.uaword	0x988
	.uleb128 0x8
	.string	"Motor0Vol"
	.byte	0x7
	.byte	0x60
	.uaword	0x244
	.byte	0
	.uleb128 0x8
	.string	"Motor0VolU"
	.byte	0x7
	.byte	0x61
	.uaword	0x244
	.byte	0x4
	.uleb128 0x8
	.string	"Motor0VolV"
	.byte	0x7
	.byte	0x62
	.uaword	0x244
	.byte	0x8
	.uleb128 0x8
	.string	"Motor0VolW"
	.byte	0x7
	.byte	0x63
	.uaword	0x244
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"IR_Motor_t"
	.byte	0x7
	.byte	0x64
	.uaword	0x934
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.byte	0x66
	.uaword	0x9b1
	.uleb128 0x8
	.string	"Angle"
	.byte	0x7
	.byte	0x67
	.uaword	0x244
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"IR_Srv_t"
	.byte	0x7
	.byte	0x68
	.uaword	0x99a
	.uleb128 0x7
	.byte	0x8
	.byte	0x8
	.byte	0x26
	.uaword	0x9eb
	.uleb128 0x8
	.string	"standardIo"
	.byte	0x8
	.byte	0x28
	.uaword	0x9eb
	.byte	0
	.uleb128 0x8
	.string	"align"
	.byte	0x8
	.byte	0x29
	.uaword	0x1e9
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x3a7
	.uleb128 0x3
	.string	"Ifx_Console"
	.byte	0x8
	.byte	0x2a
	.uaword	0x9c1
	.uleb128 0x7
	.byte	0xc
	.byte	0x9
	.byte	0x22
	.uaword	0xa43
	.uleb128 0x8
	.string	"Ls0Margin"
	.byte	0x9
	.byte	0x23
	.uaword	0x228
	.byte	0
	.uleb128 0x8
	.string	"Ls1Margin"
	.byte	0x9
	.byte	0x24
	.uaword	0x228
	.byte	0x4
	.uleb128 0x8
	.string	"basicTest"
	.byte	0x9
	.byte	0x25
	.uaword	0x25d
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"InfineonRacer_t"
	.byte	0x9
	.byte	0x26
	.uaword	0xa04
	.uleb128 0x9
	.byte	0x1
	.byte	0x9
	.byte	0x28
	.uaword	0xa9f
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
	.uaword	0xa5a
	.uleb128 0x10
	.byte	0x1
	.string	"InfineonRacer_init"
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.uaword	.LFB883
	.uaword	.LFE883
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb1b
	.uleb128 0x11
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x31
	.uaword	0x1c2
	.byte	0x1
	.uaword	0xae8
	.uleb128 0x12
	.byte	0
	.uleb128 0x13
	.uaword	.LVL0
	.uaword	0xdd2
	.uleb128 0x13
	.uaword	.LVL1
	.uaword	0xde9
	.uleb128 0x13
	.uaword	.LVL2
	.uaword	0xdfc
	.uleb128 0x14
	.uaword	.LVL3
	.byte	0x1
	.uaword	0xe14
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x198
	.byte	0x4
	.uaword	0x3f800000
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"InfineonRacer_control"
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.uaword	.LFB884
	.uaword	.LFE884
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb74
	.uleb128 0x13
	.uaword	.LVL4
	.uaword	0xe37
	.uleb128 0x13
	.uaword	.LVL5
	.uaword	0xe5a
	.uleb128 0x13
	.uaword	.LVL6
	.uaword	0xe7d
	.uleb128 0x13
	.uaword	.LVL7
	.uaword	0xea4
	.uleb128 0x16
	.uaword	.LVL8
	.byte	0x1
	.uaword	0xecf
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"InfineonRacer_runRadar"
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.uaword	.LFB885
	.uaword	.LFE885
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.string	"InfineonRacer_checkEdge"
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.uaword	.LFB886
	.uaword	.LFE886
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc14
	.uleb128 0x18
	.uaword	.LVL9
	.byte	0x1
	.uaword	0xe14
	.uaword	0xbe2
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x198
	.byte	0x4
	.uaword	0x3f800000
	.byte	0
	.uleb128 0x19
	.uaword	.LVL10
	.uaword	0xe14
	.uaword	0xbfc
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x198
	.byte	0x4
	.uaword	0xbf800000
	.byte	0
	.uleb128 0x14
	.uaword	.LVL11
	.byte	0x1
	.uaword	0xe14
	.uleb128 0x15
	.byte	0x1
	.byte	0x54
	.byte	0x8
	.byte	0xf4
	.uleb128 0x198
	.byte	0x4
	.uaword	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x301
	.uaword	0xc24
	.uleb128 0x1b
	.uaword	0x32b
	.byte	0x2
	.byte	0
	.uleb128 0x1c
	.string	"IfxCpu_cfg_indexMap"
	.byte	0xa
	.byte	0x96
	.uaword	0xc41
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.uaword	0xc14
	.uleb128 0x1c
	.string	"Assert_verboseLevel"
	.byte	0xb
	.byte	0x79
	.uaword	0x236
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.string	"IR_Port"
	.byte	0x6
	.byte	0x4e
	.uaword	0x922
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.string	"IR_Motor"
	.byte	0x7
	.byte	0x6d
	.uaword	0x988
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.string	"IR_Srv"
	.byte	0x7
	.byte	0x6e
	.uaword	0x9b1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.string	"Ifx_g_console"
	.byte	0x8
	.byte	0x2c
	.uaword	0x9f1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.string	"Line_Left"
	.byte	0xc
	.byte	0x2b
	.uaword	0x204
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.string	"Line_Right"
	.byte	0xc
	.byte	0x2c
	.uaword	0x204
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.string	"Offset"
	.byte	0xc
	.byte	0x31
	.uaword	0x204
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.string	"MotorDutyRef"
	.byte	0xd
	.byte	0x25
	.uaword	0x198
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.string	"IR_Ctrl"
	.byte	0x1
	.byte	0x16
	.uaword	0xa43
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IR_Ctrl
	.uleb128 0x1a
	.uaword	0x204
	.uaword	0xd20
	.uleb128 0x1b
	.uaword	0x32b
	.byte	0x17
	.byte	0
	.uleb128 0x1e
	.string	"IR_Radar"
	.byte	0x1
	.byte	0x19
	.uaword	0xd10
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IR_Radar
	.uleb128 0x1e
	.string	"IR_Radar_dist"
	.byte	0x1
	.byte	0x1b
	.uaword	0x204
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IR_Radar_dist
	.uleb128 0x1e
	.string	"IR_Radar_index"
	.byte	0x1
	.byte	0x1a
	.uaword	0x204
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IR_Radar_index
	.uleb128 0x1e
	.string	"State_Track"
	.byte	0x1
	.byte	0x1d
	.uaword	0xa9f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	State_Track
	.uleb128 0x1e
	.string	"Duty_Motor"
	.byte	0x1
	.byte	0x21
	.uaword	0x198
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Duty_Motor
	.uleb128 0x1e
	.string	"cnt_cross"
	.byte	0x1
	.byte	0x23
	.uaword	0x204
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	cnt_cross
	.uleb128 0x1e
	.string	"test_val"
	.byte	0x1
	.byte	0x1f
	.uaword	0x204
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	test_val
	.uleb128 0x1f
	.byte	0x1
	.string	"Ccu6IcuDemo_init"
	.byte	0xe
	.byte	0x4d
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x31
	.uaword	0x1c2
	.byte	0x1
	.uaword	0xdfc
	.uleb128 0x12
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"I2cBasicDemo_init"
	.byte	0xf
	.byte	0x43
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.string	"IR_setSrvScanAngle"
	.byte	0x7
	.byte	0x77
	.byte	0x1
	.byte	0x1
	.uaword	0xe37
	.uleb128 0xe
	.uaword	0x244
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"InfineonRacer_DetectDashline"
	.byte	0xc
	.byte	0x3c
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.byte	0x1
	.string	"InfineonRacer_DetectObstacle"
	.byte	0x10
	.byte	0x1c
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.string	"InfineonRacer_PDControlSteer"
	.byte	0xd
	.byte	0x2b
	.byte	0x1
	.uaword	0x198
	.byte	0x1
	.uleb128 0x22
	.byte	0x1
	.string	"InfineonRacer_RefMotor"
	.byte	0xd
	.byte	0x2c
	.byte	0x1
	.uaword	0x198
	.byte	0x1
	.uaword	0xecf
	.uleb128 0xe
	.uaword	0x198
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"InfineonRacer_AvoidObstacle"
	.byte	0x10
	.byte	0x1d
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x34
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"IR_Encoder_init"
	.extern	IR_Port,STT_OBJECT,8
	.extern	InfineonRacer_AvoidObstacle,STT_FUNC,0
	.extern	IR_Motor,STT_OBJECT,16
	.extern	InfineonRacer_RefMotor,STT_FUNC,0
	.extern	MotorDutyRef,STT_OBJECT,4
	.extern	IR_Srv,STT_OBJECT,4
	.extern	InfineonRacer_PDControlSteer,STT_FUNC,0
	.extern	InfineonRacer_DetectObstacle,STT_FUNC,0
	.extern	InfineonRacer_DetectDashline,STT_FUNC,0
	.extern	Offset,STT_OBJECT,2
	.extern	Line_Right,STT_OBJECT,2
	.extern	Line_Left,STT_OBJECT,2
	.extern	IR_setSrvScanAngle,STT_FUNC,0
	.extern	I2cBasicDemo_init,STT_FUNC,0
	.extern	IR_Encoder_init,STT_FUNC,0
	.extern	Ccu6IcuDemo_init,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
