; Copyright (C) 2024 iProgramInCpp

; Notes about some variables:
;
; (1) -- If dialogsplit is non zero, it is applied instead of scrollsplit, and then scrollsplit
;        is only used to calculate the camera offset in game.
;
; (2) -- The irqcounter represents the current phase of the dialog raster trick.
;        Once it reaches three, normal game is rendered.
;
; (3) -- The camera Y is split into "multiples of 8" and "non multiple of 8" because I suck. There
;        are loads of edge cases in the horizontal level design that I'm not willing to completely
;        reupholster.

.segment "ZEROPAGE"

temp1       : .res 1
temp2       : .res 1
temp3       : .res 1
temp4       : .res 1
temp5       : .res 1
temp6       : .res 1
temp7       : .res 1
temp8       : .res 1
temp9       : .res 1
temp10      : .res 1
temp11      : .res 1

; temporaries ONLY touchable in the IRQ!
irqtmp1     : .res 1
irqtmp2     : .res 1
irqtmp3     : .res 1
irqtmp4     : .res 1

gamemode    : .res 1 ; active game mode
framectr    : .res 1 ; continuously increasing frame counter
nmicount    : .res 1
nmienable   : .res 1
ctl_flags   : .res 1 ; copied into ppuctrl
gamestate   : .res 1 ; reused by every game mode
	titlectrl = gamestate
	gamectrl  = gamestate
	owldctrl  = gamestate
	prolctrl  = gamestate

nmictrl     : .res 1 ; nc_*
nmictrl2    : .res 1 ; nc2_*

spr0_bknum  : .res 1
spr1_bknum  : .res 1
spr2_bknum  : .res 1
spr3_bknum  : .res 1
bg0_bknum   : .res 1
bg1_bknum   : .res 1

spr0_bkspl  : .res 1
spr1_bkspl  : .res 1
spr2_bkspl  : .res 1
spr3_bkspl  : .res 1
bg0_bkspl   : .res 1
bg1_bkspl   : .res 1
splgapaddr  : .res 2

mmc3_shadow : .res 1
currA000bank: .res 1 ; current bank index loaded at $A000-$BFFF.
oam_wrhead  : .res 1 ; OAM buffer write head
wr_str_temp : .res 2 ; address of current character of string
x_crd_temp  : .res 1 ; used by oam_putsprite and h_get_tile, MUST be x before y!
y_crd_temp  : .res 1 ; used by oam_putsprite
scroll_x    : .res 1
scroll_y    : .res 1
scroll_flags: .res 1 ; the FLAGS for the scroll split part of PPUCTRL

; dialog stuff in the zeropage
scrollsplit : .res 1 ; Y position of the scroll split
dialogsplit : .res 1 ; Y position of the dialog split (1)
irqcounter  : .res 1 ; (2)
dlg_updates : .res 1 ; row update bitmask
dlg_entity  : .res 1 ; entity engaged with in a cutscene
dlg_cutsptr : .res 2 ; pointer to the current cutscene script command
dlg_textptr : .res 2 ; the pointer to the current character
dlg_porttbl : .res 2 ; the pointer to the portrait table
dlg_curport : .res 2 ; the pointer to the current portrait

rng_state   : .res 1
p1_cont     : .res 2
p1_conto    : .res 2
ctrlscheme  : .res 1 ; active control scheme
paladdr     : .res 2 ; currently loaded palette address.

player_x    : .res 1 ; offset by the camera's position!
player_y    : .res 1
player_sp_x : .res 1 ; subpixel memory X
player_sp_y : .res 1 ; subpixel memory Y
camera_x    : .res 1
camera_y    : .res 1
camera_x_hi : .res 1
camera_y_hi : .res 1
camera_y_bs : .res 1 ; base camera Y
camera_y_sub: .res 1 ; sub-tile camera Y (0-7) (3)
camera_y_ho : .res 1 ; camera Y high OLD
revealedrow : .res 1 ; row revealed by an up/down scroll
vertoffshack: .res 1 ; offset when fetching tiles using coordinates.  This is a hack
gettiletmp  : .res 1 ; temporary used by h_get_tile
camera_y_min: .res 1
camera_y_max: .res 1

