#ifndef _TIMER_H_
#define _TIMER_H_ 1

#include "bitwise_operations.h"

#define TIMER0_COMA_TOGGLE 0x01
#define TIMER0_COMA_CLEAR  0x02
#define TIMER0_COMA_SET    0x03

#define TIMER0_CS_OFF           0x00
#define TIMER0_CS_FCPU_DIV1     0x01
#define TIMER0_CS_FCPU_DIV8     0x02
#define TIMER0_CS_FCPU_DIV64    0x03
#define TIMER0_CS_FCPU_DIV256   0x04
#define TIMER0_CS_FCPU_DIV1024  0x05
#define TIMER0_CS_T0_FALL       0x06
#define TIMER0_CS_T0_RISE       0x07

#define TIMER0_WGM_NORMAL       0x00
#define TIMER0_WGM_CTC          0x02

#define Timer0_CS(cs0) {          \
	mask_put(TCCR0B, 0x07, 0, cs0); \
}

#define Timer0_WGM(wgm0) {            \
	mask_put(TCCR0A, 0x03, 0, wgm0);    \
	mask_put(TCCR0B, 0x01, 3, wgm0>>2); \
}

#define Timer0_COMA(com0a) {        \
	mask_put(TCCR0A, 0x03, 6, com0a); \
}

#define Timer0_COMB(com0b) {        \
	mask_put(TCCR0A, 0x03, 4, com0b); \
}

#define Timer0_OCRA(ocr0a) (OCR0A = ocr0a)
#define Timer0_OCRB(ocr0b) (OCR0B = ocr0b)
#define Timer0_TCNT(tcnt)  (TCNT0 = tcnt)

#define Timer0_Wait_TOV()  wait_interrupt(TIFR0, TOV0)
#define Timer0_Wait_OCFA() wait_interrupt(TIFR0, OCF0A)

#endif // _TIMER_H_