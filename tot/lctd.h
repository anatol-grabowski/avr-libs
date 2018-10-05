#ifndef _LCTD_H_
#define _LCTD_H_ 1

#define LCTD_DATA_DDR        DDRB
#define LCTD_DATA_PORT       PORTB
#define LCTD_DATA_FIRST_BIT  1
#define LCTD_RSRWE_DDR       DDRD
#define LCTD_RSRWE_PORT      PORTD
#define LCTD_RSRWE_FIRST_BIT 5

#define Lctd_Data(hch) {                                       \
  mask_clear(LCTD_DATA_PORT, 0x0F<<LCTD_DATA_FIRST_BIT);       \
	mask_set(LCTD_DATA_PORT, (0x0F & hch)<<LCTD_DATA_FIRST_BIT); \
	bit_set(LCTD_RSRWE_PORT, LCTD_RSRWE_FIRST_BIT+2);            \
	_delay_ms(4);                                                \
	bit_clear(LCTD_RSRWE_PORT, LCTD_RSRWE_FIRST_BIT+2);          \
	_delay_ms(4);                                                \
}

void Lctd_Cmd(unsigned char cmd) {
  bit_clear(LCTD_RSRWE_PORT, LCTD_RSRWE_FIRST_BIT);
	Lctd_Data(cmd>>4);
	Lctd_Data(cmd);
}

void Lctd_Char(unsigned char ch) {
  bit_set(LCTD_RSRWE_PORT, LCTD_RSRWE_FIRST_BIT);
	Lctd_Data(ch>>4);
	Lctd_Data(ch);
}

void Lctd_Init() {
	mask_set(LCTD_DATA_DDR, 0x0F<<LCTD_DATA_FIRST_BIT);
	mask_set(LCTD_RSRWE_DDR, 0x07<<LCTD_RSRWE_FIRST_BIT);
	_delay_ms(20);
	bit_clear(LCTD_RSRWE_PORT, LCTD_RSRWE_FIRST_BIT);
	Lctd_Data(0x03);
	_delay_ms(5);
	Lctd_Data(0x03);
	_delay_ms(16);
	Lctd_Data(0x03);
	Lctd_Data(0x02);
	Lctd_Cmd(0x28);
	Lctd_Cmd(0x06);
	Lctd_Cmd(0x0C);
	Lctd_Cmd(0x01);
}

#endif //_LCTD_H_