; merged from individual variables between Prologue, Title and Overworld.
; note: these may be used as extra temporaries for the Game mode too!
pot_merged  : .res 10

; title
tl_timer    := pot_merged + 0
tl_gametime := pot_merged + 1
; overworld
ow_temp1    := pot_merged + 0
ow_temp2    := pot_merged + 1
ow_temp3    := pot_merged + 2
ow_temp4    := pot_merged + 3
ow_temp5    := pot_merged + 4
ow_timer    := pot_merged + 5
ow_sellvl   := pot_merged + 6 ; selected level
ow_iconoff  := pot_merged + 7
ow_slidetmr := pot_merged + 8
; Prologue specific addresses
pl_state    := pot_merged + 0 ; 0 - load text, 1 - writing text, 2 - waiting, 3 - fadeout
pl_ppuaddr  := pot_merged + 1
pl_ppudata  := pot_merged + 3
p_textaddr  := pot_merged + 4 ; current address in text string
p_textlen   := pot_merged + 6 ; length of current text string
p_textnum   := pot_merged + 7
p_textoffs  := pot_merged + 8
p_texttimer := pot_merged + 9

; Game specific addresses
gamectrl2   : .res 1 ; second game control flags
gamectrl3   : .res 1 ; third game control flags
ntwrhead    : .res 1 ; name table write head (up to 64 columns)
arwrhead    : .res 1 ; area space write head (up to 32 columns)
camera_x_pg : .res 1
lvlptrlo    : .res 1 ; level pointer
lvlptrhi    : .res 1
roomptrlo   : .res 1 ; room pointer
roomptrhi   : .res 1
arrdheadlo  : .res 1 ; area read head
arrdheadhi  : .res 1
entrdheadlo : .res 1 ; entity read head
entrdheadhi : .res 1
lvladdr     : .res 1 ; temporaries used by h_get_tile and h_set_tile
lvladdrhi   : .res 1
tr_scrnpos  : .res 1 ; active screen position
entdelay    : .res 1 ; entity row delay (vertical scrolling)
playerctrl  : .res 1
player_vl_x : .res 1 ; velocity X, pixels
player_vs_x : .res 1 ; velocity X, subpixels
player_vl_y : .res 1 ; velocity Y, pixels
player_vs_y : .res 1 ; velocity Y, subpixels
plh_attrs   : .res 1 ; player hair attributes
dashtime    : .res 1
dashcount   : .res 1 ; times player has dashed
dashdir     : .res 1 ; dash direction X (controller inputs at time of dash SHIFTED LEFT by 2)
currroom    : .res 1 ; current room
spryoff     : .res 1 ; hair sprite Y offset
animmode    : .res 1 ; current animation mode
animtimer   : .res 1 ; current animation timer. It has a subunitary component because
animtimersb : .res 1 ; the upper component is directly used as the frame index.
animflags   : .res 1 ; animation flags copied from anim data
anfrptrlo   : .res 1 ; animation frame pointer low
anfrptrhi   : .res 1 ; animation frame pointer high
sprxoff     : .res 1 ; hair sprite X offset
spryoffbase : .res 1 ; hair sprite Y offset base (used for af_oddryth)
jumpbuff    : .res 1 ; jump buff time
jumpcoyote  : .res 1 ; jump coyote time, if not zero, player may jump
wjumpcoyote : .res 1 ; wall jump coyote time
player_yo   : .res 1 ; player Y old. used for spike collision
player_xo   : .res 1 ; player Y old. used for horizontal spike collision
transoff    : .res 1
ptscount    : .res 1 ; last points count given
ptstimer    : .res 1 ; time the ptscount is valid in frames
palrdheadlo : .res 1 ; palette read head
palrdheadhi : .res 1
camlimit    : .res 1
camlimithi  : .res 1
camleftlo   : .res 1
camlefthi   : .res 1
transtimer  : .res 1
trantmp3    : .res 1
trarwrhead  : .res 1
scrchklo    : .res 1 ; temporaries used for scroll checking
scrchkhi    : .res 1
lvlyoff     : .res 1 ; level Y offset when writing name table data
trantmp1    : .res 1 ; temporaries used for transitioning
trantmp2    : .res 1
camera_rev  : .res 1 ; revealed pixels - if it goes above 8, request a column to be generated
plr_spr_l   : .res 1 ; player sprite left
plr_spr_r   : .res 1 ; player sprite right
plh_spr_l   : .res 1 ; player hair sprite left
plh_spr_r   : .res 1 ; player hair sprite right
deathtimer  : .res 1
roombeglo   : .res 1 ; beginning of room in pixels.  Used for entity placement
roombeghi   : .res 1
roombeglo2  : .res 1 ; beginning of room in tiles.
plrtrahd    : .res 1 ; plr trace head
plrstrawbs  : .res 1 ; strawberries following this player
ntrowhead   : .res 1
ntrowhead2  : .res 1
camdst_x    : .res 1 ; temporary used by gm_leaveroomU
camdst_x_pg : .res 1 ; temporary used by gm_leaveroomU
wrcountHP1  : .res 1 ; write count for HP1
wrcountHP2  : .res 1 ; write count for HP2
ppuaddrHP1  : .res 2 ; ppuaddr to write palH1 to
ppuaddrHP2  : .res 2 ; ppuaddr to write palH2 to
ppuaddrHR1  : .res 2 ; ppuaddr to write row1 to
ppuaddrHR2  : .res 2 ; ppuaddr to write row2 to
ppuaddrHR3  : .res 2 ; ppuaddr to write row3 to
wrcountHR1  : .res 1 ; write count for HR1
wrcountHR2  : .res 1 ; write count for HR2
wrcountHR3  : .res 1 ; write count for HR3
camoff_H    : .res 1 ; temporaries used by gm_leaveroomU
camoff_M    : .res 1
camoff_L    : .res 1
camoff_sub  : .res 1
player_x_d  : .res 1
camoff2_M   : .res 1
camoff2_L   : .res 1
jcountdown  : .res 1 ; jump countdown
forcemovext : .res 1
forcemovex  : .res 1
quaketimer  : .res 1
quakeflags  : .res 1 ; directions are the same as controller flags
l0crshidx   : .res 1
plattemp1   : .res 1 ; TODO: replace with a regular temp
plattemp2   : .res 1 ; TODO: replace with a regular temp
entground   : .res 1 ; entity ID the player is interacting with (standing on or climbing)
musicbank   : .res 1 ; music is active in this bank
musicbank2  : .res 1
defsprbank  : .res 1 ; the default level specific sprite bank
musictable  : .res 2 ; currently active table of songs
musicdiff   : .res 1 ; should the music be re-initialized?
clearpalo   : .res 1 ; enqueued name table clear, ppu address low
clearpahi   : .res 1 ; enqueued name table clear, ppu address high
clearsizex  : .res 1 ; enqueued name table clear, size X
clearsizey  : .res 1 ; enqueued name table clear, size Y
roomnumber  : .res 1 ; incremented every time a room transition happens
climbbutton : .res 1 ; the state of the CLIMB button. Any non zero value works.
stamina     : .res 2 ; stamina amount (16-bit integer)
stamflashtm : .res 1 ; stamina flash timer
climbcdown  : .res 1 ; climb cooldown (when transitioning rooms)
cjwindow    : .res 1 ; climb jump window -- if you push the opposite direction while jumping, stamina will be refunded and a wall jump will happen
cjwalldir   : .res 1 ; climb jump wall direction

