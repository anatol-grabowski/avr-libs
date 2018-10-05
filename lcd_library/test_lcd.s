	.file	"test_lcd.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.global	wait_until_key_pressed
	.type	wait_until_key_pressed, @function
wait_until_key_pressed:
.LFB6:
.LM1:
/* prologue: function */
/* frame size = 0 */
.LBB12:
.LBB13:
.LBB14:
.LBB15:
.LM2:
	ldi r18,lo8(1250)
	ldi r19,hi8(1250)
.L2:
.LBE15:
.LBE14:
.LBE13:
.LBE12:
.LM3:
	in r25,41-32
.LVL0:
.LBB19:
.LBB18:
.LBB17:
.LBB16:
.LM4:
	movw r30,r18
.LVL1:
/* #APP */
 ;  105 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 1
	1: sbiw r30,1
	brne 1b
 ;  0 "" 2
/* #NOAPP */
.LBE16:
.LBE17:
.LBE18:
.LBE19:
.LM5:
	in r24,41-32
.LVL2:
.LM6:
	and r24,r25
	sbrc r24,7
	rjmp .L2
.L5:
.LM7:
	sbis 41-32,7
	rjmp .L5
/* epilogue start */
.LM8:
	ret
.LFE6:
	.size	wait_until_key_pressed, .-wait_until_key_pressed
	.data
.LC0:
	.string	"LCD Test Line 1\n"
.LC1:
	.string	"Line 2"
.LC2:
	.string	"CurOn"
.LC3:
	.string	"Copyright: "
	.text
.global	main
	.type	main, @function
main:
.LFB7:
.LM9:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,7
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 7 */
.LM10:
	cbi 42-32,7
.LM11:
	sbi 43-32,7
.LM12:
	ldi r24,lo8(12)
	call lcd_init
.LM13:
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
.L10:
.LM14:
	call lcd_clrscr
.LM15:
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	call lcd_puts
.LM16:
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	call lcd_puts
.LM17:
	ldi r24,lo8(7)
	ldi r22,lo8(1)
	call lcd_gotoxy
.LM18:
	ldi r24,lo8(58)
	call lcd_putc
.LM19:
	call wait_until_key_pressed
.LM20:
	ldi r24,lo8(14)
	call lcd_command
.LM21:
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
	call lcd_puts
.LM22:
	call wait_until_key_pressed
.LM23:
	call lcd_clrscr
.LM24:
	ldi r24,lo8(__c.1503)
	ldi r25,hi8(__c.1503)
	call lcd_puts_p
.LM25:
	ldi r24,lo8(__c.1505)
	ldi r25,hi8(__c.1505)
	call lcd_puts_p
.LM26:
	ldi r24,lo8(24)
	call lcd_command
.LM27:
	call wait_until_key_pressed
.LM28:
	ldi r24,lo8(12)
	call lcd_command
.LM29:
	call lcd_clrscr
.LM30:
	ldi r24,lo8(134)
	ldi r25,hi8(134)
	movw r22,r14
	ldi r20,lo8(10)
	ldi r21,hi8(10)
	call itoa
.LM31:
	movw r24,r14
	call lcd_puts
.LM32:
	call wait_until_key_pressed
.LM33:
	call lcd_clrscr
.LM34:
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	call lcd_puts
.LM35:
	ldi r24,lo8(64)
	call lcd_command
	ldi r16,lo8(copyRightChar)
	ldi r17,hi8(copyRightChar)
.L9:
.LBB20:
.LM36:
	movw r30,r16
/* #APP */
 ;  152 "test_lcd.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL3:
/* #NOAPP */
.LBE20:
	call lcd_data
.LVL4:
	subi r16,lo8(-(1))
	sbci r17,hi8(-(1))
.LM37:
	ldi r31,hi8(copyRightChar+16)
	cpi r16,lo8(copyRightChar+16)
	cpc r17,r31
	brne .L9
.LM38:
	ldi r24,lo8(0)
	ldi r22,lo8(1)
	call lcd_gotoxy
.LM39:
	ldi r24,lo8(0)
	call lcd_putc
.LM40:
	ldi r24,lo8(1)
	call lcd_putc
.LM41:
	call wait_until_key_pressed
	rjmp .L10
