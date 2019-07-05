	.file	"Q_Control.c"
.section .text,"ax",@progbits
.Ltext0:
	.global	__extendsfdf2
	.global	__muldf3
	.global	__adddf3
	.global	__truncdfsf2
	.global	__gtdf2
	.global	__ltdf2
.section .text.InfineonRacer_PDControlSteer,"ax",@progbits
	.align 1
	.global	InfineonRacer_PDControlSteer
	.type	InfineonRacer_PDControlSteer, @function
InfineonRacer_PDControlSteer:
.LFB883:
	.file 1 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/Q_Control.c"
	.loc 1 25 0
.LVL0:
	.loc 1 30 0
	movh.a	%a15, hi:Offset
	ld.h	%d10, [%a15] lo:Offset
	movh.a	%a15, hi:Error_Steer
	addi	%d10, %d10, -66
	extr.u	%d10, %d10, 0, 16
	extr	%d15, %d10, 0, 16
	.loc 1 32 0
	itof	%d4, %d15
	.loc 1 30 0
	st.h	[%a15] lo:Error_Steer, %d15
.LVL1:
	.loc 1 32 0
	movh.a	%a15, hi:P_Steer
	ld.w	%d2, [%a15] lo:P_Steer
	.loc 1 31 0
	movh.a	%a15, hi:Error_Old_Steer
	.loc 1 32 0
	mul.f	%d4, %d4, %d2
	call	__extendsfdf2
.LVL2:
	.loc 1 31 0
	ld.hu	%d4, [%a15] lo:Error_Old_Steer
.LVL3:
	.loc 1 32 0
	mov	%e8, %d3, %d2
	.loc 1 31 0
	sub	%d4, %d15, %d4
.LVL4:
	itof	%d4, %d4
	.loc 1 32 0
	movh	%d2, 15524
	addi	%d2, %d2, -10486
	div.f	%d4, %d4, %d2
	call	__extendsfdf2
.LVL5:
	movh.a	%a2, hi:D_Steer
	lea	%a2, [%a2] lo:D_Steer
	ld.d	%e6, [%a2]0
	mov	%e4, %d3, %d2
	call	__muldf3
.LVL6:
	mov	%e6, %d3, %d2
	mov	%e4, %d9, %d8
	call	__adddf3
.LVL7:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL8:
	.loc 1 34 0
	mov	%d4, %d2
	.loc 1 32 0
	mov	%d15, %d2
	.loc 1 34 0
	call	__extendsfdf2
.LVL9:
	movh	%d7, 16346
	movh	%d6, 39322
	mov	%e4, %d3, %d2
	addi	%d7, %d7, -26215
	addi	%d6, %d6, -26214
	mov	%e8, %d3, %d2
	call	__gtdf2
.LVL10:
	jgtz	%d2, .L10
	.loc 1 35 0
	movh	%d7, 49114
	movh	%d6, 39322
	mov	%e4, %d9, %d8
	addi	%d7, %d7, -26215
	addi	%d6, %d6, -26214
	call	__ltdf2
.LVL11:
	jgez	%d2, .L8
	.loc 1 35 0 is_stmt 0 discriminator 1
	movh	%d15, 48845
	addi	%d15, %d15, -13107
.L8:
	movh.a	%a2, hi:SteerDuty
	st.w	[%a2] lo:SteerDuty, %d15
	.loc 1 38 0 is_stmt 1 discriminator 1
	movh.a	%a2, hi:SteerDuty0
	ld.w	%d2, [%a2] lo:SteerDuty0
.LVL12:
	.loc 1 39 0 discriminator 1
	st.h	[%a15] lo:Error_Old_Steer, %d10
	.loc 1 42 0 discriminator 1
	add.f	%d2, %d15, %d2
.LVL13:
	ret
.LVL14:
.L10:
	.loc 1 34 0 discriminator 1
	movh	%d15, 16077
	addi	%d15, %d15, -13107
	movh.a	%a2, hi:SteerDuty
	.loc 1 39 0 discriminator 1
	st.h	[%a15] lo:Error_Old_Steer, %d10
	.loc 1 34 0 discriminator 1
	st.w	[%a2] lo:SteerDuty, %d15
	.loc 1 38 0 discriminator 1
	movh.a	%a2, hi:SteerDuty0
	ld.w	%d2, [%a2] lo:SteerDuty0
