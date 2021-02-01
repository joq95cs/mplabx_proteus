    LIST P=16F84A
    
    INCLUDE <P16F84A.INC>
    
    ORG 0
    
    BSF STATUS, RP0
    
    CLRF PORTB
    
    BSF PORTA, RA0
    
    BSF PORTA, RA1
    
    BCF STATUS, RP0
    
    MOVLW B'00000000'
    
    MOVWF PORTB
    
CASO1
    
    BTFSS PORTA, RA0
    
    GOTO CASO2
    
    BTFSS PORTA, RA1
    
    GOTO CASO2
    
    GOTO APAGAR
    
CASO2
    
    BTFSC PORTA, RA0
    
    GOTO CASO3
    
    BTFSC PORTA, RA1
    
    GOTO CASO3
    
    GOTO APAGAR
    
CASO3
    
    BTFSS PORTA, RA0
    
    GOTO CASO4
    
    BTFSC PORTA, RA1
    
    GOTO CASO4
    
    GOTO ENCENDER
    
CASO4
    
    GOTO ENCENDER
    
APAGAR
    
    MOVLW B'00000000'
    
    MOVWF PORTB
    
    GOTO CASO1
    
ENCENDER
    
    MOVLW B'00011111'
    
    MOVWF PORTB
    
    GOTO CASO1
    
    END
