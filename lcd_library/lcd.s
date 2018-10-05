	.file	"lcd.c"
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
	.type	lcd_write, @function
lcd_write:
.LFB7:
.LM1:
.LVL0:
/* prologue: function */
/* frame size = 0 */
	mov r19,r24
.LM2:
	tst r22
	breq .L2
.LVL1:
.LM3:
	sbi 43-32,4
	rjmp .L3
.L2:
.LM4:
	cbi 43-32,4
.L3:
.LM5:
	cbi 43-32,5
.LM6:
	in r24,42-32
	ori r24,lo8(15)
	out 42-32,r24
.LM7:
	in r25,43-32
.LVL2:
	andi r25,lo8(-16)
.LM8:
	mov r24,r19
	swap r24
	andi r24,lo8(15)
	or r24,r25
	out 43-32,r24
.LBB176:
.LBB177:
.LM9:
	sbi 43-32,6
.LBB178:
.LBB179:
.LBB180:
.LBB181:
.LM10:
	ldi r24,lo8(1)
	mov r18,r24
.LVL3:
/* #APP */
 ;  83 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 1
	1: dec r18
	brne 1b
 ;  0 "" 2
/* #NOAPP */
.LBE181:
.LBE180:
.LBE179:
.LBE178:
.LM11:
	cbi 43-32,6
.LBE177:
.LBE176:
.LM12:
	andi r19,lo8(15)
	or r19,r25
	out 43-32,r19
.LBB182:
.LBB183:
.LM13:
	sbi 43-32,6
.LBB184:
.LBB185:
.LBB186:
.LBB187:
.LM14:
/* #APP */
 ;  83 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 1
	1: dec r24
	brne 1b
 ;  0 "" 2
.LVL4:
/* #NOAPP */
.LBE187:
.LBE186:
.LBE185:
.LBE184:
.LM15:
	cbi 43-32,6
.LBE183:
.LBE182:
.LM16:
	ori r25,lo8(15)
	out 43-32,r25
/* epilogue start */
.LM17:
	ret
.LFE7:
	.size	lcd_write, .-lcd_write
	.type	lcd_read, @function
lcd_read:
.LFB8:
.LM18:
.LVL5:
/* prologue: function */
/* frame size = 0 */
.LM19:
	tst r24
	breq .L6
.LM20:
	sbi 43-32,4
	rjmp .L7
.L6:
.LM21:
	cbi 43-32,4
.L7:
.LM22:
	sbi 43-32,5
.LM23:
	in r24,42-32
.LVL6:
	andi r24,lo8(-16)
	out 42-32,r24
.LM24:
	sbi 43-32,6
.LBB188:
.LBB189:
.LBB190:
.LBB191:
.LM25:
	ldi r24,lo8(1)
	mov r25,r24
.LVL7:
/* #APP */
 ;  83 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 1
	1: dec r25
	brne 1b
 ;  0 "" 2
/* #NOAPP */
.LBE191:
.LBE190:
.LBE189:
.LBE188:
.LM26:
	in r25,41-32
.LVL8:
.LM27:
	cbi 43-32,6
.LBB192:
.LBB193:
.LBB194:
.LBB195:
.LM28:
	mov r18,r24
.LVL9:
/* #APP */
 ;  83 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 1
	1: dec r18
	brne 1b
 ;  0 "" 2
/* #NOAPP */
.LBE195:
.LBE194:
.LBE193:
.LBE192:
.LM29:
	sbi 43-32,6
.LBB196:
.LBB197:
.LBB198:
.LBB199:
.LM30:
/* #APP */
 ;  83 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 1
	1: dec r24
	brne 1b
 ;  0 "" 2
.LVL10:
/* #NOAPP */
.LBE199:
.LBE198:
.LBE197:
.LBE196:
.LM31:
	in r24,41-32
.LVL11:
	andi r24,lo8(15)
	swap r25
	andi r25,lo8(-16)
.LM32:
	cbi 43-32,6
.LM33:
	or r24,r25
/* epilogue start */
	ret
.LFE8:
	.size	lcd_read, .-lcd_read
	.type	lcd_waitbusy, @function
lcd_waitbusy:
.LFB9:
.LM34:
/* prologue: function */
/* frame size = 0 */
.L10:
.LM35:
	ldi r24,lo8(0)
	call lcd_read
	sbrc r24,7
	rjmp .L10
.LBB200:
.LBB201:
.LBB202:
.LBB203:
.LM36:
	ldi r24,lo8(1)
.LVL12:
/* #APP */
 ;  83 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 1
	1: dec r24
	brne 1b
 ;  0 "" 2
/* #NOAPP */
.LBE203:
.LBE202:
.LBE201:
.LBE200:
.LM37:
	ldi r24,lo8(0)
.LVL13:
	call lcd_read
/* epilogue start */
.LM38:
	ret