.LVL15:
	.loc 1 42 0 discriminator 1
	add.f	%d2, %d15, %d2
.LVL16:
	ret
.LFE883:
	.size	InfineonRacer_PDControlSteer, .-InfineonRacer_PDControlSteer
	.global	__subdf3
	.global	__divdf3
.section .text.InfineonRacer_RefMotor,"ax",@progbits
	.align 1
	.global	InfineonRacer_RefMotor
	.type	InfineonRacer_RefMotor, @function
InfineonRacer_RefMotor:
.LFB884:
	.loc 1 45 0
.LVL17:
	.loc 1 50 0
	movh.a	%a15, hi:State_Track
	ld.bu	%d15, [%a15] lo:State_Track
	.loc 1 45 0
	mov	%d8, %d4
	.loc 1 50 0
	add	%d15, -2
	and	%d15, 255
	.loc 1 52 0
	movh.a	%a15, hi:SteerDuty
	.loc 1 50 0
	jlt.u	%d15, 2, .L22
.LVL18:
	.loc 1 60 0
	ld.w	%d4, [%a15] lo:SteerDuty
.LVL19:
	movh.a	%a15, hi:SteerDuty0
	ld.w	%d15, [%a15] lo:SteerDuty0
.LBB4:
.LBB5:
	.loc 1 72 0
	add.f	%d4, %d4, %d15
.LVL20:
	call	__extendsfdf2
.LVL21:
	mov	%e6, %d3, %d2
	mov	%e4, %d3, %d2
	call	__muldf3
.LVL22:
	mov	%e4, %d3, %d2
	movh	%d7, 16324
	movh	%d6, 16384
	addi	%d7, %d7, 31457
	call	__adddf3
.LVL23:
	movh	%d5, 16304
	mov	%e6, %d3, %d2
	movh	%d4, 49152
	addi	%d5, %d5, 25165
	call	__divdf3
.LVL24:
	mov	%e4, %d3, %d2
	j	__truncdfsf2
.LVL25:
.L22:
.LBE5:
.LBE4:
	.loc 1 52 0
	ld.w	%d15, [%a15] lo:SteerDuty
	movh.a	%a15, hi:SteerDuty0
	mov	%d2, 0
	ld.w	%d4, [%a15] lo:SteerDuty0
.LVL26:
	cmp.f	%d2, %d15, %d2
	add.f	%d4, %d15, %d4
	jz.t	%d2, 2, .L21
	.loc 1 52 0 is_stmt 0 discriminator 1
	call	__extendsfdf2
.LVL27:
	mov	%e4, %d3, %d2
	movh	%d7, 16330
	movh	%d6, 39322
	addi	%d7, %d7, -26215
	addi	%d6, %d6, -26214
	call	__subdf3
.LVL28:
	mov	%e4, %d3, %d2
	mov	%e6, %d3, %d2
	call	__adddf3
.LVL29:
	movh	%d5, 16330
	mov	%e6, %d3, %d2
	movh	%d4, 40960
	addi	%d5, %d5, -26215
	call	__subdf3
.LVL30:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL31:
.L15:
	.loc 1 55 0 is_stmt 1
	cmp.f	%d8, %d2, %d8
.LVL32:
	jnz.t	%d8, 2, .L18
	.loc 1 56 0
	movh	%d15, 15949
	addi	%d15, %d15, -13107
	cmp.f	%d15, %d2, %d15
	jz.t	%d15, 0, .L16
.L18:
	.loc 1 55 0
	movh	%d2, 15918
.LVL33:
	addi	%d2, %d2, 5243
.L16:
.LVL34:
	.loc 1 64 0
	ret
.LVL35:
.L21:
	.loc 1 53 0
	call	__extendsfdf2
.LVL36:
	mov	%e4, %d3, %d2
	movh	%d7, 16330
	movh	%d6, 39322
	addi	%d7, %d7, -26215
	addi	%d6, %d6, -26214
	call	__adddf3
.LVL37:
	mov	%e6, %d3, %d2
	mov	%e4, %d3, %d2
	call	__adddf3
