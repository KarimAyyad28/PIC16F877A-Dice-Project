
_main:

;Dice Project.c,4 :: 		void main (){
;Dice Project.c,8 :: 		TRISC = 0X00;
	CLRF       TRISC+0
;Dice Project.c,9 :: 		TRISD = 0b00000001;
	MOVLW      1
	MOVWF      TRISD+0
;Dice Project.c,10 :: 		PORTC = 0;
	CLRF       PORTC+0
;Dice Project.c,11 :: 		PORTD = 0;
	CLRF       PORTD+0
;Dice Project.c,12 :: 		while(1){
L_main0:
;Dice Project.c,14 :: 		int i = rand() % 6;
	CALL       _rand+0
	MOVLW      6
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_i_L1+0
	MOVF       R0+1, 0
	MOVWF      main_i_L1+1
;Dice Project.c,16 :: 		if ( PORTD.RD0 == 1)
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;Dice Project.c,18 :: 		PORTC =  eds[i];
	MOVF       main_i_L1+0, 0
	MOVWF      R0+0
	MOVF       main_i_L1+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVLW      main_eds_L0+0
	ADDWF      R0+0, 1
	MOVLW      hi_addr(main_eds_L0+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;Dice Project.c,19 :: 		delay_ms (3000);
	MOVLW      31
	MOVWF      R11+0
	MOVLW      113
	MOVWF      R12+0
	MOVLW      30
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;Dice Project.c,20 :: 		PORTC = 0X00; }
	CLRF       PORTC+0
L_main2:
;Dice Project.c,22 :: 		}
	GOTO       L_main0
;Dice Project.c,23 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
