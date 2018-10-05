#ifndef _BITWISE_OPERATIONS_H_
#define _BITWISE_OPERATIONS_H_ 1

#ifdef bit_is_set
#undef bit_is_set
#endif

#define HIGH   1
#define LOW    0

#define BIT0 (1<<0)
#define BIT1 (1<<1)
#define BIT2 (1<<2)
#define BIT3 (1<<3)
#define BIT4 (1<<4)
#define BIT5 (1<<5)
#define BIT6 (1<<6)
#define BIT7 (1<<7)

#define nop() asm("nop")

#define bit_flip(byte, bit_num)     ((byte) ^= (1<<(bit_num)))
#define bit_set(byte, bit_num)      ((byte) |= (1<<(bit_num)))
#define bit_clr(byte, bit_num)      ((byte) &= ~(1<<(bit_num)))
#define bit_put(byte, bit_num, val) \
(  (byte) = ((byte) & ~(1<<(bit_num))) | ((val)<<(bit_num))  )

#define mask_set(byte, mask)        ((byte) |= (mask))
#define mask_clr(byte, mask)        ((byte) &= ~(mask))
#define mask_put(byte, mask, bit_num, val) \
(  (byte) = ((byte) & ~((mask)<<(bit_num))) | (((val)&(mask))<<(bit_num))  )

#define bit_is_set(byte, bit)    ((byte)  & (1<<(bit)))
#define bit_is_clr(byte, bit)    (~(byte) & (1<<(bit)))

#define wait_bit_set(byte, bit)   while(bit_is_clr(byte, bit)) {}
#define wait_bit_clr(byte, bit)   while(bit_is_set(byte, bit)) {}

#define wait_bit_fall(byte, bit) { \
  if (bit_is_clr(byte, bit)) {     \
    wait_bit_set(byte, bit);       \
  }                                \
  wait_bit_clr(byte, bit);         \
}
#define wait_bit_rise(byte, bit) { \
  if (bit_is_set(byte, bit)) {     \
    wait_bit_clr(byte, bit);       \
  }                                \
  wait_bit_set(byte, bit);         \
}

#define wait_interrupt(byte, bit) {		\
	wait_bit_set(byte, bit);			\
	bit_set(byte, bit);					\
}

#define bit_set_us(byte, bit, us)     \
  bit_set(byte, bit);                 \
  delay_us(us);                       \
  bit_clr(byte, bit);
#define bit_clr_us(byte, bit, us)     \
  bit_clr(byte, bit);                 \
  delay_us(us);                       \
  bit_set(byte, bit);

#define CONCAT(a, b)            (a ## b)
#define GET_DDR(letter)           CONCAT(DDR, letter)
#define GET_PORT(letter)          CONCAT(PORT, letter)
#define GET_PIN(letter)           CONCAT(PIN, letter)

#endif //_BITWISE_OPERATIONS_H_
