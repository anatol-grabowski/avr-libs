# 1 "lcd.c"
# 1 "C:\\_tot\\_3_PROJECTS\\atmega328p\\_libs\\lcd_library//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "lcd.c"
# 25 "lcd.c"
# 1 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/inttypes.h" 1 3
# 37 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/inttypes.h" 3
# 1 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdint.h" 1 3
# 121 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdint.h" 3
typedef int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 142 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdint.h" 3
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 159 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdint.h" 3
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 213 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdint.h" 3
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 273 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdint.h" 3
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 38 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/inttypes.h" 2 3
# 77 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 26 "lcd.c" 2
# 1 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/io.h" 1 3
# 99 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/io.h" 3
# 1 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/sfr_defs.h" 1 3
# 100 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/io.h" 2 3
# 222 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/io.h" 3
# 1 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/iom328p.h" 1 3
# 223 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/io.h" 2 3
# 408 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/io.h" 3
# 1 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/portpins.h" 1 3
# 409 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/io.h" 2 3

# 1 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/common.h" 1 3
# 411 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/io.h" 2 3

# 1 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/version.h" 1 3
# 413 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/io.h" 2 3


# 1 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/fuse.h" 1 3
# 239 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 416 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/io.h" 2 3


# 1 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/lock.h" 1 3
# 419 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/io.h" 2 3
# 27 "lcd.c" 2
# 1 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/pgmspace.h" 1 3
# 81 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/pgmspace.h" 3
# 1 "c:\\_tot\\_5_portable\\_2_programming\\winavr_portable_v14_1\\winavr-20100110\\bin\\../lib/gcc/avr/4.3.3/include/stddef.h" 1 3 4
# 214 "c:\\_tot\\_5_portable\\_2_programming\\winavr_portable_v14_1\\winavr-20100110\\bin\\../lib/gcc/avr/4.3.3/include/stddef.h" 3 4
typedef unsigned int size_t;
# 82 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/pgmspace.h" 2 3
# 211 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/pgmspace.h" 3
typedef void prog_void __attribute__((__progmem__));
typedef char prog_char __attribute__((__progmem__));
typedef unsigned char prog_uchar __attribute__((__progmem__));

typedef int8_t prog_int8_t __attribute__((__progmem__));
typedef uint8_t prog_uint8_t __attribute__((__progmem__));
typedef int16_t prog_int16_t __attribute__((__progmem__));
typedef uint16_t prog_uint16_t __attribute__((__progmem__));
typedef int32_t prog_int32_t __attribute__((__progmem__));
typedef uint32_t prog_uint32_t __attribute__((__progmem__));

