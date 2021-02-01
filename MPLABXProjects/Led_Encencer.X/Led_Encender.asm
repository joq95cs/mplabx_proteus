    LIST P=16F84A
    
    INCLUDE<P16F84A.INC>
    
    __CONFIG _CP_OFF & _WDT_OFF & _PWRTE_ON & _XT_OSC
    
    ORG 0
    
    BSF STATUS, RP0
    
    BCF PORTB, 2
    
    BCF STATUS, RP0
    
ENCENDER
    
    BSF PORTB, 2
    
    GOTO ENCENDER
    
END