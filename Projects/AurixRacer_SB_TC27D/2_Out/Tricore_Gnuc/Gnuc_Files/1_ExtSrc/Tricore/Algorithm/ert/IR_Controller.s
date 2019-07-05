	.file	"IR_Controller.c"
.section .text,"ax",@progbits
.Ltext0:
	.global	__extendsfdf2
	.global	__subdf3
	.global	__muldf3
	.global	__adddf3
	.global	__truncdfsf2
	.global	__floatsidf
.section .text.IR_Controller_step,"ax",@progbits
	.align 1
	.global	IR_Controller_step
	.type	IR_Controller_step, @function
IR_Controller_step:
.LFB883:
	.file 1 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/ert/IR_Controller.c"
	.loc 1 32 0
	.loc 1 40 0
	movh.a	%a15, hi:IR_Controller_DWork
	lea	%a15, [%a15] lo:IR_Controller_DWork
	ld.w	%d15, [%a15] 32
	.loc 1 41 0
	lt.u	%d2, %d15, 125
	jnz	%d2, .L6
.LVL0:
	.loc 1 42 0
	lt	%d2, %d15, 249
	jnz	%d2, .L7
	.loc 1 43 0
	mov	%d15, 0
	.loc 1 41 0
	mov	%e8, 0
	.loc 1 43 0
	st.w	[%a15] 32, %d15
.LVL1:
.L3:
	.loc 1 53 0
	movh.a	%a2, hi:IR_Encoder
	ld.w	%d4, [%a2] lo:IR_Encoder
	call	__extendsfdf2
.LVL2:
	mov	%e4, %d9, %d8
	mov	%e6, %d3, %d2
	call	__subdf3
.LVL3:
	.loc 1 61 0
	movh.a	%a14, hi:IR_Controller_P
	lea	%a14, [%a14] lo:IR_Controller_P
	ld.d	%e6, [%a14] 40
	mov	%e4, %d3, %d2
	.loc 1 53 0
	mov	%e8, %d3, %d2
.LVL4:
	.loc 1 61 0
	call	__muldf3
.LVL5:
	mov	%e4, %d3, %d2
	movh	%d7, 16276
	movh	%d6, 18350
	addi	%d7, %d7, 31457
	addi	%d6, %d6, 5243
	call	__muldf3
.LVL6:
	ld.d	%e6, [%a15]0
	mov	%e4, %d3, %d2
	call	__adddf3
.LVL7:
	.loc 1 65 0
	ld.d	%e6, [%a14] 48
	mov	%e4, %d9, %d8
	.loc 1 61 0
	mov	%e14, %d3, %d2
.LVL8:
	.loc 1 65 0
	call	__muldf3
.LVL9:
	.loc 1 72 0
	mov	%e4, %d3, %d2
	mov	%d6, 0
	movh	%d7, 16457
	call	__muldf3
.LVL10:
	.loc 1 56 0
	mov	%e4, %d9, %d8
	ld.d	%e6, [%a14] 32
	.loc 1 72 0
	mov	%e12, %d3, %d2
.LVL11:
	.loc 1 56 0
	call	__muldf3
.LVL12:
	.loc 1 78 0
	mov	%e4, %d3, %d2
	mov	%e6, %d15, %d14
	call	__adddf3
.LVL13:
	ld.d	%e6, [%a15] 8
	mov	%e4, %d13, %d12
	mov	%e8, %d3, %d2
	call	__subdf3
.LVL14:
	mov	%e6, %d3, %d2
	mov	%e4, %d9, %d8
	call	__adddf3
.LVL15:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL16:
	mov	%d4, %d2
	call	IR_setMotor0Vol
.LVL17:
	.loc 1 85 0
	movh.a	%a2, hi:IR_Ctrl
	lea	%a3, [%a2] lo:IR_Ctrl
	ld.w	%d4, [%a3] 4
	ld.w	%d2, [%a2] lo:IR_Ctrl
	sub	%d4, %d2
	call	__floatsidf
.LVL18:
	.loc 1 93 0
	ld.d	%e6, [%a14] 16
	mov	%e4, %d3, %d2
	.loc 1 85 0
	mov	%e8, %d3, %d2
.LVL19:
	.loc 1 93 0
	call	__muldf3
.LVL20:
	mov	%e4, %d3, %d2
	mov	%d6, 0
	movh	%d7, 16457
	call	__muldf3
