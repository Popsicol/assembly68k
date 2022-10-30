; ==============================================================================
; VARIABLES
; ==============================================================================
            
; --- KEYBOARD RELATED VARIABLES -----------------------------------------------
            
KBDVAL      DS.B    1                       ; KEY STATE
KBDEDGE     DS.B    1                       ; KEY EDGE

; --- MENU TEXTS ---------------------------------------------------------------

MNTITLE     DC.B    'Mooncake',0
MNPLAY      DC.B    'Play',0
MNOPTION    DC.B    'Options',0
MNEXIT      DC.B    'Exit',0

; --- MENU POSITON -------------------------------------------------------------

MENUPOS     DC.W    $2010   ; idealmente debería cambiarlo para que sea relativo a SCRWIDHT y SCRHEIGH pero no me sale
MENUMOV     DC.B    MENUMAXM/2              ; AMOUNT OF MOVIMENTS LEFT BEFORE CHANGING DIRECTION
MENUDIR     DC.B    2

; --- TIMED INTERRUPT RELATED VARIABLES ----------------------------------------

SCRINTCT    DS.B    1                       ; INTERRUPT COUNTER
SCRCYCCT    DS.B    1                       ; CYCLE COUNTER
            DS.W    0

