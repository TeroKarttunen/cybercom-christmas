!to"cybercom.prg",cbm

; character memory addresses
frames06charmem = $4000
frames710charmem = $4800
frames1113charmem = $5000
frames1416charmem = $5800
frames1719charmem = $6000
sprite_0 = $4000 + $2800 ; sprite pointer A0
sprite_1 = $4000 + $2840 ; sprite pointer A1
sprite_2 = $4000 + $2880 ; sprite pointer A2

screenmem_bank1_1 = $7800
screenmem_bank1_1_sprite0_pointer = screenmem_bank1_1 + $03f8
screenmem_bank1_2 = $7c00
screenmem_bank1_2_sprite0_pointer = screenmem_bank1_2 + $03f8
color_memory = $d800
aux_color_memory = $c000

;memory locations
background_color = $d021
border_color = $d020
control_register_1 = $d011
control_register_2 = $d016
sprite_control_register = $d015
sprite_multicolor_register = $d01c
vic_bank_select = $dd00
memory_control_register = $d018
keyboard_buffer = $dc01
waiting_for_interrupt = $0052
current_note_address = $0092 ; 16-bit variable
sprite_0_x = $d000
sprite_0_y = $d001
sprite_1_x = $d002
sprite_1_y = $d003
sprite_2_x = $d004
sprite_2_y = $d005
sprite_shared_x = $d010
sprite_0_color = $d027
sprite_1_color = $d028
sprite_2_color = $d029
sprite_shared_color_0 = $d025
sprite_shared_color_1 = $d026


memory_copy_routines_address = $9000 ; $9000 - $9af0
short_frames_memory_area = $7000
music_code = $2800

;first_raster_line = 233
first_raster_line = 220
second_raster_line = 255
text_location_at_screenmem = $0400 + 23 * 40 + 3

* = $0801
; startup basic code
  !by $0b,$08,$01,$00,$9e,$32,$30,$36,$31,$00,$00,$00 ;= SYS 2061