.LFE9:
	.size	lcd_waitbusy, .-lcd_waitbusy
.global	lcd_command
	.type	lcd_command, @function
lcd_command:
.LFB11:
.LM39:
.LVL14:
	push r17
/* prologue: function */
/* frame size = 0 */
	mov r17,r24
.LM40:
	call lcd_waitbusy
.LVL15:
.LM41:
	mov r24,r17
	ldi r22,lo8(0)
	call lcd_write
/* epilogue start */
.LM42:
	pop r17
.LVL16:
	ret
.LFE11:
	.size	lcd_command, .-lcd_command
.global	lcd_data
	.type	lcd_data, @function
lcd_data:
.LFB12:
.LM43:
.LVL17:
	push r17
/* prologue: function */
/* frame size = 0 */
	mov r17,r24
.LM44:
	call lcd_waitbusy
.LVL18:
.LM45:
	mov r24,r17
	ldi r22,lo8(1)
	call lcd_write
/* epilogue start */
.LM46:
	pop r17
.LVL19:
	ret
.LFE12:
	.size	lcd_data, .-lcd_data
.global	lcd_gotoxy
	.type	lcd_gotoxy, @function
lcd_gotoxy:
.LFB13:
.LM47:
.LVL20:
/* prologue: function */
/* frame size = 0 */
.LM48:
	tst r22
	brne .L18
.LM49:
	subi r24,lo8(-(-128))
.LVL21:
	rjmp .L21
.LVL22:
.L18:
.LM50:
	subi r24,lo8(-(-64))
.LVL23:
.L21:
	call lcd_command
.LVL24:
	ret
.LFE13:
	.size	lcd_gotoxy, .-lcd_gotoxy
.global	lcd_getxy
	.type	lcd_getxy, @function
lcd_getxy:
.LFB14:
.LM51:
/* prologue: function */
/* frame size = 0 */
.LM52:
	call lcd_waitbusy
.LM53:
	ldi r25,lo8(0)
/* epilogue start */
	ret
.LFE14:
	.size	lcd_getxy, .-lcd_getxy
.global	lcd_clrscr
	.type	lcd_clrscr, @function
lcd_clrscr:
.LFB15:
.LM54:
/* prologue: function */
/* frame size = 0 */
.LM55:
	ldi r24,lo8(1)
	call lcd_command
/* epilogue start */
.LM56:
	ret
.LFE15:
	.size	lcd_clrscr, .-lcd_clrscr
.global	lcd_home
	.type	lcd_home, @function
lcd_home:
.LFB16:
.LM57:
/* prologue: function */
/* frame size = 0 */
.LM58:
	ldi r24,lo8(2)
	call lcd_command
/* epilogue start */
.LM59:
	ret
.LFE16:
	.size	lcd_home, .-lcd_home
.global	lcd_putc
	.type	lcd_putc, @function
lcd_putc:
.LFB17:
.LM60:
.LVL25:
	push r17
/* prologue: function */
/* frame size = 0 */
	mov r17,r24
.LM61:
	call lcd_waitbusy
.LVL26:
.LM62:
	cpi r17,lo8(10)
	brne .L29
.LBB204:
.LBB205:
.LM63:
	cpi r24,lo8(64)
.LVL27:
	brlo .L30
	ldi r24,lo8(0)
.LVL28:
	rjmp .L31
.LVL29:
.L30:
	ldi r24,lo8(64)
.LVL30:
.L31:
.LM64:
	subi r24,lo8(-(-128))
.LVL31:
	call lcd_command
	rjmp .L33
.L29:
.LBE205:
.LBE204:
.LM65:
	mov r24,r17
	ldi r22,lo8(1)
	call lcd_write
.L33:
/* epilogue start */
.LM66:
	pop r17
.LVL32:
	ret
.LFE17:
	.size	lcd_putc, .-lcd_putc
.global	lcd_puts
	.type	lcd_puts, @function
lcd_puts:
.LFB18:
.LM67:
.LVL33:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r28,r24
	rjmp .L35
.LVL34:
.L36:
.LM68:
	call lcd_putc
.LVL35:
.L35:
.LM69:
	ld r24,Y+
.LVL36:
	tst r24
	brne .L36
/* epilogue start */
.LM70:
	pop r29
	pop r28
.LVL37:
	ret
.LFE18:
	.size	lcd_puts, .-lcd_puts
.global	lcd_puts_p
	.type	lcd_puts_p, @function
lcd_puts_p:
.LFB19:
.LM71:
.LVL38:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
	movw r28,r24
	rjmp .L39
.LVL39:
.L40:
.LM72:
	call lcd_putc
.LVL40:
.L39:
	movw r30,r28
.LVL41:
.LBB206:
.LM73:
	adiw r28,1
/* #APP */
 ;  489 "lcd.c" 1
	lpm r24, Z
	
 ;  0 "" 2