; this is where the room header is copied, when a room is loaded.
roomsize    : .res 1 ; room size in tiles. 0 if the room is long/1-directional.
roomflags   : .res 1 ; room flags
roomspare3  : .res 1 ; spare bytes
startpx     : .res 1 ; starting player X position
startpy     : .res 1 ; starting player Y position
warp_u      : .res 1 ; destination warp numbers
warp_d      : .res 1
warp_l      : .res 1
warp_r      : .res 1
warp_u_x    : .res 1 ; destination X or Y coordinates depending on warp side
warp_d_x    : .res 1
warp_l_y    : .res 1
warp_r_y    : .res 1
rm_paloffs  : .res 1

; NEW level format
roomwidth   : .res 1
roomheight  : .res 1
roomreadidx : .res 2 ; read index in first name table row
roomcurrcol : .res 1 ; current column index in first name table row

roomhdrfirst = roomsize
roomhdrlast  = rm_paloffs + 1

.segment "OAMBUF"
oam_buf     : .res $100

.segment "ENTITIES"
sprspace    : .res $100

.segment "PLTRACES"
plr_trace_x : .res $40
plr_trace_y : .res $40
tl_snow_y   = plr_trace_y
tl_snow_x   = plr_trace_x

.segment "DRAWTEMP"
temprowtot  : .res $40
tempcol     = temprowtot+$00  ; 32 bytes - temporary column to be flushed to the screen
temppal     = temprowtot+$20  ; 8 bytes  - temp palette column to be flushed to the screen
temppalH1   = temprowtot+$28  ; 8 bytes  - temporary row in nametable 0
temppalH2   = temprowtot+$30  ; 8 bytes  - temporary row in nametable 1
; 8 bytes here
temprow1    : .res $20  ; 32 bytes - temporary row in nametable 0
temprow2    : .res $20  ; 32 bytes - temporary row in nametable 1
temprow3    : .res $20  ; 32 bytes - temporary row in nametable 1
lastcolumn  : .res $20  ; 30 bytes - temporary storage for last column, used during decompression
loadedpals  : .res $40  ; 64 bytes - temporary storage for loaded palettes during vertical transitions
ntattrdata  : .res $80  ; 128 bytes- loaded attribute data
spritepals  : .res 9    ; 9 bytes  - loaded sprite palettes
spritepalso : .res 9    ; 9 bytes  - previous frame's loaded sprite palettes
sprpalcount : .res 1    ; 1 byte   - amount of palettes written
sprpaltemp  : .res 1    ; 1 byte   - just a temporary variable
palidxs     : .res pal_max; pal_max bytes - the indices of each loaded palette