.LVL21:
	.loc 1 101 0
	ld.d	%e6, [%a14]0
	mov	%e4, %d9, %d8
	.loc 1 93 0
	mov	%e10, %d3, %d2
.LVL22:
	.loc 1 101 0
	call	__muldf3
.LVL23:
	ld.d	%e6, [%a15] 16
	mov	%e4, %d3, %d2
	call	__adddf3
.LVL24:
	.loc 1 103 0
	mov	%e4, %d11, %d10
	ld.d	%e6, [%a15] 24
	.loc 1 101 0
	mov.a	%a12, %d2
	mov.a	%a13, %d3
	.loc 1 103 0
	call	__subdf3
.LVL25:
	.loc 1 102 0
	mov	%e6, %d3, %d2
	mov.d	%d4, %a12
	mov.d	%d5, %a13
	call	__adddf3
.LVL26:
	.loc 1 101 0
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL27:
	mov	%d4, %d2
	call	IR_setSrvAngle
.LVL28:
	.loc 1 106 0
	ld.w	%d2, [%a15] 36
	.loc 1 108 0
	lt	%d3, %d2, 49
	.loc 1 106 0
	lt.u	%d4, %d2, 25
.LVL29:
	.loc 1 108 0
	jz	%d3, .L9
	.loc 1 111 0
	add	%d2, 1
	st.w	[%a15] 36, %d2
.L5:
	.loc 1 117 0
	call	IR_setLed0
.LVL30:
	.loc 1 128 0
	ld.d	%e6, [%a14] 8
	mov	%e4, %d9, %d8
	.loc 1 120 0
	st.d	[%a15]0, %e14
	.loc 1 123 0
	st.d	[%a15] 8, %e12
	.loc 1 128 0
	call	__muldf3
.LVL31:
	.loc 1 129 0
	mov	%e4, %d3, %d2
	movh	%d7, 16276
	movh	%d6, 18350
	addi	%d7, %d7, 31457
	addi	%d6, %d6, 5243
	call	__muldf3
.LVL32:
	.loc 1 128 0
	ld.d	%e4, [%a15] 16
	mov	%e6, %d3, %d2
	call	__adddf3
.LVL33:
	st.d	[%a15] 16, %e2
	.loc 1 132 0
	st.d	[%a15] 24, %e10
	ret
.LVL34:
.L6:
	.loc 1 41 0
	mov	%d8, 0
	movh	%d9, 16473
.L2:
.LVL35:
	.loc 1 45 0
	add	%d15, 1
	st.w	[%a15] 32, %d15
	j	.L3
.LVL36:
.L9:
	.loc 1 109 0
	mov	%d2, 0
	st.w	[%a15] 36, %d2
	j	.L5
.LVL37:
.L7:
	.loc 1 41 0
	mov	%e8, 0
	j	.L2
.LFE883:
	.size	IR_Controller_step, .-IR_Controller_step
.section .text.IR_Controller_initialize,"ax",@progbits
	.align 1
	.global	IR_Controller_initialize
	.type	IR_Controller_initialize, @function
IR_Controller_initialize:
.LFB884:
	.loc 1 137 0
	.loc 1 139 0
	mov	%d15, -50
	movh.a	%a15, hi:IR_Controller_DWork
	lea	%a15, [%a15] lo:IR_Controller_DWork
	.loc 1 142 0
	mov	%d4, 1
	.loc 1 139 0
	st.w	[%a15] 32, %d15
	.loc 1 142 0
	j	IR_setMotor0En
.LVL38:
.LFE884:
	.size	IR_Controller_initialize, .-IR_Controller_initialize
.section .text.IR_Controller_terminate,"ax",@progbits
	.align 1
	.global	IR_Controller_terminate
	.type	IR_Controller_terminate, @function
IR_Controller_terminate:
.LFB885:
	.loc 1 147 0
	ret
.LFE885:
	.size	IR_Controller_terminate, .-IR_Controller_terminate
	.global	IR_Controller_M
.section .rodata.IR_Controller_M,"a",@progbits
	.align 2
	.type	IR_Controller_M, @object
	.size	IR_Controller_M, 4
IR_Controller_M:
	.word	IR_Controller_M_
	.global	IR_Controller_M_