.LVL42:
/* #NOAPP */
.LBE206:
	tst r24
	brne .L40
/* epilogue start */
.LM74:
	pop r29
	pop r28
.LVL43:
	ret
.LFE19:
	.size	lcd_puts_p, .-lcd_puts_p
.global	lcd_init
	.type	lcd_init, @function
lcd_init:
.LFB20:
.LM75:
.LVL44:
	push r17
/* prologue: function */
/* frame size = 0 */
	mov r17,r24
.LM76:
	in r24,42-32
.LVL45:
	ori r24,lo8(127)
	out 42-32,r24
.LBB207:
.LBB208:
.LBB209:
.LBB210:
.LBB211:
.LBB212:
.LM77:
	ldi r24,lo8(4000)
	ldi r25,hi8(4000)
.LVL46:
/* #APP */
 ;  105 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 1
	1: sbiw r24,1
	brne 1b
 ;  0 "" 2
/* #NOAPP */
.LBE212:
.LBE211:
.LBE210:
.LBE209:
.LBE208:
.LBE207:
.LM78:
	sbi 43-32,1
.LM79:
	sbi 43-32,0
.LBB213:
.LBB214:
.LM80:
	sbi 43-32,6
.LBB215:
.LBB216:
.LBB217:
.LBB218:
.LM81:
	ldi r25,lo8(1)
	mov r24,r25
.LVL47:
/* #APP */
 ;  83 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 1
	1: dec r24
	brne 1b
 ;  0 "" 2
/* #NOAPP */
.LBE218:
.LBE217:
.LBE216:
.LBE215:
.LM82:
	cbi 43-32,6
.LBE214:
.LBE213:
.LBB219:
.LBB220:
.LBB221:
.LBB222:
.LBB223:
.LBB224:
.LM83:
	ldi r30,lo8(1250)
	ldi r31,hi8(1250)
.LVL48:
/* #APP */
 ;  105 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 1
	1: sbiw r30,1
	brne 1b
 ;  0 "" 2
/* #NOAPP */
.LBE224:
.LBE223:
.LBE222:
.LBE221:
.LBE220:
.LBE219:
.LBB225:
.LBB226:
.LM84:
	sbi 43-32,6
.LBB227:
.LBB228:
.LBB229:
.LBB230:
.LM85:
	mov r24,r25
.LVL49:
/* #APP */
 ;  83 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 1
	1: dec r24
	brne 1b
 ;  0 "" 2
/* #NOAPP */
.LBE230:
.LBE229:
.LBE228:
.LBE227:
.LM86:
	cbi 43-32,6
.LBE226:
.LBE225:
.LBB231:
.LBB232:
.LBB233:
.LBB234:
.LM87:
	ldi r24,lo8(21)
.LVL50:
	mov r18,r24
.LVL51:
/* #APP */
 ;  83 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 1
	1: dec r18
	brne 1b
 ;  0 "" 2
/* #NOAPP */
.LBE234:
.LBE233:
.LBE232:
.LBE231:
.LBB235:
.LBB236:
.LM88:
	sbi 43-32,6
.LBB237:
.LBB238:
.LBB239:
.LBB240:
.LM89:
	mov r18,r25
.LVL52:
/* #APP */
 ;  83 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 1
	1: dec r18
	brne 1b
 ;  0 "" 2
/* #NOAPP */
.LBE240:
.LBE239:
.LBE238:
.LBE237:
.LM90:
	cbi 43-32,6
.LBE236:
.LBE235:
.LBB241:
.LBB242:
.LBB243:
.LBB244:
.LM91:
	mov r18,r24
.LVL53:
/* #APP */
 ;  83 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 1
	1: dec r18
	brne 1b
 ;  0 "" 2
/* #NOAPP */
.LBE244:
.LBE243:
.LBE242:
.LBE241:
.LM92:
	cbi 43-32,0
.LBB245:
.LBB246:
.LM93:
	sbi 43-32,6
.LBB247:
.LBB248:
.LBB249:
.LBB250:
.LM94:
/* #APP */
 ;  83 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 1
	1: dec r25
	brne 1b
 ;  0 "" 2
.LVL54:
/* #NOAPP */
.LBE250:
.LBE249:
.LBE248:
.LBE247:
.LM95:
	cbi 43-32,6
.LBE246:
.LBE245:
.LBB251:
.LBB252:
.LBB253:
.LBB254:
.LM96:
/* #APP */
 ;  83 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 1
	1: dec r24
	brne 1b
 ;  0 "" 2
.LVL55:
/* #NOAPP */
.LBE254:
.LBE253:
.LBE252:
.LBE251:
.LM97:
	ldi r24,lo8(40)
.LVL56:
	call lcd_command
.LVL57:
.LM98:
	ldi r24,lo8(8)
	call lcd_command