.LVL38:
	mov	%e4, %d3, %d2
	movh	%d7, 16330
	movh	%d6, 40960
	addi	%d7, %d7, -26215
	call	__adddf3
.LVL39:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL40:
	j	.L15
.LFE884:
	.size	InfineonRacer_RefMotor, .-InfineonRacer_RefMotor
.section .text.InfineonRacer_SpeedCommand,"ax",@progbits
	.align 1
	.global	InfineonRacer_SpeedCommand
	.type	InfineonRacer_SpeedCommand, @function
InfineonRacer_SpeedCommand:
.LFB885:
	.loc 1 67 0
.LVL41:
	.loc 1 72 0
	call	__extendsfdf2
.LVL42:
	mov	%e6, %d3, %d2
	mov	%e4, %d3, %d2
	call	__muldf3
.LVL43:
	mov	%e4, %d3, %d2
	movh	%d7, 16324
	movh	%d6, 16384
	addi	%d7, %d7, 31457
	call	__adddf3
.LVL44:
	movh	%d5, 16304
	mov	%e6, %d3, %d2
	movh	%d4, 49152
	addi	%d5, %d5, 25165
	call	__divdf3
.LVL45:
	mov	%e4, %d3, %d2
	.loc 1 75 0
	j	__truncdfsf2
.LVL46:
.LFE885:
	.size	InfineonRacer_SpeedCommand, .-InfineonRacer_SpeedCommand
	.global	__floatsidf
.section .text.InfineonRacer_CalSpeed,"ax",@progbits
	.align 1
	.global	InfineonRacer_CalSpeed
	.type	InfineonRacer_CalSpeed, @function
InfineonRacer_CalSpeed:
.LFB886:
	.loc 1 78 0
.LVL47:
	movh.a	%a3, hi:Stack_Pulse
	.loc 1 78 0
	mov	%d15, 0
	.loc 1 80 0
	mov	%d4, 0
	lea	%a3, [%a3] lo:Stack_Pulse
	mov.a	%a15, 9
.LVL48:
.L25:
	.loc 1 82 0 discriminator 3
	addsc.a	%a2, %a3, %d15, 1
	add	%d15, 1
.LVL49:
	ld.h	%d2, [%a2]0
	add	%d4, %d2
.LVL50:
	extr.u	%d4, %d4, 0, 16
.LVL51:
	.loc 1 81 0 discriminator 3
	loop	%a15, .L25
	.loc 1 85 0
	call	__floatsidf
.LVL52:
	mov	%e4, %d3, %d2
	movh	%d7, 16280
	movh	%d6, 19923
	addi	%d7, %d7, 4194
	addi	%d6, %d6, -3670
	call	__muldf3
.LVL53:
	mov	%e4, %d3, %d2
	movh.a	%a15, hi:Speed
	call	__truncdfsf2
.LVL54:
	st.w	[%a15] lo:Speed, %d2
	.loc 1 86 0
	mov	%d2, 0
	movh.a	%a15, hi:cnt_enc
	st.h	[%a15] lo:cnt_enc, %d2
	.loc 1 87 0
	movh.a	%a15, hi:Pulse_index
	ld.h	%d15, [%a15] lo:Pulse_index
	add	%d15, 1
	extr.u	%d15, %d15, 0, 16
	.loc 1 88 0
	jlt.u	%d15, 10, .L29
	.loc 1 89 0
	st.h	[%a15] lo:Pulse_index, %d2
	ret
.L29:
	.loc 1 87 0
	st.h	[%a15] lo:Pulse_index, %d15
	ret
.LFE886:
	.size	InfineonRacer_CalSpeed, .-InfineonRacer_CalSpeed
.section .text.InfineonRacer_PIDConSpeed,"ax",@progbits
	.align 1
	.global	InfineonRacer_PIDConSpeed
	.type	InfineonRacer_PIDConSpeed, @function
InfineonRacer_PIDConSpeed:
.LFB887:
	.loc 1 94 0
.LVL55:
	ret
.LFE887:
	.size	InfineonRacer_PIDConSpeed, .-InfineonRacer_PIDConSpeed
	.global	Pulse_index
.section .bss.Pulse_index,"aw",@nobits
	.align 1
	.type	Pulse_index, @object
	.size	Pulse_index, 2
