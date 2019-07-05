	.file	"Q_Linescan.c"
.section .text,"ax",@progbits
.Ltext0:
	.global	__floatunsidf
	.global	__muldf3
	.global	__fixunsdfsi
.section .text.InfineonRacer_FindBlack,"ax",@progbits
	.align 1
	.global	InfineonRacer_FindBlack
	.type	InfineonRacer_FindBlack, @function
InfineonRacer_FindBlack:
.LFB883:
	.file 1 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/Q_Linescan.c"
	.loc 1 23 0
.LVL0:
	.loc 1 23 0
	mov	%d9, %d4
	.loc 1 28 0
	jz	%d6, .L2
.LVL1:
	.loc 1 46 0 discriminator 1
	addi	%d10, %d5, -2
	mov	%d2, 119
	jge	%d4, %d10, .L3
	.loc 1 48 0
	movh.a	%a15, hi:IR_LineScan
	lea	%a15, [%a15] lo:IR_LineScan
	addsc.a	%a2, %a15, %d4, 2
	ld.w	%d4, [%a2]0
.LVL2:
	call	__floatunsidf
.LVL3:
	mov	%e4, %d3, %d2
	mov	%d6, 0
	movh	%d7, 16360
	call	__muldf3
.LVL4:
	mov	%e4, %d3, %d2
	call	__fixunsdfsi
.LVL5:
	.loc 1 49 0
	addsc.a	%a2, %a15, %d9, 2
	ld.w	%d15, [%a2] 8
	jlt.u	%d15, %d2, .L12
	.loc 1 50 0
	ld.w	%d15, [%a2] 12
	jlt.u	%d15, %d2, .L12
	add	%d15, %d9, 1
	mov	%d8, 0
	extr.u	%d9, %d15, 0, 16
.LVL6:
	.loc 1 48 0
	mov.aa	%a12, %a15
	j	.L5
.LVL7:
.L9:
	addsc.a	%a2, %a15, %d15, 2
	ld.w	%d4, [%a2]0
	call	__floatunsidf
.LVL8:
	mov	%e4, %d3, %d2
	mov	%d6, 0
	movh	%d7, 16360
	call	__muldf3
.LVL9:
	mov	%e4, %d3, %d2
	call	__fixunsdfsi
.LVL10:
	.loc 1 49 0
	addsc.a	%a2, %a15, %d15, 2
	ld.w	%d3, [%a2] 8
	jlt.u	%d3, %d2, .L4
	.loc 1 50 0
	addsc.a	%a2, %a12, %d15, 2
	add	%d8, 1
	ld.w	%d3, [%a2] 12
	jlt.u	%d3, %d2, .L4
.LVL11:
.L5:
	add	%d15, %d9, %d8
	extr.u	%d15, %d15, 0, 16
.LVL12:
	.loc 1 46 0 discriminator 2
	jlt	%d15, %d10, .L9
	mov	%d2, 119
.LVL13:
.L3:
	.loc 1 58 0
	ret
.LVL14:
.L2:
	.loc 1 31 0 discriminator 1
	addi	%d10, %d5, 2
	mov	%d2, 14
	jge	%d10, %d4, .L3
	.loc 1 33 0
	movh.a	%a15, hi:IR_LineScan
	lea	%a15, [%a15] lo:IR_LineScan
	addsc.a	%a2, %a15, %d4, 2
	ld.w	%d4, [%a2]0
.LVL15:
	call	__floatunsidf
.LVL16:
	mov	%e4, %d3, %d2
	mov	%d6, 0
	movh	%d7, 16360
	call	__muldf3
.LVL17:
	mov	%e4, %d3, %d2
	call	__fixunsdfsi
.LVL18:
	.loc 1 34 0
	addsc.a	%a2, %a15, %d9, 2
	ld.w	%d15, [%a2] -8
	jlt.u	%d15, %d2, .L12
	.loc 1 35 0
	ld.w	%d15, [%a2] -12
	jlt.u	%d15, %d2, .L12
	add	%d15, %d9, -1
	mov	%d8, 0
	extr.u	%d9, %d15, 0, 16
.LVL19:
	.loc 1 33 0
	mov.aa	%a12, %a15
	j	.L7
.LVL20:
.L8:
	addsc.a	%a2, %a15, %d15, 2
	ld.w	%d4, [%a2]0
	call	__floatunsidf
.LVL21:
	mov	%e4, %d3, %d2
	mov	%d6, 0
	movh	%d7, 16360
	call	__muldf3
.LVL22:
	mov	%e4, %d3, %d2
	call	__fixunsdfsi
.LVL23:
	.loc 1 34 0
	addsc.a	%a2, %a15, %d15, 2
	ld.w	%d3, [%a2] -8
	jlt.u	%d3, %d2, .L4
	.loc 1 35 0
	addsc.a	%a2, %a12, %d15, 2
	add	%d8, 1
	ld.w	%d3, [%a2] -12
	jlt.u	%d3, %d2, .L4
.LVL24:
.L7:
	sub	%d15, %d9, %d8
	extr.u	%d15, %d15, 0, 16
.LVL25:
	.loc 1 31 0 discriminator 2
	jlt	%d10, %d15, .L8
	mov	%d2, 14
	ret
.LVL26:
.L12:
	.loc 1 50 0
	mov	%d15, %d9
.L4:
.LVL27:
	.loc 1 53 0
	mov	%d2, %d15
	ret
.LFE883:
	.size	InfineonRacer_FindBlack, .-InfineonRacer_FindBlack
