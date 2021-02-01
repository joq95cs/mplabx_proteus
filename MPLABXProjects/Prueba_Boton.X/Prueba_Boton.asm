    LIST P=16F877A
    
    INCLUDE<P16F877A.INC>
    
    __CONFIG _WDT_OFF & _PWRTE_ON & _XT_OSC & _LVP_OFF & _CP_OFF
    
    CBLOCK 0X020
    
    ENDC
    
    #DEFINE BOTON PORTA, RA0
    
    #DEFINE LED PORTC, RC0
    
    ORG 0
    
    BSF STATUS, RP0
    
    BSF BOTON
    
    BCF LED
    
    MOVLW 0X06
    
    MOVWF ADCON1 ;Coloca en digital los pines
    
    BCF STATUS, RP0
    
INICIO
    
    BCF LED
    
    BSF BOTON
    
VERIFICAR
    
    BTFSC BOTON
    
    GOTO VERIFICAR
    
    CALL Retardo_10ms
    
    BTFSS BOTON
    
    GOTO VERIFICAR
    
    MOVLW B'00000001'
    
    XORWF PORTC, F
    
    GOTO VERIFICAR
    
INCLUDE<RETARDOS.INC>
    
END