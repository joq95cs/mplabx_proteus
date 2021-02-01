    LIST P=16F84A
    
    INCLUDE<P16F84A.INC>
    
    __CONFIG _CP_OFF & _WDT_OFF & _PWRTE_ON & _XT_OSC
    
    TIEMPO EQU 0X10
 
    ORG 0
    
    BSF STATUS, 5
    
    BCF PORTB, 0
    
    BCF STATUS, 5
    
ENCENDER
    
    BSF PORTB, 0
    
    CALL RETARDO
    
    GOTO APAGAR
    
APAGAR
    
    BCF PORTB, 0
    
    CALL RETARDO
    
    GOTO ENCENDER
    
RETARDO
    
    MOVLW D'255'
    
    MOVFW TIEMPO
    
CICLO
    
    DECFSZ TIEMPO
    
    GOTO CICLO
    
    RETURN
    
END