.section .text.InfineonRacer_detectLane,"ax",@progbits
	.align 1
	.global	InfineonRacer_detectLane
	.type	InfineonRacer_detectLane, @function
InfineonRacer_detectLane:
.LFB884:
	.loc 1 61 0
	.loc 1 62 0
	movh.a	%a12, hi:Line_Left
	ld.h	%d15, [%a12] lo:Line_Left
	movh.a	%a15, hi:Pre_Line_Left
	.loc 1 63 0
	movh.a	%a13, hi:Line_Right
	.loc 1 62 0
	st.h	[%a15] lo:Pre_Line_Left, %d15
	.loc 1 63 0
	ld.h	%d15, [%a13] lo:Line_Right
	movh.a	%a15, hi:Pre_Line_Right
	st.h	[%a15] lo:Pre_Line_Right, %d15
	.loc 1 65 0
	movh.a	%a15, hi:State_Track
	ld.bu	%d15, [%a15] lo:State_Track
	and	%d3, %d15, 253
	eq	%d2, %d3, 0
	or.eq	%d2, %d15, 5
	jnz	%d2, .L55
.L19:
	ret
.L55:
	.loc 1 67 0
	movh.a	%a14, hi:State_Scan
	ld.hu	%d2, [%a14] lo:State_Scan
	addi	%d2, %d2, -11
	ge.u	%d15, %d2, 31
	jz	%d15, .L56
.L22:
	movh.a	%a15, hi:Offset
	ld.hu	%d15, [%a15] lo:Offset
.L29:
	.loc 1 188 0
	jlt.u	%d15, 14, .L57
.L43:
	.loc 1 189 0
	lt.u	%d15, %d15, 120
	jnz	%d15, .L19
	.loc 1 189 0 is_stmt 0 discriminator 1
	mov	%d15, 119
	st.h	[%a15] lo:Offset, %d15
	ret
.L56:
	.loc 1 67 0 is_stmt 1
	movh.a	%a15, hi:.L24
	lea	%a15, [%a15] lo:.L24
	addsc.a	%a15, %a15, %d2, 2
	ji	%a15
	.align 2
	.align 2
.L24:
	.code32
	j	.L23
	.code32
	j	.L23
	.code32
	j	.L25
	.code32
	j	.L26
	.code32
	j	.L22
	.code32
	j	.L22
	.code32
	j	.L22
	.code32
	j	.L22
	.code32
	j	.L22
	.code32
	j	.L22
	.code32
	j	.L23
	.code32
	j	.L23
	.code32
	j	.L22
	.code32
	j	.L22
	.code32
	j	.L22
	.code32
	j	.L22
	.code32
	j	.L22
	.code32
	j	.L22
	.code32
	j	.L22
	.code32
	j	.L22
	.code32
	j	.L27
	.code32
	j	.L22
	.code32
	j	.L22
	.code32
	j	.L22
	.code32
	j	.L22
	.code32
	j	.L22
	.code32
	j	.L22
	.code32
	j	.L22
	.code32
	j	.L22
	.code32
	j	.L22
	.code32
	j	.L28
.L28:
	.loc 1 172 0
	movh.a	%a15, hi:Offset
	ld.hu	%d4, [%a15] lo:Offset
	mov	%d5, 14
	mov	%d6, 0
	call	InfineonRacer_FindBlack
.LVL28:
	st.h	[%a12] lo:Line_Left, %d2
	.loc 1 174 0
	eq	%d15, %d2, 14
	jnz	%d15, .L42
	.loc 1 181 0
	addi	%d15, %d2, 39
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15] lo:Offset, %d15
.L52:
	.loc 1 182 0
	mov	%d2, 31
	st.h	[%a14] lo:State_Scan, %d2
	.loc 1 188 0
	jge.u	%d15, 14, .L43
.L57:
	.loc 1 188 0 is_stmt 0 discriminator 1
	mov	%d15, 14
	st.h	[%a15] lo:Offset, %d15
	ret
.L27:
	.loc 1 151 0 is_stmt 1
	movh.a	%a15, hi:Offset
	ld.hu	%d8, [%a15] lo:Offset
	mov	%d5, 14
	mov	%d4, %d8
	mov	%d6, 0
	call	InfineonRacer_FindBlack
.LVL29:
	.loc 1 152 0
	mov	%d4, %d8
	mov	%d5, 119
	mov	%d6, 1
	.loc 1 151 0
	mov	%d15, %d2
	st.h	[%a12] lo:Line_Left, %d2
	.loc 1 152 0
	call	InfineonRacer_FindBlack
.LVL30:
	st.h	[%a13] lo:Line_Right, %d2
	.loc 1 154 0
	ne	%d2, %d15, 14
	jz	%d2, .L42
	.loc 1 159 0
	lt.u	%d2, %d15, 67
	.loc 1 161 0
	addi	%d15, %d15, 39
	extr.u	%d15, %d15, 0, 16
	st.h	[%a15] lo:Offset, %d15
	.loc 1 159 0
	jz	%d2, .L52
	.loc 1 167 0
	mov	%d2, 21
	st.h	[%a14] lo:State_Scan, %d2
	j	.L43
.L25:
	.loc 1 115 0
	movh.a	%a15, hi:Offset
	ld.hu	%d15, [%a15] lo:Offset
	mov	%d5, 14
	mov	%d4, %d15
	mov	%d6, 0
	call	InfineonRacer_FindBlack