.LM99:
	call lcd_clrscr
.LM100:
	ldi r24,lo8(6)
	call lcd_command
.LM101:
	mov r24,r17
	call lcd_command
/* epilogue start */
.LM102:
	pop r17
.LVL58:
	ret
.LFE20:
	.size	lcd_init, .-lcd_init
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
	.long	.LFB7
	.long	.LFE7-.LFB7
	.p2align	2
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.p2align	2
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.p2align	2
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.p2align	2
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB12
	.long	.LFE12-.LFB12
	.p2align	2
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB13
	.long	.LFE13-.LFB13
	.p2align	2
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB14
	.long	.LFE14-.LFB14
	.p2align	2
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB15
	.long	.LFE15-.LFB15
	.p2align	2
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.p2align	2
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.p2align	2
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.p2align	2
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.p2align	2
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.p2align	2
.LEFDE24:
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.long	.LVL0-.Ltext0
	.long	.LVL1-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL1-.Ltext0
	.long	.LFE7-.Ltext0
	.word	0x1
	.byte	0x63
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LVL5-.Ltext0
	.long	.LVL6-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LVL7-.Ltext0
	.long	.LVL8-.Ltext0
	.word	0x1
	.byte	0x69
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LVL10-.Ltext0
	.long	.LVL11-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LVL12-.Ltext0
	.long	.LVL13-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LVL14-.Ltext0
	.long	.LVL15-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL15-.Ltext0
	.long	.LVL16-.Ltext0
	.word	0x1
	.byte	0x61
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LVL17-.Ltext0
	.long	.LVL18-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL18-.Ltext0
	.long	.LVL19-.Ltext0
	.word	0x1
	.byte	0x61
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LVL20-.Ltext0
	.long	.LVL21-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL22-.Ltext0
	.long	.LVL23-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LVL20-.Ltext0
	.long	.LVL24-.Ltext0
	.word	0x1
	.byte	0x66
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LVL25-.Ltext0
	.long	.LVL26-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL26-.Ltext0
	.long	.LVL32-.Ltext0
	.word	0x1
	.byte	0x61
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LVL27-.Ltext0
	.long	.LVL28-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL29-.Ltext0
	.long	.LVL30-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LVL28-.Ltext0
	.long	.LVL29-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL30-.Ltext0
	.long	.LVL31-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LVL33-.Ltext0
	.long	.LVL34-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL34-.Ltext0
	.long	.LVL37-.Ltext0
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LVL34-.Ltext0
	.long	.LVL35-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL36-.Ltext0
	.long	.LFE18-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LVL38-.Ltext0
	.long	.LVL39-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL39-.Ltext0
	.long	.LVL43-.Ltext0
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LVL39-.Ltext0
	.long	.LVL40-.Ltext0
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL41-.Ltext0
	.long	.LFE19-.Ltext0
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LVL39-.Ltext0
	.long	.LVL40-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL42-.Ltext0
	.long	.LFE19-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LVL44-.Ltext0
	.long	.LVL45-.Ltext0
	.word	0x1
	.byte	0x68
	.long	.LVL45-.Ltext0
	.long	.LVL58-.Ltext0
	.word	0x1
	.byte	0x61
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LVL46-.Ltext0
	.long	.LVL47-.Ltext0
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LVL47-.Ltext0
	.long	.LVL49-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LVL48-.Ltext0
	.long	.LVL57-.Ltext0
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LVL49-.Ltext0
	.long	.LVL50-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LVL51-.Ltext0
	.long	.LVL52-.Ltext0
	.word	0x1
	.byte	0x62
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LVL52-.Ltext0
	.long	.LVL53-.Ltext0
	.word	0x1
	.byte	0x62
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LVL53-.Ltext0
	.long	.LVL57-.Ltext0
	.word	0x1
	.byte	0x62
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LVL54-.Ltext0
	.long	.LVL57-.Ltext0
	.word	0x1
	.byte	0x69
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LVL55-.Ltext0
	.long	.LVL56-.Ltext0
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x7c1
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF39
	.byte	0x1
	.long	.LASF40
	.long	.LASF41
	.long	.Ltext0
	.long	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x3
	.byte	0x7a
	.long	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF3
	.byte	0x3
	.byte	0x7c
	.long	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF5
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
	.long	0x45
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
	.long	0x45
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
	.uleb128 0x6
	.long	.LASF16
	.byte	0x2
	.byte	0x52
	.byte	0x1
	.byte	0x3
	.long	0xe0
	.uleb128 0x7
	.long	.LASF11
	.byte	0x2
	.byte	0x51
	.long	0x2c
	.byte	0x0
	.uleb128 0x6
	.long	.LASF17
	.byte	0x4
	.byte	0x95
	.byte	0x1
	.byte	0x3
	.long	0x129
	.uleb128 0x7
	.long	.LASF18
	.byte	0x4
	.byte	0x94
	.long	0xc0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.byte	0x96
	.long	0x2c
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0x97
	.long	0xc0
	.uleb128 0xa
	.long	0x127
	.uleb128 0xb
	.long	0x9c
	.uleb128 0xc
	.uleb128 0xd
	.long	0xa7
	.uleb128 0xd
	.long	0xb2
	.uleb128 0x9
	.uleb128 0x9
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x0
	.uleb128 0x6
	.long	.LASF19
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x1
	.long	0x146
	.uleb128 0xc
	.uleb128 0xc
	.uleb128 0xa
	.long	0x142
	.uleb128 0xc
	.uleb128 0x9
	.uleb128 0x9
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.long	.LASF20
	.byte	0x1
	.word	0x122
	.byte	0x1
	.byte	0x3
	.long	0x16d
	.uleb128 0xf
	.string	"pos"
	.byte	0x1
	.word	0x121
	.long	0x2c
	.uleb128 0x10
	.long	.LASF21
	.byte	0x1
	.word	0x123
	.long	0x2c
	.byte	0x0
	.uleb128 0x11
	.long	.LASF42
	.byte	0x1
	.byte	0x77
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x233
	.uleb128 0x12
	.long	.LASF22
	.byte	0x1
	.byte	0x76
	.long	0x2c
	.long	.LLST1
	.uleb128 0x13
	.string	"rs"
	.byte	0x1
	.byte	0x76
	.long	0x2c
	.byte	0x1
	.byte	0x66
	.uleb128 0x14
	.long	.LASF31
	.byte	0x1
	.byte	0x78
	.long	0x37
	.byte	0x1
	.byte	0x69
	.uleb128 0x15
	.long	0x129
	.long	.LBB176
	.long	.LBE176
	.byte	0x1
	.byte	0x8b
	.long	0x1f1
	.uleb128 0x16
	.long	0xe0
	.long	.LBB178
	.long	.LBE178
	.byte	0x1
	.byte	0x68
	.uleb128 0x17
	.long	.LBB179
	.long	.LBE179
	.uleb128 0x16
	.long	0xc7
	.long	.LBB180
	.long	.LBE180
	.byte	0x4
	.byte	0xa1
	.uleb128 0x18
	.long	0xd4
	.byte	0x1
	.byte	0x62
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.long	0x129
	.long	.LBB182
	.long	.LBE182
	.byte	0x1
	.byte	0x8f
	.uleb128 0x16
	.long	0xe0
	.long	.LBB184
	.long	.LBE184
	.byte	0x1
	.byte	0x68
	.uleb128 0x17
	.long	.LBB185
	.long	.LBE185
	.uleb128 0x16
	.long	0xc7
	.long	.LBB186
	.long	.LBE186
	.byte	0x4
	.byte	0xa1
	.uleb128 0x18
	.long	0xd4
	.byte	0x1
	.byte	0x68
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.long	.LASF23
	.byte	0x1
	.byte	0xc8
	.byte	0x1
	.long	0x2c
	.long	.LFB8
	.long	.LFE8
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x307
	.uleb128 0x1a
	.string	"rs"
	.byte	0x1
	.byte	0xc7
	.long	0x2c
	.long	.LLST3
	.uleb128 0x8
	.long	.LASF22
	.byte	0x1
	.byte	0xc9
	.long	0x2c
	.uleb128 0x15
	.long	0xe0
	.long	.LBB188
	.long	.LBE188
	.byte	0x1
	.byte	0xd8
	.long	0x29e
	.uleb128 0x17
	.long	.LBB189
	.long	.LBE189
	.uleb128 0x16
	.long	0xc7
	.long	.LBB190
	.long	.LBE190
	.byte	0x4
	.byte	0xa1
	.uleb128 0x1b
	.long	0xd4
	.long	.LLST4
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.long	0xe0
	.long	.LBB192
	.long	.LBE192
	.byte	0x1
	.byte	0xdc
	.long	0x2d3
	.uleb128 0x17
	.long	.LBB193
	.long	.LBE193
	.uleb128 0x16
	.long	0xc7
	.long	.LBB194
	.long	.LBE194
	.byte	0x4
	.byte	0xa1
	.uleb128 0x18
	.long	0xd4
	.byte	0x1
	.byte	0x62
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.long	0xe0
	.long	.LBB196
	.long	.LBE196
	.byte	0x1
	.byte	0xdf
	.uleb128 0x17
	.long	.LBB197
	.long	.LBE197
	.uleb128 0x16
	.long	0xc7
	.long	.LBB198
	.long	.LBE198
	.byte	0x4
	.byte	0xa1
	.uleb128 0x1b
	.long	0xd4
	.long	.LLST5
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.long	.LASF24
	.byte	0x1
	.word	0x10e
	.byte	0x1
	.long	0x2c
	.long	.LFB9
	.long	.LFE9
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x362
	.uleb128 0x1d
	.string	"c"
	.byte	0x1
	.word	0x10f
	.long	0x2c
	.uleb128 0x1e
	.long	0xe0
	.long	.LBB200
	.long	.LBE200
	.byte	0x1
	.word	0x115
	.uleb128 0x17
	.long	.LBB201
	.long	.LBE201
	.uleb128 0x16
	.long	0xc7
	.long	.LBB202
	.long	.LBE202
	.byte	0x4
	.byte	0xa1
	.uleb128 0x1b
	.long	0xd4
	.long	.LLST7
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF25
	.byte	0x1
	.word	0x153
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x38c
	.uleb128 0x20
	.string	"cmd"
	.byte	0x1
	.word	0x152
	.long	0x2c
	.long	.LLST9
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF26
	.byte	0x1
	.word	0x15f
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x3b6
	.uleb128 0x21
	.long	.LASF22
	.byte	0x1
	.word	0x15e
	.long	0x2c
	.long	.LLST11
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF27
	.byte	0x1
	.word	0x16d
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x3ec
	.uleb128 0x20
	.string	"x"
	.byte	0x1
	.word	0x16c
	.long	0x2c
	.long	.LLST13
	.uleb128 0x20
	.string	"y"
	.byte	0x1
	.word	0x16c
	.long	0x2c
	.long	.LLST14
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF43
	.byte	0x1
	.word	0x188
	.byte	0x1
	.long	0x3e
	.long	.LFB14
	.long	.LFE14
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.uleb128 0x23
	.byte	0x1
	.long	.LASF28
	.byte	0x1
	.word	0x191
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.uleb128 0x23
	.byte	0x1
	.long	.LASF29
	.byte	0x1
	.word	0x19a
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF30
	.byte	0x1
	.word	0x1a5
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x490
	.uleb128 0x20
	.string	"c"
	.byte	0x1
	.word	0x1a4
	.long	0x490
	.long	.LLST19
	.uleb128 0x24
	.string	"pos"
	.byte	0x1
	.word	0x1a6
	.long	0x2c
	.long	.LLST20
	.uleb128 0x1e
	.long	0x146
	.long	.LBB204
	.long	.LBE204
	.byte	0x1
	.word	0x1ac
	.uleb128 0xb
	.long	0x154
	.uleb128 0x17
	.long	.LBB205
	.long	.LBE205
	.uleb128 0x25
	.long	0x160
	.long	.LLST21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF32
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF33
	.byte	0x1
	.word	0x1d5
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x4cd
	.uleb128 0x20
	.string	"s"
	.byte	0x1
	.word	0x1d3
	.long	0x4cd
	.long	.LLST23
	.uleb128 0x24
	.string	"c"
	.byte	0x1
	.word	0x1d6
	.long	0x490
	.long	.LLST24
	.byte	0x0
	.uleb128 0x26
	.byte	0x2
	.long	0x4d3
	.uleb128 0x27
	.long	0x490
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF34
	.byte	0x1
	.word	0x1e6
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x536
	.uleb128 0x21
	.long	.LASF35
	.byte	0x1
	.word	0x1e4
	.long	0x4cd
	.long	.LLST26
	.uleb128 0x1d
	.string	"c"
	.byte	0x1
	.word	0x1e7
	.long	0x490
	.uleb128 0x17
	.long	.LBB206
	.long	.LBE206
	.uleb128 0x28
	.long	.LASF36
	.byte	0x1
	.word	0x1e9
	.long	0x45
	.long	.LLST27
	.uleb128 0x28
	.long	.LASF37
	.byte	0x1
	.word	0x1e9
	.long	0x2c
	.long	.LLST28
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF44
	.byte	0x1
	.word	0x1f9
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.uleb128 0x21
	.long	.LASF38
	.byte	0x1
	.word	0x1f8
	.long	0x2c
	.long	.LLST30
	.uleb128 0x2a
	.long	0xe0
	.long	.LBB207
	.long	.LBE207
	.byte	0x1
	.word	0x21b
	.long	0x5ad
	.uleb128 0x17
	.long	.LBB208
	.long	.LBE208
	.uleb128 0x16
	.long	0x8f
	.long	.LBB209
	.long	.LBE209
	.byte	0x4
	.byte	0x9c
	.uleb128 0x17
	.long	.LBB210
	.long	.LBE210
	.uleb128 0x16
	.long	0x76
	.long	.LBB211
	.long	.LBE211
	.byte	0x4
	.byte	0x82
	.uleb128 0x1b
	.long	0x83
	.long	.LLST31
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x129
	.long	.LBB213
	.long	.LBE213
	.byte	0x1
	.word	0x220
	.long	0x5f5
	.uleb128 0x16
	.long	0xe0
	.long	.LBB215
	.long	.LBE215
	.byte	0x1
	.byte	0x68
	.uleb128 0x17
	.long	.LBB216
	.long	.LBE216
	.uleb128 0x16
	.long	0xc7
	.long	.LBB217
	.long	.LBE217
	.byte	0x4
	.byte	0xa1
	.uleb128 0x1b
	.long	0xd4
	.long	.LLST32
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0xe0
	.long	.LBB219
	.long	.LBE219
	.byte	0x1
	.word	0x221
	.long	0x647
	.uleb128 0x17
	.long	.LBB220
	.long	.LBE220
	.uleb128 0x16
	.long	0x8f
	.long	.LBB221
	.long	.LBE221
	.byte	0x4
	.byte	0x9c
	.uleb128 0x17
	.long	.LBB222
	.long	.LBE222
	.uleb128 0x16
	.long	0x76
	.long	.LBB223
	.long	.LBE223
	.byte	0x4
	.byte	0x82
	.uleb128 0x1b
	.long	0x83
	.long	.LLST33
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x129
	.long	.LBB225
	.long	.LBE225
	.byte	0x1
	.word	0x224
	.long	0x68f
	.uleb128 0x16
	.long	0xe0
	.long	.LBB227
	.long	.LBE227
	.byte	0x1
	.byte	0x68
	.uleb128 0x17
	.long	.LBB228
	.long	.LBE228
	.uleb128 0x16
	.long	0xc7
	.long	.LBB229
	.long	.LBE229
	.byte	0x4
	.byte	0xa1
	.uleb128 0x1b
	.long	0xd4
	.long	.LLST34
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0xe0
	.long	.LBB231
	.long	.LBE231
	.byte	0x1
	.word	0x225
	.long	0x6c7
	.uleb128 0x17
	.long	.LBB232
	.long	.LBE232
	.uleb128 0x16
	.long	0xc7
	.long	.LBB233
	.long	.LBE233
	.byte	0x4
	.byte	0xa1
	.uleb128 0x1b
	.long	0xd4
	.long	.LLST35
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x129
	.long	.LBB235
	.long	.LBE235
	.byte	0x1
	.word	0x228
	.long	0x70f
	.uleb128 0x16
	.long	0xe0
	.long	.LBB237
	.long	.LBE237
	.byte	0x1
	.byte	0x68
	.uleb128 0x17
	.long	.LBB238
	.long	.LBE238
	.uleb128 0x16
	.long	0xc7
	.long	.LBB239
	.long	.LBE239
	.byte	0x4
	.byte	0xa1
	.uleb128 0x1b
	.long	0xd4
	.long	.LLST36
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0xe0
	.long	.LBB241
	.long	.LBE241
	.byte	0x1
	.word	0x229
	.long	0x747
	.uleb128 0x17
	.long	.LBB242
	.long	.LBE242
	.uleb128 0x16
	.long	0xc7
	.long	.LBB243
	.long	.LBE243
	.byte	0x4
	.byte	0xa1
	.uleb128 0x1b
	.long	0xd4
	.long	.LLST37
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.long	0x129
	.long	.LBB245
	.long	.LBE245
	.byte	0x1
	.word	0x22d
	.long	0x78f
	.uleb128 0x16
	.long	0xe0
	.long	.LBB247
	.long	.LBE247
	.byte	0x1
	.byte	0x68
	.uleb128 0x17
	.long	.LBB248
	.long	.LBE248
	.uleb128 0x16
	.long	0xc7
	.long	.LBB249
	.long	.LBE249
	.byte	0x4
	.byte	0xa1
	.uleb128 0x1b
	.long	0xd4
	.long	.LLST38
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	0xe0
	.long	.LBB251
	.long	.LBE251
	.byte	0x1
	.word	0x22e
	.uleb128 0x17
	.long	.LBB252
	.long	.LBE252
	.uleb128 0x16
	.long	0xc7
	.long	.LBB253
	.long	.LBE253
	.byte	0x4
	.byte	0xa1
	.uleb128 0x1b
	.long	0xd4
	.long	.LLST39
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
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
	.uleb128 0x4
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x5
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
	.uleb128 0x15
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
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
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x9a
	.word	0x2
	.long	.Ldebug_info0
	.long	0x7c5
	.long	0x362
	.string	"lcd_command"
	.long	0x38c
	.string	"lcd_data"
	.long	0x3b6
	.string	"lcd_gotoxy"
	.long	0x3ec
	.string	"lcd_getxy"
	.long	0x405
	.string	"lcd_clrscr"
	.long	0x41a
	.string	"lcd_home"
	.long	0x42f
	.string	"lcd_putc"
	.long	0x497
	.string	"lcd_puts"
	.long	0x4d8
	.string	"lcd_puts_p"
	.long	0x536
	.string	"lcd_init"
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
	.string	"lcd.c"
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
	.byte	0x8a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM3
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM4
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM5
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM6
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM8
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0x3
	.sleb128 -35
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -20
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM11
	.byte	0x4
	.uleb128 0x1
	.byte	0x2a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM12
	.byte	0x39
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x3
	.sleb128 -39
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -20
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM15
	.byte	0x4
	.uleb128 0x1
	.byte	0x2a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM16
	.byte	0x3d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM17
	.byte	0x3a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM18
	.byte	0x24
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM19
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM20
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM21
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM22
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM23
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM24
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM25
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -132
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM26
	.byte	0x4
	.uleb128 0x1
	.byte	0x9a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM27
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM28
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -135
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM29
	.byte	0x4
	.uleb128 0x1
	.byte	0x9f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM30
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -139
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM31
	.byte	0x4
	.uleb128 0x1
	.byte	0xa1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM32
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM33
	.byte	0x34
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM34
	.byte	0x21
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM35
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM36
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -191
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM37
	.byte	0x4
	.uleb128 0x1
	.byte	0xd9
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM38
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM39
	.byte	0x4d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM40
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM41
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM42
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM43
	.byte	0x1d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM44
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM45
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM46
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM47
	.byte	0x1f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM48
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM49
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM50
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM51
	.byte	0x27
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM52
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM53
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM54
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM55
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM56
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM57
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM58
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM59
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM60
	.byte	0x1d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM61
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM62
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM63
	.byte	0x3
	.sleb128 -128
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM64
	.byte	0x2e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM65
	.byte	0x98
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM66
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM67
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM68
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM69
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM70
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM71
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM72
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM73
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM74
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM75
	.byte	0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM76
	.byte	0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM77
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -412
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM78
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 437
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM79
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM80
	.byte	0x3
	.sleb128 -440
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM81
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -20
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM82
	.byte	0x4
	.uleb128 0x1
	.byte	0x2a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM83
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM84
	.byte	0x4
	.uleb128 0x1
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM85
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -20
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM86
	.byte	0x4
	.uleb128 0x1
	.byte	0x2a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM87
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -22
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM88
	.byte	0x4
	.uleb128 0x1
	.byte	0x28
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM89
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -20
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM90
	.byte	0x4
	.uleb128 0x1
	.byte	0x2a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM91
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -22
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM92
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 473
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM93
	.byte	0x3
	.sleb128 -453
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM94
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -20
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM95
	.byte	0x4
	.uleb128 0x1
	.byte	0x2a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM96
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -22
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM97
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 502
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM98
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM99
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM100
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM101
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM102
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.Letext0
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF39:
	.string	"GNU C 4.3.3"
