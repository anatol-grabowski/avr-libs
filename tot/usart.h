#ifndef _USART_H_
#define _USART_H_ 1

#ifndef FOSC
  #define FOSC    1000000
#endif //FOSC
#ifndef BAUD
  #define BAUD    10000
#endif //BAUD
#define MYUBRR    FOSC/16/BAUD-1

void Usart0_Init(void) {
  unsigned int ubrr = MYUBRR;
	UBRR0H = (unsigned char)(ubrr>>8);
	UBRR0L = (unsigned char)ubrr;
	UCSR0B = (0<<RXEN0)|(1<<TXEN0);
	UCSR0C = (3<<UCSZ00);
}

void Usart0_Write_Byte(char byte) {
  wait_bit_set(UCSR0A, UDRE0);
	UDR0 = byte;
}

void Usart0_Write_String(char* s) {
	while (*s) {
		Usart0_Write_Byte(*s);
		s++;
	}
}

#endif //_USART_H_