.LVL31:
	.loc 1 116 0
	mov	%d4, %d15
	mov	%d5, 119
	mov	%d6, 1
	.loc 1 115 0
	st.h	[%a12] lo:Line_Left, %d2
	.loc 1 116 0
	call	InfineonRacer_FindBlack
.LVL32:
	st.h	[%a13] lo:Line_Right, %d2
	.loc 1 118 0
	ne	%d15, %d2, 119
	jz	%d15, .L39
.L37:
	.loc 1 123 0
	lt.u	%d15, %d2, 67
	jnz	%d15, .L51
	.loc 1 125 0
	addi	%d15, %d2, -39
	extr.u	%d15, %d15, 0, 16
	.loc 1 126 0
	mov	%d2, 12
	.loc 1 125 0
	st.h	[%a15] lo:Offset, %d15
	.loc 1 126 0
	st.h	[%a14] lo:State_Scan, %d2
	j	.L43
.L23:
	.loc 1 73 0
	movh.a	%a15, hi:Offset
	ld.hu	%d8, [%a15] lo:Offset
	mov	%d5, 14
	mov	%d4, %d8
	mov	%d6, 0
	call	InfineonRacer_FindBlack
.LVL33:
	.loc 1 74 0
	mov	%d4, %d8
	mov	%d5, 119
	mov	%d6, 1
	.loc 1 73 0
	mov	%d15, %d2
	st.h	[%a12] lo:Line_Left, %d2
	.loc 1 74 0
	call	InfineonRacer_FindBlack
.LVL34:
	st.h	[%a13] lo:Line_Right, %d2
	.loc 1 76 0
	ne	%d3, %d15, 14
	jz	%d3, .L58
	.loc 1 94 0
	ge.u	%d3, %d15, 66
	jnz	%d3, .L35
	.loc 1 96 0
	ne	%d3, %d2, 119
	jz	%d3, .L59
	.loc 1 103 0
	add	%d15, %d2
	extr.u	%d15, %d15, 1, 16
	.loc 1 104 0
	mov	%d2, 22
	.loc 1 103 0
	st.h	[%a15] lo:Offset, %d15
	.loc 1 104 0
	st.h	[%a14] lo:State_Scan, %d2
	j	.L29
.L26:
	.loc 1 136 0
	movh.a	%a15, hi:Offset
	ld.hu	%d15, [%a15] lo:Offset
	mov	%d5, 119
	mov	%d4, %d15
	mov	%d6, 1
	call	InfineonRacer_FindBlack
.LVL35:
	st.h	[%a13] lo:Line_Right, %d2
	.loc 1 138 0
	eq	%d3, %d2, 119
	jnz	%d3, .L39
	.loc 1 143 0
	ge.u	%d3, %d2, 66
	jnz	%d3, .L29
.L51:
	.loc 1 145 0
	addi	%d15, %d2, -39
	extr.u	%d15, %d15, 0, 16
	.loc 1 146 0
	mov	%d2, 13
	.loc 1 145 0
	st.h	[%a15] lo:Offset, %d15
	.loc 1 146 0
	st.h	[%a14] lo:State_Scan, %d2
	j	.L29
.L39:
	.loc 1 120 0
	mov	%d15, 14
	st.h	[%a15] lo:Offset, %d15
	.loc 1 121 0
	st.h	[%a14] lo:State_Scan, %d15
	ret
.L42:
	.loc 1 156 0
	mov	%d15, 119
	st.h	[%a15] lo:Offset, %d15
	.loc 1 157 0
	mov	%d15, 41
	st.h	[%a14] lo:State_Scan, %d15
	ret
.L35:
	.loc 1 109 0
	addi	%d15, %d15, 39
	extr.u	%d15, %d15, 0, 16
	.loc 1 110 0
	mov	%d2, 31
	.loc 1 109 0
	st.h	[%a15] lo:Offset, %d15
	.loc 1 110 0
	st.h	[%a14] lo:State_Scan, %d2
	j	.L29
.L58:
	.loc 1 78 0
	ne	%d15, %d2, 119
	jnz	%d15, .L37
	.loc 1 80 0
	mov	%d15, 66
	st.h	[%a15] lo:Offset, %d15
	.loc 1 81 0
	mov	%d15, 11
	st.h	[%a14] lo:State_Scan, %d15
	ret
.L59:
	.loc 1 98 0
	addi	%d15, %d15, 39
	extr.u	%d15, %d15, 0, 16
	.loc 1 99 0
	mov	%d2, 21
	.loc 1 98 0
	st.h	[%a15] lo:Offset, %d15
	.loc 1 99 0
	st.h	[%a14] lo:State_Scan, %d2
	j	.L43
.LFE884:
	.size	InfineonRacer_detectLane, .-InfineonRacer_detectLane
.section .text.InfineonRacer_DetectDashline,"ax",@progbits
	.align 1
	.global	InfineonRacer_DetectDashline
	.type	InfineonRacer_DetectDashline, @function
InfineonRacer_DetectDashline:
.LFB885:
	.loc 1 194 0
	.loc 1 196 0
	movh.a	%a15, hi:Line_Left
	ld.hu	%d15, [%a15] lo:Line_Left
	movh.a	%a15, hi:Pre_Line_Left
	ld.hu	%d2, [%a15] lo:Pre_Line_Left
	addi	%d3, %d2, -2
	jlt	%d15, %d3, .L61
	.loc 1 196 0 is_stmt 0 discriminator 1
	add	%d2, 2
	jge	%d2, %d15, .L71
