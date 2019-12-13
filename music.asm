* = music_code

sid = $d400 ; 54272 in decimal

music_interrupt:
  ldx note_length
  beq check_pause ; branch if note_length = 0
  dex
  stx note_length
  dex
  dex
  beq + ; note_length was 3 on entry
  rts
+ lda #32 
  sta sid+4 ; release note voice 1
  sta sid+4+7 ; release note voice 2
  sta sid+4+7+7 ; release note voice 3
  rts
check_pause:
  ldx pause
  beq load_note ; branch if pause = 0
  dex
  stx pause
  rts
load_note:
  lda music_pointer
  ;cmp #0
  ;bne +
  ;jsr copy_text1
;+ lda music_pointer
  ;cmp #9
  ;bne +
  ;jsr copy_text2
;+ lda music_pointer
  ;cmp #17
  ;bne +
  ;jsr copy_text5
;+ lda music_pointer
  ;cmp #26
  ;bne +
  ;jsr copy_text6
;+ lda music_pointer
  ;cmp #34
  ;bne +
  ;jsr copy_text3
;+ lda music_pointer
  ;cmp #44
  ;bne +
  ;jsr copy_text4
;+ lda music_pointer
  ;cmp #52
  ;bne +
  ;jsr copy_text1
;+ lda music_pointer
  ;cmp #62
  ;bne +
  ;jsr copy_text2
;+ lda music_pointer
  ;cmp #73
  ;bne +
  ;jsr copy_text1
;+ lda music_pointer
  ;cmp #83
  ;bne +
  ;jsr copy_text2
;+ lda music_pointer
  cmp #122
  beq reset_notes
;load_note2:
  clc
  adc #1
  sta music_pointer ; music pointer++
  ldy #$00
  lda (current_note_address),y ; low frequency, voice 1
  sta sid
  iny
  lda (current_note_address),y ; high frequency, voice 1
  sta sid+1
  iny
  lda (current_note_address),y ; low frequency, voice 2
  sta sid+7
  iny
  lda (current_note_address),y ; high frequency, voice 2
  sta sid+1+7
  iny
  lda (current_note_address),y ; low frequency, voice 3
  sta sid+7+7
  iny
  lda (current_note_address),y ; high frequency, voice 3
  sta sid+1+7+7
  iny
  lda (current_note_address),y ; length 
  sta note_length
  iny
  lda (current_note_address),y ; pause
  sta pause
  lda #33
  sta sid+4 ; play note voice 1
  sta sid+4+7; play note voice 2
  sta sid+4+7+7; play note voice 3
  ; increase current note address
  lda current_note_address
  clc
  adc #8 ; note length = 6 bytes
  sta current_note_address
  lda current_note_address+1
  adc #0
  sta current_note_address+1
  rts
reset_notes
  lda #$00
  sta music_pointer
  lda #<music_data
  sta current_note_address
  lda #>music_data
  sta current_note_address+1
  jmp load_note
  
initialize_music:
; clear sid registers
  lda #$00
  ldx #24
- sta sid,x
  dex
  bpl -
; set attack/decay
  lda #$09
  sta sid+5
  sta sid+5+7
  sta sid+5+7+7
; set sustain/release  
  lda #$a0
  sta sid+6
  sta sid+6+7
  sta sid+6+7+7
; set volume to maximum
  lda #15
  sta sid+24
  lda #<music_data
  sta current_note_address
  lda #>music_data
  sta current_note_address+1
  
  rts

music_pointer:
!by 0
note_length:
!by 0
pause:
!by 0

; tempo = 1 bar = 94
music_data:
!source "music_notes.asm"

c_2_h = 4
c_2_l = 48
f_2_h = 5
f_2_l = 152
g_2_h = 6
g_2_l = 71
a_2_bis_h = 6
a_2_bis_l = 167
b_2_bis_h = 7
b_2_bis_l = 119
c_3_h = 8
c_3_l = 97
d_3_h = 9
d_3_l = 104
e_3_bis_h = 9; alku
e_3_bis_l = 247
e_3_h = 10
e_3_l = 143
f_3_h = 11
f_3_l = 48
g_3_bis_h = 11
g_3_bis_l = 218
g_3_h = 12
g_3_l = 143
a_3_bis_h = 13
a_3_bis_l = 78
a_3_h = 14
a_3_l = 24
b_3_bis_h = 14
b_3_bis_l = 239
b_3_h = 15
b_3_l = 120

c_4_h = 16
c_4_l = 195
c_4_sharp_h = 17
c_4_sharp_l = 195
d_4_h = 18
d_4_l = 209
e_4_bis_h = 19; d sharp
e_4_bis_l = 239; d sharp
e_4_h = 21
e_4_l = 31
f_4_h = 22
f_4_l = 96
f_4_sharp_h = 23
f_4_sharp_l = 181
g_4_h = 25
g_4_l = 30
g_4_sharp_h = 26
g_4_sharp_l = 156
a_4_bis_h = 26
a_4_bis_l = 156
a_4_h = 28
a_4_l = 49
b_4_bis_h = 29
b_4_bis_l = 223
b_4_h = 31 
b_4_l = 165
c_5_h = 33
c_5_l = 135
d_5_bis_h = 35
d_5_bis_l = 134
d_5_h = 37
d_5_l = 162
e_5_bis_h = 39
e_5_bis_l = 223
e_5_h = 42
e_5_l = 62


whole = 8 * 9 +1
half = 4 * 9 +1
quarter_dot = 3 * 9 +1
quarter = 2 * 9 +1
eight = 1 * 9 +1

;!by d_4_l,d_4_h,quarter_dot,5 ; 1 bar = 4
;!by e_4_l,e_4_h,eight,5
;!by f_4_sharp_l,f_4_sharp_h,quarter,5
;!by e_4_l,e_4_h,quarter,5

;!by g_4_l,g_4_h,quarter,5 ; 1 bar = 5
;!by f_4_sharp_l,f_4_sharp_h,quarter,5
;!by e_4_l,e_4_h,eight,5
;!by c_4_sharp_l,c_4_sharp_h,eight,5
;!by d_4_l,d_4_h,quarter,5

;!by b_4_l,b_4_h,quarter,5
;!by a_4_l,a_4_h,quarter,5
;!by g_4_l,g_4_h,quarter,5
;!by f_4_sharp_l,f_4_sharp_h,quarter,5 ; 1 bar = 4

;!by e_4_l,e_4_h,quarter,5
;!by f_4_sharp_l,f_4_sharp_h,eight,5
;!by d_4_l,d_4_h,eight,5
;!by a_4_l,a_4_h,half,5 ; 1 bar = 4