typedef int64_t prog_int64_t __attribute__((__progmem__));
typedef uint64_t prog_uint64_t __attribute__((__progmem__));
# 848 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/pgmspace.h" 3
extern const prog_void * memchr_P(const prog_void *, int __val, size_t __len) __attribute__((__const__));
extern int memcmp_P(const void *, const prog_void *, size_t) __attribute__((__pure__));
extern void *memccpy_P(void *, const prog_void *, int __val, size_t);
extern void *memcpy_P(void *, const prog_void *, size_t);
extern void *memmem_P(const void *, size_t, const prog_void *, size_t) __attribute__((__pure__));
extern const prog_void * memrchr_P(const prog_void *, int __val, size_t __len) __attribute__((__const__));
extern char *strcat_P(char *, const prog_char *);
extern const prog_char * strchr_P(const prog_char *, int __val) __attribute__((__const__));
extern const prog_char * strchrnul_P(const prog_char *, int __val) __attribute__((__const__));
extern int strcmp_P(const char *, const prog_char *) __attribute__((__pure__));
extern char *strcpy_P(char *, const prog_char *);
extern int strcasecmp_P(const char *, const prog_char *) __attribute__((__pure__));
extern char *strcasestr_P(const char *, const prog_char *) __attribute__((__pure__));
extern size_t strcspn_P(const char *__s, const prog_char * __reject) __attribute__((__pure__));
extern size_t strlcat_P (char *, const prog_char *, size_t );
extern size_t strlcpy_P (char *, const prog_char *, size_t );
extern size_t strlen_P(const prog_char *) __attribute__((__const__));
extern size_t strnlen_P(const prog_char *, size_t) __attribute__((__const__));
extern int strncmp_P(const char *, const prog_char *, size_t) __attribute__((__pure__));
extern int strncasecmp_P(const char *, const prog_char *, size_t) __attribute__((__pure__));
extern char *strncat_P(char *, const prog_char *, size_t);
extern char *strncpy_P(char *, const prog_char *, size_t);
extern char *strpbrk_P(const char *__s, const prog_char * __accept) __attribute__((__pure__));
extern const prog_char * strrchr_P(const prog_char *, int __val) __attribute__((__const__));
extern char *strsep_P(char **__sp, const prog_char * __delim);
extern size_t strspn_P(const char *__s, const prog_char * __accept) __attribute__((__pure__));
extern char *strstr_P(const char *, const prog_char *) __attribute__((__pure__));
extern char *strtok_P(char *__s, const prog_char * __delim);
extern char *strtok_rP(char *__s, const prog_char * __delim, char **__last);
# 28 "lcd.c" 2
# 1 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/util/delay.h" 1 3
# 39 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/util/delay.h" 3
# 1 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 1 3
# 65 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 3
static inline void _delay_loop_1(uint8_t __count) __attribute__((always_inline));
static inline void _delay_loop_2(uint16_t __count) __attribute__((always_inline));
# 80 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 3
void
_delay_loop_1(uint8_t __count)
{
 __asm__ volatile (
  "1: dec %0" "\n\t"
  "brne 1b"
  : "=r" (__count)
  : "0" (__count)
 );
}
# 102 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/util/delay_basic.h" 3
void
_delay_loop_2(uint16_t __count)
{
 __asm__ volatile (
  "1: sbiw %0,1" "\n\t"
  "brne 1b"
  : "=w" (__count)
  : "0" (__count)
 );
}
# 40 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/util/delay.h" 2 3
# 79 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/util/delay.h" 3
static inline void _delay_us(double __us) __attribute__((always_inline));
static inline void _delay_ms(double __ms) __attribute__((always_inline));
# 109 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/util/delay.h" 3
void
_delay_ms(double __ms)
{
 uint16_t __ticks;
 double __tmp = ((1000000UL) / 4e3) * __ms;
 if (__tmp < 1.0)
  __ticks = 1;
 else if (__tmp > 65535)
 {

  __ticks = (uint16_t) (__ms * 10.0);
  while(__ticks)
  {

   _delay_loop_2(((1000000UL) / 4e3) / 10);
   __ticks --;
  }
  return;
 }
 else
  __ticks = (uint16_t)__tmp;
 _delay_loop_2(__ticks);
}
# 147 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/util/delay.h" 3
void
_delay_us(double __us)
{
 uint8_t __ticks;
 double __tmp = ((1000000UL) / 3e6) * __us;
 if (__tmp < 1.0)
  __ticks = 1;
 else if (__tmp > 255)
 {
  _delay_ms(__us / 1000.0);
  return;
 }
 else
  __ticks = (uint8_t)__tmp;
 _delay_loop_1(__ticks);
}
# 29 "lcd.c" 2
# 1 "lcd.h" 1
# 292 "lcd.h"
extern void lcd_init(uint8_t dispAttr);






extern void lcd_clrscr(void);






extern void lcd_home(void);
# 316 "lcd.h"
extern void lcd_gotoxy(uint8_t x, uint8_t y);







extern void lcd_putc(char c);







extern void lcd_puts(const char *s);
# 341 "lcd.h"
extern void lcd_puts_p(const char *progmem_s);