.L61:
	.loc 1 197 0 is_stmt 1
	movh.a	%a15, hi:Line_Right
	ld.hu	%d15, [%a15] lo:Line_Right
	movh.a	%a15, hi:Pre_Line_Right
	ld.hu	%d2, [%a15] lo:Pre_Line_Right
	addi	%d3, %d2, -2
	jlt	%d15, %d3, .L62
	.loc 1 197 0 is_stmt 0 discriminator 1
	add	%d2, 2
	jge	%d2, %d15, .L72
.L62:
	.loc 1 199 0 is_stmt 1
	movh.a	%a15, hi:init_dash
	ld.bu	%d15, [%a15] lo:init_dash
	jeq	%d15, 1, .L73
.L63:
	.loc 1 217 0
	jnz	%d15, .L60
	.loc 1 219 0
	movh.a	%a15, hi:Pos_DL
	ld.b	%d15, [%a15] lo:Pos_DL
	jeq	%d15, -1, .L74
	.loc 1 220 0
	jeq	%d15, 1, .L75
.L60:
	ret
.L72:
	.loc 1 197 0 discriminator 2
	movh.a	%a15, hi:cnt_right.28156
	ld.w	%d15, [%a15] lo:cnt_right.28156
	add	%d15, 1
	st.w	[%a15] lo:cnt_right.28156, %d15
	.loc 1 199 0 discriminator 2
	movh.a	%a15, hi:init_dash
	ld.bu	%d15, [%a15] lo:init_dash
	jne	%d15, 1, .L63
.L73:
	.loc 1 201 0
	movh.a	%a2, hi:cnt_left.28155
	ld.w	%d15, [%a2] lo:cnt_left.28155
	movh.a	%a15, hi:cnt_right.28156
	ld.w	%d2, [%a15] lo:cnt_right.28156
	jlt	%d15, 5, .L64
	.loc 1 203 0
	jge	%d2, %d15, .L66
	.loc 1 205 0
	mov	%d15, -1
.L70:
	.loc 1 211 0
	movh.a	%a3, hi:Pos_DL
	st.b	[%a3] lo:Pos_DL, %d15
	.loc 1 212 0
	mov	%d15, 0
	st.w	[%a2] lo:cnt_left.28155, %d15
	.loc 1 213 0
	st.w	[%a15] lo:cnt_right.28156, %d15
	ret
.L71:
	.loc 1 196 0 discriminator 2
	movh.a	%a15, hi:cnt_left.28155
	ld.w	%d15, [%a15] lo:cnt_left.28155
	add	%d15, 1
	st.w	[%a15] lo:cnt_left.28155, %d15
	j	.L61
.L64:
	.loc 1 201 0 discriminator 1
	jlt	%d2, 5, .L76
.L66:
	.loc 1 209 0
	jge	%d15, %d2, .L60
	.loc 1 211 0
	mov	%d15, 1
	j	.L70
.L75:
	.loc 1 220 0 discriminator 1
	mov	%d15, -1
	st.b	[%a15] lo:Pos_DL, %d15
	ret
.L76:
	ret
.L74:
	.loc 1 219 0 discriminator 1
	mov	%d15, 1
	st.b	[%a15] lo:Pos_DL, %d15
	ret
.LFE885:
	.size	InfineonRacer_DetectDashline, .-InfineonRacer_DetectDashline
.section .text.InfineonRacer_DetectCrosswalk,"ax",@progbits
	.align 1
	.global	InfineonRacer_DetectCrosswalk
	.type	InfineonRacer_DetectCrosswalk, @function
InfineonRacer_DetectCrosswalk:
.LFB886:
	.loc 1 225 0
.LVL36:
	.loc 1 232 0
	movh.a	%a15, hi:Pre_Line_Left
	ld.hu	%d15, [%a15] lo:Pre_Line_Left
.LVL37:
	movh.a	%a15, hi:Pre_Line_Right
	ld.hu	%d9, [%a15] lo:Pre_Line_Right
	add	%d9, -1
	jge	%d15, %d9, .L77
	movh.a	%a15, hi:IR_LineScan
	mov	%d8, 0
	lea	%a15, [%a15] lo:IR_LineScan
.LVL38:
.L80:
	.loc 1 234 0
	addsc.a	%a2, %a15, %d15, 2
	.loc 1 235 0
	add	%d2, %d15, 2
	.loc 1 234 0
	ld.w	%d4, [%a2]0
	.loc 1 235 0
	addsc.a	%a12, %a15, %d2, 2
	.loc 1 234 0
	call	__floatunsidf
.LVL39:
	mov	%e4, %d3, %d2
	mov	%d6, 0
	movh	%d7, 16360
	call	__muldf3
.LVL40:
	mov	%e4, %d3, %d2
	.loc 1 232 0
	add	%d15, 1
.LVL41:
	.loc 1 234 0
	call	__fixunsdfsi
.LVL42:
	.loc 1 235 0
	extr.u	%d2, %d2, 0, 16
	ld.w	%d3, [%a12]0
	lt.u	%d2, %d3, %d2
	cadd	%d8, %d2, %d8, 1
.LVL43:
	.loc 1 232 0
	jlt	%d15, %d9, .L80
	.loc 1 238 0
	movh.a	%a15, hi:State_Track
	ld.bu	%d15, [%a15] lo:State_Track
