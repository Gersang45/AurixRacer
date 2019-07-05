	.file	"vl53l1_wait.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.VL53L1_is_boot_complete,"ax",@progbits
	.align 1
	.global	VL53L1_is_boot_complete
	.type	VL53L1_is_boot_complete, @function
VL53L1_is_boot_complete:
.LFB4:
	.file 1 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_wait.c"
	.loc 1 300 0
.LVL0:
	.loc 1 307 0
	mov	%d15, 0
	.loc 1 300 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 300 0
	mov.aa	%a12, %a5
	.loc 1 307 0
	lea	%a5, [%SP] 8
.LVL1:
	st.b	[+%a5]-1, %d15
	.loc 1 313 0
	mov	%d4, 229
	.loc 1 300 0
	mov.aa	%a15, %a4
	.loc 1 313 0
	call	VL53L1_RdByte
.LVL2:
	.loc 1 323 0
	ld.bu	%d15, [%SP] 7
	.loc 1 313 0
	mov	%d8, %d2
.LVL3:
	.loc 1 323 0
	and	%d15, %d15, 1
	jnz	%d15, .L5
	.loc 1 329 0
	st.b	[%a12]0, %d15
	.loc 1 330 0
	mov.aa	%a4, %a15
	mov	%d4, 2
	call	VL53L1_init_ll_driver_state
.LVL4:
	.loc 1 338 0
	mov	%d2, %d8
	ret
.L5:
	.loc 1 324 0
	mov	%d15, 1
	.loc 1 325 0
	mov.aa	%a4, %a15
	mov	%d4, 3
	.loc 1 324 0
	st.b	[%a12]0, %d15
	.loc 1 325 0
	call	VL53L1_init_ll_driver_state
.LVL5:
	.loc 1 338 0
	mov	%d2, %d8
	ret
.LFE4:
	.size	VL53L1_is_boot_complete, .-VL53L1_is_boot_complete
.section .text.VL53L1_is_firmware_ready,"ax",@progbits
	.align 1
	.global	VL53L1_is_firmware_ready
	.type	VL53L1_is_firmware_ready, @function
VL53L1_is_firmware_ready:
.LFB5:
	.loc 1 344 0
.LVL6:
	.loc 1 344 0
	mov.aa	%a12, %a5
	mov.aa	%a15, %a4
.LVL7:
	.loc 1 354 0
	call	VL53L1_is_firmware_ready_silicon
.LVL8:
	.loc 1 358 0
	ld.bu	%d15, [%a12]0
	st.b	[%a15] 32, %d15
	.loc 1 363 0
	ret
.LFE5:
	.size	VL53L1_is_firmware_ready, .-VL53L1_is_firmware_ready
.section .text.VL53L1_is_new_data_ready,"ax",@progbits
	.align 1
	.global	VL53L1_is_new_data_ready
	.type	VL53L1_is_new_data_ready, @function
VL53L1_is_new_data_ready:
.LFB6:
	.loc 1 369 0
.LVL9:
	.loc 1 380 0
	mov	%d15, 0
	.loc 1 369 0
	sub.a	%SP, 8
.LCFI1:
	.loc 1 369 0
	mov.aa	%a15, %a5
	.loc 1 380 0
	lea	%a5, [%SP] 8
.LVL10:
	st.b	[+%a5]-1, %d15
.LVL11:
	.loc 1 396 0
	mov	%d4, 49
	.loc 1 389 0
	ld.bu	%d8, [%a4] 368
	.loc 1 396 0
	call	VL53L1_RdByte
.LVL12:
	.loc 1 403 0
	ld.bu	%d3, [%SP] 7
	.loc 1 389 0
	nand.t	%d8, %d8,4, %d8,4
.LVL13:
	.loc 1 403 0
	and	%d3, %d3, 1
	jeq	%d3, %d8, .L10
	.loc 1 406 0
	st.b	[%a15]0, %d15
	.loc 1 411 0
	ret
.L10:
	.loc 1 404 0
	mov	%d15, 1
	st.b	[%a15]0, %d15
	ret
.LFE6:
	.size	VL53L1_is_new_data_ready, .-VL53L1_is_new_data_ready
.section .rodata,"a",@progbits
.LC0:
	.string	"WDB_VL53L1_WaitValueMaskEx Status : %d\n"
.section .text.VL53L1_poll_for_boot_completion,"ax",@progbits
	.align 1
	.global	VL53L1_poll_for_boot_completion
	.type	VL53L1_poll_for_boot_completion, @function
VL53L1_poll_for_boot_completion:
.LFB7:
	.loc 1 419 0
.LVL14:
	sub.a	%SP, 8
.LCFI2:
	.loc 1 419 0
	mov	%d8, %d4
	.loc 1 435 0
	mov	%d4, 1200
.LVL15:
	.loc 1 419 0
	mov.aa	%a15, %a4
	.loc 1 435 0
	call	VL53L1_WaitUs
.LVL16:
	mov	%d15, %d2
.LVL17:
	.loc 1 439 0
	jz	%d2, .L13
.LVL18:
.L12:
	.loc 1 459 0
	mov	%d2, %d15
	ret
.LVL19:
.L13:
	.loc 1 441 0
	mov	%d15, 1
	mov.aa	%a4, %a15
	mov	%d4, %d8
	st.w	[%SP]0, %d15
	mov	%d5, 229
	mov	%d6, 1
	mov	%d7, 1
	call	VL53L1_WaitValueMaskEx
.LVL20:
	.loc 1 450 0
	movh.a	%a4, hi:.LC0
	.loc 1 441 0
	mov	%d15, %d2
.LVL21:
	.loc 1 450 0
	st.w	[%SP]0, %d2
	lea	%a4, [%a4] lo:.LC0
	call	printf
.LVL22:
	.loc 1 453 0
	jnz	%d15, .L12
	.loc 1 454 0
	mov.aa	%a4, %a15
	mov	%d4, 3
	call	VL53L1_init_ll_driver_state
.LVL23:
	.loc 1 459 0
	mov	%d2, %d15
	ret
.LFE7:
	.size	VL53L1_poll_for_boot_completion, .-VL53L1_poll_for_boot_completion
.section .text.VL53L1_wait_for_boot_completion,"ax",@progbits
	.align 1
	.global	VL53L1_wait_for_boot_completion
	.type	VL53L1_wait_for_boot_completion, @function
VL53L1_wait_for_boot_completion:
.LFB0:
	.loc 1 90 0
.LVL24:
	.loc 1 98 0
	mov	%d15, 0
	.loc 1 90 0
	sub.a	%SP, 8
.LCFI3:
	.loc 1 102 0
	ld.bu	%d3, [%a4]0
	.loc 1 98 0
	st.b	[%SP] 7, %d15
	.loc 1 90 0
	mov.aa	%a15, %a4
	mov	%d15, 0
	mov	%d2, 0
	.loc 1 102 0
	jz	%d3, .L22
.LVL25:
	.loc 1 116 0
	eq	%d3, %d15, 0
	and.eq	%d3, %d2, 0
	jz	%d3, .L23
.LVL26:
.L19:
	.loc 1 117 0
	mov.aa	%a4, %a15
	lea	%a5, [%SP] 7
	call	VL53L1_is_boot_complete
.LVL27:
	.loc 1 121 0
	jz	%d2, .L24
	ld.bu	%d15, [%SP] 7
.LVL28:
.L25:
	.loc 1 116 0
	eq	%d3, %d15, 0
	and.eq	%d3, %d2, 0
	jnz	%d3, .L19
.LVL29:
.L23:
	.loc 1 133 0
	ret
.L24:
	.loc 1 122 0
	mov.aa	%a4, %a15
	mov	%d4, 1
	call	VL53L1_WaitMs
.LVL30:
	ld.bu	%d15, [%SP] 7
	j	.L25
.LVL31:
.L22:
	.loc 1 106 0
	mov	%d4, 500
	j	VL53L1_poll_for_boot_completion
.LVL32:
.LFE0:
	.size	VL53L1_wait_for_boot_completion, .-VL53L1_wait_for_boot_completion
.section .text.VL53L1_poll_for_firmware_ready,"ax",@progbits
	.align 1
	.global	VL53L1_poll_for_firmware_ready
	.type	VL53L1_poll_for_firmware_ready, @function
VL53L1_poll_for_firmware_ready:
.LFB8:
	.loc 1 465 0
.LVL33:
	.loc 1 474 0
	mov	%d15, 0
	.loc 1 465 0
	sub.a	%SP, 16
.LCFI4:
	.loc 1 465 0
	mov.aa	%a15, %a4
.LVL34:
	.loc 1 481 0
	lea	%a4, [%SP] 8
.LVL35:
	.loc 1 465 0
	mov	%d8, %d4
	.loc 1 474 0
	st.w	[%SP] 8, %d15
	.loc 1 475 0
	st.w	[%SP] 12, %d15
.LVL36:
	.loc 1 477 0
	st.b	[%SP] 7, %d15
	.loc 1 481 0
	call	VL53L1_GetTickCount
.LVL37:
	.loc 1 482 0
	mov	%d2, 0
	st.w	[%a15] 28, %d15
.LVL38:
.L27:
	.loc 1 486 0 discriminator 1
	jge.u	%d2, %d8, .L31
.L39:
	.loc 1 487 0
	ld.bu	%d15, [%SP] 7
	jnz	%d15, .L37
.LVL39:
.LBB6:
.LBB7:
	.loc 1 354 0
	mov.aa	%a4, %a15
	lea	%a5, [%SP] 7
.LVL40:
	call	VL53L1_is_firmware_ready_silicon
.LVL41:
	mov	%d9, %d2
.LVL42:
	.loc 1 358 0
	ld.bu	%d2, [%SP] 7
.LVL43:
	st.b	[%a15] 32, %d2
.LVL44:
.LBE7:
.LBE6:
	.loc 1 494 0
	jnz	%d9, .L28
	.loc 1 494 0 is_stmt 0 discriminator 1
	jz	%d2, .L38
.LVL45:
	.loc 1 506 0 is_stmt 1
	lea	%a4, [%SP] 12
	call	VL53L1_GetTickCount
.LVL46:
	.loc 1 508 0
	ld.w	%d2, [%SP] 8
	ld.w	%d15, [%SP] 12
	sub	%d2, %d15, %d2
	.loc 1 507 0
	st.w	[%a15] 28, %d2
	.loc 1 486 0
	jlt.u	%d2, %d8, .L39
.LVL47:
.L31:
	.loc 1 511 0
	ld.bu	%d2, [%SP] 7
	.loc 1 512 0
	mov	%d15, 0
	sel	%d9, %d2, %d15, -7
	.loc 1 517 0
	mov	%d2, %d9
	ret
.LVL48:
.L28:
	.loc 1 506 0
	lea	%a4, [%SP] 12
	call	VL53L1_GetTickCount
.LVL49:
	.loc 1 508 0
	ld.w	%d2, [%SP] 8
	ld.w	%d15, [%SP] 12
	sub	%d2, %d15, %d2
	.loc 1 507 0
	st.w	[%a15] 28, %d2
.LVL50:
.L36:
	.loc 1 517 0
	mov	%d2, %d9
	ret
.LVL51:
.L38:
	.loc 1 497 0
	mov.aa	%a4, %a15
	mov	%d4, 1
	call	VL53L1_WaitMs
.LVL52:
	.loc 1 506 0
	lea	%a4, [%SP] 12
	.loc 1 497 0
	mov	%d9, %d2
.LVL53:
	.loc 1 506 0
	call	VL53L1_GetTickCount
.LVL54:
	.loc 1 508 0
	ld.w	%d2, [%SP] 8
	ld.w	%d15, [%SP] 12
	sub	%d2, %d15, %d2
	.loc 1 507 0
	st.w	[%a15] 28, %d2
	.loc 1 486 0
	jz	%d9, .L27
	j	.L36
.LVL55:
.L37:
	mov	%d9, 0
	.loc 1 517 0
	mov	%d2, %d9
	ret
.LFE8:
	.size	VL53L1_poll_for_firmware_ready, .-VL53L1_poll_for_firmware_ready
.section .text.VL53L1_wait_for_firmware_ready,"ax",@progbits
	.align 1
	.global	VL53L1_wait_for_firmware_ready
	.type	VL53L1_wait_for_firmware_ready, @function
VL53L1_wait_for_firmware_ready:
.LFB1:
	.loc 1 138 0
.LVL56:
	.loc 1 147 0
	mov	%d15, 0
	.loc 1 138 0
	sub.a	%SP, 8
.LCFI5:
	.loc 1 138 0
	mov.aa	%a15, %a4
	.loc 1 147 0
	st.b	[%SP] 7, %d15
.LVL57:
	.loc 1 155 0
	ld.bu	%d15, [%a4] 460
	.loc 1 144 0
	mov	%d2, 0
	.loc 1 155 0
	and	%d15, %d15, 240
.LVL58:
	.loc 1 164 0
	eq	%d3, %d15, 16
	or.eq	%d3, %d15, 64
	jz	%d3, .L41
	.loc 1 167 0
	ld.bu	%d3, [%a4]0
	mov	%d15, 0
.LVL59:
	jnz	%d3, .L43
	.loc 1 171 0
	mov	%d4, 2000
	j	VL53L1_poll_for_firmware_ready
.LVL60:
.L44:
.LBB8:
.LBB9:
	.loc 1 354 0
	mov.aa	%a4, %a15
	lea	%a5, [%SP] 7
.LVL61:
	call	VL53L1_is_firmware_ready_silicon
.LVL62:
	.loc 1 358 0
	ld.bu	%d15, [%SP] 7
	st.b	[%a15] 32, %d15
.LBE9:
.LBE8:
	.loc 1 186 0
	jz	%d2, .L49
.LVL63:
.L43:
	.loc 1 181 0
	eq	%d3, %d15, 0
	and.eq	%d3, %d2, 0
	jnz	%d3, .L44
.LVL64:
.L41:
	.loc 1 198 0
	ret
.LVL65:
.L49:
	.loc 1 187 0
	mov.aa	%a4, %a15
	mov	%d4, 1
	call	VL53L1_WaitMs
.LVL66:
	ld.bu	%d15, [%SP] 7
	j	.L43
.LFE1:
	.size	VL53L1_wait_for_firmware_ready, .-VL53L1_wait_for_firmware_ready
.section .text.VL53L1_poll_for_range_completion,"ax",@progbits
	.align 1
	.global	VL53L1_poll_for_range_completion
	.type	VL53L1_poll_for_range_completion, @function
VL53L1_poll_for_range_completion:
.LFB9:
	.loc 1 523 0
.LVL67:
	.loc 1 549 0
	mov	%d15, 1
	.loc 1 544 0
	ld.bu	%d6, [%a4] 368
	.loc 1 523 0
	sub.a	%SP, 8
.LCFI6:
	.loc 1 549 0
	st.w	[%SP]0, %d15
.LVL68:
	mov	%d5, 49
	nand.t	%d6, %d6,4, %d6,4
.LVL69:
	mov	%d7, 1
	.loc 1 561 0
	j	VL53L1_WaitValueMaskEx
.LVL70:
.LFE9:
	.size	VL53L1_poll_for_range_completion, .-VL53L1_poll_for_range_completion
.section .text.VL53L1_wait_for_range_completion,"ax",@progbits
	.align 1
	.global	VL53L1_wait_for_range_completion
	.type	VL53L1_wait_for_range_completion, @function
VL53L1_wait_for_range_completion:
.LFB2:
	.loc 1 203 0
