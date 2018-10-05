#ifndef _KEYPAD_H_
#define _KEYPAD_H_ 1

#define KP_ROWS_DDR      DDRD
#define KP_ROWS_PORT     PORTD
#define KP_FIRST_ROW_BIT 2
#define KP_COLS_DDR      DDRB
#define KP_COLS_PORT     PORTB
#define KP_COLS_PIN      PINB
#define KP_FIRST_COL_BIT 0

unsigned int keypad;

#define Kp_Init() {                                    \
	mask_set(KP_ROWS_DDR, 0x0F<<KP_FIRST_ROW_BIT);       \
	mask_clear(KP_COLS_DDR, 0x0F<<KP_FIRST_COL_BIT);     \
	mask_set(KP_ROWS_PORT, 0x0F<<KP_FIRST_ROW_BIT);      \
	mask_set(KP_COLS_PORT, 0x0F<<KP_FIRST_COL_BIT);      \
}

#define Kp_Get_Row(row) {                                           \
  bit_clear(KP_ROWS_PORT, KP_FIRST_ROW_BIT + row);                  \
	asm("nop");                                                       \
	keypad |= ((~KP_COLS_PIN) & (0x0F<<KP_FIRST_COL_BIT)) << (row*4); \
  bit_set(KP_ROWS_PORT, KP_FIRST_ROW_BIT + row);                    \
}

void Kp_Get_Keys(void) {
	keypad = 0;
	Kp_Get_Row(0);
	Kp_Get_Row(1);
	Kp_Get_Row(2);
	Kp_Get_Row(3);
}

#define KP_KEY_1 bit_is_set(keypad, 0)
#define KP_KEY_2 bit_is_set(keypad, 1)
#define KP_KEY_3 bit_is_set(keypad, 2)
#define KP_KEY_A bit_is_set(keypad, 3)

#define KP_KEY_4 bit_is_set(keypad, 4)
#define KP_KEY_5 bit_is_set(keypad, 5)
#define KP_KEY_6 bit_is_set(keypad, 6)
#define KP_KEY_B bit_is_set(keypad, 7)

#define KP_KEY_7 bit_is_set(keypad, 8)
#define KP_KEY_8 bit_is_set(keypad, 9)
#define KP_KEY_9 bit_is_set(keypad, 10)
#define KP_KEY_C bit_is_set(keypad, 11)

#define KP_KEY_STAR bit_is_set(keypad, 12)
#define KP_KEY_0 bit_is_set(keypad, 13)
#define KP_KEY_NET bit_is_set(keypad, 14)
#define KP_KEY_D bit_is_set(keypad, 15)

unsigned char Kp_Char(void) {
  switch (keypad) {
	  case 0x0001:
			return '1';
	  case 0x0002:
			return '2';
	  case 0x0004:
			return '3';
	  case 0x0008:
			return 'A';
			
	  case 0x0010:
			return '4';
	  case 0x0020:
			return '5';
	  case 0x0040:
			return '6';
	  case 0x0080:
			return 'B';
			
	  case 0x0100:
			return '7';
	  case 0x0200:
			return '8';
	  case 0x0400:
			return '9';
	  case 0x0800:
			return 'C';
			
	  case 0x1000:
			return '*';
	  case 0x2000:
			return '0';
	  case 0x4000:
			return '#';
	  case 0x8000:
			return 'D';
			
		default:
			return '\0';
	}
}

#endif //_KEYPAD_H_