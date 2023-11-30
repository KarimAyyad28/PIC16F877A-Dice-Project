#include <stdio.h>
#include <stdlib.h>

void main (){
 const int eds[6] = {0b00001000,0b00100010,0b00101010,0b01010101,0b01011101,0b01110111} ;

 int i ;
 TRISC = 0X00;
 TRISD = 0b00000001;
 PORTC = 0;
 PORTD = 0;
 while(1){
 //for (i=0 ; i<6;i++)
    int i = rand() % 6;
    {
    if ( PORTD.RD0 == 1)
         {
           PORTC =  eds[i];
           delay_ms (3000);
           PORTC = 0X00; }
    }
         }
}