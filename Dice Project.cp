#line 1 "C:/Users/KarimAyyad28/Downloads/Dice Project.c"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for pic/include/stdio.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for pic/include/stdlib.h"







 typedef struct divstruct {
 int quot;
 int rem;
 } div_t;

 typedef struct ldivstruct {
 long quot;
 long rem;
 } ldiv_t;

 typedef struct uldivstruct {
 unsigned long quot;
 unsigned long rem;
 } uldiv_t;

int abs(int a);
float atof(char * s);
int atoi(char * s);
long atol(char * s);
div_t div(int number, int denom);
ldiv_t ldiv(long number, long denom);
uldiv_t uldiv(unsigned long number, unsigned long denom);
long labs(long x);
int max(int a, int b);
int min(int a, int b);
void srand(unsigned x);
int rand();
int xtoi(char * s);
#line 4 "C:/Users/KarimAyyad28/Downloads/Dice Project.c"
void main (){
 const int eds[6] = {0b00001000,0b00100010,0b00101010,0b01010101,0b01011101,0b01110111} ;

 int i ;
 TRISC = 0X00;
 TRISD = 0b00000001;
 PORTC = 0;
 PORTD = 0;
 while(1){

 int i = rand() % 6;
 {
 if ( PORTD.RD0 == 1)
 {
 PORTC = eds[i];
 delay_ms (3000);
 PORTC = 0X00; }
 }
 }
}