.LFE7:
	.size	main, .-main
	.section	.progmem.data,"a",@progbits
	.type	copyRightChar, @object
	.size	copyRightChar, 16
copyRightChar:
	.byte	7
	.byte	8
	.byte	19
	.byte	20
	.byte	20
	.byte	19
	.byte	8
	.byte	7
	.byte	0
	.byte	16
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	16
	.byte	0
	.type	__c.1505, @object
	.size	__c.1505, 33
__c.1505:
	.string	"Line 2 longer than 14 characters"
	.type	__c.1503, @object
	.size	__c.1503, 34
__c.1503:
	.string	"Line 1 longer than 14 characters\n"
	.section	.debug_frame,"",@progbits
.Lframe0:
	.long	.LECIE0-.LSCIE0
.LSCIE0:
	.long	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -1
	.byte	0x24
	.byte	0xc
	.uleb128 0x20
	.uleb128 0x0
	.p2align	2
.LECIE0:
.LSFDE0:
	.long	.LEFDE0-.LASFDE0
.LASFDE0:
	.long	.Lframe0
	.long	.LFB6
	.long	.LFE6-.LFB6
	.p2align	2
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB7
	.long	.LFE7-.LFB7
	.p2align	2
.LEFDE2:
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST2:
	.long	.LVL3-.Ltext0
	.long	.LVL4-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x214
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF23
	.byte	0x1
	.long	.LASF24
	.long	.LASF25
	.long	.Ltext0
	.long	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x4
	.long	.LASF4
	.byte	0x3
	.byte	0x7a
	.long	0x4c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x4
	.long	.LASF5
	.byte	0x3
	.byte	0x7c
	.long	0x25
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.uleb128 0x6
	.long	.LASF9
	.byte	0x2
	.byte	0x68
	.byte	0x1
	.byte	0x3
	.long	0x8f
	.uleb128 0x7
	.long	.LASF11
	.byte	0x2
	.byte	0x67
	.long	0x53
	.byte	0x0
	.uleb128 0x6
	.long	.LASF10
	.byte	0x4
	.byte	0x6f
	.byte	0x1
	.byte	0x3
	.long	0xc0
	.uleb128 0x7
	.long	.LASF12
	.byte	0x4
	.byte	0x6e
	.long	0xc0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.byte	0x70
	.long	0x53
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0x71
	.long	0xc0
	.uleb128 0x9
	.uleb128 0x9
	.byte	0x0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF15
	.uleb128 0xa
	.byte	0x1
	.long	.LASF26
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x124
	.uleb128 0xb
	.long	.LASF16
	.byte	0x1
	.byte	0x24
	.long	0x4c
	.byte	0x1
	.byte	0x69
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.byte	0x24
	.long	0x4c
	.byte	0x1
	.byte	0x68
	.uleb128 0xc
	.long	0x8f
	.long	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x28
	.uleb128 0xd
	.long	.Ldebug_ranges0+0x18
	.uleb128 0xc
	.long	0x76
	.long	.Ldebug_ranges0+0x30
	.byte	0x4
	.byte	0x82
	.uleb128 0xe
	.long	0x83
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF27
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.long	0x2c
	.long	.LFB7
	.long	.LFE7
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x1ad
	.uleb128 0xb
	.long	.LASF18
	.byte	0x1
	.byte	0x33
	.long	0x1ad
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x10
	.string	"num"
	.byte	0x1
	.byte	0x34
	.long	0x2c
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x35
	.long	0x4c
	.uleb128 0x11
	.long	.LBB20
	.long	.LBE20
	.long	0x18a
	.uleb128 0x8
	.long	.LASF19
	.byte	0x1
	.byte	0x98
	.long	0x53
	.uleb128 0x12
	.long	.LASF20
	.byte	0x1
	.byte	0x98
	.long	0x41
	.long	.LLST2
	.byte	0x0
	.uleb128 0x13
	.string	"__c"
	.byte	0x1
	.byte	0x6c
	.long	0x1d7
	.byte	0x5
	.byte	0x3
	.long	__c.1503
	.uleb128 0x13
	.string	"__c"
	.byte	0x1
	.byte	0x6d
	.long	0x1ec
	.byte	0x5
	.byte	0x3
	.long	__c.1505
	.byte	0x0
	.uleb128 0x14
	.long	0x1c0
	.long	0x1bd
	.uleb128 0x15
	.long	0x1bd
	.byte	0x6
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF21
	.uleb128 0x14
	.long	0x1c0
	.long	0x1d7
	.uleb128 0x15
	.long	0x1bd
	.byte	0x21
	.byte	0x0
	.uleb128 0x16
	.long	0x1c7
	.uleb128 0x14
	.long	0x1c0
	.long	0x1ec
	.uleb128 0x15
	.long	0x1bd
	.byte	0x20
	.byte	0x0
	.uleb128 0x16
	.long	0x1dc
	.uleb128 0x14
	.long	0x4c
	.long	0x201
	.uleb128 0x15
	.long	0x1bd
	.byte	0xf
	.byte	0x0
	.uleb128 0xb
	.long	.LASF22
	.byte	0x1
	.byte	0x15
	.long	0x212
	.byte	0x5
	.byte	0x3
	.long	copyRightChar
	.uleb128 0x16
	.long	0x1f1
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x32
	.word	0x2
	.long	.Ldebug_info0
	.long	0x218
	.long	0xc7
	.string	"wait_until_key_pressed"
	.long	0x124
	.string	"main"
	.long	0x0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.word	0x0
	.word	0x0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0x0
	.long	0x0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB12-.Ltext0
	.long	.LBE12-.Ltext0
	.long	.LBB19-.Ltext0
	.long	.LBE19-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB13-.Ltext0
	.long	.LBE13-.Ltext0
	.long	.LBB18-.Ltext0
	.long	.LBE18-.Ltext0
	.long	0x0
	.long	0x0
	.long	.LBB14-.Ltext0
	.long	.LBE14-.Ltext0
	.long	.LBB17-.Ltext0
	.long	.LBE17-.Ltext0
	.long	0x0
	.long	0x0
	.section	.debug_line
	.long	.LELT0-.LSLT0