* = $080d ;=2061
  ; set colors
  lda #$00 ; black
  sta border_color
  lda #$01 ; white
  sta background_color
  jsr copy_color_memory
  ;jsr prepare_screenmem
  ; initialize sid
  jsr initialize_music
  ; set up raster interrupts
  lda #%01111111
  sta $DC0D ; "Switch off" interrupts signals from CIA-1
  and $D011
  sta $D011 ; Clear most significant bit in VIC's raster register
  lda #first_raster_line
  ;lda #second_raster_line
  sta $D012 ; Set the raster line number where interrupt should occur
  lda #<Irq
  sta $0314
  lda #>Irq
  sta $0315 ; Set the interrupt vector to point to interrupt service routine below
  lda #%00000001
  sta $D01A ; Enable raster interrupt signals from VIC
  lda #$36
  sta $0001
  ; switch VIC-II to bank 1 ($4000-$7fff)
  lda vic_bank_select
  and #$fe ; clear bit 0
  ora #$02 ; set bit 1
  sta vic_bank_select ; select vic bank 1: $4000-$7fff
  
  jsr sprite_init
  
  main_loop:
  jsr copy_frame_0
  ; select frames06charmem and screenmem_bank1_1
  lda #$e0 ; %11100000
  sta memory_control_register
  lda #%00010000
  sta control_register_1
  jsr press_key
  lda #%00010001
  sta control_register_1
  jsr press_key
  jsr copy_frame_1
  ; select frames06charmem and screenmem_bank1_2
  lda #$f0 ; %11110000
  sta memory_control_register  
  jsr press_key
  lda #%00010010
  sta control_register_1
  jsr press_key
  jsr copy_frame_2
  ; select frames06charmem and screenmem_bank1_1
  lda #$e0 ; %11100000
  sta memory_control_register
  jsr press_key
  lda #%00010011
  sta control_register_1
  jsr press_key
  jsr copy_frame_3
  ; select frames06charmem and screenmem_bank1_2
  lda #$f0 ; %11110000
  sta memory_control_register  
  jsr press_key
  lda #%00010100
  sta control_register_1
  jsr press_key
  jsr copy_frame_4 
  ; select frames06charmem and screenmem_bank1_1
  lda #$e0 ; %11100000
  sta memory_control_register
  jsr press_key
  lda #%00010101
  sta control_register_1
  jsr press_key
  jsr copy_frame_5
  ; select frames06charmem and screenmem_bank1_2
  lda #$f0 ; %11110000
  sta memory_control_register  
  jsr press_key
  lda #%00010110
  sta control_register_1
  jsr press_key
  jsr copy_frame_6 
  ; select frames06charmem and screenmem_bank1_1
  lda #$e0 ; %11100000
  sta memory_control_register
  jsr press_key
  lda #%00010111
  sta control_register_1
  jsr press_key
  ;; line shift
  jsr copy_frame_7
  ; select frames710charmem and screenmem_bank1_2
  lda #$f2 ; %11110010
  sta memory_control_register  
  lda #%00010000
  sta control_register_1
  jsr press_key
  lda #%00010001
  sta control_register_1
  jsr press_key
  jsr copy_frame_8
  ; select frames710charmem and screenmem_bank1_1
  lda #$e2 ; %11100010
  sta memory_control_register  
  jsr press_key
  lda #%00010010
  sta control_register_1
  jsr press_key
  jsr copy_frame_9
  ; select frames710charmem and screenmem_bank1_2
  lda #$f2 ; %11110010
  sta memory_control_register  
  jsr press_key
  lda #%00010011
  sta control_register_1
  jsr press_key
  jsr copy_frame_10
  ; select frames710charmem and screenmem_bank1_1
  lda #$e2 ; %11100010
  sta memory_control_register  
  jsr press_key
  lda #%00010100
  sta control_register_1
  jsr press_key
  jsr copy_frame_11
  ; select frames1113charmem and screenmem_bank1_2
  lda #$f4 ; %11110100
  sta memory_control_register  
  jsr press_key
  lda #%00010101
  sta control_register_1
  jsr press_key
  jsr copy_frame_12
  ; select frames1113charmem and screenmem_bank1_1
  lda #$e4 ; %11100100
  sta memory_control_register  
  jsr press_key
  lda #%00010110
  sta control_register_1
  jsr press_key
  jsr copy_frame_13
  ; select frames1113charmem and screenmem_bank1_2
  lda #$f4 ; %11110100
  sta memory_control_register  
  jsr press_key
  lda #%00010111
  sta control_register_1
  jsr press_key
  ;; line shift
  jsr copy_frame_14
  ; select frames1416charmem and screenmem_bank1_1
  lda #$e6 ; %11100110
  sta memory_control_register  
  lda #%00010000
  sta control_register_1
  jsr press_key  
  lda #%00010001
  sta control_register_1
  jsr press_key
  jsr copy_frame_15
  ; select frames1416charmem and screenmem_bank1_2
  lda #$f6 ; %11110110
  sta memory_control_register  
  jsr press_key
  lda #%00010010
  sta control_register_1
  jsr press_key
  jsr copy_frame_16  
  ; select frames1416charmem and screenmem_bank1_1
  lda #$e6 ; %11100110
  sta memory_control_register  
  jsr press_key  
  lda #%00010011
  sta control_register_1
  jsr press_key
  jsr copy_frame_17
  ; select frames1719charmem and screenmem_bank1_2
  lda #$f8 ; %11111000
  sta memory_control_register  
  jsr press_key
  lda #%00010100
  sta control_register_1
  jsr press_key
  jsr copy_frame_18  
  ; select frames1719charmem and screenmem_bank1_1
  lda #$e8 ; %11101000
  sta memory_control_register  
  jsr press_key
  lda #%00010101
  sta control_register_1
  jsr press_key
  jsr copy_frame_19
  ; select frames1719charmem and screenmem_bank1_2
  lda #$f8 ; %11111000
  sta memory_control_register  
  jsr press_key
  lda #%00010110
  sta control_register_1
  jsr press_key
  jmp main_loop

Irq:
  ;lda #7
  ;sta border_color ; Turn screen frame yellow
  lda waiting_for_interrupt
  cmp #$02
  beq first_interrupt
  ;jsr load_state
  lda #$0
  sta waiting_for_interrupt
  lda #$01 ;white
  sta background_color
  jsr music_interrupt
  lda #first_raster_line
  sta $D012 ; Set the raster line number where interrupt should occur
  asl $D019 ; "Acknowledge" the interrupt by clearing the VIC's interrupt flag.
  jmp $EA31 ; Jump into KERNAL's standard interrupt service routine to handle keyboard scan, cursor display etc.

