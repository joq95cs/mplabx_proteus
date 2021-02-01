    LIST P=16F84A
    
    INCLUDE<P16F84A.INC>
    
    __CONFIG _CP_OFF & _WDT_ON & _PWRTE_ON & _RC_OSC
    
    CBLOCK 0X0C
    
    ENDC
    
    #DEFINE DISPLAY PORTB
    
    ORG 0
    
    BSF STATUS, RP0
    
    CLRF DISPLAY
    
    BCF STATUS, RP0
    
INICIO
    
    MOVLW B'11000000'
    
    MOVWF DISPLAY
    
    CALL Retardo_200ms
    
    MOVLW B'11111001'
    
    MOVWF DISPLAY
    
    CALL Retardo_200ms
    
    MOVLW B'10100100'
    
    MOVWF DISPLAY
    
    CALL Retardo_200ms
    
    MOVLW B'10110000'
    
    MOVWF DISPLAY
    
    CALL Retardo_200ms
    
    MOVLW B'10011001'
    
    MOVWF DISPLAY
    
    CALL Retardo_200ms
    
    MOVLW B'10010010'
    
    MOVWF DISPLAY
    
    CALL Retardo_200ms
    
    MOVLW B'10000010'
    
    MOVWF DISPLAY
    
    CALL Retardo_200ms
    
    MOVLW B'11111000'
    
    MOVWF DISPLAY
    
    CALL Retardo_200ms
    
    MOVLW B'10000000'
    
    MOVWF DISPLAY
    
    CALL Retardo_200ms
    
    MOVLW B'10010000'
    
    MOVWF DISPLAY
    
    CALL Retardo_200ms
    
    GOTO INICIO
    
    INCLUDE<RETARDOS.INC>
    
    END