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
    MOVE.W  (MENUPOS),D1 ;
    TRAP    #15
    ; PRINT MENU TITLE
    LEA.L   MNTITLE,A1
    MOVE.B  #14,D0
    TRAP    #15
    
    RTS
    
MENUUPD
    MOVE.B  D0, -(A7)
    MOVE.B  (SCRCYCCT),D0
    ADD.B   D0,D0 ; MULTIPLICO POR 2, SI NO QUEDA NADA ES QUE ERA $80 O $00
    BNE.B   .NOTHING
    
    MOVEQ.B #MENUDIR,D0
    ADD.B   D0, (MENUPOS+1) ; MENUPOS ES UN WORD, SUMO AL BIT BAJO
    SUBQ.B  #1,(MENUMOV)
    BPL.B   .NOTHING
    
    MOVE.B  #MENUMAXM, (MENUMOV)
    NEG.B   (MENUDIR)
.NOTHING
    MOVE.B  (A7)+, D0
    RTS

