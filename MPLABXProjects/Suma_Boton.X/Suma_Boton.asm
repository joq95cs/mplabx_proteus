    LIST P=16F877A
    
    INCLUDE<P16F877A.INC>
    
    __CONFIG _WDT_OFF & _PWRTE_ON & _XT_OSC & _LVP_OFF & _CP_OFF
    
    CBLOCK 0X030
    
    ENDC
    
    NUM1 EQU 0X020
 
    NUM2 EQU 0X021
 
    VAR EQU 0X023
 
    TEMP1 EQU 0X024
 
    TEMP2 EQU 0X025
 
    PUERTO EQU 0X026
    
    ORG 0
    
    BSF STATUS, RP0
    
    CLRF PORTB
    
    CLRF PORTC
    
    CLRF PORTD
    
    BSF PORTA, RA0
    
    BSF PORTA, RA1
    
    BSF PORTA, RA2
    
    BSF PORTA, RA3
    
    BSF PORTA, RA4
    
    MOVLW 0X06
    
    MOVWF ADCON1
    
    BCF STATUS, RP0
    
FIJAR_CERO
    
    CLRW
    
    MOVWF NUM1
    
    MOVWF NUM2
    
    CALL PRUEBA_9
    
    MOVFW PUERTO
    
    MOVWF PORTB
    
    MOVWF PORTC
    
    MOVWF PORTD
    
BT_1
    
    BTFSS PORTA, RA1
    
    GOTO BT_2
    
    CALL Retardo_500ms
    
    MOVLW D'9'
    
    SUBWF NUM1, W
    
    BTFSC STATUS, C
    
    GOTO BT_2
    
    INCF NUM1, W
    
    MOVWF NUM1
    
    CALL PRUEBA_9
    
    MOVFW PUERTO
    
    MOVWF PORTB
    
BT_2
    
    BTFSS PORTA, RA0
    
    GOTO BT_3
    
    CALL Retardo_500ms
    
    INCF NUM1, F
    
    DECFSZ NUM1
    
    GOTO AUX_BT_2
    
    GOTO BT_3
    
AUX_BT_2
    
    DECF NUM1, W
    
    MOVWF NUM1
    
    CALL PRUEBA_9
    
    MOVFW PUERTO
    
    MOVWF PORTB
    
BT_3
    
    BTFSS PORTA, RA3
    
    GOTO BT_4
    
    CALL Retardo_500ms
    
    MOVLW D'9'
    
    SUBWF NUM2, W
    
    BTFSC STATUS, C
    
    GOTO BT_4
    
    INCF NUM2, W
    
    MOVWF NUM2
    
    CALL PRUEBA_9
    
    MOVFW PUERTO
    
    MOVWF PORTC
    
BT_4
    
    BTFSS PORTA, RA2
    
    GOTO BT_5
    
    CALL Retardo_500ms
    
    INCF NUM2, F
    
    DECFSZ NUM2
    
    GOTO AUX_BT_4
    
    GOTO BT_5
    
AUX_BT_4
    
    DECF NUM2, W
    
    MOVWF NUM2
    
    CALL PRUEBA_9
    
    MOVFW PUERTO
    
    MOVWF PORTC
    
BT_5
    
    BTFSS PORTA, RA4
    
    GOTO BT_1
    
    CALL Retardo_500ms
    
    MOVFW NUM1
    
    NUM1 EQU 0X020
 
    MOVWF NUM1
    
    ADDWF NUM2, W
    
    CALL PRUEBA_9
    
    MOVFW PUERTO
    
    MOVWF PORTD
    
    GOTO BT_1
    
PRUEBA_9
    
    MOVWF TEMP1
    
    MOVWF TEMP2
    
    MOVLW D'9'
    
    MOVWF VAR
    
DEC_9
    
    DECF TEMP1
    
    DECFSZ VAR
    
    GOTO DEC_9
    
    MOVLW D'1'
    
    ADDWF TEMP1, 1
    
    DECFSZ TEMP1
    
    GOTO PRUEBA_8
    
    MOVLW B'01101111'
    
    MOVWF PUERTO
    
    RETURN
    
PRUEBA_8
    
    MOVFW TEMP2
    
    MOVWF TEMP1
    
    TEMP2 EQU 0X025
 
    MOVWF TEMP2
    
    MOVLW D'8'
    
    MOVWF VAR
    
DEC_8
    
    DECF TEMP1
    
    DECFSZ VAR
    
    GOTO DEC_8
    
    MOVLW D'1'
    
    ADDWF TEMP1, 1
    
    DECFSZ TEMP1
    
    GOTO PRUEBA_7
    
    MOVLW B'01111111'
    
    MOVWF PUERTO
    
    RETURN
    
