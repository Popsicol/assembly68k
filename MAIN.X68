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

            ORI.W   #$0700,SR
            JSR     SYSINIT
            JSR     MENUINIT
.LOOP

; --- UPDATE -------------------------------------------------------------------

; READ INPUT DEVICES

            TRAP    #KBDUPTN

; UPDATE GAME LOGIC
            JSR     MENUUPD          

; --- SYNC ---------------------------------------------------------------------

.WINT       TST.B   (SCRINTCT)
            BEQ     .WINT
            CLR.B   (SCRINTCT)

; --- PLOT ---------------------------------------------------------------------

            JSR     MENUPLOT
            
            TRAP    #SCRUPTN                    ; UPDATE DOUBLE BUFFER

            BRA     .LOOP

            SIMHALT
            
            END     START