.segment "AREASPC"      ; $6000 - Cartridge WRAM
areaspace   : .res $800

.segment "AREAXTRA"     ; $6800 - Cartridge WRAM
areaextra   : .res $400 * 4 ; 4 screens worth of extra data

; AreaExtra composed of:
; [ 960 bytes ] - Screen 1
; [ 960 bytes ] - Screen 2
; [ 960 bytes ] - Screen 3
; [ 960 bytes ] - Screen 4

.segment "AREAPAL"

areapal8X2  : .res $40  * 4 ; 4 X 16 X 4 (4 screens' worth of attribute table data)
; (note: this one is laid out horizontally in 8X2 tile strips)
; (note: this data is laid out row-wise)

areapal4X4  : .res $40  * 4 ; 8 X 8  X 4 (4 screens' worth of attribute table data)
; (note: this one is laid out in 4X4 tile blocks)
; (note: this data is laid out column-wise)

.segment "SAVEFILE"
save_file_0:
	sf_berries:   .res 22    ; bitset for 176 total strawberries
	sf_name:      .res 16    ; player's name (default is "Madeline")
	sf_times:     .res 3*8   ; times for each chapter (in frames. Up to 77 hours / 16.7 million frames)
	sf_totaltime: .res 4     ; total time spent in-game (up to 2 years / 4 billion frames)
	sf_deaths:    .res 2*8   ; total deaths (max. 65K)
	sf_cassettes: .res 1     ; cassettes (B-sides) unlocked (note: probably won't actually have B-sides !)
	sf_hearts:    .res 1     ; crystal hearts obtained
	sf_flags:     .res 1     ; miscellaneous flags

save_file_size = * - save_file_0

save_file_1:      .res save_file_size
save_file_2:      .res save_file_size