.LVL44:
	and	%d3, %d15, 253
	.loc 1 240 0
	eq	%d2, %d3, 0
	and.ge	%d2, %d8, 4
	jz	%d2, .L77
	.loc 1 242 0
	jz	%d15, .L86
	.loc 1 252 0
	jeq	%d15, 2, .L87
.LVL45:
.L77:
	ret
.LVL46:
.L86:
	.loc 1 244 0
	mov	%d15, 1
	st.b	[%a15] lo:State_Track, %d15
	.loc 1 245 0
	movh.a	%a15, hi:init_dash
	st.b	[%a15] lo:init_dash, %d15
	.loc 1 246 0
	mov	%d15, 27
	movh.a	%a15, hi:Line_Left
	st.h	[%a15] lo:Line_Left, %d15
	.loc 1 247 0
	mov	%d15, 105
	movh.a	%a15, hi:Line_Right
	st.h	[%a15] lo:Line_Right, %d15
	.loc 1 248 0
	mov	%d15, 66
	movh.a	%a15, hi:Offset
	st.h	[%a15] lo:Offset, %d15
	.loc 1 249 0
	movh	%d15, 15949
	addi	%d15, %d15, -13107
	movh.a	%a15, hi:Duty_Motor
	st.w	[%a15] lo:Duty_Motor, %d15
.LVL47:
	ret
.LVL48:
.L87:
	.loc 1 252 0 discriminator 1
	movh.a	%a2, hi:cnt_cross
	ld.hu	%d15, [%a2] lo:cnt_cross
	lt.u	%d15, %d15, 63
	jnz	%d15, .L77
	.loc 1 254 0
	mov	%d15, 4
	st.b	[%a15] lo:State_Track, %d15
	.loc 1 255 0
	mov	%d15, 27
	movh.a	%a15, hi:Line_Left
	st.h	[%a15] lo:Line_Left, %d15
	.loc 1 256 0
	mov	%d15, 105
	movh.a	%a15, hi:Line_Right
	st.h	[%a15] lo:Line_Right, %d15
	.loc 1 257 0
	mov	%d15, 66
	movh.a	%a15, hi:Offset
	st.h	[%a15] lo:Offset, %d15
	.loc 1 258 0
	movh	%d15, 16020
	addi	%d15, %d15, 31457
	movh.a	%a15, hi:Duty_Motor
	st.w	[%a15] lo:Duty_Motor, %d15
.LVL49:
	ret
.LFE886:
	.size	InfineonRacer_DetectCrosswalk, .-InfineonRacer_DetectCrosswalk
.section .bss.cnt_right.28156,"aw",@nobits
	.align 2
	.type	cnt_right.28156, @object
	.size	cnt_right.28156, 4
cnt_right.28156:
	.zero	4
.section .bss.cnt_left.28155,"aw",@nobits
	.align 2
	.type	cnt_left.28155, @object
	.size	cnt_left.28155, 4
cnt_left.28155:
	.zero	4
	.global	init_dash
.section .bss.init_dash,"aw",@nobits
	.type	init_dash, @object
	.size	init_dash, 1
init_dash:
	.zero	1
	.global	Pos_DL
.section .bss.Pos_DL,"aw",@nobits
	.type	Pos_DL, @object
	.size	Pos_DL, 1
Pos_DL:
	.zero	1
	.global	State_Scan
.section .data.State_Scan,"aw",@progbits
	.align 1
	.type	State_Scan, @object
	.size	State_Scan, 2
State_Scan:
	.short	22
	.global	Offset
.section .data.Offset,"aw",@progbits
	.align 1
	.type	Offset, @object
	.size	Offset, 2
Offset:
	.short	66
	.global	Pre_Line_Right
.section .data.Pre_Line_Right,"aw",@progbits
	.align 1
	.type	Pre_Line_Right, @object
	.size	Pre_Line_Right, 2
Pre_Line_Right:
	.short	105
	.global	Pre_Line_Left
.section .data.Pre_Line_Left,"aw",@progbits
	.align 1
	.type	Pre_Line_Left, @object
	.size	Pre_Line_Left, 2
Pre_Line_Left:
	.short	27
	.global	Line_Right
.section .data.Line_Right,"aw",@progbits
	.align 1
	.type	Line_Right, @object
	.size	Line_Right, 2
Line_Right:
	.short	105
	.global	Line_Left
.section .data.Line_Left,"aw",@progbits
	.align 1
	.type	Line_Left, @object
	.size	Line_Left, 2
