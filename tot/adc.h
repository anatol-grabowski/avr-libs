#define ADC_REFS_AREF 0x00
#define ADC_REFS_AVCC 0x01
#define ADC_REFS_1V1  0x03

#define Adc_REFS(refs) {          \
	mask_put(ADMUX, 0x03, 6, refs); \
}

#define Adc_ADLAR(adlar) { \
	bit_put(ADMUX, 5, adlar); \
}

#define Adc_MUX(mux) {           \
	mask_put(ADMUX, 0x0F, 0, mux); \
}

#define Adc_ADPS(adps) {           \
	mask_put(ADCSRA, 0x07, 0, adps); \
}

#define Adc_ADEN(aden) {    \
	bit_put(ADCSRA, 7, aden); \
}

#define Adc_Init(adps) {  \
	ADMUX = 0x60;           \
	ADCSRA = 0x80 | adps;   \
}

#define Adc_Start() bit_set(ADCSRA, ADSC)

#define Adc_Wait() wait_bit_clr(ADCSRA, ADSC)

#define ADCHL_r (ADCH<<8)|ADCL
#define ADCHL_l (ADCL>>6)|(ADCH<<2)

#define Adc_Convert(ch) {  \
  Adc_Set_Channel(ch)      \
	Adc_Start();             \
	Adc_Wait();              \
}

#define Adc_V50(adc)  adc*10/(1023*10/50)