.LSLT0:
	.word	0x2
	.long	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf5
	.byte	0xa
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x1
	.ascii	"c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/win"
	.ascii	"avr-20100110/lib/gcc/../../avr/include"
	.byte	0
	.ascii	"c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/win"
	.ascii	"avr-20100110/lib/gcc/../../avr/include/util"
	.byte	0
	.byte	0x0
	.string	"test_lcd.c"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.string	"util/delay_basic.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"stdint.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"util/delay.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.byte	0x0
.LELTP0:
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM1
	.byte	0x36
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x4
	.uleb128 0x2
	.byte	0x5a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM3
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -66
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM4
	.byte	0x4
	.uleb128 0x2
	.byte	0x56
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM5
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -64
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM6
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM8
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM11
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM12
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x57
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x3
	.sleb128 -59
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM15
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM16
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM17
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM18
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM19
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM20
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM21
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM22
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM23
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM24
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM25
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM26
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM27
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM28
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM29
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM30
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM31
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM32
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM33
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM34
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM35
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM36
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM37
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM38
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM39
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM40
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM41
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.Letext0
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF26:
	.string	"wait_until_key_pressed"
.LASF22:
	.string	"copyRightChar"
.LASF24:
	.string	"test_lcd.c"
.LASF19:
	.string	"__addr16"
.LASF3:
	.string	"unsigned char"
.LASF9:
	.string	"_delay_loop_2"
.LASF6:
	.string	"long unsigned int"
.LASF10:
	.string	"_delay_ms"
.LASF23:
	.string	"GNU C 4.3.3"
.LASF20:
	.string	"__result"
.LASF15:
	.string	"double"
.LASF14:
	.string	"__tmp"
.LASF27:
	.string	"main"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF4:
	.string	"uint8_t"
.LASF7:
	.string	"long long int"
.LASF21:
	.string	"char"
.LASF16:
	.string	"temp1"
.LASF17:
	.string	"temp2"
.LASF11:
	.string	"__count"
.LASF18:
	.string	"buffer"
.LASF5:
	.string	"uint16_t"
.LASF13:
	.string	"__ticks"
.LASF12:
	.string	"__ms"
.LASF1:
	.string	"long int"
.LASF2:
	.string	"signed char"
.LASF25:
	.string	"C:\\\\_tot\\\\_3_PROJECTS\\\\atmega328p\\\\_libs\\\\lcd_library"
.global __do_copy_data