.LVL71:
	.loc 1 211 0
	mov	%d15, 0
	.loc 1 203 0
	sub.a	%SP, 8
.LCFI7:
	.loc 1 215 0
	ld.bu	%d3, [%a4]0
	.loc 1 211 0
	st.b	[%SP] 7, %d15
	.loc 1 203 0
	mov.aa	%a15, %a4
	mov	%d15, 0
	mov	%d2, 0
	.loc 1 215 0
	jz	%d3, .L59
.LVL72:
	.loc 1 229 0
	eq	%d3, %d15, 0
	and.eq	%d3, %d2, 0
	jz	%d3, .L60
.LVL73:
.L56:
	.loc 1 230 0
	mov.aa	%a4, %a15
	lea	%a5, [%SP] 7
	call	VL53L1_is_new_data_ready
.LVL74:
	.loc 1 234 0
	jz	%d2, .L61
	ld.bu	%d15, [%SP] 7
.LVL75:
.L62:
	.loc 1 229 0
	eq	%d3, %d15, 0
	and.eq	%d3, %d2, 0
	jnz	%d3, .L56
.LVL76:
.L60:
	.loc 1 245 0
	ret
.L61:
	.loc 1 235 0
	mov.aa	%a4, %a15
	mov	%d4, 1
	call	VL53L1_WaitMs
.LVL77:
	ld.bu	%d15, [%SP] 7
	j	.L62
.LVL78:
.L59:
	.loc 1 219 0
	mov	%d4, 2000
	j	VL53L1_poll_for_range_completion
.LVL79:
.LFE2:
	.size	VL53L1_wait_for_range_completion, .-VL53L1_wait_for_range_completion
.section .text.VL53L1_wait_for_test_completion,"ax",@progbits
	.align 1
	.global	VL53L1_wait_for_test_completion
	.type	VL53L1_wait_for_test_completion, @function
VL53L1_wait_for_test_completion:
.LFB3:
	.loc 1 250 0
.LVL80:
	.loc 1 258 0
	mov	%d15, 0
	.loc 1 250 0
	sub.a	%SP, 8
.LCFI8:
	.loc 1 262 0
	ld.bu	%d3, [%a4]0
	.loc 1 258 0
	st.b	[%SP] 7, %d15
	.loc 1 250 0
	mov.aa	%a15, %a4
	mov	%d15, 0
	mov	%d2, 0
	.loc 1 262 0
	jz	%d3, .L71
.LVL81:
	.loc 1 276 0
	eq	%d3, %d15, 0
	and.eq	%d3, %d2, 0
	jz	%d3, .L72
.LVL82:
.L68:
	.loc 1 277 0
	mov.aa	%a4, %a15
	lea	%a5, [%SP] 7
	call	VL53L1_is_new_data_ready
.LVL83:
	.loc 1 281 0
	jz	%d2, .L73
	ld.bu	%d15, [%SP] 7
.LVL84:
.L74:
	.loc 1 276 0
	eq	%d3, %d15, 0
	and.eq	%d3, %d2, 0
	jnz	%d3, .L68
.LVL85:
.L72:
	.loc 1 292 0
	ret
.L73:
	.loc 1 282 0
	mov.aa	%a4, %a15
	mov	%d4, 1
	call	VL53L1_WaitMs
.LVL86:
	ld.bu	%d15, [%SP] 7
	j	.L74
.LVL87:
.L71:
	.loc 1 266 0
	mov.u	%d4, 60000
	j	VL53L1_poll_for_range_completion