first_interrupt:
  ;jsr save_state
  ;jsr save_state
  ;jsr show_text
  lda #$00 ;black
  sta background_color
  jsr move_sprites
  lda #second_raster_line
  sta $D012 ; Set the raster line number where interrupt should occur
  lda #$1
  sta waiting_for_interrupt
  asl $D019 ; "Acknowledge" the interrupt by clearing the VIC's interrupt flag.
  jmp $EA31 ; Jump into KERNAL's standard interrupt service routine to handle keyboard scan, cursor display etc.
  
  
;press_key:
       ;rts
       lda keyboard_buffer
       cmp #$ff
       beq press_key
-      lda keyboard_buffer
       cmp #$ff
       bne -
       rts

press_key:  
       ;lda #$00 ; black
       ;sta border_color 
       lda waiting_for_interrupt
       cmp #$00
       bne press_key
       lda #$02
       sta waiting_for_interrupt
       rts

short_frame_0:
!by $9,$f6,$2,$3,$4,$5,$6,$7,$8,$0,$0,$0,$0,$0,$0,$0,$a,$b,$c,$d,$e,$f,$10,$11,$12,$0,$0,$0,$0,$0,$0,$0,$0,$0,$13,$14,$15,$16,$17,$18,$19,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
short_frame_1:
!by $1a,$1b,$1c,$1d,$1e,$1f,$20,$21,$22,$23,$0,$0,$0,$0,$0,$0,$24,$25,$26,$27,$28,$29,$2a,$2b,$2c,$0,$0,$0,$0,$0,$0,$0,$0,$0,$2d,$2e,$2f,$30,$31,$32,$33,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
short_frame_2:
!by $34,$35,$36,$37,$38,$39,$3a,$3b,$3c,$3d,$3e,$0,$0,$0,$0,$0,$3f,$40,$41,$42,$43,$44,$45,$46,$47,$48,$0,$0,$0,$0,$0,$0,$0,$0,$49,$4a,$4b,$4c,$4d,$4e,$4f,$50,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$51,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
short_frame_3:
!by $52,$53,$54,$55,$56,$57,$58,$59,$5a,$5b,$5c,$0,$0,$0,$0,$0,$5d,$5e,$5f,$60,$61,$62,$63,$64,$65,$66,$0,$0,$0,$0,$0,$0,$0,$0,$0,$67,$68,$69,$6a,$6b,$6c,$6d,$6e,$0,$0,$0,$0,$0,$0,$0,$0,$6f,$70,$71,$72,$73,$74,$75,$76,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
short_frame_4:
!by $77,$78,$79,$7a,$7b,$7c,$7d,$7e,$7f,$80,$81,$82,$0,$0,$0,$0,$83,$84,$85,$86,$87,$88,$89,$8a,$8b,$8c,$8d,$0,$0,$0,$0,$0,$0,$0,$0,$8e,$8f,$90,$91,$92,$93,$94,$95,$0,$0,$0,$0,$0,$0,$0,$0,$96,$97,$98,$99,$9a,$9b,$9c,$9d,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
short_frame_5:
!by $9e,$9f,$a0,$a1,$a2,$a3,$a4,$a5,$a6,$a7,$a8,$a9,$0,$0,$0,$0,$aa,$ab,$ac,$ad,$ae,$af,$b0,$b1,$b2,$b3,$b4,$b5,$0,$0,$0,$0,$0,$0,$0,$b6,$b7,$b8,$b9,$ba,$bb,$bc,$bd,$be,$0,$0,$0,$0,$0,$0,$0,$bf,$c0,$c1,$c2,$c3,$c4,$c5,$c6,$c7,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
short_frame_6:
!by $c8,$c9,$ca,$cb,$cc,$cd,$ce,$cf,$d0,$d0,$d1,$d2,$d3,$0,$0,$0,$d4,$d5,$d6,$d7,$d8,$d9,$da,$db,$dc,$dd,$de,$df,$e0,$0,$0,$0,$e1,$e2,$e3,$e4,$e5,$e6,$e7,$e8,$e9,$ea,$eb,$ec,$0,$0,$0,$0,$0,$0,$0,$ed,$ee,$ef,$f0,$f1,$f2,$f3,$f4,$f5,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
short_frame_7:
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
!by $a,$f0,$2,$3,$4,$5,$6,$7,$8,$9,$0,$b,$c,$d,$0,$0,$e,$f,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$1a,$0,$0,$0,$1b,$1c,$1d,$1e,$1f,$20,$21,$22,$23,$24,$25,$26,$27,$0,$0,$0,$0,$0,$0,$28,$29,$2a,$2b,$2c,$2d,$2e,$2f,$30,$31,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
short_frame_8:
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
!by $32,$33,$34,$35,$36,$37,$32,$38,$39,$3a,$3b,$3c,$3d,$3e,$3f,$0,$40,$41,$42,$43,$44,$45,$46,$47,$48,$49,$4a,$4b,$4c,$4d,$0,$0,$4e,$4f,$50,$51,$52,$53,$54,$55,$56,$57,$58,$59,$5a,$0,$0,$0,$0,$0,$0,$5b,$5c,$5d,$5e,$5f,$60,$61,$62,$63,$64,$65,$0,$0,$0,$0,$0,$0,$66,$67,$68,$69,$6a,$6b,$6c,$6d,$6c,$6e,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
short_frame_9:
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
!by $6f,$70,$71,$72,$73,$74,$75,$76,$77,$78,$79,$0,$7a,$7b,$7c,$0,$7d,$7e,$7f,$80,$81,$82,$83,$84,$85,$86,$87,$88,$89,$8a,$8b,$0,$8c,$8d,$8e,$8f,$90,$91,$92,$93,$94,$95,$96,$97,$98,$99,$0,$0,$0,$0,$0,$0,$9a,$9b,$9c,$9d,$9e,$9f,$a0,$a1,$a2,$a3,$0,$0,$0,$0,$0,$0,$a4,$a5,$a6,$a7,$a8,$a9,$aa,$ab,$ac,$ad,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
short_frame_10:
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
!by $ae,$af,$b0,$72,$b1,$b2,$b3,$b4,$b2,$b5,$0,$b6,$b7,$b8,$b9,$ba,$bb,$bc,$bd,$be,$bf,$c0,$c1,$c2,$c3,$c4,$c5,$c6,$c7,$c8,$c9,$ca,$cb,$cc,$cd,$ce,$cf,$d0,$d1,$d2,$d3,$d4,$d5,$d6,$d7,$d8,$d9,$0,$0,$0,$0,$0,$da,$db,$dc,$dd,$de,$df,$e0,$e1,$e2,$e3,$e4,$0,$0,$0,$0,$0,$e5,$e6,$e7,$e8,$e9,$ea,$eb,$ec,$ed,$ee,$ef,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
short_frame_11:
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
!by $b,$c0,$2,$3,$4,$5,$6,$4,$7,$8,$9,$a,$0,$c,$d,$e,$f,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$1a,$1b,$1c,$1d,$1e,$1f,$20,$21,$22,$23,$24,$25,$26,$27,$28,$29,$2a,$2b,$2c,$2d,$0,$0,$0,$0,$0,$2e,$2f,$30,$31,$32,$33,$34,$35,$36,$37,$38,$0,$0,$0,$0,$0,$39,$3a,$3b,$3c,$3d,$3e,$3f,$40,$41,$42,$43,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
short_frame_12:
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$44,$45,$46,$47,$48,$49,$4a,$4b,$4c,$4d,$4e,$4f,$50,$51,$52,$53,$54,$55,$56,$57,$58,$59,$5a,$5b,$5c,$5d,$5e,$5f,$60,$61,$62,$63,$64,$65,$53,$0,$0,$0,$0,$66,$67,$68,$69,$6a,$6b,$6c,$6d,$6e,$6f,$70,$71,$0,$0,$0,$0,$72,$73,$74,$75,$76,$77,$78,$79,$7a,$7b,$7c,$7d,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
short_frame_13:
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$7e,$7f,$80,$81,$82,$83,$84,$85,$86,$87,$88,$89,$8a,$8b,$8c,$0,$8d,$8e,$8f,$90,$91,$92,$93,$94,$95,$96,$97,$98,$99,$9a,$9b,$9c,$9d,$9e,$0,$0,$0,$0,$9f,$a0,$a1,$a2,$a3,$a4,$a5,$a6,$a7,$a8,$a9,$aa,$0,$0,$0,$0,$ab,$ac,$ad,$ae,$af,$b0,$b1,$b2,$b3,$b4,$b5,$b6,$0,$0,$0,$0,$0,$b7,$b8,$b9,$ba,$40,$bb,$bc,$0,$bd,$be,$bf,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
short_frame_14:
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$c8,$2,$3,$4,$5,$6,$7,$8,$9,$a,$b,$c,$d,$e,$f,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$1a,$1b,$1c,$1d,$1e,$1f,$20,$21,$22,$0,$0,$0,$0,$0,$23,$24,$25,$26,$27,$28,$29,$2a,$2b,$2c,$2d,$0,$0,$0,$0,$2e,$2f,$30,$31,$32,$33,$34,$35,$36,$37,$38,$39,$0,$0,$0,$0,$0,$3a,$3b,$3c,$3d,$3e,$3f,$40,$41,$42,$43,$44,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
short_frame_15:
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$45,$46,$47,$48,$49,$4a,$4b,$4c,$4d,$4e,$4f,$50,$51,$52,$53,$0,$54,$55,$56,$57,$58,$59,$5a,$5b,$5c,$5d,$5e,$5f,$60,$61,$62,$63,$64,$0,$0,$0,$0,$0,$65,$66,$67,$68,$69,$6a,$63,$6b,$6c,$6d,$6e,$0,$0,$0,$0,$0,$6f,$70,$71,$72,$0,$73,$74,$75,$76,$77,$78,$0,$0,$0,$0,$0,$79,$7a,$7b,$7c,$7d,$7e,$7f,$80,$0,$81,$82,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
short_frame_16:
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$83,$84,$85,$86,$87,$88,$89,$8a,$8b,$8c,$8d,$8e,$8f,$90,$91,$92,$93,$94,$95,$96,$97,$98,$99,$9a,$9b,$9c,$9d,$9e,$9f,$a0,$a1,$10,$a2,$a3,$a4,$a5,$a3,$a6,$a7,$a8,$a9,$aa,$ab,$ac,$ad,$ae,$af,$b0,$b1,$0,$0,$0,$0,$0,$b2,$b3,$b4,$b5,$b6,$b7,$b8,$b9,$ba,$bb,$bc,$0,$0,$0,$0,$0,$bd,$be,$bf,$c0,$c1,$c2,$c3,$c4,$c5,$c6,$c7,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
short_frame_17:
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$d9,$2,$3,$4,$5,$6,$7,$8,$9,$a,$b,$c,$d,$e,$f,$0,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$1a,$1b,$1c,$1d,$1e,$0,$1f,$20,$21,$22,$23,$24,$25,$26,$27,$28,$29,$2a,$2b,$2c,$2d,$2e,$0,$0,$0,$0,$0,$2f,$30,$31,$32,$33,$34,$35,$13,$36,$37,$38,$0,$0,$0,$0,$0,$39,$3a,$3b,$3c,$3d,$3e,$3f,$40,$41,$42,$43,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
short_frame_18:
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$44,$45,$46,$47,$48,$49,$4a,$4b,$4c,$4d,$4e,$4f,$50,$51,$52,$53,$54,$0,$55,$56,$57,$58,$59,$5a,$5b,$5c,$5d,$5e,$5f,$60,$61,$62,$63,$64,$65,$66,$67,$68,$69,$6a,$6b,$6c,$6d,$6e,$6f,$70,$71,$72,$0,$0,$0,$0,$0,$73,$74,$75,$76,$77,$78,$79,$62,$7a,$7b,$7c,$0,$0,$0,$0,$0,$7d,$7e,$7f,$80,$81,$82,$83,$84,$85,$86,$87,$0,$0,$0,$0,$0,$0,$88,$89,$8a,$8b,$8c,$0,$8d,$8e,$8f,$90,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
short_frame_19:
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
!by $0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$91,$92,$93,$94,$95,$96,$97,$98,$99,$91,$92,$9a,$9b,$9c,$9d,$9e,$9f,$0,$a0,$a1,$a2,$a3,$a4,$a5,$a6,$a7,$0,$9f,$a8,$a9,$aa,$ab,$ac,$ad,$ae,$72,$af,$b0,$b1,$b2,$b3,$b4,$b5,$b6,$b7,$b8,$b9,$ba,$0,$0,$0,$0,$0,$bb,$bc,$bd,$be,$bf,$c0,$c1,$c2,$c3,$c4,$c5,$0,$0,$0,$0,$0,$c6,$c7,$c8,$c9,$ca,$5c,$cb,$cc,$cd,$ce,$cf,$0,$0,$0,$0,$0,$0,$d0,$d1,$d2,$d3,$d4,$d5,$d6,$d7,$d8,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0,$0
       
!source "memory_copy_routines.asm"
!source "color_memory.asm"
!source "frames0-6.asm"
!source "frames7-10.asm"   
!source "frames11-13.asm"   
!source "frames14-16.asm"
!source "frames17-19.asm"   
!source "music.asm"
!source "screenmem_banks.asm"
!source "sprites.asm"