extern void lcd_command(uint8_t cmd);
# 359 "lcd.h"
extern void lcd_data(uint8_t data);
# 30 "lcd.c" 2
# 84 "lcd.c"
static void toggle_e(void);
# 101 "lcd.c"
static void toggle_e(void)
{
    (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << (6));;
    _delay_us(1);
    (*(volatile uint8_t *)((0x0B) + 0x20)) &= ~(1 << (6));;
}
# 118 "lcd.c"
static void lcd_write(uint8_t data,uint8_t rs)
{
    unsigned char dataBits ;


    if (rs) {
       (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << (4));
    } else {
       (*(volatile uint8_t *)((0x0B) + 0x20)) &= ~(1 << (4));
    }
    (*(volatile uint8_t *)((0x0B) + 0x20)) &= ~(1 << (5));

    if ( ( &(*(volatile uint8_t *)((0x0B) + 0x20)) == &(*(volatile uint8_t *)((0x0B) + 0x20))) && ( &(*(volatile uint8_t *)((0x0B) + 0x20)) == &(*(volatile uint8_t *)((0x0B) + 0x20)) ) && ( &(*(volatile uint8_t *)((0x0B) + 0x20)) == &(*(volatile uint8_t *)((0x0B) + 0x20)) )
      && (0 == 0) && (1 == 1) && (2 == 2) && (3 == 3) )
    {

        (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 1)) |= 0x0F;


        dataBits = (*(volatile uint8_t *)((0x0B) + 0x20)) & 0xF0;
        (*(volatile uint8_t *)((0x0B) + 0x20)) = dataBits |((data>>4)&0x0F);
        toggle_e();


        (*(volatile uint8_t *)((0x0B) + 0x20)) = dataBits | (data&0x0F);
        toggle_e();


        (*(volatile uint8_t *)((0x0B) + 0x20)) = dataBits | 0x0F;
    }
    else
    {

        (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 1)) |= (1 << (0));
        (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 1)) |= (1 << (1));
        (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 1)) |= (1 << (2));
        (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 1)) |= (1 << (3));


        (*(volatile uint8_t *)((0x0B) + 0x20)) &= ~(1 << (3));
        (*(volatile uint8_t *)((0x0B) + 0x20)) &= ~(1 << (2));
        (*(volatile uint8_t *)((0x0B) + 0x20)) &= ~(1 << (1));
        (*(volatile uint8_t *)((0x0B) + 0x20)) &= ~(1 << (0));
     if(data & 0x80) (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << (3));
     if(data & 0x40) (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << (2));
     if(data & 0x20) (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << (1));
     if(data & 0x10) (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << (0));
        toggle_e();


        (*(volatile uint8_t *)((0x0B) + 0x20)) &= ~(1 << (3));
        (*(volatile uint8_t *)((0x0B) + 0x20)) &= ~(1 << (2));
        (*(volatile uint8_t *)((0x0B) + 0x20)) &= ~(1 << (1));
        (*(volatile uint8_t *)((0x0B) + 0x20)) &= ~(1 << (0));
     if(data & 0x08) (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << (3));
     if(data & 0x04) (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << (2));
     if(data & 0x02) (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << (1));
     if(data & 0x01) (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << (0));
        toggle_e();


        (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << (0));
        (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << (1));
        (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << (2));
        (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << (3));
    }
}
# 199 "lcd.c"
static uint8_t lcd_read(uint8_t rs)
{
    uint8_t data;


    if (rs)
        (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << (4));
    else
        (*(volatile uint8_t *)((0x0B) + 0x20)) &= ~(1 << (4));
    (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << (5));

    if ( ( &(*(volatile uint8_t *)((0x0B) + 0x20)) == &(*(volatile uint8_t *)((0x0B) + 0x20))) && ( &(*(volatile uint8_t *)((0x0B) + 0x20)) == &(*(volatile uint8_t *)((0x0B) + 0x20)) ) && ( &(*(volatile uint8_t *)((0x0B) + 0x20)) == &(*(volatile uint8_t *)((0x0B) + 0x20)) )
      && ( 0 == 0 )&& (1 == 1) && (2 == 2) && (3 == 3) )
    {
        (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 1)) &= 0xF0;

        (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << (6));;
        _delay_us(1);
        data = (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 2)) << 4;
        (*(volatile uint8_t *)((0x0B) + 0x20)) &= ~(1 << (6));;

        _delay_us(1);

        (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << (6));;
        _delay_us(1);
        data |= (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 2))&0x0F;
        (*(volatile uint8_t *)((0x0B) + 0x20)) &= ~(1 << (6));;
    }
    else
    {

        (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 1)) &= ~(1 << (0));
        (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 1)) &= ~(1 << (1));
        (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 1)) &= ~(1 << (2));
        (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 1)) &= ~(1 << (3));


        (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << (6));;
        _delay_us(1);
        data = 0;
        if ( (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 2)) & (1 << (0)) ) data |= 0x10;
        if ( (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 2)) & (1 << (1)) ) data |= 0x20;
        if ( (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 2)) & (1 << (2)) ) data |= 0x40;
        if ( (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 2)) & (1 << (3)) ) data |= 0x80;
        (*(volatile uint8_t *)((0x0B) + 0x20)) &= ~(1 << (6));;

        _delay_us(1);


        (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << (6));;
        _delay_us(1);
        if ( (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 2)) & (1 << (0)) ) data |= 0x01;
        if ( (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 2)) & (1 << (1)) ) data |= 0x02;
        if ( (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 2)) & (1 << (2)) ) data |= 0x04;
        if ( (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 2)) & (1 << (3)) ) data |= 0x08;
        (*(volatile uint8_t *)((0x0B) + 0x20)) &= ~(1 << (6));;
    }
    return data;
}
# 268 "lcd.c"
static uint8_t lcd_waitbusy(void)

{
    register uint8_t c;


    while ( (c=lcd_read(0)) & (1<<7)) {}


    _delay_us(4);


    return (lcd_read(0));

}






