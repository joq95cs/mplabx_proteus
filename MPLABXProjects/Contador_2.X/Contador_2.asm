    LIST P = 16F877A
    
    INCLUDE <P16F877A.INC>
    
    __CONFIG _WDT_OFF & _PWRTE_ON & _XT_OSC & _LVP_OFF & _CP_OFF
    
    V1 EQU 0X20
 
    V2 EQU 0X21
    
    ORG 0
    
    BSF STATUS, RP0
    
    CLRF PORTC
    
    CLRF PORTD
    
    BCF STATUS, RP0
    
DISPLAY1
    
    MOVLW B'00111111'
    
    MOVWF PORTC
    
    CALL DISPLAY2
    
    MOVLW B'00000110'
    
    MOVWF PORTC
    
    CALL DISPLAY2
    
    MOVLW B'01011011'
    
    MOVWF PORTC
   
    CALL DISPLAY2
    
    MOVLW B'01001111'
    
    MOVWF PORTC
    
    CALL DISPLAY2
    
    MOVLW B'01100110'
    
    MOVWF PORTC
    
    CALL DISPLAY2
    
    MOVLW B'01101101'
    
    MOVWF PORTC
    
    CALL DISPLAY2
    
    MOVLW B'01111101'
    
    MOVWF PORTC
    
    CALL DISPLAY2
    
    MOVLW B'00000111'
    
    MOVWF PORTC
    
    CALL DISPLAY2
    
    MOVLW B'01111111'
    
    MOVWF PORTC
    
    CALL DISPLAY2
    
    MOVLW B'01101111'
    
    MOVWF PORTC
    
    CALL DISPLAY2
    
    GOTO DISPLAY1
    
DISPLAY2
    
    MOVLW B'00111111'
    
    MOVWF PORTD
    
    CALL RETARDO
    
    MOVLW B'00000110'
    
    MOVWF PORTD
    
    CALL RETARDO
    
    MOVLW B'01011011'
    
    MOVWF PORTD
    
    CALL RETARDO
    
    MOVLW B'01001111'
    
    MOVWF PORTD
    
    CALL RETARDO
    
    MOVLW B'01100110'
    
    MOVWF PORTD
    
    CALL RETARDO
    
    MOVLW B'01101101'
    
    MOVWF PORTD
    
    CALL RETARDO
    
    MOVLW B'01111101'
    
    MOVWF PORTD
    
    CALL RETARDO
    
    MOVLW B'00000111'
    
    MOVWF PORTD
    
    CALL RETARDO
    
    MOVLW B'01111111'
    
    MOVWF PORTD
    
    CALL RETARDO
    
    MOVLW B'01101111'
    
    MOVWF PORTD
    
    CALL RETARDO
    
    RETURN
    
RETARDO
    
    MOVLW D'255'
    
    MOVWF V1
    
DEC
    
    DECFSZ V1
    
    GOTO SUBRET
    
    RETURN
    
SUBRET
    
    MOVLW D'255'
    
    MOVWF V2
    
SUBDEC
    
    DECFSZ V2
    
    GOTO SUBDEC
    
    GOTO DEC
    
END