Line_Left:
	.short	27
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
	.file 6 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/SnsAct/BasicLineScan.h"
	.file 7 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Comm/Ifx_Console.h"
	.file 8 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/iLLD/TC27D/Tricore/_Impl/IfxCpu_cfg.h"
	.file 9 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/InfineonRacer.h"
	.file 10 "../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/Q_Linescan.h"
	.file 11 "../../_LibSrc/iLLD_1_0_1_8_0__TC27D/Src/BaseSw/Service/CpuGeneric/SysSe/Bsp/Assert.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xda7
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2018-04-18 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-2.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"../../MyApp/AurixRacer/0_Src/AppSw/Tricore/Algorithm/HandCode/Q_Linescan.c"
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
	.uaword	0x1eb
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x206
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x5c
	.uaword	0x195
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x5d
	.uaword	0x1a1
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
	.uaword	0x1cc
	.uleb128 0x3
	.string	"sint64"
	.byte	0x3
	.byte	0x24
	.uaword	0x268
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
	.uaword	0x2a3
	.uleb128 0x6
	.uleb128 0x3
	.string	"Ifx_TickTime"
	.byte	0x3
	.byte	0x3e
	.uaword	0x25a
	.uleb128 0x3
	.string	"Ifx_SizeT"
	.byte	0x3
	.byte	0x4b
	.uaword	0x1dd
	.uleb128 0x7
	.byte	0x8
	.byte	0x3
	.byte	0x7e
	.uaword	0x2ef
	.uleb128 0x8
	.string	"module"
	.byte	0x3
	.byte	0x80
	.uaword	0x29d
	.byte	0
	.uleb128 0x8
	.string	"index"
	.byte	0x3
	.byte	0x81
	.uaword	0x21c
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x82
	.uaword	0x2c9
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
	.uaword	0x375
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
	.uaword	0x29b
	.uleb128 0x3
	.string	"IfxStdIf_DPipe"
	.byte	0x5
	.byte	0x33
	.uaword	0x3ab
	.uleb128 0xb
	.string	"IfxStdIf_DPipe_"
	.byte	0x4c
	.byte	0x5
	.byte	0xd5
	.uaword	0x52a
	.uleb128 0x8
	.string	"driver"
	.byte	0x5
	.byte	0xd7
	.uaword	0x375
	.byte	0
	.uleb128 0x8
	.string	"txDisabled"
	.byte	0x5
	.byte	0xd8
	.uaword	0x24b
	.byte	0x4
	.uleb128 0x8
	.string	"write"
	.byte	0x5
	.byte	0xdb
	.uaword	0x576
	.byte	0x8
	.uleb128 0x8
	.string	"read"
	.byte	0x5
	.byte	0xdc
	.uaword	0x5bd
	.byte	0xc
	.uleb128 0x8
	.string	"getReadCount"
	.byte	0x5
	.byte	0xdd
	.uaword	0x5d8
	.byte	0x10
	.uleb128 0x8
	.string	"getReadEvent"
	.byte	0x5
	.byte	0xde
	.uaword	0x611
	.byte	0x14
	.uleb128 0x8
	.string	"getWriteCount"
	.byte	0x5
	.byte	0xdf
	.uaword	0x6be
	.byte	0x18
	.uleb128 0x8
	.string	"getWriteEvent"
	.byte	0x5
	.byte	0xe0
	.uaword	0x6e2
	.byte	0x1c
	.uleb128 0x8
	.string	"canReadCount"
	.byte	0x5
	.byte	0xe1
	.uaword	0x71c
	.byte	0x20
	.uleb128 0x8
	.string	"canWriteCount"
	.byte	0x5
	.byte	0xe2
	.uaword	0x75f
	.byte	0x24
	.uleb128 0x8
	.string	"flushTx"
	.byte	0x5
	.byte	0xe3
	.uaword	0x783
	.byte	0x28
	.uleb128 0x8
	.string	"clearTx"
	.byte	0x5
	.byte	0xe4
	.uaword	0x7ec
	.byte	0x2c
	.uleb128 0x8
	.string	"clearRx"
	.byte	0x5
	.byte	0xe5
	.uaword	0x7bc
	.byte	0x30
	.uleb128 0x8
	.string	"onReceive"
	.byte	0x5
	.byte	0xe6
	.uaword	0x80a
	.byte	0x34
	.uleb128 0x8
	.string	"onTransmit"
	.byte	0x5
	.byte	0xe7
	.uaword	0x82a
	.byte	0x38
	.uleb128 0x8
	.string	"onError"
	.byte	0x5
	.byte	0xe8
	.uaword	0x84b
	.byte	0x3c
	.uleb128 0x8
	.string	"getSendCount"
	.byte	0x5
	.byte	0xea
	.uaword	0x64a
	.byte	0x40
	.uleb128 0x8
	.string	"getTxTimeStamp"
	.byte	0x5
	.byte	0xeb
	.uaword	0x683
	.byte	0x44
	.uleb128 0x8
	.string	"resetSendCount"
	.byte	0x5
	.byte	0xec
	.uaword	0x869
	.byte	0x48
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_WriteEvent"
	.byte	0x5
	.byte	0x35
	.uaword	0x54b
	.uleb128 0x5
	.byte	0x4
	.uaword	0x551
	.uleb128 0xc
	.uaword	0x24b
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ReadEvent"
	.byte	0x5
	.byte	0x36
	.uaword	0x54b
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Write"
	.byte	0x5
	.byte	0x48
	.uaword	0x592
	.uleb128 0x5
	.byte	0x4
	.uaword	0x598
	.uleb128 0xd
	.byte	0x1
	.uaword	0x24b
	.uaword	0x5b7
	.uleb128 0xe
	.uaword	0x375
	.uleb128 0xe
	.uaword	0x29b
	.uleb128 0xe
	.uaword	0x5b7
	.uleb128 0xe
	.uaword	0x2a4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2b8
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_Read"
	.byte	0x5
	.byte	0x57
	.uaword	0x592
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadCount"
	.byte	0x5
	.byte	0x5f
	.uaword	0x5fb
	.uleb128 0x5
	.byte	0x4
	.uaword	0x601
	.uleb128 0xd
	.byte	0x1
	.uaword	0x21c
	.uaword	0x611
	.uleb128 0xe
	.uaword	0x375
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetReadEvent"
	.byte	0x5
	.byte	0x67
	.uaword	0x634
	.uleb128 0x5
	.byte	0x4
	.uaword	0x63a
	.uleb128 0xd
	.byte	0x1
	.uaword	0x556
	.uaword	0x64a
	.uleb128 0xe
	.uaword	0x375
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetSendCount"
	.byte	0x5
	.byte	0x6f
	.uaword	0x66d
	.uleb128 0x5
	.byte	0x4
	.uaword	0x673
	.uleb128 0xd
	.byte	0x1
	.uaword	0x22a
	.uaword	0x683
	.uleb128 0xe
	.uaword	0x375
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetTxTimeStamp"
	.byte	0x5
	.byte	0x77
	.uaword	0x6a8
	.uleb128 0x5
	.byte	0x4
	.uaword	0x6ae
	.uleb128 0xd
	.byte	0x1
	.uaword	0x2a4
	.uaword	0x6be
	.uleb128 0xe
	.uaword	0x375
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteCount"
	.byte	0x5
	.byte	0x7f
	.uaword	0x5fb
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_GetWriteEvent"
	.byte	0x5
	.byte	0x87
	.uaword	0x706
	.uleb128 0x5
	.byte	0x4
	.uaword	0x70c
	.uleb128 0xd
	.byte	0x1
	.uaword	0x52a
	.uaword	0x71c
	.uleb128 0xe
	.uaword	0x375
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanReadCount"
	.byte	0x5
	.byte	0x92
	.uaword	0x73f
	.uleb128 0x5
	.byte	0x4
	.uaword	0x745
	.uleb128 0xd
	.byte	0x1
	.uaword	0x24b
	.uaword	0x75f
	.uleb128 0xe
	.uaword	0x375
	.uleb128 0xe
	.uaword	0x2b8
	.uleb128 0xe
	.uaword	0x2a4
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_CanWriteCount"
	.byte	0x5
	.byte	0x9d
	.uaword	0x73f
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_FlushTx"
	.byte	0x5
	.byte	0xa6
	.uaword	0x7a1
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7a7
	.uleb128 0xd
	.byte	0x1
	.uaword	0x24b
	.uaword	0x7bc
	.uleb128 0xe
	.uaword	0x375
	.uleb128 0xe
	.uaword	0x2a4
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearRx"
	.byte	0x5
	.byte	0xad
	.uaword	0x7da
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7e0
	.uleb128 0xf
	.byte	0x1
	.uaword	0x7ec
	.uleb128 0xe
	.uaword	0x375
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ClearTx"
	.byte	0x5
	.byte	0xb4
	.uaword	0x7da
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnReceive"
	.byte	0x5
	.byte	0xbc
	.uaword	0x7da
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnTransmit"
	.byte	0x5
	.byte	0xc3
	.uaword	0x7da
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_OnError"
	.byte	0x5
	.byte	0xca
	.uaword	0x7da
	.uleb128 0x3
	.string	"IfxStdIf_DPipe_ResetSendCount"
	.byte	0x5
	.byte	0xd1
	.uaword	0x7da
	.uleb128 0x10
	.uahalf	0x400
	.byte	0x6
	.byte	0x1b
	.uaword	0x8aa
	.uleb128 0x8
	.string	"adcResult"
	.byte	0x6
	.byte	0x1c
	.uaword	0x8aa
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x22a
	.uaword	0x8c0
	.uleb128 0x12
	.uaword	0x319
	.byte	0x1
	.uleb128 0x12
	.uaword	0x319
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.string	"IR_LineScan_t"
	.byte	0x6
	.byte	0x1d
	.uaword	0x88e
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.byte	0x26
	.uaword	0x8ff
	.uleb128 0x8
	.string	"standardIo"
	.byte	0x7
	.byte	0x28
	.uaword	0x8ff
	.byte	0
	.uleb128 0x8
	.string	"align"
	.byte	0x7
	.byte	0x29
	.uaword	0x1dd
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x395
	.uleb128 0x3
	.string	"Ifx_Console"
	.byte	0x7
	.byte	0x2a
	.uaword	0x8d5
	.uleb128 0x9
	.byte	0x1
	.byte	0x9
	.byte	0x28
	.uaword	0x95d
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
	.uaword	0x918
	.uleb128 0x9
	.byte	0x1
	.byte	0xa
	.byte	0x23
	.uaword	0x99a
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
	.byte	0xa
	.byte	0x27
	.uaword	0x96c
	.uleb128 0x13
	.byte	0x1
	.string	"InfineonRacer_FindBlack"
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.uaword	0x1f8
	.uaword	.LFB883
	.uaword	.LFE883
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xa57
	.uleb128 0x14
	.string	"start"
	.byte	0x1
	.byte	0x16
	.uaword	0x1f8
	.uaword	.LLST0
	.uleb128 0x14
	.string	"final"
	.byte	0x1
	.byte	0x16
	.uaword	0x1f8
	.uaword	.LLST1
	.uleb128 0x14
	.string	"lr"
	.byte	0x1
	.byte	0x16
	.uaword	0x1f8
	.uaword	.LLST2
	.uleb128 0x15
	.string	"k"
	.byte	0x1
	.byte	0x18
	.uaword	0x1f8
	.uaword	.LLST3
	.uleb128 0x16
	.string	"left"
	.byte	0x1
	.byte	0x19
	.uaword	0x1f8
	.byte	0
	.uleb128 0x16
	.string	"right"
	.byte	0x1
	.byte	0x19
	.uaword	0x1f8
	.byte	0x1
	.uleb128 0x15
	.string	"var"
	.byte	0x1
	.byte	0x1a
	.uaword	0x22a
	.uaword	.LLST4
	.uleb128 0x17
	.string	"line_k"
	.byte	0x1
	.byte	0x1a
	.uaword	0x22a
	.byte	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"InfineonRacer_detectLane"
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.uaword	.LFB884
	.uaword	.LFE884
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xb6f
	.uleb128 0x19
	.uaword	.LVL28
	.uaword	0x9a9
	.uaword	0xa9c
	.uleb128 0x1a
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x3e
	.byte	0
	.uleb128 0x19
	.uaword	.LVL29
	.uaword	0x9a9
	.uaword	0xaba
	.uleb128 0x1a
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x3e
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL30
	.uaword	0x9a9
	.uaword	0xad9
	.uleb128 0x1a
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x77
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL31
	.uaword	0x9a9
	.uaword	0xaf7
	.uleb128 0x1a
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x3e
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL32
	.uaword	0x9a9
	.uaword	0xb16
	.uleb128 0x1a
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x77
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL33
	.uaword	0x9a9
	.uaword	0xb34
	.uleb128 0x1a
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x3e
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.uaword	.LVL34
	.uaword	0x9a9
	.uaword	0xb53
	.uleb128 0x1a
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x77
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL35
	.uaword	0x9a9
	.uleb128 0x1a
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x77
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"InfineonRacer_DetectDashline"
	.byte	0x1
	.byte	0xc1
	.byte	0x1
	.uaword	.LFB885
	.uaword	.LFE885
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xbce
	.uleb128 0x17
	.string	"cnt_left"
	.byte	0x1
	.byte	0xc3
	.uaword	0x1b6
	.byte	0x5
	.byte	0x3
	.uaword	cnt_left.28155
	.uleb128 0x17
	.string	"cnt_right"
	.byte	0x1
	.byte	0xc3
	.uaword	0x1b6
	.byte	0x5
	.byte	0x3
	.uaword	cnt_right.28156
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"InfineonRacer_DetectCrosswalk"
	.byte	0x1
	.byte	0xe0
	.byte	0x1
	.uaword	.LFB886
	.uaword	.LFE886
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0xc2e
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0xe4
	.uaword	0x1b6
	.uaword	.LLST5
	.uleb128 0x15
	.string	"cnt_black"
	.byte	0x1
	.byte	0xe5
	.uaword	0x1b6
	.uaword	.LLST6
	.uleb128 0x1d
	.string	"var"
	.byte	0x1
	.byte	0xe6
	.uaword	0x1f8
	.byte	0
	.uleb128 0x11
	.uaword	0x2ef
	.uaword	0xc3e
	.uleb128 0x12
	.uaword	0x319
	.byte	0x2
	.byte	0
	.uleb128 0x1e
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x8
	.byte	0x96
	.uaword	0xc5b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.uaword	0xc2e
	.uleb128 0x1e
	.string	"Assert_verboseLevel"
	.byte	0xb
	.byte	0x79
	.uaword	0x22a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.string	"IR_LineScan"
	.byte	0x6
	.byte	0x22
	.uaword	0x8c0
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.string	"Ifx_g_console"
	.byte	0x7
	.byte	0x2c
	.uaword	0x905
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.string	"State_Track"
	.byte	0x9
	.byte	0x38
	.uaword	0x95d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.string	"Duty_Motor"
	.byte	0x9
	.byte	0x3a
	.uaword	0x238
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.string	"cnt_cross"
	.byte	0x9
	.byte	0x3c
	.uaword	0x1f8
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"Line_Left"
	.byte	0x1
	.byte	0x6
	.uaword	0x1f8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Line_Left
	.uleb128 0x20
	.string	"Line_Right"
	.byte	0x1
	.byte	0x7
	.uaword	0x1f8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Line_Right
	.uleb128 0x20
	.string	"Pre_Line_Left"
	.byte	0x1
	.byte	0x9
	.uaword	0x1f8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Pre_Line_Left
	.uleb128 0x20
	.string	"Pre_Line_Right"
	.byte	0x1
	.byte	0xa
	.uaword	0x1f8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Pre_Line_Right
	.uleb128 0x20
	.string	"Offset"
	.byte	0x1
	.byte	0xc
	.uaword	0x1f8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Offset
	.uleb128 0x20
	.string	"State_Scan"
	.byte	0x1
	.byte	0xe
	.uaword	0x1f8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	State_Scan
	.uleb128 0x20
	.string	"Pos_DL"
	.byte	0x1
	.byte	0x10
	.uaword	0x99a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Pos_DL
	.uleb128 0x20
	.string	"init_dash"
	.byte	0x1
	.byte	0x11
	.uaword	0x24b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	init_dash
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x14
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
	.uleb128 0x6
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
	.uleb128 0x1c
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x31
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
	.uleb128 0x1d
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
	.uaword	.LVL14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15
	.uaword	.LFE883
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL3-1
	.uaword	.LVL14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL16-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL16-1
	.uaword	.LFE883
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL3-1
	.uaword	.LVL14
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL16-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL16-1
	.uaword	.LFE883
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL37
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL49
	.uaword	.LFE886
	.uahalf	0x2
	.byte	0x30
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
	.extern	cnt_cross,STT_OBJECT,2
	.extern	Duty_Motor,STT_OBJECT,4
	.extern	State_Track,STT_OBJECT,1
	.extern	IR_LineScan,STT_OBJECT,1024
	.ident	"GCC: (HighTec Release HDP-v4.9.1.0-infineon-2.0-df254e8) 4.9.4 build on 2018-04-18"
