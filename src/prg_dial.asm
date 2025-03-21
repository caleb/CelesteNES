; Copyright (C) 2024-2025 iProgramInCpp

; some defines:
dialog_char_timer = 3
dialog_border     = 16
dialog_border_upp = 20
dialog_port_size  = 40
dialog_port_brdr  = 8

dialog_upper_space  = 24 ; 16
dialog_total_height = 41 ; height until next IRQ

.segment "DLGRAM"
dlg_chartimer:	.res 1 ; when this timer ticks down to zero, show a new character
dlg_cursor_x:	.res 1 ; the X position of the cursor
dlg_cursor_y:	.res 1 ; the Y position of the cursor
dlg_crsr_home:	.res 1 ; the home X position (on the $0A/'\n' character, will go here and advance row)
dlg_port_pal:	.res 1 ; the palette used by the portrait
dlg_port_pala:  .res 1 ; the allocated palette
dlg_temporary:	.res 1
dlg_skipping:	.res 1 ; is the cutscene being skipped
dlg_havenext:	.res 1 ; if this dialog has a "next" dialog after it
dlg_upds1:		.res 32
dlg_upds2:		.res 32
dlg_upds3:		.res 32
dlg_walkdstx:	.res 1
dlg_walkdsty:	.res 1
dlg_speaker:	.res 1
dlg_colnum:     .res 1 ; used by dlg_nmi_clear_256

.segment "DLGTEMP"

; 768 bytes - 256 for each row of text.
dlg_bitmap:	.res 32*24

.align $100
; columns to be updated

dlg_updpaddrlo:	.res 32*3
dlg_updpaddrhi:	.res 32*3

; update count
dlg_updc1:	.res 1
dlg_updc2:	.res 1
dlg_updc3:	.res 1
dlg_updccurr:	.res 1
dlg_endnoclear:	.res 1
dlg_waittimer:	.res 1
dlg_speaktimer:	.res 1
dlg_portraitx:	.res 1
dlg_portraitid: .res 1
dlg_facing:		.res 1  ; 0 - right, non-zero - left
dlg_portrait:	.res 25

.segment "PRG_DIAL"
.include "d_font.asm"
.include "d_update.asm"
.include "d_portra.asm"
.include "d_nmi.asm"
