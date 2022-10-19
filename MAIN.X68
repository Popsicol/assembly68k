; ==============================================================================
; TITLE       :
; DESCRIPTION :
; AUTHOR      :
; HISTORY     :
; ==============================================================================

            ORG     $1000
            
            INCLUDE "CONST.X68"
            INCLUDE "SYSTEM.X68"
            INCLUDE "MENU.X68"
            INCLUDE "VARS.X68"  
            
START

; --- INITIALIZATION -----------------------------------------------------------

            JSR     SYSINIT
            JSR     MENUINIT
.LOOP

; --- UPDATE -------------------------------------------------------------------

; READ INPUT DEVICES

            TRAP    #1

; UPDATE GAME LOGIC
            ;JSR     MENUUPD          

; --- SYNC ---------------------------------------------------------------------

; --- PLOT ---------------------------------------------------------------------

            JSR     MENUPLOT
            
            TRAP    #0                      ; UPDATE DOUBLE BUFFER

            BRA     .LOOP

            SIMHALT
            
            END     START








*~Font name~Fixedsys~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
