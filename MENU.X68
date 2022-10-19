*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------

MENUINIT
    ; FILL COLOR
    MOVE.B  #81,D0
    MOVE.L  #$00000000,D1
    TRAP    #15
    ; PEN COLOR
    MOVE.B  #80,D0
    MOVE.L  #$00FFFFFF,D1
    TRAP    #15
    
    RTS
    
MENUPLOT
    ; SET MENU TITLE POSITION
    MOVE.B  #11,D0
    MOVE.W  #$2010,D1 ;#SCRWIDTH/2<<8|SCRHEIGH/2,D1
    TRAP    #15
    ; PRINT MENU TITLE
    LEA.L   MNTITLE,A1
    MOVE.B  #14,D0
    TRAP    #15
    
    RTS
    


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