PRUEBA_7
    
    MOVFW TEMP2
    
    MOVWF TEMP1
    
    TEMP2 EQU 0X025
 
    MOVWF TEMP2
    
    MOVLW D'7'
    
    MOVWF VAR
    
DEC_7
    
    DECF TEMP1
    
    DECFSZ VAR
    
    GOTO DEC_7
    
    MOVLW D'1'
    
    ADDWF TEMP1, 1
    
    DECFSZ TEMP1
    
    GOTO PRUEBA_6
    
    MOVLW B'00000111'
    
    MOVWF PUERTO
    
    RETURN
    
PRUEBA_6
    
    MOVFW TEMP2
    
    MOVWF TEMP1
    
    TEMP2 EQU 0X025
 
    MOVWF TEMP2
    
    MOVLW D'6'
    
    MOVWF VAR
    
DEC_6
    
    DECF TEMP1
    
    DECFSZ VAR
    
    GOTO DEC_6
    
    MOVLW D'1'
    
    ADDWF TEMP1, 1
    
    DECFSZ TEMP1
    
    GOTO PRUEBA_5
    
    MOVLW B'01111101'
    
    MOVWF PUERTO
    
    RETURN
    
PRUEBA_5
    
    MOVFW TEMP2
    
    MOVWF TEMP1
    
    TEMP2 EQU 0X025
 
    MOVWF TEMP2
    
    MOVLW D'5'
    
    MOVWF VAR
    
DEC_5
    
    DECF TEMP1
    
    DECFSZ VAR
    
    GOTO DEC_5
    
    MOVLW D'1'
    
    ADDWF TEMP1, 1
    
    DECFSZ TEMP1
    
    GOTO PRUEBA_4
    
    MOVLW B'01101101'
    
    MOVWF PUERTO
    
    RETURN
    
PRUEBA_4
    
    MOVFW TEMP2
    
    MOVWF TEMP1
    
    TEMP2 EQU 0X025
 
    MOVWF TEMP2
    
    MOVLW D'4'
    
    MOVWF VAR
    
DEC_4
    
    DECF TEMP1
    
    DECFSZ VAR
    
    GOTO DEC_4
    
    MOVLW D'1'
    
    ADDWF TEMP1, 1
    
    DECFSZ TEMP1
    
    GOTO PRUEBA_3
    
    MOVLW B'01100110'
    
    MOVWF PUERTO
    
    RETURN
    
PRUEBA_3
    
    MOVFW TEMP2
    
    MOVWF TEMP1
    
    TEMP2 EQU 0X025
 
    MOVWF TEMP2
    
    MOVLW D'3'
    
    MOVWF VAR
    
DEC_3
    
    DECF TEMP1
    
    DECFSZ VAR
    
    GOTO DEC_3
    
    MOVLW D'1'
    
    ADDWF TEMP1, 1
    
    DECFSZ TEMP1
    
    GOTO PRUEBA_2
    
    MOVLW B'01001111'
    
    MOVWF PUERTO
    
    RETURN
    
PRUEBA_2
    
    MOVFW TEMP2
    
    MOVWF TEMP1
    
    TEMP2 EQU 0X025
 
    MOVWF TEMP2
    
    MOVLW D'2'
    
    MOVWF VAR
    
DEC_2
    
    DECF TEMP1
    
    DECFSZ VAR
    
    GOTO DEC_2
    
    MOVLW D'1'
    
    ADDWF TEMP1, 1
    
    DECFSZ TEMP1
    
    GOTO PRUEBA_1
    
    MOVLW B'01011011'
    
    MOVWF PUERTO
    
    RETURN
    
PRUEBA_1
    
    MOVFW TEMP2
    
    MOVWF TEMP1
    
    TEMP2 EQU 0X025
 
    MOVWF TEMP2
    
    MOVLW D'1'
    
    MOVWF VAR
    
DEC_1
    
    DECF TEMP1
    
    DECFSZ VAR
    
    GOTO DEC_1
    
    MOVLW D'1'
    
    ADDWF TEMP1, 1
    
    DECFSZ TEMP1
    
    GOTO PRUEBA_0
    
    MOVLW B'00000110'
    
    MOVWF PUERTO
    
    RETURN
    
PRUEBA_0
    
    MOVLW B'00111111'
    
    MOVWF PUERTO
    
    RETURN
    
FIN
    
    GOTO FIN
    
    INCLUDE<RETARDOS.INC>
    
END