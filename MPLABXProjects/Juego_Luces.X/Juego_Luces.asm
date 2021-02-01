    LIST P=16F84A
    
    INCLUDE<P16F84A.INC>
    
    __CONFIG _CP_OFF & _WDT_OFF & _PWRTE_ON & _XT_OSC
    
    T1 EQU 0X0C
    
    T2 EQU 0X0D
 
    ORG 0
    
    BSF STATUS, RP0
    
    CLRF TRISB
    
    BCF STATUS, RP0
 
INICIO
    
    MOVLW D'1'
    
    MOVWF PORTB
    
    CALL RET1
    
    MOVLW D'2'
    
    MOVWF PORTB
    
    CALL RET1
    
    MOVLW D'4'
    
    MOVWF PORTB
    
    CALL RET1
    
    MOVLW D'8'
    
    MOVWF PORTB
    
    CALL RET1
    
    MOVLW D'16'
    
    MOVWF PORTB
    
    CALL RET1
    
    MOVLW D'32'
    
    MOVWF PORTB
    
    CALL RET1
    
    MOVLW D'64'
    
    MOVWF PORTB
    
    CALL RET1
    
    MOVLW D'128'
    
    MOVWF PORTB
    
    CALL RET1
    
    MOVLW D'64'
    
    MOVWF PORTB
    
    CALL RET1
    
    MOVLW D'32'
    
    MOVWF PORTB
    
    CALL RET1
    
    MOVLW D'16'
    
    MOVWF PORTB
    
    CALL RET1
    
    MOVLW D'8'
    
    MOVWF PORTB
    
    CALL RET1
    
    MOVLW D'4'
    
    MOVWF PORTB
    
    CALL RET1
    
    MOVLW D'2'
    
    MOVWF PORTB
    
    CALL RET1
    
    GOTO INICIO
    
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
    
END