.LVL88:
.LFE3:
	.size	VL53L1_wait_for_test_completion, .-VL53L1_wait_for_test_completion
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
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.byte	0x4
	.uaword	.LCFI0-.LFB4
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.byte	0x4
	.uaword	.LCFI1-.LFB6
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.byte	0x4
	.uaword	.LCFI2-.LFB7
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.byte	0x4
	.uaword	.LCFI3-.LFB0
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.byte	0x4
	.uaword	.LCFI4-.LFB8
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.byte	0x4
	.uaword	.LCFI5-.LFB1
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.byte	0x4
	.uaword	.LCFI6-.LFB9
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.byte	0x4
	.uaword	.LCFI7-.LFB2
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.byte	0x4
	.uaword	.LCFI8-.LFB3
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE18:
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
	.file 11 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_silicon_core.h"
	.file 12 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\tricore\\include\\stdio.h"
	.file 13 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_core.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x4d15
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/LLD/Vl53l1_api/vl53l1_wait.c"
	.string	"D:\\\\MinKyu_AurixRacer\\\\Projects\\\\AurixRacer_SB_TC27D"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"int8_t"
	.byte	0x2
	.byte	0x29
	.uaword	0x1a4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.string	"uint8_t"
	.byte	0x2
	.byte	0x2a
	.uaword	0x1c2
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.string	"int16_t"
	.byte	0x2
	.byte	0x35
	.uaword	0x1e2
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.string	"uint16_t"
	.byte	0x2
	.byte	0x36
	.uaword	0x1ff
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.string	"int32_t"
	.byte	0x2
	.byte	0x4f
	.uaword	0x224
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.string	"uint32_t"
	.byte	0x2
	.byte	0x50
	.uaword	0x240
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
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2b1
	.uleb128 0x5
	.uaword	0x2a3
	.uleb128 0x2
	.string	"FixPoint1616_t"
	.byte	0x3
	.byte	0x93
	.uaword	0x230
	.uleb128 0x2
	.string	"VL53L1_WaitMethod"
	.byte	0x4
	.byte	0x59
	.uaword	0x1b3
	.uleb128 0x2
	.string	"VL53L1_DeviceState"
	.byte	0x4
	.byte	0x65
	.uaword	0x1b3
	.uleb128 0x2
	.string	"VL53L1_DevicePresetModes"
	.byte	0x4
	.byte	0x7d
	.uaword	0x1b3
	.uleb128 0x2
	.string	"VL53L1_DeviceMeasurementModes"
	.byte	0x4
	.byte	0x96
	.uaword	0x1b3
	.uleb128 0x2
	.string	"VL53L1_OffsetCalibrationMode"
	.byte	0x4
	.byte	0xa5
	.uaword	0x1b3
	.uleb128 0x2
	.string	"VL53L1_OffsetCorrectionMode"
	.byte	0x4
	.byte	0xb6
	.uaword	0x1b3
	.uleb128 0x6
	.string	"VL53L1_DeviceSscArray"
	.byte	0x4
	.uahalf	0x1b2
	.uaword	0x1b3
	.uleb128 0x6
	.string	"VL53L1_GPIO_Interrupt_Mode"
	.byte	0x4
	.uahalf	0x21c
	.uaword	0x1b3
	.uleb128 0x2
	.string	"VL53L1_Error"
	.byte	0x5
	.byte	0x59
	.uaword	0x196
	.uleb128 0x7
	.byte	0xc
	.byte	0x6
	.byte	0x80
	.uaword	0x54e
	.uleb128 0x8
	.string	"i2c_slave__device_address"
	.byte	0x6
	.byte	0x81
	.uaword	0x1b3
	.byte	0
	.uleb128 0x8
	.string	"ana_config__vhv_ref_sel_vddpix"
	.byte	0x6
	.byte	0x8b
	.uaword	0x1b3
	.byte	0x1
	.uleb128 0x8
	.string	"ana_config__vhv_ref_sel_vquench"
	.byte	0x6
	.byte	0x95
	.uaword	0x1b3
	.byte	0x2
	.uleb128 0x8
	.string	"ana_config__reg_avdd1v2_sel"
	.byte	0x6
	.byte	0x9f
	.uaword	0x1b3
	.byte	0x3
	.uleb128 0x8
	.string	"ana_config__fast_osc__trim"
	.byte	0x6
	.byte	0xa9
	.uaword	0x1b3
	.byte	0x4
	.uleb128 0x8
	.string	"osc_measured__fast_osc__frequency"
	.byte	0x6
	.byte	0xb3
	.uaword	0x1ef
	.byte	0x6
	.uleb128 0x8
	.string	"vhv_config__timeout_macrop_loop_bound"
	.byte	0x6
	.byte	0xbd
	.uaword	0x1b3
	.byte	0x8
	.uleb128 0x8
	.string	"vhv_config__count_thresh"
	.byte	0x6
	.byte	0xc8
	.uaword	0x1b3
	.byte	0x9
	.uleb128 0x8
	.string	"vhv_config__offset"
	.byte	0x6
	.byte	0xd2
	.uaword	0x1b3
	.byte	0xa
	.uleb128 0x8
	.string	"vhv_config__init"
	.byte	0x6
	.byte	0xdc
	.uaword	0x1b3
	.byte	0xb
	.byte	0
	.uleb128 0x2
	.string	"VL53L1_static_nvm_managed_t"
	.byte	0x6
	.byte	0xe7
	.uaword	0x3e0
	.uleb128 0x7
	.byte	0x18
	.byte	0x6
	.byte	0xf3
	.uaword	0x7c3
	.uleb128 0x8
	.string	"global_config__spad_enables_ref_0"
	.byte	0x6
	.byte	0xf4
	.uaword	0x1b3
	.byte	0
	.uleb128 0x8
	.string	"global_config__spad_enables_ref_1"
	.byte	0x6
	.byte	0xfe
	.uaword	0x1b3
	.byte	0x1
	.uleb128 0x9
	.string	"global_config__spad_enables_ref_2"
	.byte	0x6
	.uahalf	0x108
	.uaword	0x1b3
	.byte	0x2
	.uleb128 0x9
	.string	"global_config__spad_enables_ref_3"
	.byte	0x6
	.uahalf	0x112
	.uaword	0x1b3
	.byte	0x3
	.uleb128 0x9
	.string	"global_config__spad_enables_ref_4"
	.byte	0x6
	.uahalf	0x11c
	.uaword	0x1b3
	.byte	0x4
	.uleb128 0x9
	.string	"global_config__spad_enables_ref_5"
	.byte	0x6
	.uahalf	0x126
	.uaword	0x1b3
	.byte	0x5
	.uleb128 0x9
	.string	"global_config__ref_en_start_select"
	.byte	0x6
	.uahalf	0x130
	.uaword	0x1b3
	.byte	0x6
	.uleb128 0x9
	.string	"ref_spad_man__num_requested_ref_spads"
	.byte	0x6
	.uahalf	0x13a
	.uaword	0x1b3
	.byte	0x7
	.uleb128 0x9
	.string	"ref_spad_man__ref_location"
	.byte	0x6
	.uahalf	0x144
	.uaword	0x1b3
	.byte	0x8
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x14e
	.uaword	0x1ef
	.byte	0xa
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x158
	.uaword	0x1d3
	.byte	0xc
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x162
	.uaword	0x1d3
	.byte	0xe
	.uleb128 0x9
	.string	"ref_spad_char__total_rate_target_mcps"
	.byte	0x6
	.uahalf	0x16c
	.uaword	0x1ef
	.byte	0x10
	.uleb128 0x9
	.string	"algo__part_to_part_range_offset_mm"
	.byte	0x6
	.uahalf	0x176
	.uaword	0x1d3
	.byte	0x12
	.uleb128 0x9
	.string	"mm_config__inner_offset_mm"
	.byte	0x6
	.uahalf	0x180
	.uaword	0x1d3
	.byte	0x14
	.uleb128 0x9
	.string	"mm_config__outer_offset_mm"
	.byte	0x6
	.uahalf	0x18a
	.uaword	0x1d3
	.byte	0x16
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_customer_nvm_managed_t"
	.byte	0x6
	.uahalf	0x194
	.uaword	0x571
	.uleb128 0xb
	.byte	0x20
	.byte	0x6
	.uahalf	0x1a0
	.uaword	0xc1f
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x1a1
	.uaword	0x1ef
	.byte	0
	.uleb128 0x9
	.string	"debug__ctrl"
	.byte	0x6
	.uahalf	0x1ab
	.uaword	0x1b3
	.byte	0x2
	.uleb128 0x9
	.string	"test_mode__ctrl"
	.byte	0x6
	.uahalf	0x1b5
	.uaword	0x1b3
	.byte	0x3
	.uleb128 0x9
	.string	"clk_gating__ctrl"
	.byte	0x6
	.uahalf	0x1bf
	.uaword	0x1b3
	.byte	0x4
	.uleb128 0x9
	.string	"nvm_bist__ctrl"
	.byte	0x6
	.uahalf	0x1cc
	.uaword	0x1b3
	.byte	0x5
	.uleb128 0x9
	.string	"nvm_bist__num_nvm_words"
	.byte	0x6
	.uahalf	0x1d7
	.uaword	0x1b3
	.byte	0x6
	.uleb128 0x9
	.string	"nvm_bist__start_address"
	.byte	0x6
	.uahalf	0x1e1
	.uaword	0x1b3
	.byte	0x7
	.uleb128 0x9
	.string	"host_if__status"
	.byte	0x6
	.uahalf	0x1eb
	.uaword	0x1b3
	.byte	0x8
	.uleb128 0x9
	.string	"pad_i2c_hv__config"
	.byte	0x6
	.uahalf	0x1f5
	.uaword	0x1b3
	.byte	0x9
	.uleb128 0x9
	.string	"pad_i2c_hv__extsup_config"
	.byte	0x6
	.uahalf	0x204
	.uaword	0x1b3
	.byte	0xa
	.uleb128 0x9
	.string	"gpio_hv_pad__ctrl"
	.byte	0x6
	.uahalf	0x20e
	.uaword	0x1b3
	.byte	0xb
	.uleb128 0x9
	.string	"gpio_hv_mux__ctrl"
	.byte	0x6
	.uahalf	0x219
	.uaword	0x1b3
	.byte	0xc
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x6
	.uahalf	0x224
	.uaword	0x1b3
	.byte	0xd
	.uleb128 0x9
	.string	"gpio__fio_hv_status"
	.byte	0x6
	.uahalf	0x22f
	.uaword	0x1b3
	.byte	0xe
	.uleb128 0x9
	.string	"ana_config__spad_sel_pswidth"
	.byte	0x6
	.uahalf	0x239
	.uaword	0x1b3
	.byte	0xf
	.uleb128 0x9
	.string	"ana_config__vcsel_pulse_width_offset"
	.byte	0x6
	.uahalf	0x243
	.uaword	0x1b3
	.byte	0x10
	.uleb128 0x9
	.string	"ana_config__fast_osc__config_ctrl"
	.byte	0x6
	.uahalf	0x24d
	.uaword	0x1b3
	.byte	0x11
	.uleb128 0x9
	.string	"sigma_estimator__effective_pulse_width_ns"
	.byte	0x6
	.uahalf	0x257
	.uaword	0x1b3
	.byte	0x12
	.uleb128 0x9
	.string	"sigma_estimator__effective_ambient_width_ns"
	.byte	0x6
	.uahalf	0x261
	.uaword	0x1b3
	.byte	0x13
	.uleb128 0x9
	.string	"sigma_estimator__sigma_ref_mm"
	.byte	0x6
	.uahalf	0x26b
	.uaword	0x1b3
	.byte	0x14
	.uleb128 0x9
	.string	"algo__crosstalk_compensation_valid_height_mm"
	.byte	0x6
	.uahalf	0x275
	.uaword	0x1b3
	.byte	0x15
	.uleb128 0x9
	.string	"spare_host_config__static_config_spare_0"
	.byte	0x6
	.uahalf	0x27f
	.uaword	0x1b3
	.byte	0x16
	.uleb128 0x9
	.string	"spare_host_config__static_config_spare_1"
	.byte	0x6
	.uahalf	0x289
	.uaword	0x1b3
	.byte	0x17
	.uleb128 0x9
	.string	"algo__range_ignore_threshold_mcps"
	.byte	0x6
	.uahalf	0x293
	.uaword	0x1ef
	.byte	0x18
	.uleb128 0x9
	.string	"algo__range_ignore_valid_height_mm"
	.byte	0x6
	.uahalf	0x29d
	.uaword	0x1b3
	.byte	0x1a
	.uleb128 0x9
	.string	"algo__range_min_clip"
	.byte	0x6
	.uahalf	0x2a7
	.uaword	0x1b3
	.byte	0x1b
	.uleb128 0x9
	.string	"algo__consistency_check__tolerance"
	.byte	0x6
	.uahalf	0x2b2
	.uaword	0x1b3
	.byte	0x1c
	.uleb128 0x9
	.string	"spare_host_config__static_config_spare_2"
	.byte	0x6
	.uahalf	0x2bc
	.uaword	0x1b3
	.byte	0x1d
	.uleb128 0x9
	.string	"sd_config__reset_stages_msb"
	.byte	0x6
	.uahalf	0x2c6
	.uaword	0x1b3
	.byte	0x1e
	.uleb128 0x9
	.string	"sd_config__reset_stages_lsb"
	.byte	0x6
	.uahalf	0x2d0
	.uaword	0x1b3
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_static_config_t"
	.byte	0x6
	.uahalf	0x2db
	.uaword	0x7e9
	.uleb128 0xb
	.byte	0x16
	.byte	0x6
	.uahalf	0x2e7
	.uaword	0xe92
	.uleb128 0x9
	.string	"gph_config__stream_count_update_value"
	.byte	0x6
	.uahalf	0x2e8
	.uaword	0x1b3
	.byte	0
	.uleb128 0x9
	.string	"global_config__stream_divider"
	.byte	0x6
	.uahalf	0x2f2
	.uaword	0x1b3
	.byte	0x1
	.uleb128 0x9
	.string	"system__interrupt_config_gpio"
	.byte	0x6
	.uahalf	0x2fc
	.uaword	0x1b3
	.byte	0x2
	.uleb128 0x9
	.string	"cal_config__vcsel_start"
	.byte	0x6
	.uahalf	0x30b
	.uaword	0x1b3
	.byte	0x3
	.uleb128 0x9
	.string	"cal_config__repeat_rate"
	.byte	0x6
	.uahalf	0x315
	.uaword	0x1ef
	.byte	0x4
	.uleb128 0x9
	.string	"global_config__vcsel_width"
	.byte	0x6
	.uahalf	0x31f
	.uaword	0x1b3
	.byte	0x6
	.uleb128 0x9
	.string	"phasecal_config__timeout_macrop"
	.byte	0x6
	.uahalf	0x329
	.uaword	0x1b3
	.byte	0x7
	.uleb128 0x9
	.string	"phasecal_config__target"
	.byte	0x6
	.uahalf	0x333
	.uaword	0x1b3
	.byte	0x8
	.uleb128 0x9
	.string	"phasecal_config__override"
	.byte	0x6
	.uahalf	0x33d
	.uaword	0x1b3
	.byte	0x9
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x347
	.uaword	0x1b3
	.byte	0xa
	.uleb128 0x9
	.string	"system__thresh_rate_high"
	.byte	0x6
	.uahalf	0x352
	.uaword	0x1ef
	.byte	0xc
	.uleb128 0x9
	.string	"system__thresh_rate_low"
	.byte	0x6
	.uahalf	0x35c
	.uaword	0x1ef
	.byte	0xe
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x6
	.uahalf	0x366
	.uaword	0x1ef
	.byte	0x10
	.uleb128 0x9
	.string	"dss_config__manual_block_select"
	.byte	0x6
	.uahalf	0x370
	.uaword	0x1b3
	.byte	0x12
	.uleb128 0x9
	.string	"dss_config__aperture_attenuation"
	.byte	0x6
	.uahalf	0x37a
	.uaword	0x1b3
	.byte	0x13
	.uleb128 0x9
	.string	"dss_config__max_spads_limit"
	.byte	0x6
	.uahalf	0x384
	.uaword	0x1b3
	.byte	0x14
	.uleb128 0x9
	.string	"dss_config__min_spads_limit"
	.byte	0x6
	.uahalf	0x38e
	.uaword	0x1b3
	.byte	0x15
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_general_config_t"
	.byte	0x6
	.uahalf	0x398
	.uaword	0xc3e
	.uleb128 0xb
	.byte	0x18
	.byte	0x6
	.uahalf	0x3a4
	.uaword	0x1148
	.uleb128 0x9
	.string	"mm_config__timeout_macrop_a_hi"
	.byte	0x6
	.uahalf	0x3a5
	.uaword	0x1b3
	.byte	0
	.uleb128 0x9
	.string	"mm_config__timeout_macrop_a_lo"
	.byte	0x6
	.uahalf	0x3af
	.uaword	0x1b3
	.byte	0x1
	.uleb128 0x9
	.string	"mm_config__timeout_macrop_b_hi"
	.byte	0x6
	.uahalf	0x3b9
	.uaword	0x1b3
	.byte	0x2
	.uleb128 0x9
	.string	"mm_config__timeout_macrop_b_lo"
	.byte	0x6
	.uahalf	0x3c3
	.uaword	0x1b3
	.byte	0x3
	.uleb128 0x9
	.string	"range_config__timeout_macrop_a_hi"
	.byte	0x6
	.uahalf	0x3cd
	.uaword	0x1b3
	.byte	0x4
	.uleb128 0x9
	.string	"range_config__timeout_macrop_a_lo"
	.byte	0x6
	.uahalf	0x3d7
	.uaword	0x1b3
	.byte	0x5
	.uleb128 0x9
	.string	"range_config__vcsel_period_a"
	.byte	0x6
	.uahalf	0x3e1
	.uaword	0x1b3
	.byte	0x6
	.uleb128 0x9
	.string	"range_config__timeout_macrop_b_hi"
	.byte	0x6
	.uahalf	0x3eb
	.uaword	0x1b3
	.byte	0x7
	.uleb128 0x9
	.string	"range_config__timeout_macrop_b_lo"
	.byte	0x6
	.uahalf	0x3f5
	.uaword	0x1b3
	.byte	0x8
	.uleb128 0x9
	.string	"range_config__vcsel_period_b"
	.byte	0x6
	.uahalf	0x3ff
	.uaword	0x1b3
	.byte	0x9
	.uleb128 0x9
	.string	"range_config__sigma_thresh"
	.byte	0x6
	.uahalf	0x409
	.uaword	0x1ef
	.byte	0xa
	.uleb128 0x9
	.string	"range_config__min_count_rate_rtn_limit_mcps"
	.byte	0x6
	.uahalf	0x413
	.uaword	0x1ef
	.byte	0xc
	.uleb128 0x9
	.string	"range_config__valid_phase_low"
	.byte	0x6
	.uahalf	0x41d
	.uaword	0x1b3
	.byte	0xe
	.uleb128 0x9
	.string	"range_config__valid_phase_high"
	.byte	0x6
	.uahalf	0x427
	.uaword	0x1b3
	.byte	0xf
	.uleb128 0x9
	.string	"system__intermeasurement_period"
	.byte	0x6
	.uahalf	0x431
	.uaword	0x230
	.byte	0x10
	.uleb128 0x9
	.string	"system__fractional_enable"
	.byte	0x6
	.uahalf	0x43b
	.uaword	0x1b3
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_timing_config_t"
	.byte	0x6
	.uahalf	0x445
	.uaword	0xeb2
	.uleb128 0xb
	.byte	0x14
	.byte	0x6
	.uahalf	0x451
	.uaword	0x13ba
	.uleb128 0x9
	.string	"system__grouped_parameter_hold_0"
	.byte	0x6
	.uahalf	0x452
	.uaword	0x1b3
	.byte	0
	.uleb128 0x9
	.string	"system__thresh_high"
	.byte	0x6
	.uahalf	0x45d
	.uaword	0x1ef
	.byte	0x2
	.uleb128 0x9
	.string	"system__thresh_low"
	.byte	0x6
	.uahalf	0x467
	.uaword	0x1ef
	.byte	0x4
	.uleb128 0x9
	.string	"system__enable_xtalk_per_quadrant"
	.byte	0x6
	.uahalf	0x471
	.uaword	0x1b3
	.byte	0x6
	.uleb128 0x9
	.string	"system__seed_config"
	.byte	0x6
	.uahalf	0x47b
	.uaword	0x1b3
	.byte	0x7
	.uleb128 0x9
	.string	"sd_config__woi_sd0"
	.byte	0x6
	.uahalf	0x486
	.uaword	0x1b3
	.byte	0x8
	.uleb128 0x9
	.string	"sd_config__woi_sd1"
	.byte	0x6
	.uahalf	0x490
	.uaword	0x1b3
	.byte	0x9
	.uleb128 0x9
	.string	"sd_config__initial_phase_sd0"
	.byte	0x6
	.uahalf	0x49a
	.uaword	0x1b3
	.byte	0xa
	.uleb128 0x9
	.string	"sd_config__initial_phase_sd1"
	.byte	0x6
	.uahalf	0x4a4
	.uaword	0x1b3
	.byte	0xb
	.uleb128 0x9
	.string	"system__grouped_parameter_hold_1"
	.byte	0x6
	.uahalf	0x4ae
	.uaword	0x1b3
	.byte	0xc
	.uleb128 0x9
	.string	"sd_config__first_order_select"
	.byte	0x6
	.uahalf	0x4b9
	.uaword	0x1b3
	.byte	0xd
	.uleb128 0x9
	.string	"sd_config__quantifier"
	.byte	0x6
	.uahalf	0x4c4
	.uaword	0x1b3
	.byte	0xe
	.uleb128 0x9
	.string	"roi_config__user_roi_centre_spad"
	.byte	0x6
	.uahalf	0x4ce
	.uaword	0x1b3
	.byte	0xf
	.uleb128 0x9
	.string	"roi_config__user_roi_requested_global_xy_size"
	.byte	0x6
	.uahalf	0x4d8
	.uaword	0x1b3
	.byte	0x10
	.uleb128 0x9
	.string	"system__sequence_config"
	.byte	0x6
	.uahalf	0x4e2
	.uaword	0x1b3
	.byte	0x11
	.uleb128 0x9
	.string	"system__grouped_parameter_hold"
	.byte	0x6
	.uahalf	0x4f3
	.uaword	0x1b3
	.byte	0x12
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_dynamic_config_t"
	.byte	0x6
	.uahalf	0x4fe
	.uaword	0x1167
	.uleb128 0xb
	.byte	0x6
	.byte	0x6
	.uahalf	0x50a
	.uaword	0x1489
	.uleb128 0x9
	.string	"power_management__go1_power_force"
	.byte	0x6
	.uahalf	0x50b
	.uaword	0x1b3
	.byte	0
	.uleb128 0x9
	.string	"system__stream_count_ctrl"
	.byte	0x6
	.uahalf	0x515
	.uaword	0x1b3
	.byte	0x1
	.uleb128 0x9
	.string	"firmware__enable"
	.byte	0x6
	.uahalf	0x51f
	.uaword	0x1b3
	.byte	0x2
	.uleb128 0x9
	.string	"system__interrupt_clear"
	.byte	0x6
	.uahalf	0x529
	.uaword	0x1b3
	.byte	0x3
	.uleb128 0x9
	.string	"system__mode_start"
	.byte	0x6
	.uahalf	0x534
	.uaword	0x1b3
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_system_control_t"
	.byte	0x6
	.uahalf	0x543
	.uaword	0x13da
	.uleb128 0xb
	.byte	0x2c
	.byte	0x6
	.uahalf	0x54f
	.uaword	0x1898
	.uleb128 0x9
	.string	"result__interrupt_status"
	.byte	0x6
	.uahalf	0x550
	.uaword	0x1b3
	.byte	0
	.uleb128 0x9
	.string	"result__range_status"
	.byte	0x6
	.uahalf	0x55c
	.uaword	0x1b3
	.byte	0x1
	.uleb128 0x9
	.string	"result__report_status"
	.byte	0x6
	.uahalf	0x569
	.uaword	0x1b3
	.byte	0x2
	.uleb128 0x9
	.string	"result__stream_count"
	.byte	0x6
	.uahalf	0x573
	.uaword	0x1b3
	.byte	0x3
	.uleb128 0x9
	.string	"result__dss_actual_effective_spads_sd0"
	.byte	0x6
	.uahalf	0x57d
	.uaword	0x1ef
	.byte	0x4
	.uleb128 0x9
	.string	"result__peak_signal_count_rate_mcps_sd0"
	.byte	0x6
	.uahalf	0x587
	.uaword	0x1ef
	.byte	0x6
	.uleb128 0x9
	.string	"result__ambient_count_rate_mcps_sd0"
	.byte	0x6
	.uahalf	0x591
	.uaword	0x1ef
	.byte	0x8
	.uleb128 0x9
	.string	"result__sigma_sd0"
	.byte	0x6
	.uahalf	0x59b
	.uaword	0x1ef
	.byte	0xa
	.uleb128 0x9
	.string	"result__phase_sd0"
	.byte	0x6
	.uahalf	0x5a5
	.uaword	0x1ef
	.byte	0xc
	.uleb128 0x9
	.string	"result__final_crosstalk_corrected_range_mm_sd0"
	.byte	0x6
	.uahalf	0x5af
	.uaword	0x1ef
	.byte	0xe
	.uleb128 0x9
	.string	"result__peak_signal_count_rate_crosstalk_corrected_mcps_sd0"
	.byte	0x6
	.uahalf	0x5b9
	.uaword	0x1ef
	.byte	0x10
	.uleb128 0x9
	.string	"result__mm_inner_actual_effective_spads_sd0"
	.byte	0x6
	.uahalf	0x5c3
	.uaword	0x1ef
	.byte	0x12
	.uleb128 0x9
	.string	"result__mm_outer_actual_effective_spads_sd0"
	.byte	0x6
	.uahalf	0x5cd
	.uaword	0x1ef
	.byte	0x14
	.uleb128 0x9
	.string	"result__avg_signal_count_rate_mcps_sd0"
	.byte	0x6
	.uahalf	0x5d7
	.uaword	0x1ef
	.byte	0x16
	.uleb128 0x9
	.string	"result__dss_actual_effective_spads_sd1"
	.byte	0x6
	.uahalf	0x5e1
	.uaword	0x1ef
	.byte	0x18
	.uleb128 0x9
	.string	"result__peak_signal_count_rate_mcps_sd1"
	.byte	0x6
	.uahalf	0x5eb
	.uaword	0x1ef
	.byte	0x1a
	.uleb128 0x9
	.string	"result__ambient_count_rate_mcps_sd1"
	.byte	0x6
	.uahalf	0x5f5
	.uaword	0x1ef
	.byte	0x1c
	.uleb128 0x9
	.string	"result__sigma_sd1"
	.byte	0x6
	.uahalf	0x5ff
	.uaword	0x1ef
	.byte	0x1e
	.uleb128 0x9
	.string	"result__phase_sd1"
	.byte	0x6
	.uahalf	0x609
	.uaword	0x1ef
	.byte	0x20
	.uleb128 0x9
	.string	"result__final_crosstalk_corrected_range_mm_sd1"
	.byte	0x6
	.uahalf	0x613
	.uaword	0x1ef
	.byte	0x22
	.uleb128 0x9
	.string	"result__spare_0_sd1"
	.byte	0x6
	.uahalf	0x61d
	.uaword	0x1ef
	.byte	0x24
	.uleb128 0x9
	.string	"result__spare_1_sd1"
	.byte	0x6
	.uahalf	0x627
	.uaword	0x1ef
	.byte	0x26
	.uleb128 0x9
	.string	"result__spare_2_sd1"
	.byte	0x6
	.uahalf	0x631
	.uaword	0x1ef
	.byte	0x28
	.uleb128 0x9
	.string	"result__spare_3_sd1"
	.byte	0x6
	.uahalf	0x63b
	.uaword	0x1b3
	.byte	0x2a
	.uleb128 0x9
	.string	"result__thresh_info"
	.byte	0x6
	.uahalf	0x645
	.uaword	0x1b3
	.byte	0x2b
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_system_results_t"
	.byte	0x6
	.uahalf	0x650
	.uaword	0x14a9
	.uleb128 0xb
	.byte	0x24
	.byte	0x6
	.uahalf	0x65c
	.uaword	0x1a5a
	.uleb128 0x9
	.string	"result_core__ambient_window_events_sd0"
	.byte	0x6
	.uahalf	0x65d
	.uaword	0x230
	.byte	0
	.uleb128 0x9
	.string	"result_core__ranging_total_events_sd0"
	.byte	0x6
	.uahalf	0x667
	.uaword	0x230
	.byte	0x4
	.uleb128 0x9
	.string	"result_core__signal_total_events_sd0"
	.byte	0x6
	.uahalf	0x671
	.uaword	0x215
	.byte	0x8
	.uleb128 0x9
	.string	"result_core__total_periods_elapsed_sd0"
	.byte	0x6
	.uahalf	0x67b
	.uaword	0x230
	.byte	0xc
	.uleb128 0x9
	.string	"result_core__ambient_window_events_sd1"
	.byte	0x6
	.uahalf	0x685
	.uaword	0x230
	.byte	0x10
	.uleb128 0x9
	.string	"result_core__ranging_total_events_sd1"
	.byte	0x6
	.uahalf	0x68f
	.uaword	0x230
	.byte	0x14
	.uleb128 0x9
	.string	"result_core__signal_total_events_sd1"
	.byte	0x6
	.uahalf	0x699
	.uaword	0x215
	.byte	0x18
	.uleb128 0x9
	.string	"result_core__total_periods_elapsed_sd1"
	.byte	0x6
	.uahalf	0x6a3
	.uaword	0x230
	.byte	0x1c
	.uleb128 0x9
	.string	"result_core__spare_0"
	.byte	0x6
	.uahalf	0x6ad
	.uaword	0x1b3
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_core_results_t"
	.byte	0x6
	.uahalf	0x6b7
	.uaword	0x18b8
	.uleb128 0xb
	.byte	0x38
	.byte	0x6
	.uahalf	0x6c3
	.uaword	0x2099
	.uleb128 0x9
	.string	"phasecal_result__reference_phase"
	.byte	0x6
	.uahalf	0x6c4
	.uaword	0x1ef
	.byte	0
	.uleb128 0x9
	.string	"phasecal_result__vcsel_start"
	.byte	0x6
	.uahalf	0x6ce
	.uaword	0x1b3
	.byte	0x2
	.uleb128 0x9
	.string	"ref_spad_char_result__num_actual_ref_spads"
	.byte	0x6
	.uahalf	0x6d8
	.uaword	0x1b3
	.byte	0x3
	.uleb128 0x9
	.string	"ref_spad_char_result__ref_location"
	.byte	0x6
	.uahalf	0x6e2
	.uaword	0x1b3
	.byte	0x4
	.uleb128 0x9
	.string	"vhv_result__coldboot_status"
	.byte	0x6
	.uahalf	0x6ec
	.uaword	0x1b3
	.byte	0x5
	.uleb128 0x9
	.string	"vhv_result__search_result"
	.byte	0x6
	.uahalf	0x6f6
	.uaword	0x1b3
	.byte	0x6
	.uleb128 0x9
	.string	"vhv_result__latest_setting"
	.byte	0x6
	.uahalf	0x700
	.uaword	0x1b3
	.byte	0x7
	.uleb128 0x9
	.string	"result__osc_calibrate_val"
	.byte	0x6
	.uahalf	0x70a
	.uaword	0x1ef
	.byte	0x8
	.uleb128 0x9
	.string	"ana_config__powerdown_go1"
	.byte	0x6
	.uahalf	0x714
	.uaword	0x1b3
	.byte	0xa
	.uleb128 0x9
	.string	"ana_config__ref_bg_ctrl"
	.byte	0x6
	.uahalf	0x71f
	.uaword	0x1b3
	.byte	0xb
	.uleb128 0x9
	.string	"ana_config__regdvdd1v2_ctrl"
	.byte	0x6
	.uahalf	0x72a
	.uaword	0x1b3
	.byte	0xc
	.uleb128 0x9
	.string	"ana_config__osc_slow_ctrl"
	.byte	0x6
	.uahalf	0x736
	.uaword	0x1b3
	.byte	0xd
	.uleb128 0x9
	.string	"test_mode__status"
	.byte	0x6
	.uahalf	0x742
	.uaword	0x1b3
	.byte	0xe
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x6
	.uahalf	0x74c
	.uaword	0x1b3
	.byte	0xf
	.uleb128 0x9
	.string	"firmware__mode_status"
	.byte	0x6
	.uahalf	0x757
	.uaword	0x1b3
	.byte	0x10
	.uleb128 0x9
	.string	"firmware__secondary_mode_status"
	.byte	0x6
	.uahalf	0x761
	.uaword	0x1b3
	.byte	0x11
	.uleb128 0x9
	.string	"firmware__cal_repeat_rate_counter"
	.byte	0x6
	.uahalf	0x76b
	.uaword	0x1ef
	.byte	0x12
	.uleb128 0x9
	.string	"gph__system__thresh_high"
	.byte	0x6
	.uahalf	0x775
	.uaword	0x1ef
	.byte	0x14
	.uleb128 0x9
	.string	"gph__system__thresh_low"
	.byte	0x6
	.uahalf	0x77f
	.uaword	0x1ef
	.byte	0x16
	.uleb128 0x9
	.string	"gph__system__enable_xtalk_per_quadrant"
	.byte	0x6
	.uahalf	0x789
	.uaword	0x1b3
	.byte	0x18
	.uleb128 0x9
	.string	"gph__spare_0"
	.byte	0x6
	.uahalf	0x793
	.uaword	0x1b3
	.byte	0x19
	.uleb128 0x9
	.string	"gph__sd_config__woi_sd0"
	.byte	0x6
	.uahalf	0x79f
	.uaword	0x1b3
	.byte	0x1a
	.uleb128 0x9
	.string	"gph__sd_config__woi_sd1"
	.byte	0x6
	.uahalf	0x7a9
	.uaword	0x1b3
	.byte	0x1b
	.uleb128 0x9
	.string	"gph__sd_config__initial_phase_sd0"
	.byte	0x6
	.uahalf	0x7b3
	.uaword	0x1b3
	.byte	0x1c
	.uleb128 0x9
	.string	"gph__sd_config__initial_phase_sd1"
	.byte	0x6
	.uahalf	0x7bd
	.uaword	0x1b3
	.byte	0x1d
	.uleb128 0x9
	.string	"gph__sd_config__first_order_select"
	.byte	0x6
	.uahalf	0x7c7
	.uaword	0x1b3
	.byte	0x1e
	.uleb128 0x9
	.string	"gph__sd_config__quantifier"
	.byte	0x6
	.uahalf	0x7d2
	.uaword	0x1b3
	.byte	0x1f
	.uleb128 0x9
	.string	"gph__roi_config__user_roi_centre_spad"
	.byte	0x6
	.uahalf	0x7dc
	.uaword	0x1b3
	.byte	0x20
	.uleb128 0x9
	.string	"gph__roi_config__user_roi_requested_global_xy_size"
	.byte	0x6
	.uahalf	0x7e6
	.uaword	0x1b3
	.byte	0x21
	.uleb128 0x9
	.string	"gph__system__sequence_config"
	.byte	0x6
	.uahalf	0x7f0
	.uaword	0x1b3
	.byte	0x22
	.uleb128 0x9
	.string	"gph__gph_id"
	.byte	0x6
	.uahalf	0x801
	.uaword	0x1b3
	.byte	0x23
	.uleb128 0x9
	.string	"system__interrupt_set"
	.byte	0x6
	.uahalf	0x80b
	.uaword	0x1b3
	.byte	0x24
	.uleb128 0x9
	.string	"interrupt_manager__enables"
	.byte	0x6
	.uahalf	0x816
	.uaword	0x1b3
	.byte	0x25
	.uleb128 0x9
	.string	"interrupt_manager__clear"
	.byte	0x6
	.uahalf	0x824
	.uaword	0x1b3
	.byte	0x26
	.uleb128 0x9
	.string	"interrupt_manager__status"
	.byte	0x6
	.uahalf	0x832
	.uaword	0x1b3
	.byte	0x27
	.uleb128 0x9
	.string	"mcu_to_host_bank__wr_access_en"
	.byte	0x6
	.uahalf	0x840
	.uaword	0x1b3
	.byte	0x28
	.uleb128 0x9
	.string	"power_management__go1_reset_status"
	.byte	0x6
	.uahalf	0x84a
	.uaword	0x1b3
	.byte	0x29
	.uleb128 0x9
	.string	"pad_startup_mode__value_ro"
	.byte	0x6
	.uahalf	0x854
	.uaword	0x1b3
	.byte	0x2a
	.uleb128 0x9
	.string	"pad_startup_mode__value_ctrl"
	.byte	0x6
	.uahalf	0x85f
	.uaword	0x1b3
	.byte	0x2b
	.uleb128 0x9
	.string	"pll_period_us"
	.byte	0x6
	.uahalf	0x86c
	.uaword	0x230
	.byte	0x2c
	.uleb128 0x9
	.string	"interrupt_scheduler__data_out"
	.byte	0x6
	.uahalf	0x876
	.uaword	0x230
	.byte	0x30
	.uleb128 0x9
	.string	"nvm_bist__complete"
	.byte	0x6
	.uahalf	0x880
	.uaword	0x1b3
	.byte	0x34
	.uleb128 0x9
	.string	"nvm_bist__status"
	.byte	0x6
	.uahalf	0x88a
	.uaword	0x1b3
	.byte	0x35
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_debug_results_t"
	.byte	0x6
	.uahalf	0x894
	.uaword	0x1a78
	.uleb128 0xb
	.byte	0x32
	.byte	0x6
	.uahalf	0x8a0
	.uaword	0x286a
	.uleb128 0x9
	.string	"identification__model_id"
	.byte	0x6
	.uahalf	0x8a1
	.uaword	0x1b3
	.byte	0
	.uleb128 0x9
	.string	"identification__module_type"
	.byte	0x6
	.uahalf	0x8ab
	.uaword	0x1b3
	.byte	0x1
	.uleb128 0x9
	.string	"identification__revision_id"
	.byte	0x6
	.uahalf	0x8b5
	.uaword	0x1b3
	.byte	0x2
	.uleb128 0x9
	.string	"identification__module_id"
	.byte	0x6
	.uahalf	0x8c0
	.uaword	0x1ef
	.byte	0x4
	.uleb128 0x9
	.string	"ana_config__fast_osc__trim_max"
	.byte	0x6
	.uahalf	0x8ca
	.uaword	0x1b3
	.byte	0x6
	.uleb128 0x9
	.string	"ana_config__fast_osc__freq_set"
	.byte	0x6
	.uahalf	0x8d4
	.uaword	0x1b3
	.byte	0x7
	.uleb128 0x9
	.string	"ana_config__vcsel_trim"
	.byte	0x6
	.uahalf	0x8de
	.uaword	0x1b3
	.byte	0x8
	.uleb128 0x9
	.string	"ana_config__vcsel_selion"
	.byte	0x6
	.uahalf	0x8e8
	.uaword	0x1b3
	.byte	0x9
	.uleb128 0x9
	.string	"ana_config__vcsel_selion_max"
	.byte	0x6
	.uahalf	0x8f2
	.uaword	0x1b3
	.byte	0xa
	.uleb128 0x9
	.string	"protected_laser_safety__lock_bit"
	.byte	0x6
	.uahalf	0x8fc
	.uaword	0x1b3
	.byte	0xb
	.uleb128 0x9
	.string	"laser_safety__key"
	.byte	0x6
	.uahalf	0x906
	.uaword	0x1b3
	.byte	0xc
	.uleb128 0x9
	.string	"laser_safety__key_ro"
	.byte	0x6
	.uahalf	0x910
	.uaword	0x1b3
	.byte	0xd
	.uleb128 0x9
	.string	"laser_safety__clip"
	.byte	0x6
	.uahalf	0x91a
	.uaword	0x1b3
	.byte	0xe
	.uleb128 0x9
	.string	"laser_safety__mult"
	.byte	0x6
	.uahalf	0x924
	.uaword	0x1b3
	.byte	0xf
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_0"
	.byte	0x6
	.uahalf	0x92e
	.uaword	0x1b3
	.byte	0x10
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_1"
	.byte	0x6
	.uahalf	0x938
	.uaword	0x1b3
	.byte	0x11
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_2"
	.byte	0x6
	.uahalf	0x942
	.uaword	0x1b3
	.byte	0x12
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_3"
	.byte	0x6
	.uahalf	0x94c
	.uaword	0x1b3
	.byte	0x13
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_4"
	.byte	0x6
	.uahalf	0x956
	.uaword	0x1b3
	.byte	0x14
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_5"
	.byte	0x6
	.uahalf	0x960
	.uaword	0x1b3
	.byte	0x15
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_6"
	.byte	0x6
	.uahalf	0x96a
	.uaword	0x1b3
	.byte	0x16
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_7"
	.byte	0x6
	.uahalf	0x974
	.uaword	0x1b3
	.byte	0x17
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_8"
	.byte	0x6
	.uahalf	0x97e
	.uaword	0x1b3
	.byte	0x18
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_9"
	.byte	0x6
	.uahalf	0x988
	.uaword	0x1b3
	.byte	0x19
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_10"
	.byte	0x6
	.uahalf	0x992
	.uaword	0x1b3
	.byte	0x1a
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_11"
	.byte	0x6
	.uahalf	0x99c
	.uaword	0x1b3
	.byte	0x1b
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_12"
	.byte	0x6
	.uahalf	0x9a6
	.uaword	0x1b3
	.byte	0x1c
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_13"
	.byte	0x6
	.uahalf	0x9b0
	.uaword	0x1b3
	.byte	0x1d
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_14"
	.byte	0x6
	.uahalf	0x9ba
	.uaword	0x1b3
	.byte	0x1e
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_15"
	.byte	0x6
	.uahalf	0x9c4
	.uaword	0x1b3
	.byte	0x1f
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_16"
	.byte	0x6
	.uahalf	0x9ce
	.uaword	0x1b3
	.byte	0x20
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_17"
	.byte	0x6
	.uahalf	0x9d8
	.uaword	0x1b3
	.byte	0x21
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_18"
	.byte	0x6
	.uahalf	0x9e2
	.uaword	0x1b3
	.byte	0x22
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_19"
	.byte	0x6
	.uahalf	0x9ec
	.uaword	0x1b3
	.byte	0x23
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_20"
	.byte	0x6
	.uahalf	0x9f6
	.uaword	0x1b3
	.byte	0x24
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_21"
	.byte	0x6
	.uahalf	0xa00
	.uaword	0x1b3
	.byte	0x25
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_22"
	.byte	0x6
	.uahalf	0xa0a
	.uaword	0x1b3
	.byte	0x26
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_23"
	.byte	0x6
	.uahalf	0xa14
	.uaword	0x1b3
	.byte	0x27
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_24"
	.byte	0x6
	.uahalf	0xa1e
	.uaword	0x1b3
	.byte	0x28
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_25"
	.byte	0x6
	.uahalf	0xa28
	.uaword	0x1b3
	.byte	0x29
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_26"
	.byte	0x6
	.uahalf	0xa32
	.uaword	0x1b3
	.byte	0x2a
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_27"
	.byte	0x6
	.uahalf	0xa3c
	.uaword	0x1b3
	.byte	0x2b
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_28"
	.byte	0x6
	.uahalf	0xa46
	.uaword	0x1b3
	.byte	0x2c
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_29"
	.byte	0x6
	.uahalf	0xa50
	.uaword	0x1b3
	.byte	0x2d
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_30"
	.byte	0x6
	.uahalf	0xa5a
	.uaword	0x1b3
	.byte	0x2e
	.uleb128 0x9
	.string	"global_config__spad_enables_rtn_31"
	.byte	0x6
	.uahalf	0xa64
	.uaword	0x1b3
	.byte	0x2f
	.uleb128 0x9
	.string	"roi_config__mode_roi_centre_spad"
	.byte	0x6
	.uahalf	0xa6e
	.uaword	0x1b3
	.byte	0x30
	.uleb128 0x9
	.string	"roi_config__mode_roi_xy_size"
	.byte	0x6
	.uahalf	0xa78
	.uaword	0x1b3
	.byte	0x31
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_nvm_copy_data_t"
	.byte	0x6
	.uahalf	0xa82
	.uaword	0x20b8
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.byte	0x9d
	.uaword	0x28d9
	.uleb128 0x8
	.string	"ll_revision"
	.byte	0x7
	.byte	0x9e
	.uaword	0x230
	.byte	0
	.uleb128 0x8
	.string	"ll_major"
	.byte	0x7
	.byte	0x9f
	.uaword	0x1b3
	.byte	0x4
	.uleb128 0x8
	.string	"ll_minor"
	.byte	0x7
	.byte	0xa0
	.uaword	0x1b3
	.byte	0x5
	.uleb128 0x8
	.string	"ll_build"
	.byte	0x7
	.byte	0xa1
	.uaword	0x1b3
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.string	"VL53L1_ll_version_t"
	.byte	0x7
	.byte	0xa2
	.uaword	0x2889
	.uleb128 0x7
	.byte	0x10
	.byte	0x7
	.byte	0xa8
	.uaword	0x2991
	.uleb128 0x8
	.string	"device_test_mode"
	.byte	0x7
	.byte	0xaa
	.uaword	0x1b3
	.byte	0
	.uleb128 0xc
	.uaword	.LASF8
	.byte	0x7
	.byte	0xab
	.uaword	0x1b3
	.byte	0x1
	.uleb128 0xc
	.uaword	.LASF9
	.byte	0x7
	.byte	0xac
	.uaword	0x230
	.byte	0x4
	.uleb128 0x8
	.string	"target_count_rate_mcps"
	.byte	0x7
	.byte	0xad
	.uaword	0x1ef
	.byte	0x8
	.uleb128 0x8
	.string	"min_count_rate_limit_mcps"
	.byte	0x7
	.byte	0xaf
	.uaword	0x1ef
	.byte	0xa
	.uleb128 0x8
	.string	"max_count_rate_limit_mcps"
	.byte	0x7
	.byte	0xb1
	.uaword	0x1ef
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.string	"VL53L1_refspadchar_config_t"
	.byte	0x7
	.byte	0xb4
	.uaword	0x28f4
	.uleb128 0x7
	.byte	0xc
	.byte	0x7
	.byte	0xbb
	.uaword	0x2a2a
	.uleb128 0x8
	.string	"array_select"
	.byte	0x7
	.byte	0xbd
	.uaword	0x38b
	.byte	0
	.uleb128 0xc
	.uaword	.LASF8
	.byte	0x7
	.byte	0xc1
	.uaword	0x1b3
	.byte	0x1
	.uleb128 0x8
	.string	"vcsel_start"
	.byte	0x7
	.byte	0xc3
	.uaword	0x1b3
	.byte	0x2
	.uleb128 0x8
	.string	"vcsel_width"
	.byte	0x7
	.byte	0xc5
	.uaword	0x1b3
	.byte	0x3
	.uleb128 0xc
	.uaword	.LASF9
	.byte	0x7
	.byte	0xc7
	.uaword	0x230
	.byte	0x4
	.uleb128 0x8
	.string	"rate_limit_mcps"
	.byte	0x7
	.byte	0xc9
	.uaword	0x1ef
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.string	"VL53L1_ssc_config_t"
	.byte	0x7
	.byte	0xce
	.uaword	0x29b4
	.uleb128 0x7
	.byte	0x18
	.byte	0x7
	.byte	0xd4
	.uaword	0x2bea
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x7
	.byte	0xd7
	.uaword	0x230
	.byte	0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x7
	.byte	0xd9
	.uaword	0x1d3
	.byte	0x4
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x7
	.byte	0xdb
	.uaword	0x1d3
	.byte	0x6
	.uleb128 0x8
	.string	"nvm_default__crosstalk_compensation_plane_offset_kcps"
	.byte	0x7
	.byte	0xdd
	.uaword	0x230
	.byte	0x8
	.uleb128 0x8
	.string	"nvm_default__crosstalk_compensation_x_plane_gradient_kcps"
	.byte	0x7
	.byte	0xdf
	.uaword	0x1d3
	.byte	0xc
	.uleb128 0x8
	.string	"nvm_default__crosstalk_compensation_y_plane_gradient_kcps"
	.byte	0x7
	.byte	0xe1
	.uaword	0x1d3
	.byte	0xe
	.uleb128 0x8
	.string	"global_crosstalk_compensation_enable"
	.byte	0x7
	.byte	0xe3
	.uaword	0x1b3
	.byte	0x10
	.uleb128 0x8
	.string	"lite_mode_crosstalk_margin_kcps"
	.byte	0x7
	.byte	0xe5
	.uaword	0x1d3
	.byte	0x12
	.uleb128 0x8
	.string	"crosstalk_range_ignore_threshold_mult"
	.byte	0x7
	.byte	0xeb
	.uaword	0x1b3
	.byte	0x14
	.uleb128 0x8
	.string	"crosstalk_range_ignore_threshold_rate_mcps"
	.byte	0x7
	.byte	0xed
	.uaword	0x1ef
	.byte	0x16
	.byte	0
	.uleb128 0x2
	.string	"VL53L1_xtalk_config_t"
	.byte	0x7
	.byte	0xf2
	.uaword	0x2a45
	.uleb128 0x7
	.byte	0x4c
	.byte	0x7
	.byte	0xfe
	.uaword	0x310d
	.uleb128 0x9
	.string	"tp_tuning_parm_version"
	.byte	0x7
	.uahalf	0x101
	.uaword	0x1ef
	.byte	0
	.uleb128 0x9
	.string	"tp_tuning_parm_key_table_version"
	.byte	0x7
	.uahalf	0x104
	.uaword	0x1ef
	.byte	0x2
	.uleb128 0x9
	.string	"tp_tuning_parm_lld_version"
	.byte	0x7
	.uahalf	0x108
	.uaword	0x1ef
	.byte	0x4
	.uleb128 0x9
	.string	"tp_init_phase_rtn_lite_long"
	.byte	0x7
	.uahalf	0x10c
	.uaword	0x1b3
	.byte	0x6
	.uleb128 0x9
	.string	"tp_init_phase_rtn_lite_med"
	.byte	0x7
	.uahalf	0x110
	.uaword	0x1b3
	.byte	0x7
	.uleb128 0x9
	.string	"tp_init_phase_rtn_lite_short"
	.byte	0x7
	.uahalf	0x114
	.uaword	0x1b3
	.byte	0x8
	.uleb128 0x9
	.string	"tp_init_phase_ref_lite_long"
	.byte	0x7
	.uahalf	0x118
	.uaword	0x1b3
	.byte	0x9
	.uleb128 0x9
	.string	"tp_init_phase_ref_lite_med"
	.byte	0x7
	.uahalf	0x11c
	.uaword	0x1b3
	.byte	0xa
	.uleb128 0x9
	.string	"tp_init_phase_ref_lite_short"
	.byte	0x7
	.uahalf	0x120
	.uaword	0x1b3
	.byte	0xb
	.uleb128 0x9
	.string	"tp_consistency_lite_phase_tolerance"
	.byte	0x7
	.uahalf	0x125
	.uaword	0x1b3
	.byte	0xc
	.uleb128 0x9
	.string	"tp_phasecal_target"
	.byte	0x7
	.uahalf	0x129
	.uaword	0x1b3
	.byte	0xd
	.uleb128 0x9
	.string	"tp_cal_repeat_rate"
	.byte	0x7
	.uahalf	0x12c
	.uaword	0x1ef
	.byte	0xe
	.uleb128 0x9
	.string	"tp_lite_min_clip"
	.byte	0x7
	.uahalf	0x130
	.uaword	0x1b3
	.byte	0x10
	.uleb128 0x9
	.string	"tp_lite_long_sigma_thresh_mm"
	.byte	0x7
	.uahalf	0x135
	.uaword	0x1ef
	.byte	0x12
	.uleb128 0x9
	.string	"tp_lite_med_sigma_thresh_mm"
	.byte	0x7
	.uahalf	0x139
	.uaword	0x1ef
	.byte	0x14
	.uleb128 0x9
	.string	"tp_lite_short_sigma_thresh_mm"
	.byte	0x7
	.uahalf	0x13d
	.uaword	0x1ef
	.byte	0x16
	.uleb128 0x9
	.string	"tp_lite_long_min_count_rate_rtn_mcps"
	.byte	0x7
	.uahalf	0x142
	.uaword	0x1ef
	.byte	0x18
	.uleb128 0x9
	.string	"tp_lite_med_min_count_rate_rtn_mcps"
	.byte	0x7
	.uahalf	0x146
	.uaword	0x1ef
	.byte	0x1a
	.uleb128 0x9
	.string	"tp_lite_short_min_count_rate_rtn_mcps"
	.byte	0x7
	.uahalf	0x14a
	.uaword	0x1ef
	.byte	0x1c
	.uleb128 0x9
	.string	"tp_lite_sigma_est_pulse_width_ns"
	.byte	0x7
	.uahalf	0x14f
	.uaword	0x1b3
	.byte	0x1e
	.uleb128 0x9
	.string	"tp_lite_sigma_est_amb_width_ns"
	.byte	0x7
	.uahalf	0x152
	.uaword	0x1b3
	.byte	0x1f
	.uleb128 0x9
	.string	"tp_lite_sigma_ref_mm"
	.byte	0x7
	.uahalf	0x155
	.uaword	0x1b3
	.byte	0x20
	.uleb128 0x9
	.string	"tp_lite_seed_cfg"
	.byte	0x7
	.uahalf	0x158
	.uaword	0x1b3
	.byte	0x21
	.uleb128 0x9
	.string	"tp_timed_seed_cfg"
	.byte	0x7
	.uahalf	0x15b
	.uaword	0x1b3
	.byte	0x22
	.uleb128 0x9
	.string	"tp_lite_quantifier"
	.byte	0x7
	.uahalf	0x15f
	.uaword	0x1b3
	.byte	0x23
	.uleb128 0x9
	.string	"tp_lite_first_order_select"
	.byte	0x7
	.uahalf	0x162
	.uaword	0x1b3
	.byte	0x24
	.uleb128 0x9
	.string	"tp_dss_target_lite_mcps"
	.byte	0x7
	.uahalf	0x166
	.uaword	0x1ef
	.byte	0x26
	.uleb128 0x9
	.string	"tp_dss_target_timed_mcps"
	.byte	0x7
	.uahalf	0x169
	.uaword	0x1ef
	.byte	0x28
	.uleb128 0x9
	.string	"tp_phasecal_timeout_lite_us"
	.byte	0x7
	.uahalf	0x16d
	.uaword	0x230
	.byte	0x2c
	.uleb128 0x9
	.string	"tp_phasecal_timeout_timed_us"
	.byte	0x7
	.uahalf	0x171
	.uaword	0x230
	.byte	0x30
	.uleb128 0x9
	.string	"tp_mm_timeout_lite_us"
	.byte	0x7
	.uahalf	0x175
	.uaword	0x230
	.byte	0x34
	.uleb128 0x9
	.string	"tp_mm_timeout_timed_us"
	.byte	0x7
	.uahalf	0x178
	.uaword	0x230
	.byte	0x38
	.uleb128 0x9
	.string	"tp_mm_timeout_lpa_us"
	.byte	0x7
	.uahalf	0x17b
	.uaword	0x230
	.byte	0x3c
	.uleb128 0x9
	.string	"tp_range_timeout_lite_us"
	.byte	0x7
	.uahalf	0x17f
	.uaword	0x230
	.byte	0x40
	.uleb128 0x9
	.string	"tp_range_timeout_timed_us"
	.byte	0x7
	.uahalf	0x182
	.uaword	0x230
	.byte	0x44
	.uleb128 0x9
	.string	"tp_range_timeout_lpa_us"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x230
	.byte	0x48
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_tuning_parm_storage_t"
	.byte	0x7
	.uahalf	0x189
	.uaword	0x2c07
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.uahalf	0x191
	.uaword	0x3156
	.uleb128 0xa
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x193
	.uaword	0x1b3
	.byte	0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x194
	.uaword	0x1b3
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_optical_centre_t"
	.byte	0x7
	.uahalf	0x196
	.uaword	0x3132
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.uahalf	0x19d
	.uaword	0x31b9
	.uleb128 0xa
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x19f
	.uaword	0x1b3
	.byte	0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x1b3
	.byte	0x1
	.uleb128 0x9
	.string	"width"
	.byte	0x7
	.uahalf	0x1a1
	.uaword	0x1b3
	.byte	0x2
	.uleb128 0x9
	.string	"height"
	.byte	0x7
	.uahalf	0x1a2
	.uaword	0x1b3
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_user_zone_t"
	.byte	0x7
	.uahalf	0x1a4
	.uaword	0x3176
	.uleb128 0xb
	.byte	0xe
	.byte	0x7
	.uahalf	0x1ae
	.uaword	0x32e0
	.uleb128 0x9
	.string	"intr_mode_distance"
	.byte	0x7
	.uahalf	0x1b1
	.uaword	0x3a9
	.byte	0
	.uleb128 0x9
	.string	"intr_mode_rate"
	.byte	0x7
	.uahalf	0x1b4
	.uaword	0x3a9
	.byte	0x1
	.uleb128 0x9
	.string	"intr_new_measure_ready"
	.byte	0x7
	.uahalf	0x1b9
	.uaword	0x1b3
	.byte	0x2
	.uleb128 0x9
	.string	"intr_no_target"
	.byte	0x7
	.uahalf	0x1bc
	.uaword	0x1b3
	.byte	0x3
	.uleb128 0x9
	.string	"intr_combined_mode"
	.byte	0x7
	.uahalf	0x1c2
	.uaword	0x1b3
	.byte	0x4
	.uleb128 0x9
	.string	"threshold_distance_high"
	.byte	0x7
	.uahalf	0x1ca
	.uaword	0x1ef
	.byte	0x6
	.uleb128 0x9
	.string	"threshold_distance_low"
	.byte	0x7
	.uahalf	0x1cd
	.uaword	0x1ef
	.byte	0x8
	.uleb128 0x9
	.string	"threshold_rate_high"
	.byte	0x7
	.uahalf	0x1d0
	.uaword	0x1ef
	.byte	0xa
	.uleb128 0x9
	.string	"threshold_rate_low"
	.byte	0x7
	.uahalf	0x1d3
	.uaword	0x1ef
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_GPIO_interrupt_config_t"
	.byte	0x7
	.uahalf	0x1d5
	.uaword	0x31d4
	.uleb128 0xb
	.byte	0x10
	.byte	0x7
	.uahalf	0x1e0
	.uaword	0x3427
	.uleb128 0x9
	.string	"vhv_loop_bound"
	.byte	0x7
	.uahalf	0x1e6
	.uaword	0x1b3
	.byte	0
	.uleb128 0x9
	.string	"is_low_power_auto_mode"
	.byte	0x7
	.uahalf	0x1e9
	.uaword	0x1b3
	.byte	0x1
	.uleb128 0x9
	.string	"low_power_auto_range_count"
	.byte	0x7
	.uahalf	0x1ed
	.uaword	0x1b3
	.byte	0x2
	.uleb128 0x9
	.string	"saved_interrupt_config"
	.byte	0x7
	.uahalf	0x1f0
	.uaword	0x1b3
	.byte	0x3
	.uleb128 0x9
	.string	"saved_vhv_init"
	.byte	0x7
	.uahalf	0x1f3
	.uaword	0x1b3
	.byte	0x4
	.uleb128 0x9
	.string	"saved_vhv_timeout"
	.byte	0x7
	.uahalf	0x1f6
	.uaword	0x1b3
	.byte	0x5
	.uleb128 0x9
	.string	"first_run_phasecal_result"
	.byte	0x7
	.uahalf	0x1f9
	.uaword	0x1b3
	.byte	0x6
	.uleb128 0x9
	.string	"dss__total_rate_per_spad_mcps"
	.byte	0x7
	.uahalf	0x1fc
	.uaword	0x230
	.byte	0x8
	.uleb128 0x9
	.string	"dss__required_spads"
	.byte	0x7
	.uahalf	0x1ff
	.uaword	0x1ef
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_low_power_auto_data_t"
	.byte	0x7
	.uahalf	0x201
	.uaword	0x3307
	.uleb128 0xb
	.byte	0x40
	.byte	0x7
	.uahalf	0x20b
	.uaword	0x3690
	.uleb128 0x9
	.string	"range_id"
	.byte	0x7
	.uahalf	0x20f
	.uaword	0x1b3
	.byte	0
	.uleb128 0x9
	.string	"time_stamp"
	.byte	0x7
	.uahalf	0x211
	.uaword	0x230
	.byte	0x4
	.uleb128 0x9
	.string	"width"
	.byte	0x7
	.uahalf	0x214
	.uaword	0x1ef
	.byte	0x8
	.uleb128 0x9
	.string	"woi"
	.byte	0x7
	.uahalf	0x216
	.uaword	0x1b3
	.byte	0xa
	.uleb128 0x9
	.string	"fast_osc_frequency"
	.byte	0x7
	.uahalf	0x219
	.uaword	0x1ef
	.byte	0xc
	.uleb128 0x9
	.string	"zero_distance_phase"
	.byte	0x7
	.uahalf	0x21b
	.uaword	0x1ef
	.byte	0xe
	.uleb128 0x9
	.string	"actual_effective_spads"
	.byte	0x7
	.uahalf	0x21d
	.uaword	0x1ef
	.byte	0x10
	.uleb128 0x9
	.string	"total_periods_elapsed"
	.byte	0x7
	.uahalf	0x220
	.uaword	0x230
	.byte	0x14
	.uleb128 0x9
	.string	"peak_duration_us"
	.byte	0x7
	.uahalf	0x223
	.uaword	0x230
	.byte	0x18
	.uleb128 0x9
	.string	"woi_duration_us"
	.byte	0x7
	.uahalf	0x226
	.uaword	0x230
	.byte	0x1c
	.uleb128 0x9
	.string	"ambient_window_events"
	.byte	0x7
	.uahalf	0x22c
	.uaword	0x230
	.byte	0x20
	.uleb128 0x9
	.string	"ranging_total_events"
	.byte	0x7
	.uahalf	0x22e
	.uaword	0x230
	.byte	0x24
	.uleb128 0x9
	.string	"signal_total_events"
	.byte	0x7
	.uahalf	0x231
	.uaword	0x215
	.byte	0x28
	.uleb128 0x9
	.string	"peak_signal_count_rate_mcps"
	.byte	0x7
	.uahalf	0x237
	.uaword	0x1ef
	.byte	0x2c
	.uleb128 0x9
	.string	"avg_signal_count_rate_mcps"
	.byte	0x7
	.uahalf	0x239
	.uaword	0x1ef
	.byte	0x2e
	.uleb128 0x9
	.string	"ambient_count_rate_mcps"
	.byte	0x7
	.uahalf	0x23b
	.uaword	0x1ef
	.byte	0x30
	.uleb128 0x9
	.string	"total_rate_per_spad_mcps"
	.byte	0x7
	.uahalf	0x23d
	.uaword	0x1ef
	.byte	0x32
	.uleb128 0x9
	.string	"peak_rate_per_spad_kcps"
	.byte	0x7
	.uahalf	0x23f
	.uaword	0x230
	.byte	0x34
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x244
	.uaword	0x1ef
	.byte	0x38
	.uleb128 0x9
	.string	"median_phase"
	.byte	0x7
	.uahalf	0x249
	.uaword	0x1ef
	.byte	0x3a
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x24e
	.uaword	0x1d3
	.byte	0x3c
	.uleb128 0x9
	.string	"range_status"
	.byte	0x7
	.uahalf	0x255
	.uaword	0x1b3
	.byte	0x3e
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_range_data_t"
	.byte	0x7
	.uahalf	0x257
	.uaword	0x344c
	.uleb128 0xb
	.byte	0x84
	.byte	0x7
	.uahalf	0x260
	.uaword	0x370b
	.uleb128 0xa
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x262
	.uaword	0x2e5
	.byte	0
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x264
	.uaword	0x2e5
	.byte	0x1
	.uleb128 0x9
	.string	"stream_count"
	.byte	0x7
	.uahalf	0x266
	.uaword	0x1b3
	.byte	0x2
	.uleb128 0x9
	.string	"device_status"
	.byte	0x7
	.uahalf	0x269
	.uaword	0x1b3
	.byte	0x3
	.uleb128 0x9
	.string	"data"
	.byte	0x7
	.uahalf	0x26c
	.uaword	0x370b
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.uaword	0x3690
	.uaword	0x371b
	.uleb128 0xe
	.uaword	0x297
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_range_results_t"
	.byte	0x7
	.uahalf	0x26f
	.uaword	0x36ac
	.uleb128 0xb
	.byte	0x1c
	.byte	0x7
	.uahalf	0x279
	.uaword	0x37db
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x27b
	.uaword	0x1b3
	.byte	0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x27d
	.uaword	0x1b3
	.byte	0x1
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x27f
	.uaword	0x1ef
	.byte	0x2
	.uleb128 0x9
	.string	"no_of_samples"
	.byte	0x7
	.uahalf	0x281
	.uaword	0x1b3
	.byte	0x4
	.uleb128 0x9
	.string	"effective_spads"
	.byte	0x7
	.uahalf	0x283
	.uaword	0x230
	.byte	0x8
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x285
	.uaword	0x230
	.byte	0xc
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0x7
	.uahalf	0x287
	.uaword	0x230
	.byte	0x10
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x7
	.uahalf	0x289
	.uaword	0x215
	.byte	0x14
	.uleb128 0x9
	.string	"range_mm_offset"
	.byte	0x7
	.uahalf	0x28c
	.uaword	0x215
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_offset_range_data_t"
	.byte	0x7
	.uahalf	0x28f
	.uaword	0x373a
	.uleb128 0xb
	.byte	0x5c
	.byte	0x7
	.uahalf	0x299
	.uaword	0x3878
	.uleb128 0xa
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x29b
	.uaword	0x1d3
	.byte	0
	.uleb128 0x9
	.string	"cal_status"
	.byte	0x7
	.uahalf	0x29d
	.uaword	0x3cc
	.byte	0x2
	.uleb128 0x9
	.string	"cal_report"
	.byte	0x7
	.uahalf	0x29f
	.uaword	0x1b3
	.byte	0x3
	.uleb128 0x9
	.string	"max_results"
	.byte	0x7
	.uahalf	0x2a1
	.uaword	0x1b3
	.byte	0x4
	.uleb128 0x9
	.string	"active_results"
	.byte	0x7
	.uahalf	0x2a4
	.uaword	0x1b3
	.byte	0x5
	.uleb128 0x9
	.string	"data"
	.byte	0x7
	.uahalf	0x2a6
	.uaword	0x3878
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	0x37db
	.uaword	0x3888
	.uleb128 0xe
	.uaword	0x297
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_offset_range_results_t"
	.byte	0x7
	.uahalf	0x2a9
	.uaword	0x37fe
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.uahalf	0x2b4
	.uaword	0x3984
	.uleb128 0x9
	.string	"result__mm_inner_actual_effective_spads"
	.byte	0x7
	.uahalf	0x2b6
	.uaword	0x1ef
	.byte	0
	.uleb128 0x9
	.string	"result__mm_outer_actual_effective_spads"
	.byte	0x7
	.uahalf	0x2b8
	.uaword	0x1ef
	.byte	0x2
	.uleb128 0x9
	.string	"result__mm_inner_peak_signal_count_rtn_mcps"
	.byte	0x7
	.uahalf	0x2ba
	.uaword	0x1ef
	.byte	0x4
	.uleb128 0x9
	.string	"result__mm_outer_peak_signal_count_rtn_mcps"
	.byte	0x7
	.uahalf	0x2bc
	.uaword	0x1ef
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_additional_offset_cal_data_t"
	.byte	0x7
	.uahalf	0x2bf
	.uaword	0x38ae
	.uleb128 0xb
	.byte	0x3a
	.byte	0x7
	.uahalf	0x2ca
	.uaword	0x3a08
	.uleb128 0xa
	.uaword	.LASF18
	.byte	0x7
	.uahalf	0x2cc
	.uaword	0x1d3
	.byte	0
	.uleb128 0x9
	.string	"max_samples"
	.byte	0x7
	.uahalf	0x2ce
	.uaword	0x1ef
	.byte	0x2
	.uleb128 0x9
	.string	"width"
	.byte	0x7
	.uahalf	0x2d0
	.uaword	0x1ef
	.byte	0x4
	.uleb128 0x9
	.string	"height"
	.byte	0x7
	.uahalf	0x2d2
	.uaword	0x1ef
	.byte	0x6
	.uleb128 0xa
	.uaword	.LASF17
	.byte	0x7
	.uahalf	0x2d4
	.uaword	0x3a08
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.uaword	0x1ef
	.uaword	0x3a18
	.uleb128 0xe
	.uaword	0x297
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_cal_peak_rate_map_t"
	.byte	0x7
	.uahalf	0x2d7
	.uaword	0x39b0
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.uahalf	0x2e1
	.uaword	0x3a6b
	.uleb128 0x9
	.string	"standard_ranging_gain_factor"
	.byte	0x7
	.uahalf	0x2e3
	.uaword	0x1ef
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_gain_calibration_data_t"
	.byte	0x7
	.uahalf	0x2e6
	.uaword	0x3a3b
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.uahalf	0x2f0
	.uaword	0x3b45
	.uleb128 0xa
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x2f2
	.uaword	0x2e5
	.byte	0
	.uleb128 0x9
	.string	"cfg_stream_count"
	.byte	0x7
	.uahalf	0x2f4
	.uaword	0x1b3
	.byte	0x1
	.uleb128 0x9
	.string	"cfg_gph_id"
	.byte	0x7
	.uahalf	0x2f7
	.uaword	0x1b3
	.byte	0x2
	.uleb128 0x9
	.string	"cfg_timing_status"
	.byte	0x7
	.uahalf	0x2f9
	.uaword	0x1b3
	.byte	0x3
	.uleb128 0xa
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x2fc
	.uaword	0x2e5
	.byte	0x4
	.uleb128 0x9
	.string	"rd_stream_count"
	.byte	0x7
	.uahalf	0x2fe
	.uaword	0x1b3
	.byte	0x5
	.uleb128 0x9
	.string	"rd_gph_id"
	.byte	0x7
	.uahalf	0x300
	.uaword	0x1b3
	.byte	0x6
	.uleb128 0x9
	.string	"rd_timing_status"
	.byte	0x7
	.uahalf	0x302
	.uaword	0x1b3
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_ll_driver_state_t"
	.byte	0x7
	.uahalf	0x305
	.uaword	0x3a92
	.uleb128 0xb
	.byte	0x14
	.byte	0x7
	.uahalf	0x30a
	.uaword	0x3bf8
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x30c
	.uaword	0x1ef
	.byte	0
	.uleb128 0xa
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x30f
	.uaword	0x230
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF20
	.byte	0x7
	.uahalf	0x312
	.uaword	0x230
	.byte	0x8
	.uleb128 0xa
	.uaword	.LASF21
	.byte	0x7
	.uahalf	0x315
	.uaword	0x230
	.byte	0xc
	.uleb128 0x9
	.string	"pre_num_of_samples"
	.byte	0x7
	.uahalf	0x319
	.uaword	0x1b3
	.byte	0x10
	.uleb128 0x9
	.string	"mm1_num_of_samples"
	.byte	0x7
	.uahalf	0x31c
	.uaword	0x1b3
	.byte	0x11
	.uleb128 0x9
	.string	"mm2_num_of_samples"
	.byte	0x7
	.uahalf	0x31f
	.uaword	0x1b3
	.byte	0x12
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_offsetcal_config_t"
	.byte	0x7
	.uahalf	0x323
	.uaword	0x3b66
	.uleb128 0xf
	.uahalf	0x2f4
	.byte	0x7
	.uahalf	0x32e
	.uaword	0x3f85
	.uleb128 0x9
	.string	"wait_method"
	.byte	0x7
	.uahalf	0x330
	.uaword	0x1b3
	.byte	0
	.uleb128 0xa
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x332
	.uaword	0x2ff
	.byte	0x1
	.uleb128 0x9
	.string	"measurement_mode"
	.byte	0x7
	.uahalf	0x334
	.uaword	0x31f
	.byte	0x2
	.uleb128 0x9
	.string	"offset_calibration_mode"
	.byte	0x7
	.uahalf	0x336
	.uaword	0x344
	.byte	0x3
	.uleb128 0x9
	.string	"offset_correction_mode"
	.byte	0x7
	.uahalf	0x338
	.uaword	0x368
	.byte	0x4
	.uleb128 0xa
	.uaword	.LASF19
	.byte	0x7
	.uahalf	0x33a
	.uaword	0x230
	.byte	0x8
	.uleb128 0xa
	.uaword	.LASF21
	.byte	0x7
	.uahalf	0x33c
	.uaword	0x230
	.byte	0xc
	.uleb128 0xa
	.uaword	.LASF20
	.byte	0x7
	.uahalf	0x33e
	.uaword	0x230
	.byte	0x10
	.uleb128 0x9
	.string	"inter_measurement_period_ms"
	.byte	0x7
	.uahalf	0x340
	.uaword	0x230
	.byte	0x14
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x342
	.uaword	0x1ef
	.byte	0x18
	.uleb128 0x9
	.string	"fw_ready_poll_duration_ms"
	.byte	0x7
	.uahalf	0x345
	.uaword	0x230
	.byte	0x1c
	.uleb128 0xa
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x347
	.uaword	0x1b3
	.byte	0x20
	.uleb128 0x9
	.string	"debug_mode"
	.byte	0x7
	.uahalf	0x349
	.uaword	0x1b3
	.byte	0x21
	.uleb128 0x9
	.string	"version"
	.byte	0x7
	.uahalf	0x34d
	.uaword	0x28d9
	.byte	0x24
	.uleb128 0x9
	.string	"ll_state"
	.byte	0x7
	.uahalf	0x350
	.uaword	0x3b45
	.byte	0x2c
	.uleb128 0x9
	.string	"gpio_interrupt_config"
	.byte	0x7
	.uahalf	0x353
	.uaword	0x32e0
	.byte	0x34
	.uleb128 0x9
	.string	"customer"
	.byte	0x7
	.uahalf	0x356
	.uaword	0x7c3
	.byte	0x42
	.uleb128 0x9
	.string	"cal_peak_rate_map"
	.byte	0x7
	.uahalf	0x357
	.uaword	0x3a18
	.byte	0x5a
	.uleb128 0x9
	.string	"add_off_cal_data"
	.byte	0x7
	.uahalf	0x358
	.uaword	0x3984
	.byte	0x94
	.uleb128 0x9
	.string	"gain_cal"
	.byte	0x7
	.uahalf	0x359
	.uaword	0x3a6b
	.byte	0x9c
	.uleb128 0x9
	.string	"mm_roi"
	.byte	0x7
	.uahalf	0x35a
	.uaword	0x31b9
	.byte	0x9e
	.uleb128 0x9
	.string	"optical_centre"
	.byte	0x7
	.uahalf	0x35b
	.uaword	0x3156
	.byte	0xa2
	.uleb128 0x9
	.string	"tuning_parms"
	.byte	0x7
	.uahalf	0x35e
	.uaword	0x310d
	.byte	0xa4
	.uleb128 0x9
	.string	"rtn_good_spads"
	.byte	0x7
	.uahalf	0x361
	.uaword	0x3f85
	.byte	0xf0
	.uleb128 0x10
	.string	"refspadchar"
	.byte	0x7
	.uahalf	0x364
	.uaword	0x2991
	.uahalf	0x110
	.uleb128 0x10
	.string	"ssc_cfg"
	.byte	0x7
	.uahalf	0x365
	.uaword	0x2a2a
	.uahalf	0x120
	.uleb128 0x10
	.string	"xtalk_cfg"
	.byte	0x7
	.uahalf	0x366
	.uaword	0x2bea
	.uahalf	0x12c
	.uleb128 0x10
	.string	"offsetcal_cfg"
	.byte	0x7
	.uahalf	0x367
	.uaword	0x3bf8
	.uahalf	0x144
	.uleb128 0x10
	.string	"stat_nvm"
	.byte	0x7
	.uahalf	0x36a
	.uaword	0x54e
	.uahalf	0x158
	.uleb128 0x10
	.string	"stat_cfg"
	.byte	0x7
	.uahalf	0x36b
	.uaword	0xc1f
	.uahalf	0x164
	.uleb128 0x10
	.string	"gen_cfg"
	.byte	0x7
	.uahalf	0x36c
	.uaword	0xe92
	.uahalf	0x184
	.uleb128 0x10
	.string	"tim_cfg"
	.byte	0x7
	.uahalf	0x36d
	.uaword	0x1148
	.uahalf	0x19c
	.uleb128 0x10
	.string	"dyn_cfg"
	.byte	0x7
	.uahalf	0x36e
	.uaword	0x13ba
	.uahalf	0x1b4
	.uleb128 0x10
	.string	"sys_ctrl"
	.byte	0x7
	.uahalf	0x36f
	.uaword	0x1489
	.uahalf	0x1c8
	.uleb128 0x10
	.string	"sys_results"
	.byte	0x7
	.uahalf	0x370
	.uaword	0x1898
	.uahalf	0x1ce
	.uleb128 0x10
	.string	"nvm_copy_data"
	.byte	0x7
	.uahalf	0x371
	.uaword	0x286a
	.uahalf	0x1fa
	.uleb128 0x10
	.string	"offset_results"
	.byte	0x7
	.uahalf	0x374
	.uaword	0x3888
	.uahalf	0x22c
	.uleb128 0x10
	.string	"core_results"
	.byte	0x7
	.uahalf	0x377
	.uaword	0x1a5a
	.uahalf	0x288
	.uleb128 0x10
	.string	"dbg_results"
	.byte	0x7
	.uahalf	0x378
	.uaword	0x2099
	.uahalf	0x2ac
	.uleb128 0x10
	.string	"low_power_auto_data"
	.byte	0x7
	.uahalf	0x37c
	.uaword	0x3427
	.uahalf	0x2e4
	.byte	0
	.uleb128 0xd
	.uaword	0x1b3
	.uaword	0x3f95
	.uleb128 0xe
	.uaword	0x297
	.byte	0x1f
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_LLDriverData_t"
	.byte	0x7
	.uahalf	0x388
	.uaword	0x3c1a
	.uleb128 0xb
	.byte	0x84
	.byte	0x7
	.uahalf	0x392
	.uaword	0x3fd4
	.uleb128 0x9
	.string	"range_results"
	.byte	0x7
	.uahalf	0x395
	.uaword	0x371b
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_LLDriverResults_t"
	.byte	0x7
	.uahalf	0x397
	.uaword	0x3fb3
	.uleb128 0x2
	.string	"VL53L1_PresetModes"
	.byte	0x8
	.byte	0x88
	.uaword	0x1b3
	.uleb128 0x2
	.string	"VL53L1_DistanceModes"
	.byte	0x8
	.byte	0x96
	.uaword	0x1b3
	.uleb128 0xb
	.byte	0x1c
	.byte	0x8
	.uahalf	0x11e
	.uaword	0x412f
	.uleb128 0x9
	.string	"PresetMode"
	.byte	0x8
	.uahalf	0x11f
	.uaword	0x3ff5
	.byte	0
	.uleb128 0x9
	.string	"DistanceMode"
	.byte	0x8
	.uahalf	0x121
	.uaword	0x400f
	.byte	0x1
	.uleb128 0x9
	.string	"InternalDistanceMode"
	.byte	0x8
	.uahalf	0x123
	.uaword	0x400f
	.byte	0x2
	.uleb128 0x9
	.string	"NewDistanceMode"
	.byte	0x8
	.uahalf	0x127
	.uaword	0x400f
	.byte	0x3
	.uleb128 0x9
	.string	"MeasurementTimingBudgetMicroSeconds"
	.byte	0x8
	.uahalf	0x12b
	.uaword	0x230
	.byte	0x4
	.uleb128 0x9
	.string	"LimitChecksEnable"
	.byte	0x8
	.uahalf	0x12d
	.uaword	0x412f
	.byte	0x8
	.uleb128 0x9
	.string	"LimitChecksStatus"
	.byte	0x8
	.uahalf	0x12f
	.uaword	0x412f
	.byte	0xa
	.uleb128 0x9
	.string	"LimitChecksValue"
	.byte	0x8
	.uahalf	0x133
	.uaword	0x413f
	.byte	0xc
	.uleb128 0x9
	.string	"LimitChecksCurrent"
	.byte	0x8
	.uahalf	0x135
	.uaword	0x413f
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.uaword	0x1b3
	.uaword	0x413f
	.uleb128 0xe
	.uaword	0x297
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.uaword	0x2b6
	.uaword	0x414f
	.uleb128 0xe
	.uaword	0x297
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_DeviceParameters_t"
	.byte	0x8
	.uahalf	0x139
	.uaword	0x402b
	.uleb128 0x6
	.string	"VL53L1_State"
	.byte	0x8
	.uahalf	0x141
	.uaword	0x1b3
	.uleb128 0xf
	.uahalf	0x398
	.byte	0x8
	.uahalf	0x222
	.uaword	0x41e4
	.uleb128 0x9
	.string	"LLData"
	.byte	0x8
	.uahalf	0x223
	.uaword	0x3f95
	.byte	0
	.uleb128 0x10
	.string	"llresults"
	.byte	0x8
	.uahalf	0x226
	.uaword	0x3fd4
	.uahalf	0x2f4
	.uleb128 0x10
	.string	"PalState"
	.byte	0x8
	.uahalf	0x229
	.uaword	0x4171
	.uahalf	0x378
	.uleb128 0x10
	.string	"CurrentParameters"
	.byte	0x8
	.uahalf	0x22a
	.uaword	0x414f
	.uahalf	0x37c
	.byte	0
	.uleb128 0x6
	.string	"VL53L1_DevData_t"
	.byte	0x8
	.uahalf	0x22d
	.uaword	0x4186
	.uleb128 0x7
	.byte	0x4
	.byte	0x9
	.byte	0x4a
	.uaword	0x4214
	.uleb128 0x8
	.string	"dummy"
	.byte	0x9
	.byte	0x4b
	.uaword	0x230
	.byte	0
	.byte	0
	.uleb128 0x2
	.string	"I2C_HandleTypeDef"
	.byte	0x9
	.byte	0x4c
	.uaword	0x41fd
	.uleb128 0x11
	.uahalf	0x3a4
	.byte	0x9
	.byte	0x4e
	.uaword	0x42c1
	.uleb128 0x8
	.string	"Data"
	.byte	0x9
	.byte	0x50
	.uaword	0x41e4
	.byte	0
	.uleb128 0x12
	.string	"I2cDevAddr"
	.byte	0x9
	.byte	0x52
	.uaword	0x1b3
	.uahalf	0x398
	.uleb128 0x12
	.string	"comms_type"
	.byte	0x9
	.byte	0x53
	.uaword	0x1b3
	.uahalf	0x399
	.uleb128 0x12
	.string	"comms_speed_khz"
	.byte	0x9
	.byte	0x54
	.uaword	0x1ef
	.uahalf	0x39a
	.uleb128 0x12
	.string	"new_data_ready_poll_duration_ms"
	.byte	0x9
	.byte	0x55
	.uaword	0x230
	.uahalf	0x39c
	.uleb128 0x12
	.string	"I2cHandle"
	.byte	0x9
	.byte	0x56
	.uaword	0x42c1
	.uahalf	0x3a0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4214
	.uleb128 0x2
	.string	"VL53L1_Dev_t"
	.byte	0x9
	.byte	0x58
	.uaword	0x422d
	.uleb128 0x2
	.string	"VL53L1_DEV"
	.byte	0x9
	.byte	0x5a
	.uaword	0x42ed
	.uleb128 0x4
	.byte	0x4
	.uaword	0x42c7
	.uleb128 0x13
	.byte	0x1
	.string	"VL53L1_is_firmware_ready"
	.byte	0x1
	.uahalf	0x155
	.byte	0x1
	.uaword	0x3cc
	.byte	0x1
	.uaword	0x434c
	.uleb128 0x14
	.string	"Dev"
	.byte	0x1
	.uahalf	0x156
	.uaword	0x42db
	.uleb128 0x15
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x157
	.uaword	0x434c
	.uleb128 0x16
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x15d
	.uaword	0x3cc
	.uleb128 0x16
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x15e
	.uaword	0x4352
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1b3
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3f95
	.uleb128 0x17
	.byte	0x1
	.string	"VL53L1_is_boot_complete"
	.byte	0x1
	.uahalf	0x129
	.byte	0x1
	.uaword	0x3cc
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4417
	.uleb128 0x18
	.string	"Dev"
	.byte	0x1
	.uahalf	0x12a
	.uaword	0x42db
	.uaword	.LLST0
	.uleb128 0x19
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x12b
	.uaword	0x434c
	.uaword	.LLST1
	.uleb128 0x1a
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x132
	.uaword	0x3cc
	.uaword	.LLST2
	.uleb128 0x1b
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x133
	.uaword	0x1b3
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1c
	.uaword	.LVL2
	.uaword	0x4ba5
	.uaword	0x43e8
	.uleb128 0x1d
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0xe5
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL4
	.uaword	0x4bd1
	.uaword	0x4401
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL5
	.uaword	0x4bd1
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x42f3
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4466
	.uleb128 0x20
	.uaword	0x431b
	.uaword	.LLST3
	.uleb128 0x20
	.uaword	0x4327
	.uaword	.LLST4
	.uleb128 0x21
	.uaword	0x4333
	.uaword	.LLST5
	.uleb128 0x21
	.uaword	0x433f
	.uaword	.LLST6
	.uleb128 0x1e
	.uaword	.LVL8
	.uaword	0x4c02
	.uleb128 0x1d
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"VL53L1_is_new_data_ready"
	.byte	0x1
	.uahalf	0x16e
	.byte	0x1
	.uaword	0x3cc
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4525
	.uleb128 0x18
	.string	"Dev"
	.byte	0x1
	.uahalf	0x16f
	.uaword	0x42db
	.uaword	.LLST7
	.uleb128 0x19
	.uaword	.LASF23
	.byte	0x1
	.uahalf	0x170
	.uaword	0x434c
	.uaword	.LLST8
	.uleb128 0x1a
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x178
	.uaword	0x3cc
	.uaword	.LLST9
	.uleb128 0x1a
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x179
	.uaword	0x4352
	.uaword	.LLST7
	.uleb128 0x1a
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x17b
	.uaword	0x1b3
	.uaword	.LLST11
	.uleb128 0x1b
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x17c
	.uaword	0x1b3
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1a
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x17d
	.uaword	0x1b3
	.uaword	.LLST12
	.uleb128 0x1e
	.uaword	.LVL12
	.uaword	0x4ba5
	.uleb128 0x1d
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x31
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"VL53L1_poll_for_boot_completion"
	.byte	0x1
	.uahalf	0x1a0
	.byte	0x1
	.uaword	0x3cc
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4610
	.uleb128 0x18
	.string	"Dev"
	.byte	0x1
	.uahalf	0x1a1
	.uaword	0x42db
	.uaword	.LLST13
	.uleb128 0x19
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x1a2
	.uaword	0x230
	.uaword	.LLST14
	.uleb128 0x1a
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x1a9
	.uaword	0x3cc
	.uaword	.LLST15
	.uleb128 0x1c
	.uaword	.LVL16
	.uaword	0x4c3c
	.uaword	0x45a9
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x4b0
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL20
	.uaword	0x4c63
	.uaword	0x45dc
	.uleb128 0x1d
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0xe5
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1d
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL22
	.uaword	0x4ca7
	.uaword	0x45fa
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	.LC0
	.uleb128 0x1d
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL23
	.uaword	0x4bd1
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"VL53L1_wait_for_boot_completion"
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.uaword	0x3cc
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x46c9
	.uleb128 0x23
	.string	"Dev"
	.byte	0x1
	.byte	0x59
	.uaword	0x42db
	.uaword	.LLST16
	.uleb128 0x24
	.uaword	.LASF24
	.byte	0x1
	.byte	0x5f
	.uaword	0x3cc
	.uaword	.LLST17
	.uleb128 0x24
	.uaword	.LASF25
	.byte	0x1
	.byte	0x60
	.uaword	0x4352
	.uaword	.LLST16
	.uleb128 0x25
	.uaword	.LASF22
	.byte	0x1
	.byte	0x62
	.uaword	0x1b3
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1c
	.uaword	.LVL27
	.uaword	0x4358
	.uaword	0x469d
	.uleb128 0x1d
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL30
	.uaword	0x4cc3
	.uaword	0x46b6
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.uaword	.LVL32
	.byte	0x1
	.uaword	0x4525
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x1f4
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"VL53L1_poll_for_firmware_ready"
	.byte	0x1
	.uahalf	0x1ce
	.byte	0x1
	.uaword	0x3cc
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x485a
	.uleb128 0x18
	.string	"Dev"
	.byte	0x1
	.uahalf	0x1cf
	.uaword	0x42db
	.uaword	.LLST19
	.uleb128 0x19
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x1d0
	.uaword	0x230
	.uaword	.LLST20
	.uleb128 0x1a
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x1d7
	.uaword	0x3cc
	.uaword	.LLST21
	.uleb128 0x1a
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x1d8
	.uaword	0x4352
	.uaword	.LLST22
	.uleb128 0x27
	.string	"start_time_ms"
	.byte	0x1
	.uahalf	0x1da
	.uaword	0x230
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x27
	.string	"current_time_ms"
	.byte	0x1
	.uahalf	0x1db
	.uaword	0x230
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x28
	.string	"poll_delay_ms"
	.byte	0x1
	.uahalf	0x1dc
	.uaword	0x215
	.byte	0x1
	.uleb128 0x1b
	.uaword	.LASF22
	.byte	0x1
	.uahalf	0x1dd
	.uaword	0x1b3
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x29
	.uaword	0x42f3
	.uaword	.LBB6
	.uaword	.LBE6
	.byte	0x1
	.uahalf	0x1ea
	.uaword	0x47f4
	.uleb128 0x20
	.uaword	0x4327
	.uaword	.LLST23
	.uleb128 0x20
	.uaword	0x431b
	.uaword	.LLST24
	.uleb128 0x2a
	.uaword	.LBB7
	.uaword	.LBE7
	.uleb128 0x21
	.uaword	0x4333
	.uaword	.LLST25
	.uleb128 0x21
	.uaword	0x433f
	.uaword	.LLST24
	.uleb128 0x1e
	.uaword	.LVL41
	.uaword	0x4c02
	.uleb128 0x1d
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL37
	.uaword	0x4cea
	.uaword	0x4808
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL46
	.uaword	0x4cea
	.uaword	0x481c
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL49
	.uaword	0x4cea
	.uaword	0x4830
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL52
	.uaword	0x4cc3
	.uaword	0x4849
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL54
	.uaword	0x4cea
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"VL53L1_wait_for_firmware_ready"
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.uaword	0x3cc
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x496c
	.uleb128 0x23
	.string	"Dev"
	.byte	0x1
	.byte	0x89
	.uaword	0x42db
	.uaword	.LLST27
	.uleb128 0x24
	.uaword	.LASF24
	.byte	0x1
	.byte	0x90
	.uaword	0x3cc
	.uaword	.LLST28
	.uleb128 0x24
	.uaword	.LASF25
	.byte	0x1
	.byte	0x91
	.uaword	0x4352
	.uaword	.LLST27
	.uleb128 0x25
	.uaword	.LASF22
	.byte	0x1
	.byte	0x93
	.uaword	0x1b3
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x2b
	.string	"mode_start"
	.byte	0x1
	.byte	0x94
	.uaword	0x1b3
	.uaword	.LLST30
	.uleb128 0x2c
	.uaword	0x42f3
	.uaword	.LBB8
	.uaword	.LBE8
	.byte	0x1
	.byte	0xb6
	.uaword	0x493a
	.uleb128 0x20
	.uaword	0x4327
	.uaword	.LLST31
	.uleb128 0x20
	.uaword	0x431b
	.uaword	.LLST32
	.uleb128 0x2a
	.uaword	.LBB9
	.uaword	.LBE9
	.uleb128 0x21
	.uaword	0x4333
	.uaword	.LLST33
	.uleb128 0x21
	.uaword	0x433f
	.uaword	.LLST32
	.uleb128 0x1e
	.uaword	.LVL62
	.uaword	0x4c02
	.uleb128 0x1d
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL60
	.byte	0x1
	.uaword	0x46c9
	.uaword	0x4956
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x7d0
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.uaword	.LVL66
	.uaword	0x4cc3
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"VL53L1_poll_for_range_completion"
	.byte	0x1
	.uahalf	0x208
	.byte	0x1
	.uaword	0x3cc
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4a30
	.uleb128 0x18
	.string	"Dev"
	.byte	0x1
	.uahalf	0x209
	.uaword	0x42db
	.uaword	.LLST35
	.uleb128 0x19
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x20a
	.uaword	0x230
	.uaword	.LLST36
	.uleb128 0x2e
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x214
	.uaword	0x3cc
	.byte	0
	.uleb128 0x1a
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x215
	.uaword	0x4352
	.uaword	.LLST35
	.uleb128 0x1a
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x217
	.uaword	0x1b3
	.uaword	.LLST38
	.uleb128 0x1a
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x218
	.uaword	0x1b3
	.uaword	.LLST39
	.uleb128 0x26
	.uaword	.LVL70
	.byte	0x1
	.uaword	0x4c63
	.uleb128 0x1d
	.byte	0x1
	.byte	0x57
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x31
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x1d
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"VL53L1_wait_for_range_completion"
	.byte	0x1
	.byte	0xc9
	.byte	0x1
	.uaword	0x3cc
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4aea
	.uleb128 0x23
	.string	"Dev"
	.byte	0x1
	.byte	0xca
	.uaword	0x42db
	.uaword	.LLST40
	.uleb128 0x24
	.uaword	.LASF24
	.byte	0x1
	.byte	0xd0
	.uaword	0x3cc
	.uaword	.LLST41
	.uleb128 0x24
	.uaword	.LASF25
	.byte	0x1
	.byte	0xd1
	.uaword	0x4352
	.uaword	.LLST40
	.uleb128 0x25
	.uaword	.LASF29
	.byte	0x1
	.byte	0xd3
	.uaword	0x1b3
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1c
	.uaword	.LVL74
	.uaword	0x4466
	.uaword	0x4abe
	.uleb128 0x1d
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL77
	.uaword	0x4cc3
	.uaword	0x4ad7
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.uaword	.LVL79
	.byte	0x1
	.uaword	0x496c
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x7d0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"VL53L1_wait_for_test_completion"
	.byte	0x1
	.byte	0xf8
	.byte	0x1
	.uaword	0x3cc
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4ba5
	.uleb128 0x23
	.string	"Dev"
	.byte	0x1
	.byte	0xf9
	.uaword	0x42db
	.uaword	.LLST43
	.uleb128 0x24
	.uaword	.LASF24
	.byte	0x1
	.byte	0xff
	.uaword	0x3cc
	.uaword	.LLST44
	.uleb128 0x1a
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x100
	.uaword	0x4352
	.uaword	.LLST43
	.uleb128 0x1b
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x102
	.uaword	0x1b3
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1c
	.uaword	.LVL83
	.uaword	0x4466
	.uaword	0x4b79
	.uleb128 0x1d
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.uaword	.LVL86
	.uaword	0x4cc3
	.uaword	0x4b92
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x1d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.uaword	.LVL88
	.byte	0x1
	.uaword	0x496c
	.uleb128 0x1d
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0xea60
	.byte	0
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"VL53L1_RdByte"
	.byte	0xa
	.byte	0x73
	.byte	0x1
	.uaword	0x3cc
	.byte	0x1
	.uaword	0x4bd1
	.uleb128 0x30
	.uaword	0x42ed
	.uleb128 0x30
	.uaword	0x1ef
	.uleb128 0x30
	.uaword	0x434c
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"VL53L1_init_ll_driver_state"
	.byte	0xd
	.byte	0x61
	.byte	0x1
	.byte	0x1
	.uaword	0x4c02
	.uleb128 0x30
	.uaword	0x42db
	.uleb128 0x30
	.uaword	0x2e5
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"VL53L1_is_firmware_ready_silicon"
	.byte	0xb
	.byte	0x5b
	.byte	0x1
	.uaword	0x3cc
	.byte	0x1
	.uaword	0x4c3c
	.uleb128 0x30
	.uaword	0x42db
	.uleb128 0x30
	.uaword	0x434c
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"VL53L1_WaitUs"
	.byte	0xa
	.byte	0x82
	.byte	0x1
	.uaword	0x3cc
	.byte	0x1
	.uaword	0x4c63
	.uleb128 0x30
	.uaword	0x42ed
	.uleb128 0x30
	.uaword	0x215
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"VL53L1_WaitValueMaskEx"
	.byte	0xa
	.byte	0xa1
	.byte	0x1
	.uaword	0x3cc
	.byte	0x1
	.uaword	0x4ca7
	.uleb128 0x30
	.uaword	0x42ed
	.uleb128 0x30
	.uaword	0x230
	.uleb128 0x30
	.uaword	0x1ef
	.uleb128 0x30
	.uaword	0x1b3
	.uleb128 0x30
	.uaword	0x1b3
	.uleb128 0x30
	.uaword	0x230
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"printf"
	.byte	0xc
	.byte	0xba
	.byte	0x1
	.uaword	0x280
	.byte	0x1
	.uaword	0x4cc3
	.uleb128 0x30
	.uaword	0x2ab
	.uleb128 0x32
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"VL53L1_WaitMs"
	.byte	0xa
	.byte	0x86
	.byte	0x1
	.uaword	0x3cc
	.byte	0x1
	.uaword	0x4cea
	.uleb128 0x30
	.uaword	0x42ed
	.uleb128 0x30
	.uaword	0x215
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"VL53L1_GetTickCount"
	.byte	0xa
	.byte	0x9e
	.byte	0x1
	.uaword	0x3cc
	.byte	0x1
	.uaword	0x4d12
	.uleb128 0x30
	.uaword	0x4d12
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x230
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2-1
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL1
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL4-1
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL8-1
	.uaword	.LFE5
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL6
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL8-1
	.uaword	.LFE5
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LFE5
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL7
	.uaword	.LVL8-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL8-1
	.uaword	.LFE5
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL9
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL12-1
	.uaword	.LFE6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL10
	.uaword	.LFE6
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL9
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LFE6
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12-1
	.uahalf	0x8
	.byte	0x84
	.sleb128 368
	.byte	0x94
	.byte	0x1
	.byte	0x40
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL12-1
	.uaword	.LVL13
	.uahalf	0x5
	.byte	0x78
	.sleb128 0
	.byte	0x40
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LFE6
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL14
	.uaword	.LVL16-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL16-1
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL14
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL19
	.uaword	.LVL20-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL22-1
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL26
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL31
	.uaword	.LVL32-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL32-1
	.uaword	.LFE0
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL27
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL31
	.uaword	.LFE0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL35
	.uaword	.LFE8
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL33
	.uaword	.LVL37-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL37-1
	.uaword	.LFE8
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL33
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL53
	.uaword	.LVL54-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL54-1
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL55
	.uaword	.LFE8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL35
	.uaword	.LFE8
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x3
	.byte	0x91
	.sleb128 -9
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL41-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL41-1
	.uaword	.LVL47
	.uahalf	0x3
	.byte	0x91
	.sleb128 -9
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL55
	.uahalf	0x3
	.byte	0x91
	.sleb128 -9
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL39
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL48
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL39
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL43
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL51
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL56
	.uaword	.LVL60-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL60-1
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL56
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL62-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL63
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL66
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL59
	.uaword	.LVL60-1
	.uahalf	0x9
	.byte	0x84
	.sleb128 460
	.byte	0x94
	.byte	0x1
	.byte	0x9
	.byte	0xf0
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x3
	.byte	0x91
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL62-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL62-1
	.uaword	.LVL63
	.uahalf	0x3
	.byte	0x91
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LFE1
	.uahalf	0x3
	.byte	0x91
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL60
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL65
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL60
	.uaword	.LVL62
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL65
	.uaword	.LVL66-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL67
	.uaword	.LVL70-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL70-1
	.uaword	.LFE9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL67
	.uaword	.LVL70-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL70-1
	.uaword	.LFE9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x8
	.byte	0x84
	.sleb128 368
	.byte	0x94
	.byte	0x1
	.byte	0x40
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x40
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0xc
	.byte	0x84
	.sleb128 368
	.byte	0x94
	.byte	0x1
	.byte	0x40
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x9
	.byte	0x76
	.sleb128 0
	.byte	0x40
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL71
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL73
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL78
	.uaword	.LVL79-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL79-1
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL74
	.uaword	.LVL77-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL78
	.uaword	.LFE2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL80
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL82
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL87
	.uaword	.LVL88-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL88-1
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL83
	.uaword	.LVL86-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL87
	.uaword	.LFE3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x64
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB4
	.uaword	.LFE4
	.uaword	.LFB5
	.uaword	.LFE5
	.uaword	.LFB6
	.uaword	.LFE6
	.uaword	.LFB7
	.uaword	.LFE7
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB8
	.uaword	.LFE8
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	.LFB9
	.uaword	.LFE9
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF19:
	.string	"phasecal_config_timeout_us"
