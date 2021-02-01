    LIST P=16F877A
    
    INCLUDE<P16F877A.INC>
    
    __CONFIG _WDT_OFF & _PWRTE_ON & _XT_OSC & _LVP_OFF & _CP_OFF
    
    CBLOCK 0X020
    
    ENDC
    
    ORG 0
    
    BSF STATUS, RP0
    
    CLRF PORTC
    
    CLRF PORTD
    
    BSF PORTA, 0
    
    MOVLW 0X06
    
    MOVWF ADCON1
    
    BCF STATUS, RP0
    
E0
    
    MOVLW B'00000000'
    
    MOVWF PORTC
    
    MOVWF PORTD
    
E1
  
    BTFSS PORTA, 0
    
    GOTO E1
    
    MOVLW B'01110111'
    
    MOVWF PORTC
    
    MOVLW B'00000000'
    
    MOVWF PORTD
    
    CALL Retardo_500ms
    
E2
    
    BTFSS PORTA, 0
    
    GOTO E2
    
    MOVLW B'01110111'
    
    MOVWF PORTC
    
    MOVLW B'01111111'
    
    MOVWF PORTD
    
    CALL Retardo_500ms
    
E3
    
    BTFSS PORTA, 0
    
    GOTO E3
    
    MOVLW B'00111001'
    
    MOVWF PORTC
    
    MOVLW B'01111111'
    
    MOVWF PORTD
    
    CALL Retardo_500ms
    
E4
    
    BTFSS PORTA, 0
    
    GOTO E4
    
    MOVLW B'00111001'
    
    MOVWF PORTC
    
    MOVLW B'00111111'
    
    MOVWF PORTD
    
    CALL Retardo_500ms
    
E5
    
    BTFSS PORTA, 0
    
    GOTO E5
    
    MOVLW B'01110111'
    
    MOVWF PORTC
    
    MOVLW B'00111111'
    
    MOVWF PORTD
    
    CALL Retardo_500ms
    
    GOTO E2
    
    INCLUDE<RETARDOS.INC>
    
END