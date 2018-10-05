# 1 "test_lcd.c"
# 1 "C:\\_tot\\_3_PROJECTS\\atmega328p\\_libs\\lcd_library//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "test_lcd.c"
# 11 "test_lcd.c"
# 1 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdlib.h" 1 3
# 47 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdlib.h" 3
# 1 "c:\\_tot\\_5_portable\\_2_programming\\winavr_portable_v14_1\\winavr-20100110\\bin\\../lib/gcc/avr/4.3.3/include/stddef.h" 1 3 4
# 214 "c:\\_tot\\_5_portable\\_2_programming\\winavr_portable_v14_1\\winavr-20100110\\bin\\../lib/gcc/avr/4.3.3/include/stddef.h" 3 4
typedef unsigned int size_t;
# 326 "c:\\_tot\\_5_portable\\_2_programming\\winavr_portable_v14_1\\winavr-20100110\\bin\\../lib/gcc/avr/4.3.3/include/stddef.h" 3 4
typedef int wchar_t;
# 48 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdlib.h" 2 3
# 68 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdlib.h" 3
typedef struct {
 int quot;
 int rem;
} div_t;


typedef struct {
 long quot;
 long rem;
} ldiv_t;


typedef int (*__compar_fn_t)(const void *, const void *);
# 106 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdlib.h" 3
extern void abort(void) __attribute__((__noreturn__));




extern int abs(int __i) __attribute__((__const__));
# 120 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdlib.h" 3
extern long labs(long __i) __attribute__((__const__));
# 143 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdlib.h" 3
extern void *bsearch(const void *__key, const void *__base, size_t __nmemb,
       size_t __size, int (*__compar)(const void *, const void *));







extern div_t div(int __num, int __denom) __asm__("__divmodhi4") __attribute__((__const__));





extern ldiv_t ldiv(long __num, long __denom) __asm__("__divmodsi4") __attribute__((__const__));
# 175 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdlib.h" 3
extern void qsort(void *__base, size_t __nmemb, size_t __size,
    __compar_fn_t __compar);
# 208 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdlib.h" 3
extern long strtol(const char *__nptr, char **__endptr, int __base);
# 242 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdlib.h" 3
extern unsigned long strtoul(const char *__nptr, char **__endptr, int __base);
# 254 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdlib.h" 3
extern long atol(const char *__s) __attribute__((__pure__));
# 266 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdlib.h" 3
extern int atoi(const char *__s) __attribute__((__pure__));
# 278 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdlib.h" 3
extern void exit(int __status) __attribute__((__noreturn__));
# 290 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdlib.h" 3
extern void *malloc(size_t __size) __attribute__((__malloc__));






extern void free(void *__ptr);




extern size_t __malloc_margin;




extern char *__malloc_heap_start;




extern char *__malloc_heap_end;






extern void *calloc(size_t __nele, size_t __size) __attribute__((__malloc__));
# 338 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdlib.h" 3
extern void *realloc(void *__ptr, size_t __size) __attribute__((__malloc__));

extern double strtod(const char *__nptr, char **__endptr);

extern double atof(const char *__nptr);
# 364 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdlib.h" 3
extern int rand(void);



extern void srand(unsigned int __seed);






extern int rand_r(unsigned long *__ctx);
# 406 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdlib.h" 3
extern char *itoa(int __val, char *__s, int __radix);
# 434 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdlib.h" 3
extern char *ltoa(long int __val, char *__s, int __radix);
# 460 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdlib.h" 3
extern char *utoa(unsigned int __val, char *__s, int __radix);
# 486 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdlib.h" 3
extern char *ultoa(unsigned long int __val, char *__s, int __radix);
# 504 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdlib.h" 3
extern long random(void);




extern void srandom(unsigned long __seed);







extern long random_r(unsigned long *__ctx);
# 563 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdlib.h" 3
extern char *dtostre(double __val, char *__s, unsigned char __prec,
       unsigned char __flags);
# 580 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/stdlib.h" 3
extern char *dtostrf(double __val, signed char __width,
                     unsigned char __prec, char *__s);
# 12 "test_lcd.c" 2
# 1 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/io.h" 1 3
# 99 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/io.h" 3
# 1 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/sfr_defs.h" 1 3
# 126 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/sfr_defs.h" 3
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
# 127 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/sfr_defs.h" 2 3
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
# 13 "test_lcd.c" 2
# 1 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/pgmspace.h" 1 3
# 81 "c:/_tot/_5_portable/_2_programming/winavr_portable_v14_1/winavr-20100110/lib/gcc/../../avr/include/avr/pgmspace.h" 3
# 1 "c:\\_tot\\_5_portable\\_2_programming\\winavr_portable_v14_1\\winavr-20100110\\bin\\../lib/gcc/avr/4.3.3/include/stddef.h" 1 3 4
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
# 14 "test_lcd.c" 2
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
# 15 "test_lcd.c" 2
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
# 16 "test_lcd.c" 2





static const __attribute__((__progmem__)) unsigned char copyRightChar[] =
{
 0x07, 0x08, 0x13, 0x14, 0x14, 0x13, 0x08, 0x07,
 0x00, 0x10, 0x08, 0x08, 0x08, 0x08, 0x10, 0x00
};





void wait_until_key_pressed(void);


void wait_until_key_pressed(void)
{
    unsigned char temp1, temp2;

    do {
        temp1 = (*(volatile uint8_t *)((0x09) + 0x20));
        _delay_ms(5);
        temp2 = (*(volatile uint8_t *)((0x09) + 0x20));
        temp1 = (temp1 & temp2);
    } while ( temp1 & (1 << (7)) );

    do { } while ((!((*(volatile uint8_t *)(((uint16_t) &((*(volatile uint8_t *)((0x09) + 0x20)))))) & (1 << (7)))));
}


int main(void)
{
    char buffer[7];
    int num=134;
    unsigned char i;


    (*(volatile uint8_t *)((0x0A) + 0x20)) &=~ (1 << 7);
    (*(volatile uint8_t *)((0x0B) + 0x20)) |= (1 << 7);



    lcd_init(0x0C);

    for (;;) {





        lcd_clrscr();


        lcd_puts("LCD Test Line 1\n");


        lcd_puts("Line 2");


        lcd_gotoxy(7,1);


        lcd_putc(':');


        wait_until_key_pressed();







        lcd_command(0x0E);


        lcd_puts( "CurOn");


        wait_until_key_pressed();






        lcd_clrscr();


        lcd_puts_p((__extension__({static char __c[] __attribute__((__progmem__)) = ("Line 1 longer than 14 characters\n"); &__c[0];})));
        lcd_puts_p((__extension__({static char __c[] __attribute__((__progmem__)) = ("Line 2 longer than 14 characters"); &__c[0];})));


        lcd_command(0x18);


        wait_until_key_pressed();


        lcd_command(0x0C);






        lcd_clrscr();


        itoa( num , buffer, 10);


        lcd_puts(buffer);


        wait_until_key_pressed();






       lcd_clrscr();

       lcd_puts("Copyright: ");





       lcd_command((1 << (6)));
       for(i=0; i<16; i++)
       {
           lcd_data((__extension__({ uint16_t __addr16 = (uint16_t)((uint16_t)(&copyRightChar[i])); uint8_t __result; __asm__ ( "lpm %0, Z" "\n\t" : "=r" (__result) : "z" (__addr16) ); __result; })));
       }



       lcd_gotoxy(0,1);


       lcd_putc(0);
       lcd_putc(1);



       wait_until_key_pressed();

    }
}
