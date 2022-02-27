	.file	"func.c"
	.text
	.globl	rotWord
	.type	rotWord, @function
rotWord:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -16(%rbp)
	jmp	.L2
.L3:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-16(%rbp), %eax
	cltq
	movb	%dl, -12(%rbp,%rax)
	addl	$1, -16(%rbp)
.L2:
	cmpl	$3, -16(%rbp)
	jle	.L3
	movl	$0, -16(%rbp)
	jmp	.L4
.L7:
	movl	$4, %eax
	subl	-28(%rbp), %eax
	cmpl	%eax, -16(%rbp)
	jge	.L5
	movl	-16(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	jmp	.L6
.L5:
	movl	$4, %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movslq	%ecx, %rax
	movzbl	-12(%rbp,%rax), %eax
	movb	%al, (%rdx)
.L6:
	addl	$1, -16(%rbp)
.L4:
	cmpl	$3, -16(%rbp)
	jle	.L7
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	rotWord, .-rotWord
	.globl	len
	.type	len, @function
len:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	andl	$15, %eax
	testl	%eax, %eax
	jne	.L10
	movl	-20(%rbp), %eax
	jmp	.L11
.L10:
	movl	-20(%rbp), %eax
	cltd
	shrl	$28, %edx
	addl	%edx, %eax
	andl	$15, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	$16, %eax
	subl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
.L11:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	len, .-len
	.section	.rodata
.LC2:
	.string	"%02X"
	.align 32
.LC0:
	.value	99
	.value	124
	.value	119
	.value	123
	.value	242
	.value	107
	.value	111
	.value	197
	.value	48
	.value	1
	.value	103
	.value	43
	.value	254
	.value	215
	.value	171
	.value	118
	.value	202
	.value	130
	.value	201
	.value	125
	.value	250
	.value	89
	.value	71
	.value	240
	.value	173
	.value	212
	.value	162
	.value	175
	.value	156
	.value	164
	.value	114
	.value	192
	.value	183
	.value	253
	.value	147
	.value	38
	.value	54
	.value	63
	.value	247
	.value	204
	.value	52
	.value	165
	.value	229
	.value	241
	.value	113
	.value	216
	.value	49
	.value	21
	.value	4
	.value	199
	.value	35
	.value	195
	.value	24
	.value	150
	.value	5
	.value	154
	.value	7
	.value	18
	.value	128
	.value	226
	.value	235
	.value	39
	.value	178
	.value	117
	.value	9
	.value	131
	.value	44
	.value	26
	.value	27
	.value	110
	.value	90
	.value	160
	.value	82
	.value	59
	.value	214
	.value	179
	.value	41
	.value	227
	.value	47
	.value	132
	.value	83
	.value	209
	.value	0
	.value	237
	.value	32
	.value	252
	.value	177
	.value	91
	.value	106
	.value	203
	.value	190
	.value	57
	.value	74
	.value	76
	.value	88
	.value	207
	.value	208
	.value	239
	.value	170
	.value	251
	.value	67
	.value	77
	.value	51
	.value	133
	.value	69
	.value	249
	.value	2
	.value	127
	.value	80
	.value	60
	.value	159
	.value	168
	.value	81
	.value	163
	.value	64
	.value	143
	.value	146
	.value	157
	.value	56
	.value	245
	.value	188
	.value	182
	.value	218
	.value	33
	.value	16
	.value	255
	.value	243
	.value	210
	.value	205
	.value	12
	.value	19
	.value	236
	.value	95
	.value	151
	.value	68
	.value	23
	.value	196
	.value	167
	.value	126
	.value	61
	.value	100
	.value	93
	.value	25
	.value	115
	.value	96
	.value	129
	.value	79
	.value	220
	.value	34
	.value	42
	.value	144
	.value	136
	.value	70
	.value	238
	.value	184
	.value	20
	.value	222
	.value	94
	.value	11
	.value	219
	.value	224
	.value	50
	.value	58
	.value	10
	.value	73
	.value	6
	.value	36
	.value	92
	.value	194
	.value	211
	.value	172
	.value	98
	.value	145
	.value	149
	.value	228
	.value	121
	.value	231
	.value	200
	.value	55
	.value	109
	.value	141
	.value	213
	.value	78
	.value	169
	.value	108
	.value	86
	.value	244
	.value	234
	.value	101
	.value	122
	.value	174
	.value	8
	.value	186
	.value	120
	.value	37
	.value	46
	.value	28
	.value	166
	.value	180
	.value	198
	.value	232
	.value	221
	.value	116
	.value	31
	.value	75
	.value	189
	.value	139
	.value	138
	.value	112
	.value	62
	.value	181
	.value	102
	.value	72
	.value	3
	.value	246
	.value	14
	.value	97
	.value	53
	.value	87
	.value	185
	.value	134
	.value	193
	.value	29
	.value	158
	.value	225
	.value	248
	.value	152
	.value	17
	.value	105
	.value	217
	.value	142
	.value	148
	.value	155
	.value	30
	.value	135
	.value	233
	.value	206
	.value	85
	.value	40
	.value	223
	.value	140
	.value	161
	.value	137
	.value	13
	.value	191
	.value	230
	.value	66
	.value	104
	.value	65
	.value	153
	.value	45
	.value	15
	.value	176
	.value	84
	.value	187
	.value	22
	.text
	.globl	sub_sbox
	.type	sub_sbox, @function
sub_sbox:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$568, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -568(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-544(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movl	$64, %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	rep movsq
	movq	-568(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	-26(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movzbl	-26(%rbp), %eax
	movb	%al, -548(%rbp)
	movb	$0, -547(%rbp)
	movzbl	-25(%rbp), %eax
	movb	%al, -546(%rbp)
	movb	$0, -545(%rbp)
	leaq	-548(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	movq	%rax, %rbx
	leaq	-548(%rbp), %rax
	addq	$2, %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	salq	$4, %rbx
	movq	%rbx, %rdx
	addq	%rdx, %rax
	movzwl	-544(%rbp,%rax,2), %eax
	movl	%eax, %edx
	movq	-568(%rbp), %rax
	movb	%dl, (%rax)
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	sub_sbox, .-sub_sbox
	.section	.rodata
	.align 32
.LC1:
	.value	82
	.value	9
	.value	106
	.value	213
	.value	48
	.value	54
	.value	165
	.value	56
	.value	191
	.value	64
	.value	163
	.value	158
	.value	129
	.value	243
	.value	215
	.value	251
	.value	124
	.value	227
	.value	57
	.value	130
	.value	155
	.value	47
	.value	255
	.value	135
	.value	52
	.value	142
	.value	67
	.value	68
	.value	196
	.value	222
	.value	233
	.value	203
	.value	84
	.value	123
	.value	148
	.value	50
	.value	166
	.value	194
	.value	35
	.value	61
	.value	238
	.value	76
	.value	149
	.value	11
	.value	66
	.value	250
	.value	195
	.value	78
	.value	8
	.value	46
	.value	161
	.value	102
	.value	40
	.value	217
	.value	36
	.value	178
	.value	118
	.value	91
	.value	162
	.value	73
	.value	109
	.value	139
	.value	209
	.value	37
	.value	114
	.value	248
	.value	246
	.value	100
	.value	134
	.value	104
	.value	152
	.value	22
	.value	212
	.value	164
	.value	92
	.value	204
	.value	93
	.value	101
	.value	182
	.value	146
	.value	108
	.value	112
	.value	72
	.value	80
	.value	253
	.value	237
	.value	185
	.value	218
	.value	94
	.value	21
	.value	70
	.value	87
	.value	167
	.value	141
	.value	157
	.value	132
	.value	144
	.value	216
	.value	171
	.value	0
	.value	140
	.value	188
	.value	211
	.value	10
	.value	247
	.value	228
	.value	88
	.value	5
	.value	184
	.value	179
	.value	69
	.value	6
	.value	208
	.value	44
	.value	30
	.value	143
	.value	202
	.value	63
	.value	15
	.value	2
	.value	193
	.value	175
	.value	189
	.value	3
	.value	1
	.value	19
	.value	138
	.value	107
	.value	58
	.value	145
	.value	17
	.value	65
	.value	79
	.value	103
	.value	220
	.value	234
	.value	151
	.value	242
	.value	207
	.value	206
	.value	240
	.value	180
	.value	230
	.value	115
	.value	150
	.value	172
	.value	116
	.value	34
	.value	231
	.value	173
	.value	53
	.value	133
	.value	226
	.value	249
	.value	55
	.value	232
	.value	28
	.value	117
	.value	223
	.value	110
	.value	71
	.value	241
	.value	26
	.value	113
	.value	29
	.value	41
	.value	197
	.value	137
	.value	111
	.value	183
	.value	98
	.value	14
	.value	170
	.value	24
	.value	190
	.value	27
	.value	252
	.value	86
	.value	62
	.value	75
	.value	198
	.value	210
	.value	121
	.value	32
	.value	154
	.value	219
	.value	192
	.value	254
	.value	120
	.value	205
	.value	90
	.value	244
	.value	31
	.value	221
	.value	168
	.value	51
	.value	136
	.value	7
	.value	199
	.value	49
	.value	177
	.value	18
	.value	16
	.value	89
	.value	39
	.value	128
	.value	236
	.value	95
	.value	96
	.value	81
	.value	127
	.value	169
	.value	25
	.value	181
	.value	74
	.value	13
	.value	45
	.value	229
	.value	122
	.value	159
	.value	147
	.value	201
	.value	156
	.value	239
	.value	160
	.value	224
	.value	59
	.value	77
	.value	174
	.value	42
	.value	245
	.value	176
	.value	200
	.value	235
	.value	187
	.value	60
	.value	131
	.value	83
	.value	153
	.value	97
	.value	23
	.value	43
	.value	4
	.value	126
	.value	186
	.value	119
	.value	214
	.value	38
	.value	225
	.value	105
	.value	20
	.value	99
	.value	85
	.value	33
	.value	12
	.value	125
	.text
	.globl	sub_invsbox
	.type	sub_invsbox, @function
sub_invsbox:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$568, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -568(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-544(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movl	$64, %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	rep movsq
	movq	-568(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	-26(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movzbl	-26(%rbp), %eax
	movb	%al, -548(%rbp)
	movb	$0, -547(%rbp)
	movzbl	-25(%rbp), %eax
	movb	%al, -546(%rbp)
	movb	$0, -545(%rbp)
	leaq	-548(%rbp), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	movq	%rax, %rbx
	leaq	-548(%rbp), %rax
	addq	$2, %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol@PLT
	salq	$4, %rbx
	movq	%rbx, %rdx
	addq	%rdx, %rax
	movzwl	-544(%rbp,%rax,2), %eax
	movl	%eax, %edx
	movq	-568(%rbp), %rax
	movb	%dl, (%rax)
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	sub_invsbox, .-sub_invsbox
	.globl	sbox
	.type	sbox, @function
sbox:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L17
.L18:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	sub_sbox
	addl	$1, -4(%rbp)
.L17:
	cmpl	$3, -4(%rbp)
	jle	.L18
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	sbox, .-sbox
	.globl	invsbox
	.type	invsbox, @function
invsbox:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L20
.L21:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	sub_invsbox
	addl	$1, -4(%rbp)
.L20:
	cmpl	$3, -4(%rbp)
	jle	.L21
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	invsbox, .-invsbox
	.globl	SubBytes
	.type	SubBytes, @function
SubBytes:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L23
.L26:
	movl	$0, -4(%rbp)
	jmp	.L24
.L25:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	sbox
	addl	$1, -4(%rbp)
.L24:
	cmpl	$3, -4(%rbp)
	jle	.L25
	addl	$1, -8(%rbp)
.L23:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L26
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	SubBytes, .-SubBytes
	.globl	InvSubBytes
	.type	InvSubBytes, @function
InvSubBytes:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L28
.L31:
	movl	$0, -4(%rbp)
	jmp	.L29
.L30:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	invsbox
	addl	$1, -4(%rbp)
.L29:
	cmpl	$3, -4(%rbp)
	jle	.L30
	addl	$1, -8(%rbp)
.L28:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L31
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	InvSubBytes, .-InvSubBytes
	.globl	subMixColumns
	.type	subMixColumns, @function
subMixColumns:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -24(%rbp)
	jmp	.L33
.L37:
	movl	$0, -20(%rbp)
	jmp	.L34
.L36:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-20(%rbp), %eax
	cltq
	movb	%dl, -16(%rbp,%rax)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	leal	(%rax,%rax), %edx
	movl	-20(%rbp), %eax
	cltq
	movb	%dl, -12(%rbp,%rax)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	andl	$-128, %eax
	movb	%al, -25(%rbp)
	cmpb	$-128, -25(%rbp)
	jne	.L35
	movl	-20(%rbp), %eax
	cltq
	movzbl	-12(%rbp,%rax), %eax
	xorl	$27, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	cltq
	movb	%dl, -12(%rbp,%rax)
.L35:
	addl	$1, -20(%rbp)
.L34:
	cmpl	$3, -20(%rbp)
	jle	.L36
	movzbl	-12(%rbp), %edx
	movzbl	-13(%rbp), %eax
	xorl	%eax, %edx
	movzbl	-14(%rbp), %eax
	xorl	%eax, %edx
	movzbl	-11(%rbp), %eax
	movl	%edx, %esi
	xorl	%eax, %esi
	movzbl	-15(%rbp), %edx
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movl	-24(%rbp), %eax
	cltq
	addq	%rcx, %rax
	xorl	%esi, %edx
	movb	%dl, (%rax)
	movzbl	-11(%rbp), %edx
	movzbl	-16(%rbp), %eax
	xorl	%eax, %edx
	movzbl	-13(%rbp), %eax
	xorl	%eax, %edx
	movzbl	-10(%rbp), %eax
	movl	%edx, %esi
	xorl	%eax, %esi
	movzbl	-14(%rbp), %edx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rcx
	movl	-24(%rbp), %eax
	cltq
	addq	%rcx, %rax
	xorl	%esi, %edx
	movb	%dl, (%rax)
	movzbl	-10(%rbp), %edx
	movzbl	-15(%rbp), %eax
	xorl	%eax, %edx
	movzbl	-16(%rbp), %eax
	xorl	%eax, %edx
	movzbl	-9(%rbp), %eax
	movl	%edx, %esi
	xorl	%eax, %esi
	movzbl	-13(%rbp), %edx
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rcx
	movl	-24(%rbp), %eax
	cltq
	addq	%rcx, %rax
	xorl	%esi, %edx
	movb	%dl, (%rax)
	movzbl	-9(%rbp), %edx
	movzbl	-14(%rbp), %eax
	xorl	%eax, %edx
	movzbl	-15(%rbp), %eax
	xorl	%eax, %edx
	movzbl	-12(%rbp), %eax
	movl	%edx, %esi
	xorl	%eax, %esi
	movzbl	-16(%rbp), %edx
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rcx
	movl	-24(%rbp), %eax
	cltq
	addq	%rcx, %rax
	xorl	%esi, %edx
	movb	%dl, (%rax)
	addl	$1, -24(%rbp)
.L33:
	cmpl	$3, -24(%rbp)
	jle	.L37
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L38
	call	__stack_chk_fail@PLT
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	subMixColumns, .-subMixColumns
	.globl	mul_bytes
	.type	mul_bytes, @function
mul_bytes:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %edx
	movl	%esi, %eax
	movb	%dl, -20(%rbp)
	movb	%al, -24(%rbp)
	movb	$0, -8(%rbp)
	movb	$-128, -7(%rbp)
	movb	$0, -6(%rbp)
	movb	$27, -5(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L40
.L43:
	movzbl	-24(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L41
	movzbl	-20(%rbp), %eax
	xorb	%al, -8(%rbp)
.L41:
	movzbl	-20(%rbp), %eax
	andb	-7(%rbp), %al
	movb	%al, -6(%rbp)
	salb	-20(%rbp)
	cmpb	$0, -6(%rbp)
	je	.L42
	movzbl	-5(%rbp), %eax
	xorb	%al, -20(%rbp)
.L42:
	shrb	-24(%rbp)
	addl	$1, -4(%rbp)
.L40:
	cmpl	$7, -4(%rbp)
	jle	.L43
	movzbl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	mul_bytes, .-mul_bytes
	.globl	subInvMixColumns
	.type	subInvMixColumns, @function
subInvMixColumns:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -36(%rbp)
	jmp	.L46
.L51:
	movl	$0, -40(%rbp)
	jmp	.L47
.L48:
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-40(%rbp), %eax
	cltq
	movb	%dl, -32(%rbp,%rax)
	addl	$1, -40(%rbp)
.L47:
	cmpl	$3, -40(%rbp)
	jle	.L48
	movzbl	-32(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$14, %edi
	call	mul_bytes
	movl	%eax, %ebx
	movzbl	-31(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$11, %edi
	call	mul_bytes
	xorl	%eax, %ebx
	movzbl	-30(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$13, %edi
	call	mul_bytes
	xorl	%eax, %ebx
	movzbl	-29(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$9, %edi
	call	mul_bytes
	xorl	%ebx, %eax
	movb	%al, -28(%rbp)
	movzbl	-32(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$9, %edi
	call	mul_bytes
	movl	%eax, %ebx
	movzbl	-31(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$14, %edi
	call	mul_bytes
	xorl	%eax, %ebx
	movzbl	-30(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$11, %edi
	call	mul_bytes
	xorl	%eax, %ebx
	movzbl	-29(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$13, %edi
	call	mul_bytes
	xorl	%ebx, %eax
	movb	%al, -27(%rbp)
	movzbl	-32(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$13, %edi
	call	mul_bytes
	movl	%eax, %ebx
	movzbl	-31(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$9, %edi
	call	mul_bytes
	xorl	%eax, %ebx
	movzbl	-30(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$14, %edi
	call	mul_bytes
	xorl	%eax, %ebx
	movzbl	-29(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$11, %edi
	call	mul_bytes
	xorl	%ebx, %eax
	movb	%al, -26(%rbp)
	movzbl	-32(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$11, %edi
	call	mul_bytes
	movl	%eax, %ebx
	movzbl	-31(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$13, %edi
	call	mul_bytes
	xorl	%eax, %ebx
	movzbl	-30(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$9, %edi
	call	mul_bytes
	xorl	%eax, %ebx
	movzbl	-29(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	movl	$14, %edi
	call	mul_bytes
	xorl	%ebx, %eax
	movb	%al, -25(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L49
.L50:
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movl	-40(%rbp), %eax
	cltq
	movzbl	-28(%rbp,%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -40(%rbp)
.L49:
	cmpl	$3, -40(%rbp)
	jle	.L50
	addl	$1, -36(%rbp)
.L46:
	cmpl	$3, -36(%rbp)
	jle	.L51
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L52
	call	__stack_chk_fail@PLT
.L52:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	subInvMixColumns, .-subInvMixColumns
	.globl	MixColumns
	.type	MixColumns, @function
MixColumns:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L54
.L55:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	subMixColumns
	addl	$1, -4(%rbp)
.L54:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L55
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	MixColumns, .-MixColumns
	.globl	InvMixColumns
	.type	InvMixColumns, @function
InvMixColumns:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L57
.L58:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	subInvMixColumns
	addl	$1, -4(%rbp)
.L57:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L58
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	InvMixColumns, .-InvMixColumns
	.globl	ShiftRows
	.type	ShiftRows, @function
ShiftRows:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -40(%rbp)
	jmp	.L60
.L63:
	movl	$1, -36(%rbp)
	jmp	.L61
.L62:
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	rotWord
	addl	$1, -36(%rbp)
.L61:
	cmpl	$3, -36(%rbp)
	jle	.L62
	addl	$1, -40(%rbp)
.L60:
	movl	-40(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L63
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L64
	call	__stack_chk_fail@PLT
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	ShiftRows, .-ShiftRows
	.globl	InvShiftRows
	.type	InvShiftRows, @function
InvShiftRows:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -40(%rbp)
	jmp	.L66
.L69:
	movl	$1, -36(%rbp)
	jmp	.L67
.L68:
	movl	$4, %eax
	subl	-36(%rbp), %eax
	movl	%eax, %edx
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movl	-36(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	rotWord
	addl	$1, -36(%rbp)
.L67:
	cmpl	$3, -36(%rbp)
	jle	.L68
	addl	$1, -40(%rbp)
.L66:
	movl	-40(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L69
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L70
	call	__stack_chk_fail@PLT
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	InvShiftRows, .-InvShiftRows
	.globl	show
	.type	show, @function
show:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpl	$0, -48(%rbp)
	jne	.L72
	leaq	-14(%rbp), %rax
	movl	$2122533, (%rax)
	jmp	.L73
.L72:
	cmpl	$1, -48(%rbp)
	jne	.L73
	movl	$1479684133, -14(%rbp)
	movw	$32, -10(%rbp)
.L73:
	movl	$0, -28(%rbp)
	jmp	.L74
.L79:
	movl	$0, -24(%rbp)
	jmp	.L75
.L78:
	movl	$0, -20(%rbp)
	jmp	.L76
.L77:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	leaq	-14(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -20(%rbp)
.L76:
	cmpl	$3, -20(%rbp)
	jle	.L77
	addl	$1, -24(%rbp)
.L75:
	cmpl	$3, -24(%rbp)
	jle	.L78
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -28(%rbp)
.L74:
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L79
	movl	$10, %edi
	call	putchar@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L80
	call	__stack_chk_fail@PLT
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	show, .-show
	.globl	AddRoundKey
	.type	AddRoundKey, @function
AddRoundKey:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L82
.L87:
	movl	$0, -8(%rbp)
	jmp	.L83
.L86:
	movl	$0, -4(%rbp)
	jmp	.L84
.L85:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-24(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rsi
	movl	-8(%rbp), %eax
	cltq
	salq	$3, %rax
	addq	%rsi, %rax
	movq	(%rax), %rsi
	movl	-4(%rbp), %eax
	cltq
	addq	%rsi, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L84:
	cmpl	$3, -4(%rbp)
	jle	.L85
	addl	$1, -8(%rbp)
.L83:
	cmpl	$3, -8(%rbp)
	jle	.L86
	addl	$1, -12(%rbp)
.L82:
	movl	-12(%rbp), %eax
	cltq
	cmpq	%rax, -40(%rbp)
	ja	.L87
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	AddRoundKey, .-AddRoundKey
	.section	.rodata
.LC3:
	.string	"%02X "
	.text
	.globl	keyShow
	.type	keyShow, @function
keyShow:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L89
.L92:
	movl	$0, -4(%rbp)
	jmp	.L90
.L91:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -4(%rbp)
.L90:
	cmpl	$3, -4(%rbp)
	jle	.L91
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -8(%rbp)
.L89:
	cmpl	$3, -8(%rbp)
	jle	.L92
	movl	$10, %edi
	call	putchar@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	keyShow, .-keyShow
	.globl	rcon
	.type	rcon, @function
rcon:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -100(%rbp)
	movl	%esi, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-96(%rbp), %rdx
	movl	$0, %eax
	movl	$11, %ecx
	movq	%rdx, %rdi
	rep stosq
	movw	$1, -88(%rbp)
	movw	$2, -80(%rbp)
	movw	$4, -72(%rbp)
	movw	$8, -64(%rbp)
	movw	$16, -56(%rbp)
	movw	$32, -48(%rbp)
	movw	$64, -40(%rbp)
	movw	$128, -32(%rbp)
	movw	$27, -24(%rbp)
	movw	$54, -16(%rbp)
	movl	-104(%rbp), %eax
	movslq	%eax, %rdx
	movl	-100(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movzwl	-96(%rbp,%rax,2), %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L95
	call	__stack_chk_fail@PLT
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	rcon, .-rcon
	.globl	KeyExpansion
	.type	KeyExpansion, @function
KeyExpansion:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movzbl	3(%rax), %eax
	movb	%al, -28(%rbp)
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movzbl	3(%rax), %eax
	movb	%al, -27(%rbp)
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movzbl	3(%rax), %eax
	movb	%al, -26(%rbp)
	movq	-56(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movzbl	3(%rax), %eax
	movb	%al, -25(%rbp)
	leaq	-28(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	rotWord
	leaq	-28(%rbp), %rax
	movq	%rax, %rdi
	call	sbox
	movl	$32, %edi
	call	malloc@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -48(%rbp)
	jmp	.L97
.L102:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$4, %edi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movl	$0, -44(%rbp)
	jmp	.L98
.L101:
	cmpl	$0, -44(%rbp)
	jne	.L99
	movl	-48(%rbp), %eax
	cltq
	movzbl	-28(%rbp,%rax), %edx
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movl	-44(%rbp), %eax
	cltq
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movl	%edx, %ebx
	xorl	%eax, %ebx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	rcon
	movl	%eax, %ecx
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	xorl	%ecx, %ebx
	movl	%ebx, %edx
	movb	%dl, (%rax)
	jmp	.L100
.L99:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %ecx
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	cltq
	subq	$1, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rsi
	movq	-40(%rbp), %rax
	addq	%rsi, %rax
	movq	(%rax), %rsi
	movl	-44(%rbp), %eax
	cltq
	addq	%rsi, %rax
	xorl	%ecx, %edx
	movb	%dl, (%rax)
.L100:
	addl	$1, -44(%rbp)
.L98:
	cmpl	$3, -44(%rbp)
	jle	.L101
	addl	$1, -48(%rbp)
.L97:
	cmpl	$3, -48(%rbp)
	jle	.L102
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L104
	call	__stack_chk_fail@PLT
.L104:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	KeyExpansion, .-KeyExpansion
	.globl	e
	.type	e, @function
e:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	$1, -4(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	AddRoundKey
	jmp	.L106
.L107:
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SubBytes
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ShiftRows
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	MixColumns
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	-8(%rax), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	AddRoundKey
	addl	$1, -4(%rbp)
.L106:
	cmpl	$9, -4(%rbp)
	jle	.L107
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	SubBytes
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ShiftRows
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	$72, %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	AddRoundKey
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	e, .-e
	.globl	d
	.type	d, @function
d:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	$8, -4(%rbp)
	movq	-32(%rbp), %rax
	addq	$72, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	keyShow
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	$72, %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	AddRoundKey
	jmp	.L109
.L110:
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	InvShiftRows
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	InvSubBytes
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	AddRoundKey
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	InvMixColumns
	subl	$1, -4(%rbp)
.L109:
	cmpl	$0, -4(%rbp)
	jns	.L110
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	InvShiftRows
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	InvSubBytes
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	AddRoundKey
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	d, .-d
	.ident	"GCC: (GNU) 11.1.0"
	.section	.note.GNU-stack,"",@progbits
