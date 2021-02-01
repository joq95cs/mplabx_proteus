    LIST P=16F84A
    
    INCLUDE<P16F84A.INC>
    
    VAR1 EQU 0X020
 
    VAR2 EQU 0X021
    
    ORG 0
    
    BSF STATUS, RP0
    
    CLRF PORTB
    
    BCF STATUS, RP0
    
CICLO
    
    MOVLW B'01110111'
    
    MOVWF PORTB
    
    CALL RET
    
    CALL RET
    
    MOVLW B'00010010'
    
    MOVWF PORTB
    
    CALL RET
    
    CALL RET
    
    MOVLW B'01101011'
    
    MOVWF PORTB
    
    CALL RET
    
    CALL RET
    
    MOVLW B'01011011'
    
    MOVWF PORTB
    
    CALL RET
    
    CALL RET
    
    MOVLW B'00011110'
    
    MOVWF PORTB
    
    CALL RET
    
    CALL RET
    
    MOVLW B'01011101'
    
    MOVWF PORTB
    
    CALL RET
    
    CALL RET
    
    MOVLW B'01111101'
    
    MOVWF PORTB
    
    CALL RET
    
    CALL RET
    
    MOVLW B'00010011'
    
    MOVWF PORTB
    
    CALL RET
    
    CALL RET
    
    MOVLW B'01111111'
    
    MOVWF PORTB
    
    CALL RET
    
    CALL RET
    
    MOVLW B'00011111'
    
    MOVWF PORTB
    
    CALL RET
    
    CALL RET
    
    GOTO CICLO
    
RET
    
    MOVLW D'255'
    
    MOVWF VAR1
    
DEC
    
    DECFSZ VAR1
    
    GOTO SUBRET
    
    RETURN
    
SUBRET
    
    MOVLW D'255'
    
    MOVWF VAR2
    
SUBDEC
    
    DECFSZ VAR2
    
    GOTO SUBDEC
    
    GOTO DEC
    
    END