.section .bss.IR_Controller_M_,"aw",@nobits
	.align 2
	.type	IR_Controller_M_, @object
	.size	IR_Controller_M_, 4
IR_Controller_M_:
	.zero	4
	.global	IR_Controller_DWork
.section .bss.IR_Controller_DWork,"aw",@nobits
	.align 2
	.type	IR_Controller_DWork, @object
	.size	IR_Controller_DWork, 40
IR_Controller_DWork:
	.zero	40
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/ert/rtwtypes.h"
	.file 3 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/ert/IR_Controller_types.h"
	.file 4 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/ert/IR_Controller.h"
	.file 5 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Platform_Types.h"
	.file 6 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/Cpu/Std/Ifx_Types.h"
	.file 7 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h"
	.file 8 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_DPipe.h"
	.file 9 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h"
	.file 10 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h"
	.file 11 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicGpt12Enc.h"
	.file 12 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Console.h"
	.file 13 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/InfineonRacer.h"
	.file 14 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Assert.h"
	.file 15 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicGtmTom.h"
	.file 16 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicPort.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xe7d
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/ert/IR_Controller.c"
	.string	"D:\\\\MinKyu_AurixRacer\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"int32_T"
	.byte	0x2
	.byte	0x37
	.uaword	0x1e5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"real_T"
	.byte	0x2
	.byte	0x40
	.uaword	0x205
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"char_T"
	.byte	0x2
	.byte	0x46
	.uaword	0x240
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x20
	.byte	0x3
	.byte	0x1a
	.uaword	0x27b
	.uleb128 0x6
	.string	"P"
	.byte	0x3
	.byte	0x1b
	.uaword	0x20f
	.byte	0
	.uleb128 0x6
	.string	"I"
	.byte	0x3
	.byte	0x1c
	.uaword	0x20f
	.byte	0x8
	.uleb128 0x6
	.string	"D"
	.byte	0x3
	.byte	0x1d
	.uaword	0x20f
	.byte	0x10
	.uleb128 0x6
	.string	"N"
	.byte	0x3
	.byte	0x1e
	.uaword	0x20f
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"pid_param"
	.byte	0x3
	.byte	0x1f
	.uaword	0x24a
	.uleb128 0x3
	.string	"Parameters_IR_Controller"
	.byte	0x3
	.byte	0x24
	.uaword	0x2ac
	.uleb128 0x7
	.string	"Parameters_IR_Controller_"
	.byte	0x40
	.byte	0x4
	.byte	0x31
	.uaword	0x2ef
	.uleb128 0x6
	.string	"LatPid"
	.byte	0x4
	.byte	0x32
	.uaword	0x27b
	.byte	0
	.uleb128 0x6
	.string	"LongiPid"
	.byte	0x4
	.byte	0x38
	.uaword	0x27b
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.string	"RT_MODEL_IR_Controller"
	.byte	0x3
	.byte	0x27
	.uaword	0x30d
	.uleb128 0x7
	.string	"tag_RTM_IR_Controller"
	.byte	0x4
	.byte	0x4
	.byte	0x41
	.uaword	0x340
	.uleb128 0x6
	.string	"errorStatus"
	.byte	0x4
	.byte	0x42
	.uaword	0x3f5
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x28
	.byte	0x4
	.byte	0x27
	.uaword	0x3d9
	.uleb128 0x6
	.string	"Integrator_DSTATE"
	.byte	0x4
	.byte	0x28
	.uaword	0x20f
	.byte	0
	.uleb128 0x6
	.string	"UD_DSTATE"
	.byte	0x4
	.byte	0x29
	.uaword	0x20f
	.byte	0x8
	.uleb128 0x6
	.string	"Integrator_DSTATE_p"
	.byte	0x4
	.byte	0x2a
	.uaword	0x20f
	.byte	0x10
	.uleb128 0x6
	.string	"UD_DSTATE_d"
	.byte	0x4
	.byte	0x2b
	.uaword	0x20f
	.byte	0x18
	.uleb128 0x6
	.string	"clockTickCounter"
	.byte	0x4
	.byte	0x2c
	.uaword	0x1d6
	.byte	0x20
	.uleb128 0x6
	.string	"clockTickCounter_a"
	.byte	0x4
	.byte	0x2d
	.uaword	0x1d6
	.byte	0x24
	.byte	0
	.uleb128 0x3
	.string	"D_Work_IR_Controller"
	.byte	0x4
	.byte	0x2e
	.uaword	0x340
	.uleb128 0x8
	.uaword	0x3fa
	.uleb128 0x9
	.byte	0x4
	.uaword	0x400
	.uleb128 0xa
	.uaword	0x232
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x5
	.byte	0x5a
	.uaword	0x1b3
	.uleb128 0x3
	.string	"sint32"
	.byte	0x5
	.byte	0x5c
	.uaword	0x405
	.uleb128 0x3
	.string	"uint32"
	.byte	0x5
	.byte	0x5d
	.uaword	0x21d
	.uleb128 0x3
	.string	"float32"
	.byte	0x5
	.byte	0x5e
	.uaword	0x1fc
	.uleb128 0x3
	.string	"boolean"
	.byte	0x5
	.byte	0x68
	.uaword	0x1a2
	.uleb128 0x3
	.string	"sint64"
	.byte	0x6
	.byte	0x24
	.uaword	0x467
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x9
	.byte	0x4
	.uaword	0x498
	.uleb128 0xb
	.uleb128 0x3
	.string	"Ifx_TickTime"
	.byte	0x6
	.byte	0x3e
	.uaword	0x459
	.uleb128 0x3
	.string	"Ifx_SizeT"
	.byte	0x6
	.byte	0x4b
	.uaword	0x411
	.uleb128 0x5
	.byte	0x8
	.byte	0x6
	.byte	0x7e
	.uaword	0x4e4
	.uleb128 0x6
	.string	"module"
	.byte	0x6
	.byte	0x80
	.uaword	0x492
	.byte	0
	.uleb128 0x6
	.string	"index"
	.byte	0x6
	.byte	0x81
	.uaword	0x41f
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x6
	.byte	0x82
	.uaword	0x4be
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xc
	.byte	0x1
	.byte	0x9
	.byte	0x76
	.uaword	0x55a
	.uleb128 0xd
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0xd
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0xd
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0xd
	.string	"IfxCpu_Index_none"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_InterfaceDriver"
	.byte	0x7
	.byte	0x62
	.uaword	0x248
	.uleb128 0x3
	.string	"IfxStdIf_DPipe"
	.byte	0x8
	.byte	0x33
	.uaword	0x590
	.uleb128 0x7
	.string	"IfxStdIf_DPipe_"
	.byte	0x4c
	.byte	0x8
	.byte	0xd5
	.uaword	0x70f
	.uleb128 0x6
	.string	"driver"
	.byte	0x8
	.byte	0xd7
	.uaword	0x55a
	.byte	0
	.uleb128 0x6
	.string	"txDisabled"
	.byte	0x8
	.byte	0xd8
	.uaword	0x44a
	.byte	0x4
	.uleb128 0x6
	.string	"write"
	.byte	0x8
	.byte	0xdb
	.uaword	0x75b
	.byte	0x8
	.uleb128 0x6
	.string	"read"
	.byte	0x8
	.byte	0xdc
	.uaword	0x7a2
	.byte	0xc
	.uleb128 0x6
	.string	"getReadCount"
	.byte	0x8
	.byte	0xdd
	.uaword	0x7bd
	.byte	0x10
	.uleb128 0x6
	.string	"getReadEvent"
	.byte	0x8
	.byte	0xde
	.uaword	0x7f6
	.byte	0x14
	.uleb128 0x6
	.string	"getWriteCount"
	.byte	0x8
	.byte	0xdf
	.uaword	0x8a3
	.byte	0x18
	.uleb128 0x6
	.string	"getWriteEvent"
	.byte	0x8
	.byte	0xe0
	.uaword	0x8c7
	.byte	0x1c
	.uleb128 0x6
	.string	"canReadCount"
	.byte	0x8
	.byte	0xe1
	.uaword	0x901
	.byte	0x20
	.uleb128 0x6
	.string	"canWriteCount"
	.byte	0x8
	.byte	0xe2
	.uaword	0x944
	.byte	0x24
	.uleb128 0x6
	.string	"flushTx"
	.byte	0x8
	.byte	0xe3
	.uaword	0x968
	.byte	0x28
	.uleb128 0x6
	.string	"clearTx"
	.byte	0x8
	.byte	0xe4
	.uaword	0x9d1
	.byte	0x2c
	.uleb128 0x6
	.string	"clearRx"
	.byte	0x8
	.byte	0xe5
	.uaword	0x9a1
	.byte	0x30
	.uleb128 0x6
	.string	"onReceive"
	.byte	0x8
	.byte	0xe6
	.uaword	0x9ef
	.byte	0x34
	.uleb128 0x6
	.string	"onTransmit"
	.byte	0x8
	.byte	0xe7
	.uaword	0xa0f
	.byte	0x38
	.uleb128 0x6
	.string	"onError"
	.byte	0x8
	.byte	0xe8
	.uaword	0xa30
	.byte	0x3c
	.uleb128 0x6
	.string	"getSendCount"
	.byte	0x8
	.byte	0xea
	.uaword	0x82f
	.byte	0x40
	.uleb128 0x6
	.string	"getTxTimeStamp"
	.byte	0x8
	.byte	0xeb
	.uaword	0x868
	.byte	0x44
	.uleb128 0x6
	.string	"resetSendCount"
	.byte	0x8
	.byte	0xec
	.uaword	0xa4e
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_WriteEvent"
	.byte	0x8
	.byte	0x35
	.uaword	0x730
	.uleb128 0x9
	.byte	0x4
	.uaword	0x736
	.uleb128 0x8
	.uaword	0x44a
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ReadEvent"
	.byte	0x8
	.byte	0x36
	.uaword	0x730
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Write"
	.byte	0x8
	.byte	0x48
	.uaword	0x777
	.uleb128 0x9
	.byte	0x4
	.uaword	0x77d
	.uleb128 0xe
	.byte	0x1
	.uaword	0x44a
	.uaword	0x79c
	.uleb128 0xf
	.uaword	0x55a
	.uleb128 0xf
	.uaword	0x248
	.uleb128 0xf
	.uaword	0x79c
	.uleb128 0xf
	.uaword	0x499
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x4ad
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Read"
	.byte	0x8
	.byte	0x57
	.uaword	0x777
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadCount"
	.byte	0x8
	.byte	0x5f
	.uaword	0x7e0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x7e6
	.uleb128 0xe
	.byte	0x1
	.uaword	0x41f
	.uaword	0x7f6
	.uleb128 0xf
	.uaword	0x55a
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadEvent"
	.byte	0x8
	.byte	0x67
	.uaword	0x819
	.uleb128 0x9
	.byte	0x4
	.uaword	0x81f
	.uleb128 0xe
	.byte	0x1
	.uaword	0x73b
	.uaword	0x82f
	.uleb128 0xf
	.uaword	0x55a
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetSendCount"
	.byte	0x8
	.byte	0x6f
	.uaword	0x852
	.uleb128 0x9
	.byte	0x4
	.uaword	0x858
	.uleb128 0xe
	.byte	0x1
	.uaword	0x42d
	.uaword	0x868
	.uleb128 0xf
	.uaword	0x55a
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetTxTimeStamp"
	.byte	0x8
	.byte	0x77
	.uaword	0x88d
	.uleb128 0x9
	.byte	0x4
	.uaword	0x893
	.uleb128 0xe
	.byte	0x1
	.uaword	0x499
	.uaword	0x8a3
	.uleb128 0xf
	.uaword	0x55a
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteCount"
	.byte	0x8
	.byte	0x7f
	.uaword	0x7e0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteEvent"
	.byte	0x8
	.byte	0x87
	.uaword	0x8eb
	.uleb128 0x9
	.byte	0x4
	.uaword	0x8f1
	.uleb128 0xe
	.byte	0x1
	.uaword	0x70f
	.uaword	0x901
	.uleb128 0xf
	.uaword	0x55a
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanReadCount"
	.byte	0x8
	.byte	0x92
	.uaword	0x924
	.uleb128 0x9
	.byte	0x4
	.uaword	0x92a
	.uleb128 0xe
	.byte	0x1
	.uaword	0x44a
	.uaword	0x944
	.uleb128 0xf
	.uaword	0x55a
	.uleb128 0xf
	.uaword	0x4ad
	.uleb128 0xf
	.uaword	0x499
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanWriteCount"
	.byte	0x8
	.byte	0x9d
	.uaword	0x924
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_FlushTx"
	.byte	0x8
	.byte	0xa6
	.uaword	0x986
	.uleb128 0x9
	.byte	0x4
	.uaword	0x98c
	.uleb128 0xe
	.byte	0x1
	.uaword	0x44a
	.uaword	0x9a1
	.uleb128 0xf
	.uaword	0x55a
	.uleb128 0xf
	.uaword	0x499
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearRx"
	.byte	0x8
	.byte	0xad
	.uaword	0x9bf
	.uleb128 0x9
	.byte	0x4
	.uaword	0x9c5
	.uleb128 0x10
	.byte	0x1
	.uaword	0x9d1
	.uleb128 0xf
	.uaword	0x55a
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearTx"
	.byte	0x8
	.byte	0xb4
	.uaword	0x9bf
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnReceive"
	.byte	0x8
	.byte	0xbc
	.uaword	0x9bf
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnTransmit"
	.byte	0x8
	.byte	0xc3
	.uaword	0x9bf
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnError"
	.byte	0x8
	.byte	0xca
	.uaword	0x9bf
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ResetSendCount"
	.byte	0x8
	.byte	0xd1
	.uaword	0x9bf
	.uleb128 0xc
	.byte	0x1
	.byte	0xa
	.byte	0x4c
	.uaword	0xace
	.uleb128 0xd
	.string	"IfxStdIf_Pos_Dir_forward"
	.sleb128 0
	.uleb128 0xd
	.string	"IfxStdIf_Pos_Dir_backward"
	.sleb128 1
	.uleb128 0xd
	.string	"IfxStdIf_Pos_Dir_unknown"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_Dir"
	.byte	0xa
	.byte	0x50
	.uaword	0xa73
	.uleb128 0x5
	.byte	0xc
	.byte	0xb
	.byte	0x20
	.uaword	0xb23
	.uleb128 0x6
	.string	"speed"
	.byte	0xb
	.byte	0x21
	.uaword	0x43b
	.byte	0
	.uleb128 0x6
	.string	"rawPosition"
	.byte	0xb
	.byte	0x22
	.uaword	0x43b
	.byte	0x4
	.uleb128 0x6
	.string	"direction"
	.byte	0xb
	.byte	0x23
	.uaword	0xace
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"IR_Encoder_t"
	.byte	0xb
	.byte	0x24
	.uaword	0xae6
	.uleb128 0x5
	.byte	0x8
	.byte	0xc
	.byte	0x26
	.uaword	0xb61
	.uleb128 0x6
	.string	"standardIo"
	.byte	0xc
	.byte	0x28
	.uaword	0xb61
	.byte	0
	.uleb128 0x6
	.string	"align"
	.byte	0xc
	.byte	0x29
	.uaword	0x411
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x57a
	.uleb128 0x3
	.string	"Ifx_Console"
	.byte	0xc
	.byte	0x2a
	.uaword	0xb37
	.uleb128 0x5
	.byte	0xc
	.byte	0xd
	.byte	0x22
	.uaword	0xbb9
	.uleb128 0x6
	.string	"Ls0Margin"
	.byte	0xd
	.byte	0x23
	.uaword	0x41f
	.byte	0
	.uleb128 0x6
	.string	"Ls1Margin"
	.byte	0xd
	.byte	0x24
	.uaword	0x41f
	.byte	0x4
	.uleb128 0x6
	.string	"basicTest"
	.byte	0xd
	.byte	0x25
	.uaword	0x44a
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"InfineonRacer_t"
	.byte	0xd
	.byte	0x26
	.uaword	0xb7a
	.uleb128 0x11
	.byte	0x1
	.string	"IR_Controller_step"
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.uaword	.LFB883
	.uaword	.LFE883
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc97
	.uleb128 0x12
	.string	"rtb_LaneOffset"
	.byte	0x1
	.byte	0x21
	.uaword	0x20f
	.uaword	.LLST0
	.uleb128 0x12
	.string	"rtb_ProportionalGain"
	.byte	0x1
	.byte	0x22
	.uaword	0x20f
	.uaword	.LLST1
	.uleb128 0x12
	.string	"rtb_TSamp"
	.byte	0x1
	.byte	0x23
	.uaword	0x20f
	.uaword	.LLST2
	.uleb128 0x12
	.string	"rtb_PulseGenerator1"
	.byte	0x1
	.byte	0x24
	.uaword	0x1d6
	.uaword	.LLST3
	.uleb128 0x12
	.string	"Integrator"
	.byte	0x1
	.byte	0x25
	.uaword	0x20f
	.uaword	.LLST4
	.uleb128 0x13
	.uaword	.LVL17
	.uaword	0xe0b
	.uleb128 0x13
	.uaword	.LVL28
	.uaword	0xe2b
	.uleb128 0x13
	.uaword	.LVL30
	.uaword	0xe4a
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"IR_Controller_initialize"
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.uaword	.LFB884
	.uaword	.LFE884
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xcd5
	.uleb128 0x15
	.uaword	.LVL38
	.byte	0x1
	.uaword	0xe65
	.uleb128 0x16
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"IR_Controller_terminate"
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.uaword	.LFB885
	.uaword	.LFE885
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uleb128 0x18
	.string	"IR_Controller_P"
	.byte	0x4
	.byte	0x46
	.uaword	0x28c
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"IR_Controller_DWork"
	.byte	0x1
	.byte	0x18
	.uaword	0x3d9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IR_Controller_DWork
	.uleb128 0x19
	.string	"IR_Controller_M"
	.byte	0x1
	.byte	0x1c
	.uaword	0xd56
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IR_Controller_M
	.uleb128 0xa
	.uaword	0xd5b
	.uleb128 0x9
	.byte	0x4
	.uaword	0x2ef
	.uleb128 0x1a
	.uaword	0x4e4
	.uaword	0xd71
	.uleb128 0x1b
	.uaword	0x4fe
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x9
	.byte	0x96
	.uaword	0xd8e
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0xd61
	.uleb128 0x18
	.string	"Assert_verboseLevel"
	.byte	0xe
	.byte	0x79
	.uaword	0x42d
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.string	"IR_Encoder"
	.byte	0xb
	.byte	0x29
	.uaword	0xb23
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.string	"Ifx_g_console"
	.byte	0xc
	.byte	0x2c
	.uaword	0xb67
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.string	"IR_Ctrl"
	.byte	0xd
	.byte	0x33
	.uaword	0xbb9
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"IR_Controller_M_"
	.byte	0x1
	.byte	0x1b
	.uaword	0x2ef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	IR_Controller_M_
	.uleb128 0x1c
	.byte	0x1
	.string	"IR_setMotor0Vol"
	.byte	0xf
	.byte	0x74
	.byte	0x1
	.byte	0x1
	.uaword	0xe2b
	.uleb128 0xf
	.uaword	0x43b
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"IR_setSrvAngle"
	.byte	0xf
	.byte	0x76
	.byte	0x1
	.byte	0x1
	.uaword	0xe4a
	.uleb128 0xf
	.uaword	0x43b
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"IR_setLed0"
	.byte	0x10
	.byte	0x54
	.byte	0x1
	.byte	0x1
	.uaword	0xe65
	.uleb128 0xf
	.uaword	0x44a
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"IR_setMotor0En"
	.byte	0x10
	.byte	0x5c
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.uaword	0x44a
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x1d
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
	.uahalf	0xa
	.byte	0x9e
	.uleb128 0x8
	.uaword	0
	.uaword	0
	.uaword	.LVL4
	.uaword	.LVL5-1
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL5-1
	.uaword	.LVL8
	.uahalf	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL19
	.uaword	.LVL20-1
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL20-1
	.uaword	.LVL34
	.uahalf	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL35
	.uaword	.LVL37
	.uahalf	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x59
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL37
	.uaword	.LFE883
	.uahalf	0xa
	.byte	0x9e
	.uleb128 0x8
	.uaword	0
	.uaword	0
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL22
	.uaword	.LVL23-1
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL23-1
	.uaword	.LVL34
	.uahalf	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x4
	.byte	0x5b
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL11
	.uaword	.LVL12-1
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL12-1
	.uaword	.LVL34
	.uahalf	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x5d
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL29
	.uaword	.LVL30-1
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL8
	.uaword	.LVL9-1
	.uahalf	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL9-1
	.uaword	.LVL34
	.uahalf	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x2c
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	IR_setMotor0En,STT_FUNC,0
	.extern	IR_setLed0,STT_FUNC,0
	.extern	IR_setSrvAngle,STT_FUNC,0
	.extern	IR_Ctrl,STT_OBJECT,12
	.extern	IR_setMotor0Vol,STT_FUNC,0
	.extern	IR_Controller_P,STT_OBJECT,64
	.extern	IR_Encoder,STT_OBJECT,12
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
