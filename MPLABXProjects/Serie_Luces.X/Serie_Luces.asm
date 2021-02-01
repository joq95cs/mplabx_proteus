    LIST P=16F84A
    
    INCLUDE<P16F84A.INC>
    
    __CONFIG _CP_OFF & _WDT_OFF & _PWRTE_ON & _XT_OSC
    
    VAR1 EQU 0X10
 
    VAR2 EQU 0X11
    
    ORG 0
    
    BSF STATUS, RP0
    
    BSF TRISA, RA0
    
    CLRF TRISB
    
    BCF STATUS, RP0
    
SERIE_1
    
    MOVLW B'00000000'
    
    MOVWF PORTB
    
    BTFSS PORTA, RA0
    
    GOTO SERIE_1
    
    CALL SEC1
    
    CALL SEC1
    
SERIE_2
    
    MOVLW B'00000000'
    
    MOVWF PORTB
    
    BTFSS PORTA, RA0
    
    GOTO SERIE_2
    
    CALL SEC2
    
    CALL SEC2
    
    CALL SEC2
    
    CALL SEC2
    
SERIE_3
    
    MOVLW B'00000000'
    
    MOVWF PORTB
    
    BTFSS PORTA, RA0
    
    GOTO SERIE_3
    
    CALL SEC3
    
    CALL SEC3
    
    CALL SEC3
    
    CALL SEC3
    
    GOTO SERIE_1
    
SEC1
    
    MOVLW B'00000001'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'00000011'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'00000111'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'00001111'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'00011111'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'00111111'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'01111111'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'11111111'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'01111111'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'00111111'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'00011111'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'00001111'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'00000111'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'00000011'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'00000001'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'00000000'
    
    MOVWF PORTB
    
    CALL RET
    
    RETURN
    
SEC2
    
    MOVLW B'10000001'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'11000011'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'11100111'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'11111111'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'11100111'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'11000011'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'10000001'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'00000000'
    
    MOVWF PORTB
    
    CALL RET
    
    RETURN
    
SEC3
    
    MOVLW B'00011000'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'10011001'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'10111101'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'11011011'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'11111111'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'11100111'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'01000010'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'00100100'
    
    MOVWF PORTB
    
    CALL RET
    
    MOVLW B'00000000'
    
    MOVWF PORTB
    
    CALL RET
    
    RETURN
    
RET
    
    MOVLW B'11111111'
    
    MOVWF VAR1
    
DEC_VAR1
    
    DECFSZ VAR1
    
    GOTO SUBRET
    
    RETURN
    
SUBRET
    
    MOVLW B'11111111'
    
    MOVWF VAR2
    
DEC_VAR2
    
    DECFSZ VAR2
    
    GOTO DEC_VAR2
    
    GOTO DEC_VAR1
    
END