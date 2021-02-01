    LIST P=16F84A
    
    INCLUDE<P16F84A.INC>
    
    __CONFIG _CP_OFF & _WDT_OFF & _PWRTE_ON & _XT_OSC
    
    CBLOCK 0X0C
    
    ENDC
    
    ORG 0
    
    BCF PORTA, 0
    
    BCF PORTA, 1
    
    MOVLW B'11111111'
    
    MOVWF PORTB
    
    BCF STATUS, 5
    
FIJAR
    
    BSF PORTA, 0
    
    MOVLW B'00000000'
    
    MOVWF PORTB
    
    GOTO FIJAR
    
    INCLUDE<RETARDOS.INC>
    
    END