Pulse_index:
	.zero	2
	.global	Stack_Pulse
.section .bss.Stack_Pulse,"aw",@nobits
	.align 1
	.type	Stack_Pulse, @object
	.size	Stack_Pulse, 20
Stack_Pulse:
	.zero	20
	.global	Speed
.section .bss.Speed,"aw",@nobits
	.align 2
	.type	Speed, @object
	.size	Speed, 4
Speed:
	.zero	4
	.global	MotorDutyRef
.section .bss.MotorDutyRef,"aw",@nobits
	.align 2
	.type	MotorDutyRef, @object
	.size	MotorDutyRef, 4
MotorDutyRef:
	.zero	4
	.global	D_Steer
.section .bss.D_Steer,"aw",@nobits
	.align 2
	.type	D_Steer, @object
	.size	D_Steer, 8
D_Steer:
	.zero	8
	.global	P_Steer
.section .data.P_Steer,"aw",@progbits
	.align 2
	.type	P_Steer, @object
	.size	P_Steer, 4
P_Steer:
	.word	1001666904
	.global	Error_Old_Steer
.section .bss.Error_Old_Steer,"aw",@nobits
	.align 1
	.type	Error_Old_Steer, @object
	.size	Error_Old_Steer, 2
Error_Old_Steer:
	.zero	2
	.global	Error_Steer
.section .bss.Error_Steer,"aw",@nobits
	.align 1
	.type	Error_Steer, @object
	.size	Error_Steer, 2
Error_Steer:
	.zero	2
	.global	SteerDuty0
.section .data.SteerDuty0,"aw",@progbits
	.align 2
	.type	SteerDuty0, @object
	.size	SteerDuty0, 4
SteerDuty0:
	.word	1036831949
	.global	SteerDuty
.section .bss.SteerDuty,"aw",@nobits
	.align 2
	.type	SteerDuty, @object
	.size	SteerDuty, 4