.LASF20:
	.string	"range_config_timeout_us"
.LASF11:
	.string	"y_centre"
.LASF4:
	.string	"gpio__tio_hv_status"
.LASF8:
	.string	"vcsel_period"
.LASF12:
	.string	"sigma_mm"
.LASF25:
	.string	"pdev"
.LASF23:
	.string	"pready"
.LASF26:
	.string	"gpio__mux_active_high_hv"
.LASF9:
	.string	"timeout_us"
.LASF24:
	.string	"status"
.LASF14:
	.string	"cfg_device_state"
.LASF17:
	.string	"peak_rate_mcps"
.LASF7:
	.string	"firmware__system_status"
.LASF3:
	.string	"dss_config__target_total_rate_mcps"
.LASF16:
	.string	"preset_mode"
.LASF2:
	.string	"algo__crosstalk_compensation_y_plane_gradient_kcps"
.LASF22:
	.string	"fw_ready"
.LASF27:
	.string	"interrupt_ready"
.LASF5:
	.string	"dss_config__roi_mode_control"
.LASF29:
	.string	"data_ready"
.LASF0:
	.string	"algo__crosstalk_compensation_plane_offset_kcps"
.LASF10:
	.string	"x_centre"
.LASF18:
	.string	"cal_distance_mm"
.LASF13:
	.string	"median_range_mm"
.LASF21:
	.string	"mm_config_timeout_us"
.LASF6:
	.string	"dss_config__manual_effective_spads_select"
.LASF1:
	.string	"algo__crosstalk_compensation_x_plane_gradient_kcps"
.LASF15:
	.string	"rd_device_state"
.LASF28:
	.string	"timeout_ms"
	.extern	VL53L1_GetTickCount,STT_FUNC,0
	.extern	VL53L1_WaitMs,STT_FUNC,0
	.extern	printf,STT_FUNC,0
	.extern	VL53L1_WaitValueMaskEx,STT_FUNC,0
	.extern	VL53L1_WaitUs,STT_FUNC,0
	.extern	VL53L1_is_firmware_ready_silicon,STT_FUNC,0
	.extern	VL53L1_init_ll_driver_state,STT_FUNC,0
	.extern	VL53L1_RdByte,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