static inline void lcd_newline(uint8_t pos)
{
    register uint8_t addressCounter;






    if ( pos < (0x40) )
        addressCounter = 0x40;
    else
        addressCounter = 0x00;
# 324 "lcd.c"
    lcd_command((1<<7)+addressCounter);

}
# 338 "lcd.c"
void lcd_command(uint8_t cmd)
{
    lcd_waitbusy();
    lcd_write(cmd,0);
}







void lcd_data(uint8_t data)
{
    lcd_waitbusy();
    lcd_write(data,1);
}
# 364 "lcd.c"
void lcd_gotoxy(uint8_t x, uint8_t y)
{




    if ( y==0 )
        lcd_command((1<<7)+0x00 +x);
    else
        lcd_command((1<<7)+0x40 +x);
# 386 "lcd.c"
}




int lcd_getxy(void)
{
    return lcd_waitbusy();
}





void lcd_clrscr(void)
{
    lcd_command(1<<0);
}





void lcd_home(void)
{
    lcd_command(1<<1);
}







void lcd_putc(char c)
{
    uint8_t pos;


    pos = lcd_waitbusy();
    if (c=='\n')
    {
        lcd_newline(pos);
    }
    else
    {
# 456 "lcd.c"
        lcd_write(c, 1);
    }

}







void lcd_puts(const char *s)

{
    register char c;

    while ( (c = *s++) ) {
        lcd_putc(c);
    }

}







void lcd_puts_p(const char *progmem_s)

{
    register char c;

    while ( (c = (__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(progmem_s++)); uint8_t __result; __asm__ ( "lpm %0, Z" "\n\t" : "=r" (__result) : "z" (__addr16) ); __result; }))) ) {
        lcd_putc(c);
    }

}
# 504 "lcd.c"
void lcd_init(uint8_t dispAttr)
{





    if ( ( &(*(volatile uint8_t *)((0x0B) + 0x20)) == &(*(volatile uint8_t *)((0x0B) + 0x20))) && ( &(*(volatile uint8_t *)((0x0B) + 0x20)) == &(*(volatile uint8_t *)((0x0B) + 0x20)) ) && ( &(*(volatile uint8_t *)((0x0B) + 0x20)) == &(*(volatile uint8_t *)((0x0B) + 0x20)) )
      && ( &(*(volatile uint8_t *)((0x0B) + 0x20)) == &(*(volatile uint8_t *)((0x0B) + 0x20))) && ( &(*(volatile uint8_t *)((0x0B) + 0x20)) == &(*(volatile uint8_t *)((0x0B) + 0x20))) && (&(*(volatile uint8_t *)((0x0B) + 0x20)) == &(*(volatile uint8_t *)((0x0B) + 0x20)))
      && (0 == 0 ) && (1 == 1) && (2 == 2) && (3 == 3)
      && (4 == 4 ) && (5 == 5) && (6 == 6 ) )
    {

        (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 1)) |= 0x7F;
    }
    else if ( ( &(*(volatile uint8_t *)((0x0B) + 0x20)) == &(*(volatile uint8_t *)((0x0B) + 0x20))) && ( &(*(volatile uint8_t *)((0x0B) + 0x20)) == &(*(volatile uint8_t *)((0x0B) + 0x20)) ) && ( &(*(volatile uint8_t *)((0x0B) + 0x20)) == &(*(volatile uint8_t *)((0x0B) + 0x20)) )
           && (0 == 0 ) && (1 == 1) && (2 == 2) && (3 == 3) )
    {

        (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 1)) |= 0x0F;
        (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 1)) |= (1 << (4));
        (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 1)) |= (1 << (5));
        (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 1)) |= (1 << (6));
    }
    else
    {

        (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 1)) |= (1 << (4));
        (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 1)) |= (1 << (5));
        (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 1)) |= (1 << (6));
        (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 1)) |= (1 << (0));
        (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 1)) |= (1 << (1));
        (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 1)) |= (1 << (2));
        (*(&(*(volatile uint8_t *)((0x0B) + 0x20)) - 1)) |= (1 << (3));
    }
    _delay_us(16000);


    (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << (1));
    (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << (0));
    toggle_e();
    _delay_us(5000);


    toggle_e();
    _delay_us(64);


    toggle_e();
    _delay_us(64);


    (*(volatile uint8_t *)((0x0B) + 0x20)) &= ~(1 << (0));
    toggle_e();
    _delay_us(64);
# 585 "lcd.c"
    lcd_command(0x28);

    lcd_command(0x08);
    lcd_clrscr();
    lcd_command(((1<<2) | (1<<1) ));
    lcd_command(dispAttr);

}
