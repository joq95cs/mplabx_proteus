    LIST P = 16F84A
    
    INCLUDE <P16F84A.INC>
    
    __CONFIG _CP_OFF & _WDT_OFF & _PWRTE_ON & _XT_OSC
    
    V1 EQU 0X020
 
    V2 EQU 0X021
    
    ORG 0
    
    BSF STATUS, RP0
    
    MOVLW D'128'
    
    MOVWF TRISB
    
    BCF STATUS, RP0
    
CICLO
    
    MOVLW B'00111111'
    
    MOVWF PORTB
    
    CALL RETARDO
    
    CALL RETARDO
    
    MOVLW B'00000110'
    
    MOVWF PORTB
    
    CALL RETARDO
    
    CALL RETARDO
    
    MOVLW B'01011011'
    
    MOVWF PORTB
    
    CALL RETARDO
    
    CALL RETARDO
    
    MOVLW B'01001111'
    
    MOVWF PORTB
    
    CALL RETARDO
    
    CALL RETARDO
    
    MOVLW B'01100110'
    
    MOVWF PORTB
    
    CALL RETARDO
    
    CALL RETARDO
    
    MOVLW B'01101101'
    
    MOVWF PORTB
    
    CALL RETARDO
    
    CALL RETARDO
    
    MOVLW B'01111101'
    
    MOVWF PORTB
    
    CALL RETARDO
    
    CALL RETARDO
    
    MOVLW B'00000111'
    
    MOVWF PORTB
    
    CALL RETARDO
    
    CALL RETARDO
    
    MOVLW B'01111111'
    
    MOVWF PORTB
    
    CALL RETARDO
    
    CALL RETARDO
    
    MOVLW B'01101111'
    
    MOVWF PORTB
    
    CALL RETARDO
    
    CALL RETARDO
    
    GOTO CICLO
    
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