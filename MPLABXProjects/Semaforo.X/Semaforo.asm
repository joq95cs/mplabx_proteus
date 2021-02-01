    LIST P = 16F84A
    
    INCLUDE <P16F84A.INC>
    
    __CONFIG _CP_OFF & _WDT_OFF & _PWRTE_ON & _XT_OSC
    
    T1 EQU 0X0C
 
    T2 EQU 0X0D
    
    ORG 0
    
    BSF STATUS, RP0
    
    MOVLW B'11111000'
    
    MOVWF TRISB
    
    BCF STATUS, RP0
    
PROCESO
    
    MOVLW B'00000001' ;Enciende rojo
    
    MOVWF PORTB
    
    CALL RET_ROJO
    
    MOVLW B'00000011' ;Enciende rojo y amarillo
    
    MOVWF PORTB
    
    CALL RET_AMARILLO
    
    MOVLW B'00000100' ;Enciende verde
    
    MOVWF PORTB
    
    CALL RET_VERDE
    
    GOTO PROCESO
    
RET1
    
    MOVLW D'255'
    
    MOVWF T1
    
DEC1
    
    DECFSZ T1
    
    GOTO RET2
    
    RETURN
    
RET2
    
    MOVLW D'255'
    
    MOVWF T2
    
DEC2
    
    DECFSZ T2
    
    GOTO DEC2
    
    GOTO DEC1
    
RET_ROJO
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    RETURN
    
RET_AMARILLO
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    RETURN
    
RET_VERDE
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    CALL RET1
    
    RETURN
    
END