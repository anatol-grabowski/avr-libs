#ifndef _CLOCK_H_
#define _CLOCK_H_ 1

#define CLOCK_CLKPS_DIV1   0x00
#define CLOCK_CLKPS_DIV2   0x01
#define CLOCK_CLKPS_DIV4   0x02
#define CLOCK_CLKPS_DIV8   0x03
#define CLOCK_CLKPS_DIV16  0x04
#define CLOCK_CLKPS_DIV32  0x05
#define CLOCK_CLKPS_DIV64  0x06
#define CLOCK_CLKPS_DIV128 0x07
#define CLOCK_CLKPS_DIV256 0x08

#define Clock_CLKPS(clkps) { \
	CLKPR = 0x80;              \
	CLKPR = clkps;             \
}

#define Clock_OSCCAL(cal) { \
	OSCCAL = cal;             \
}

#endif // _CLOCK_H_