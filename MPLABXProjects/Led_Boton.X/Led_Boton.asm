    LIST P=16F84A

    INCLUDE <P16F84A.INC>
    
    __CONFIG _CP_OFF & _WDT_OFF & _PWRTE_ON & _XT_OSC
    
    ORG 0
    
    BSF STATUS, 5
    
    BSF PORTA, 1 ;Puerto A, pin 1 como entrada
    
    BCF PORTB, 0 ;Puerto B, pin 0 como salida
    
    BCF STATUS, 5
    
APAGAR
    
    BTFSC PORTA, 1 ;Verifica si el pin 1 del puerto A tiene energía, si es verdadero salta una línea
    
    GOTO APAGAR
    
    BCF PORTB, 0
    
    GOTO ENCENDER
    
ENCENDER
    
    BTFSS PORTA, 1 ;Verifica si el pin 1 del puerto A no tiene energía, si es verdadero salta una línea
    
    GOTO ENCENDER
    
    BSF PORTB, 0
    
    GOTO APAGAR
    
END