    LIST P=16F84A
    
    INCLUDE<P16F84A.INC>
    
    __CONFIG _CP_OFF & _WDT_OFF & _PWRTE_ON & _XT_OSC
    
    TIEMPO1 EQU 0X0C
 
    TIEMPO2 EQU 0X0D
    
    ORG 0
    
    BSF STATUS, RP0
    
    BCF PORTB, 1
    
    BCF PORTB, 2
    
    BCF PORTB, 3
    
    BCF STATUS, RP0
    
SERIE
    
    BSF PORTB, 1
    
    CALL RETARDO1
    
    BSF PORTB, 2
    
    CALL RETARDO1
    
    BSF PORTB, 3
    
    CALL RETARDO1
    
    BCF PORTB, 1
    
    CALL RETARDO1
    
    BCF PORTB, 2
    
    CALL RETARDO1
    
    BCF PORTB, 3
    
    CALL RETARDO1
    
    GOTO SERIE
    
RETARDO1
    
    MOVFW D'255'
    
    MOVLW TIEMPO1
    
CICLO1
    
    DECFSZ TIEMPO1
    
    GOTO RETARDO2
    
    RETURN
    
RETARDO2
    
    MOVFW D'255'
    
    MOVLW TIEMPO2
    
CICLO2
    
    DECFSZ TIEMPO2
    
    GOTO CICLO2
    
    GOTO CICLO1
    
END