SteerDuty:
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
	.file 3 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
	.file 4 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h"
	.file 5 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
	.file 6 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Console.h"
	.file 7 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h"
	.file 8 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/InfineonRacer.h"
	.file 9 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Assert.h"
	.file 10 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/Ccu6IcuDemo.h"
	.file 11 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/Q_Linescan.h"
	.file 12 "<built-in>"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xd47
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/Q_Control.c"
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
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
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
	.uaword	0x1fd
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x218
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x5c
	.uaword	0x1ae
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x1ba
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x68
	.uaword	0x1de
	.uleb128 0x3
	.string	"sint64"
	.byte	0x3
	.byte	0x24
	.uaword	0x267
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
	.uaword	0x2a2
	.uleb128 0x6
	.uleb128 0x3
	.string	"Ifx_TickTime"
	.byte	0x3
	.byte	0x3e
	.uaword	0x259
	.uleb128 0x3
	.string	"Ifx_SizeT"
	.byte	0x3
	.byte	0x4b
	.uaword	0x1ef
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.byte	0x7e
	.uaword	0x2ee
	.uleb128 0x8
	.string	"module"
	.byte	0x3
	.byte	0x80
	.uaword	0x29c
	.byte	0
	.uleb128 0x8
	.string	"index"
	.byte	0x3
	.byte	0x81
	.uaword	0x22e
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x82
	.uaword	0x2c8
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
	.uaword	0x374
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
	.uaword	0x29a
	.uleb128 0x3
	.string	"IfxStdIf_DPipe"
	.byte	0x5
	.byte	0x33
	.uaword	0x3aa
	.uleb128 0xb
	.string	"IfxStdIf_DPipe_"
	.byte	0x4c
	.byte	0x5
	.byte	0xd5
	.uaword	0x529
	.uleb128 0x8
	.string	"driver"
	.byte	0x5
	.byte	0xd7
	.uaword	0x374
	.byte	0
	.uleb128 0x8
	.string	"txDisabled"
	.byte	0x5
	.byte	0xd8
	.uaword	0x24a
	.byte	0x4
	.uleb128 0x8
	.string	"write"
	.byte	0x5
	.byte	0xdb
	.uaword	0x575
	.byte	0x8
	.uleb128 0x8
	.string	"read"
	.byte	0x5
	.byte	0xdc
	.uaword	0x5bc
	.byte	0xc
	.uleb128 0x8
	.string	"getReadCount"
	.byte	0x5
	.byte	0xdd
	.uaword	0x5d7
	.byte	0x10
	.uleb128 0x8
	.string	"getReadEvent"
	.byte	0x5
	.byte	0xde
	.uaword	0x610
	.byte	0x14
	.uleb128 0x8
	.string	"getWriteCount"
	.byte	0x5
	.byte	0xdf
	.uaword	0x6bd
	.byte	0x18
	.uleb128 0x8
	.string	"getWriteEvent"
	.byte	0x5
	.byte	0xe0
	.uaword	0x6e1
	.byte	0x1c
	.uleb128 0x8
	.string	"canReadCount"
	.byte	0x5
	.byte	0xe1
	.uaword	0x71b
	.byte	0x20
	.uleb128 0x8
	.string	"canWriteCount"
	.byte	0x5
	.byte	0xe2
	.uaword	0x75e
	.byte	0x24
	.uleb128 0x8
	.string	"flushTx"
	.byte	0x5
	.byte	0xe3
	.uaword	0x782
	.byte	0x28
	.uleb128 0x8
	.string	"clearTx"
	.byte	0x5
	.byte	0xe4
	.uaword	0x7eb
	.byte	0x2c
	.uleb128 0x8
	.string	"clearRx"
	.byte	0x5
	.byte	0xe5
	.uaword	0x7bb
	.byte	0x30
	.uleb128 0x8
	.string	"onReceive"
	.byte	0x5
	.byte	0xe6
	.uaword	0x809
	.byte	0x34
	.uleb128 0x8
	.string	"onTransmit"
	.byte	0x5
	.byte	0xe7
	.uaword	0x829
	.byte	0x38
	.uleb128 0x8
	.string	"onError"
	.byte	0x5
	.byte	0xe8
	.uaword	0x84a
	.byte	0x3c
	.uleb128 0x8
	.string	"getSendCount"
	.byte	0x5
	.byte	0xea
	.uaword	0x649
	.byte	0x40
	.uleb128 0x8
	.string	"getTxTimeStamp"
	.byte	0x5
	.byte	0xeb
	.uaword	0x682
	.byte	0x44
	.uleb128 0x8
	.string	"resetSendCount"
	.byte	0x5
	.byte	0xec
	.uaword	0x868
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_WriteEvent"
	.byte	0x5
	.byte	0x35
	.uaword	0x54a
	.uleb128 0x5
	.byte	0x4
	.uaword	0x550
	.uleb128 0xc
	.uaword	0x24a
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ReadEvent"
	.byte	0x5
	.byte	0x36
	.uaword	0x54a
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Write"
	.byte	0x5
	.byte	0x48
	.uaword	0x591
	.uleb128 0x5
	.byte	0x4
	.uaword	0x597
	.uleb128 0xd
	.byte	0x1
	.uaword	0x24a
	.uaword	0x5b6
	.uleb128 0xe
	.uaword	0x374
	.uleb128 0xe
	.uaword	0x29a
	.uleb128 0xe
	.uaword	0x5b6
	.uleb128 0xe
	.uaword	0x2a3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2b7
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Read"
	.byte	0x5
	.byte	0x57
	.uaword	0x591
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadCount"
	.byte	0x5
	.byte	0x5f
	.uaword	0x5fa
	.uleb128 0x5
	.byte	0x4
	.uaword	0x600
	.uleb128 0xd
	.byte	0x1
	.uaword	0x22e
	.uaword	0x610
	.uleb128 0xe
	.uaword	0x374
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadEvent"
	.byte	0x5
	.byte	0x67
	.uaword	0x633
	.uleb128 0x5
	.byte	0x4
	.uaword	0x639
	.uleb128 0xd
	.byte	0x1
	.uaword	0x555
	.uaword	0x649
	.uleb128 0xe
	.uaword	0x374
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetSendCount"
	.byte	0x5
	.byte	0x6f
	.uaword	0x66c
	.uleb128 0x5
	.byte	0x4
	.uaword	0x672
	.uleb128 0xd
	.byte	0x1
	.uaword	0x23c
	.uaword	0x682
	.uleb128 0xe
	.uaword	0x374
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetTxTimeStamp"
	.byte	0x5
	.byte	0x77
	.uaword	0x6a7
	.uleb128 0x5
	.byte	0x4
	.uaword	0x6ad
	.uleb128 0xd
	.byte	0x1
	.uaword	0x2a3
	.uaword	0x6bd
	.uleb128 0xe
	.uaword	0x374
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteCount"
	.byte	0x5
	.byte	0x7f
	.uaword	0x5fa
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteEvent"
	.byte	0x5
	.byte	0x87
	.uaword	0x705
	.uleb128 0x5
	.byte	0x4
	.uaword	0x70b
	.uleb128 0xd
	.byte	0x1
	.uaword	0x529
	.uaword	0x71b
	.uleb128 0xe
	.uaword	0x374
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanReadCount"
	.byte	0x5
	.byte	0x92
	.uaword	0x73e
	.uleb128 0x5
	.byte	0x4
	.uaword	0x744
	.uleb128 0xd
	.byte	0x1
	.uaword	0x24a
	.uaword	0x75e
	.uleb128 0xe
	.uaword	0x374
	.uleb128 0xe
	.uaword	0x2b7
	.uleb128 0xe
	.uaword	0x2a3
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanWriteCount"
	.byte	0x5
	.byte	0x9d
	.uaword	0x73e
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_FlushTx"
	.byte	0x5
	.byte	0xa6
	.uaword	0x7a0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7a6
	.uleb128 0xd
	.byte	0x1
	.uaword	0x24a
	.uaword	0x7bb
	.uleb128 0xe
	.uaword	0x374
	.uleb128 0xe
	.uaword	0x2a3
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearRx"
	.byte	0x5
	.byte	0xad
	.uaword	0x7d9
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7df
	.uleb128 0xf
	.byte	0x1
	.uaword	0x7eb
	.uleb128 0xe
	.uaword	0x374
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearTx"
	.byte	0x5
	.byte	0xb4
	.uaword	0x7d9
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnReceive"
	.byte	0x5
	.byte	0xbc
	.uaword	0x7d9
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnTransmit"
	.byte	0x5
	.byte	0xc3
	.uaword	0x7d9
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnError"
	.byte	0x5
	.byte	0xca
	.uaword	0x7d9
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ResetSendCount"
	.byte	0x5
	.byte	0xd1
	.uaword	0x7d9
	.uleb128 0x7
	.byte	0x8
	.byte	0x6
	.byte	0x26
	.uaword	0x8b7
	.uleb128 0x8
	.string	"standardIo"
	.byte	0x6
	.byte	0x28
	.uaword	0x8b7
	.byte	0
	.uleb128 0x8
	.string	"align"
	.byte	0x6
	.byte	0x29
	.uaword	0x1ef
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x394
	.uleb128 0x3
	.string	"Ifx_Console"
	.byte	0x6
	.byte	0x2a
	.uaword	0x88d
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.byte	0x28
	.uaword	0x915
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
	.byte	0x8
	.byte	0x2f
	.uaword	0x8d0
	.uleb128 0x10
	.byte	0x1
	.string	"InfineonRacer_SpeedCommand"
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.uaword	0x194
	.byte	0x1
	.uaword	0x99a
	.uleb128 0x11
	.string	"steer_duty"
	.byte	0x1
	.byte	0x42
	.uaword	0x194
	.uleb128 0x12
	.string	"a"
	.byte	0x1
	.byte	0x44
	.uaword	0x194
	.uleb128 0x12
	.string	"b"
	.byte	0x1
	.byte	0x44
	.uaword	0x194
	.uleb128 0x12
	.string	"c"
	.byte	0x1
	.byte	0x44
	.uaword	0x194
	.uleb128 0x12
	.string	"cmd_speed"
	.byte	0x1
	.byte	0x44
	.uaword	0x194
	.uleb128 0x13
	.byte	0x1
	.string	"pow"
	.byte	0xc
	.byte	0
	.byte	0x1
	.uaword	0x19d
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"InfineonRacer_PDControlSteer"
	.byte	0x1
	.byte	0x18
	.byte	0x1
	.uaword	0x194
	.uaword	.LFB883
	.uaword	.LFE883
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa06
	.uleb128 0x15
	.string	"Ts"
	.byte	0x1
	.byte	0x1a
	.uaword	0x194
	.byte	0x4
	.uaword	0x3ca3d70a
	.uleb128 0x16
	.string	"SteerDuty_in"
	.byte	0x1
	.byte	0x1b
	.uaword	0x194
	.uaword	.LLST0
	.uleb128 0x16
	.string	"val"
	.byte	0x1
	.byte	0x1c
	.uaword	0x194
	.uaword	.LLST1
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"InfineonRacer_RefMotor"
	.byte	0x1
	.byte	0x2c
	.byte	0x1
	.uaword	0x194
	.uaword	.LFB884
	.uaword	.LFE884
	.byte	0x1
	.byte	0x9c
	.uaword	0xacf
	.uleb128 0x18
	.string	"MotorDutyMax"
	.byte	0x1
	.byte	0x2c
	.uaword	0x194
	.uaword	.LLST2
	.uleb128 0x15
	.string	"SpeedSlope"
	.byte	0x1
	.byte	0x2e
	.uaword	0x194
	.byte	0x4
	.uaword	0x40000000
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.byte	0x2f
	.uaword	0x194
	.uaword	.LLST3
	.uleb128 0x15
	.string	"MotorDutyMin"
	.byte	0x1
	.byte	0x30
	.uaword	0x194
	.byte	0x4
	.uaword	0x3e4ccccd
	.uleb128 0x1a
	.uaword	0x924
	.uaword	.LBB4
	.uaword	.LBE4
	.byte	0x1
	.byte	0x3c
	.uleb128 0x1b
	.uaword	0x94d
	.uaword	.LLST4
	.uleb128 0x1c
	.uaword	.LBB5
	.uaword	.LBE5
	.uleb128 0x1d
	.uaword	0x95f
	.uaword	.LLST5
	.uleb128 0x1d
	.uaword	0x968
	.uaword	.LLST6
	.uleb128 0x1d
	.uaword	0x971
	.uaword	.LLST7
	.uleb128 0x1e
	.uaword	0x97a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x924
	.uaword	.LFB885
	.uaword	.LFE885
	.byte	0x1
	.byte	0x9c
	.uaword	0xb23
	.uleb128 0x1b
	.uaword	0x94d
	.uaword	.LLST8
	.uleb128 0x20
	.uaword	0x95f
	.byte	0x4
	.uaword	0x3d83126e
	.uleb128 0x20
	.uaword	0x968
	.byte	0x4
	.uaword	0x40000000
	.uleb128 0x20
	.uaword	0x971
	.byte	0x4
	.uaword	0x3e23d70a
	.uleb128 0x1d
	.uaword	0x97a
	.uaword	.LLST9
	.uleb128 0x21
	.uaword	0x98b
	.uleb128 0xe
	.uaword	0x19d
	.uleb128 0xe
	.uaword	0x19d
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"InfineonRacer_CalSpeed"
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.uaword	.LFB886
	.uaword	.LFE886
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb71
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x4f
	.uaword	0x20a
	.uaword	.LLST10
	.uleb128 0x16
	.string	"Sum_Pulse"
	.byte	0x1
	.byte	0x50
	.uaword	0x20a
	.uaword	.LLST11
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"InfineonRacer_PIDConSpeed"
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.uaword	.LFB887
	.uaword	.LFE887
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xbaf
	.uleb128 0x24
	.string	"speed"
	.byte	0x1
	.byte	0x5d
	.uaword	0x194
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x25
	.uaword	0x2ee
	.uaword	0xbbf
	.uleb128 0x26
	.uaword	0x318
	.byte	0x2
	.byte	0
	.uleb128 0x27
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x7
	.byte	0x96
	.uaword	0xbdc
	.byte	0x1
	.byte	0x1
	.uleb128 0x28
	.uaword	0xbaf
	.uleb128 0x27
	.string	"Assert_verboseLevel"
	.byte	0x9
	.byte	0x79
	.uaword	0x23c
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"cnt_enc"
	.byte	0xa
	.byte	0x48
	.uaword	0x20a
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"Ifx_g_console"
	.byte	0x6
	.byte	0x2c
	.uaword	0x8bd
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"Offset"
	.byte	0xb
	.byte	0x31
	.uaword	0x20a
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.string	"State_Track"
	.byte	0x8
	.byte	0x38
	.uaword	0x915
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.string	"SteerDuty"
	.byte	0x1
	.byte	0x7
	.uaword	0x194
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SteerDuty
	.uleb128 0x29
	.string	"Error_Steer"
	.byte	0x1
	.byte	0x9
	.uaword	0x1ef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Error_Steer
	.uleb128 0x29
	.string	"Error_Old_Steer"
	.byte	0x1
	.byte	0xa
	.uaword	0x20a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Error_Old_Steer
	.uleb128 0x29
	.string	"P_Steer"
	.byte	0x1
	.byte	0xc
	.uaword	0x194
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	P_Steer
	.uleb128 0x29
	.string	"D_Steer"
	.byte	0x1
	.byte	0xd
	.uaword	0x19d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	D_Steer
	.uleb128 0x2a
	.uaword	.LASF0
	.byte	0x1
	.byte	0xf
	.uaword	0x194
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MotorDutyRef
	.uleb128 0x29
	.string	"Speed"
	.byte	0x1
	.byte	0x11
	.uaword	0x194
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Speed
	.uleb128 0x29
	.string	"SteerDuty0"
	.byte	0x1
	.byte	0x8
	.uaword	0x194
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SteerDuty0
	.uleb128 0x25
	.uaword	0x20a
	.uaword	0xd16
	.uleb128 0x26
	.uaword	0x318
	.byte	0x9
	.byte	0
	.uleb128 0x29
	.string	"Stack_Pulse"
	.byte	0x1
	.byte	0x12
	.uaword	0xd06
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Stack_Pulse
	.uleb128 0x29
	.string	"Pulse_index"
	.byte	0x1
	.byte	0x13
	.uaword	0x20a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Pulse_index
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1c
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL12
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x194
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x194
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0xa
	.byte	0xf5
	.uleb128 0xf
	.uleb128 0x194
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x194
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LFE883
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL1
	.uaword	.LVL2-1
	.uahalf	0x22
	.byte	0x7a
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x3
	.uaword	Error_Old_Steer
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1a7
	.byte	0xf7
	.uleb128 0x194
	.byte	0xf4
	.uleb128 0x194
	.byte	0x4
	.uaword	0x3ca3d70a
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1d
	.byte	0x7a
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x1a7
	.byte	0xf7
	.uleb128 0x194
	.byte	0xf4
	.uleb128 0x194
	.byte	0x4
	.uaword	0x3ca3d70a
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL19
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL26
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL32
	.uaword	.LVL35
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x194
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LFE884
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL40
	.uaword	.LFE884
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x14
	.byte	0x3
	.uaword	SteerDuty
	.byte	0xf6
	.byte	0x4
	.uleb128 0x194
	.byte	0x3
	.uaword	SteerDuty0
	.byte	0xf6
	.byte	0x4
	.uleb128 0x194
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL18
	.uaword	.LVL25
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3d83126e
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL18
	.uaword	.LVL25
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x40000000
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL18
	.uaword	.LVL25
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0x3e23d70a
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL41
	.uaword	.LVL42-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL42-1
	.uaword	.LFE885
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x194
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL42
	.uaword	.LVL43-1
	.uahalf	0x27
	.byte	0xf4
	.uleb128 0x19d
	.byte	0x8
	.uaword	0xc0000000
	.uaword	0x3fb0624d
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x19d
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x19d
	.byte	0x1e
	.byte	0xf4
	.uleb128 0x19d
	.byte	0x8
	.uaword	0x40000000
	.uaword	0x3fc47ae1
	.byte	0x22
	.byte	0x1b
	.byte	0xf7
	.uleb128 0x194
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL49
	.uaword	.LVL51
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL51
	.uaword	.LVL52-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x3c
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"MotorDutyRef"
	.extern	cnt_enc,STT_OBJECT,2
	.extern	State_Track,STT_OBJECT,1
	.extern	Offset,STT_OBJECT,2
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
