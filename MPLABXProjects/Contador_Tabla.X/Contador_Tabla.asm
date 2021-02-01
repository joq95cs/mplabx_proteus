    LIST P = 16F877A
    
    INCLUDE<P16F877A.INC>
    
    __CONFIG _WDT_OFF & _PWRTE_ON & _XT_OSC & _LVP_OFF & _CP_OFF
    
    CBLOCK 0X0C
    
	CONTADOR
    
    ENDC
    
    #DEFINE DISPLAY PORTB
    
    ORG 0
    
    BSF STATUS, RP0
    
    CLRF DISPLAY
    
    BCF STATUS, RP0
    
INICIO
    
    CLRF CONTADOR
    
    MOVF CONTADOR, W
    
    CALL SIETE_SEGMENTOS
    
    MOVWF DISPLAY
    
    CALL Retardo_200ms
    
CONTAR
    
    INCF CONTADOR, F
    
    MOVLW D'10'
    
    SUBWF CONTADOR, W
    
    BTFSC STATUS, C ;Verifica si C es 0, si se cumple la condición salta una línea
    ;C es 1 cuando la resta es 0
    
    GOTO INICIO
    
    MOVF CONTADOR, W
    
    CALL SIETE_SEGMENTOS
    
    MOVWF DISPLAY
    
    CALL Retardo_200ms
    
    GOTO CONTAR
    
SIETE_SEGMENTOS
    
    ADDWF PCL, F
    
TABLA
    
    RETLW B'11000000'
    
    RETLW B'11111001'
    
    RETLW B'10100100'
    
    RETLW B'10110000'
    
    RETLW B'10011001'
    
    RETLW B'10010010'
    
    RETLW B'10000010'
    
    RETLW B'11111000'
    
    RETLW B'10000000'
    
    RETLW B'10010000'
    
    INCLUDE<RETARDOS.INC>
    
    END