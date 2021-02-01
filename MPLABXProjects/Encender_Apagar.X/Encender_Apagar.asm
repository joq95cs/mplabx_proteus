LIST P=16F84
    
INCLUDE <P16F84A.INC>
    
TIEMPO EQU 0x10
    
    ORG 0
    
    BSF 0x83, 5
    
    BCF 0x06, 1
    
    BCF 0x03, 5
    
ENCENDER
    
    BSF 0x06, 1
    
    CALL RETARDO
    
    GOTO APAGAR
    
APAGAR
    
    BCF 0x06, 1
    
    CALL RETARDO
    
    GOTO ENCENDER
    
RETARDO
    
    MOVLW B'11111111'
    
    MOVWF TIEMPO
    
DECREMENTO
    
    DECFSZ TIEMPO
    
    GOTO DECREMENTO
    
    RETURN
    
END