.LASF20:
	.string	"lcd_newline"
.LASF33:
	.string	"lcd_puts"
.LASF27:
	.string	"lcd_gotoxy"
.LASF41:
	.string	"C:\\\\_tot\\\\_3_PROJECTS\\\\atmega328p\\\\_libs\\\\lcd_library"
.LASF14:
	.string	"__tmp"
.LASF44:
	.string	"lcd_init"
.LASF11:
	.string	"__count"
.LASF16:
	.string	"_delay_loop_1"
.LASF9:
	.string	"_delay_loop_2"
.LASF34:
	.string	"lcd_puts_p"
.LASF2:
	.string	"uint8_t"
.LASF19:
	.string	"toggle_e"
.LASF31:
	.string	"dataBits"
.LASF23:
	.string	"lcd_read"
.LASF36:
	.string	"__addr16"
.LASF25:
	.string	"lcd_command"
.LASF7:
	.string	"long long int"
.LASF5:
	.string	"long int"
.LASF30:
	.string	"lcd_putc"
.LASF10:
	.string	"_delay_ms"
.LASF26:
	.string	"lcd_data"
.LASF35:
	.string	"progmem_s"
.LASF24:
	.string	"lcd_waitbusy"
.LASF1:
	.string	"unsigned char"
.LASF43:
	.string	"lcd_getxy"
.LASF0:
	.string	"signed char"
.LASF17:
	.string	"_delay_us"
.LASF8:
	.string	"long long unsigned int"
.LASF4:
	.string	"unsigned int"
.LASF3:
	.string	"uint16_t"
.LASF37:
	.string	"__result"
.LASF38:
	.string	"dispAttr"
.LASF42:
	.string	"lcd_write"
.LASF32:
	.string	"char"
.LASF40:
	.string	"lcd.c"
.LASF22:
	.string	"data"
.LASF29:
	.string	"lcd_home"
.LASF6:
	.string	"long unsigned int"
.LASF15:
	.string	"double"
.LASF12:
	.string	"__ms"
.LASF13:
	.string	"__ticks"
.LASF21:
	.string	"addressCounter"
.LASF28:
	.string	"lcd_clrscr"
.LASF18:
	.string	"__us"
