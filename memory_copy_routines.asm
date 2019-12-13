copy_color_memory:
  ldx #125
- lda aux_color_memory,x
  sta color_memory,x
  lda aux_color_memory+125,x
  sta color_memory+125,x  
  lda aux_color_memory+250,x
  sta color_memory+250,x  
  lda aux_color_memory+375,x
  sta color_memory+375,x  
  lda aux_color_memory+500,x
  sta color_memory+500,x  
  lda aux_color_memory+625,x
  sta color_memory+625,x  
  lda aux_color_memory+750,x
  sta color_memory+750,x  
  lda aux_color_memory+875,x
  sta color_memory+875,x  
  dex
  bpl -
  rts

copy_frame_0:
      ldx #16-1
-     lda short_frame_0,x
      sta screenmem_bank1_1 + 40 * (1-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (1-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (11-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (11-1) + 21-1,x
      lda short_frame_0 + (16*1),x
      sta screenmem_bank1_1 + 40 * (2-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (2-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (12-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (12-1) + 21-1,x
      lda short_frame_0 + (16*2),x
      sta screenmem_bank1_1 + 40 * (3-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (3-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (13-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (13-1) + 21-1,x
      lda short_frame_0 + (16*3),x
      sta screenmem_bank1_1 + 40 * (4-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (4-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (14-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (14-1) + 21-1,x
      lda short_frame_0 + (16*4),x
      sta screenmem_bank1_1 + 40 * (5-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (5-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (15-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (15-1) + 21-1,x
      lda short_frame_0 + (16*5),x
      sta screenmem_bank1_1 + 40 * (6-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (6-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (16-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (16-1) + 21-1,x
      lda short_frame_0 + (16*6),x
      sta screenmem_bank1_1 + 40 * (7-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (7-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (17-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (17-1) + 21-1,x
      dex 
      bpl -      
      ldx #16-1
-     lda short_frame_0 + (16*7),x
      sta screenmem_bank1_1 + 40 * (8-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (8-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (18-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (18-1) + 21-1,x
      lda short_frame_0 + (16*8),x
      sta screenmem_bank1_1 + 40 * (9-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (9-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (19-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (19-1) + 21-1,x
      lda short_frame_0 + (16*9),x
      sta screenmem_bank1_1 + 40 * (10-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (10-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (20-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (20-1) + 21-1,x
      dex 
      bpl -
      rts

copy_frame_1:
      ldx #16-1
-     lda short_frame_1,x
      sta screenmem_bank1_2 + 40 * (1-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (1-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (11-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (11-1) + 21-1,x
      lda short_frame_1 + (16*1),x
      sta screenmem_bank1_2 + 40 * (2-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (2-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (12-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (12-1) + 21-1,x
      lda short_frame_1 + (16*2),x
      sta screenmem_bank1_2 + 40 * (3-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (3-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (13-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (13-1) + 21-1,x
      lda short_frame_1 + (16*3),x
      sta screenmem_bank1_2 + 40 * (4-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (4-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (14-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (14-1) + 21-1,x
      lda short_frame_1 + (16*4),x
      sta screenmem_bank1_2 + 40 * (5-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (5-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (15-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (15-1) + 21-1,x
      lda short_frame_1 + (16*5),x
      sta screenmem_bank1_2 + 40 * (6-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (6-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (16-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (16-1) + 21-1,x
      lda short_frame_1 + (16*6),x
      sta screenmem_bank1_2 + 40 * (7-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (7-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (17-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (17-1) + 21-1,x
      dex 
      bpl -      
      ldx #16-1
-     lda short_frame_1 + (16*7),x
      sta screenmem_bank1_2 + 40 * (8-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (8-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (18-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (18-1) + 21-1,x
      lda short_frame_1 + (16*8),x
      sta screenmem_bank1_2 + 40 * (9-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (9-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (19-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (19-1) + 21-1,x
      lda short_frame_1 + (16*9),x
      sta screenmem_bank1_2 + 40 * (10-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (10-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (20-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (20-1) + 21-1,x
      dex 
      bpl -
      rts      
      
copy_frame_2:
      ldx #16-1
-     lda short_frame_2,x
      sta screenmem_bank1_1 + 40 * (1-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (1-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (11-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (11-1) + 21-1,x
      lda short_frame_2 + (16*1),x
      sta screenmem_bank1_1 + 40 * (2-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (2-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (12-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (12-1) + 21-1,x
      lda short_frame_2 + (16*2),x
      sta screenmem_bank1_1 + 40 * (3-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (3-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (13-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (13-1) + 21-1,x
      lda short_frame_2 + (16*3),x
      sta screenmem_bank1_1 + 40 * (4-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (4-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (14-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (14-1) + 21-1,x
      lda short_frame_2 + (16*4),x
      sta screenmem_bank1_1 + 40 * (5-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (5-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (15-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (15-1) + 21-1,x
      lda short_frame_2 + (16*5),x
      sta screenmem_bank1_1 + 40 * (6-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (6-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (16-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (16-1) + 21-1,x
      lda short_frame_2 + (16*6),x
      sta screenmem_bank1_1 + 40 * (7-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (7-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (17-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (17-1) + 21-1,x
      dex 
      bpl -      
      ldx #16-1
-     lda short_frame_2 + (16*7),x
      sta screenmem_bank1_1 + 40 * (8-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (8-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (18-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (18-1) + 21-1,x
      lda short_frame_2 + (16*8),x
      sta screenmem_bank1_1 + 40 * (9-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (9-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (19-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (19-1) + 21-1,x
      lda short_frame_2 + (16*9),x
      sta screenmem_bank1_1 + 40 * (10-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (10-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (20-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (20-1) + 21-1,x
      dex 
      bpl -
      rts

copy_frame_3:
      ldx #16-1
-     lda short_frame_3,x
      sta screenmem_bank1_2 + 40 * (1-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (1-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (11-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (11-1) + 21-1,x
      lda short_frame_3 + (16*1),x
      sta screenmem_bank1_2 + 40 * (2-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (2-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (12-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (12-1) + 21-1,x
      lda short_frame_3 + (16*2),x
      sta screenmem_bank1_2 + 40 * (3-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (3-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (13-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (13-1) + 21-1,x
      lda short_frame_3 + (16*3),x
      sta screenmem_bank1_2 + 40 * (4-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (4-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (14-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (14-1) + 21-1,x
      lda short_frame_3 + (16*4),x
      sta screenmem_bank1_2 + 40 * (5-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (5-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (15-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (15-1) + 21-1,x
      lda short_frame_3 + (16*5),x
      sta screenmem_bank1_2 + 40 * (6-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (6-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (16-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (16-1) + 21-1,x
      lda short_frame_3 + (16*6),x
      sta screenmem_bank1_2 + 40 * (7-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (7-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (17-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (17-1) + 21-1,x
      dex 
      bpl -      
      ldx #16-1
-     lda short_frame_3 + (16*7),x
      sta screenmem_bank1_2 + 40 * (8-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (8-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (18-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (18-1) + 21-1,x
      lda short_frame_3 + (16*8),x
      sta screenmem_bank1_2 + 40 * (9-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (9-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (19-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (19-1) + 21-1,x
      lda short_frame_3 + (16*9),x
      sta screenmem_bank1_2 + 40 * (10-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (10-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (20-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (20-1) + 21-1,x
      dex 
      bpl -
      rts      
      
copy_frame_4:
      ldx #16-1
-     lda short_frame_4,x
      sta screenmem_bank1_1 + 40 * (1-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (1-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (11-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (11-1) + 21-1,x
      lda short_frame_4 + (16*1),x
      sta screenmem_bank1_1 + 40 * (2-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (2-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (12-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (12-1) + 21-1,x
      lda short_frame_4 + (16*2),x
      sta screenmem_bank1_1 + 40 * (3-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (3-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (13-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (13-1) + 21-1,x
      lda short_frame_4 + (16*3),x
      sta screenmem_bank1_1 + 40 * (4-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (4-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (14-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (14-1) + 21-1,x
      lda short_frame_4 + (16*4),x
      sta screenmem_bank1_1 + 40 * (5-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (5-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (15-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (15-1) + 21-1,x
      lda short_frame_4 + (16*5),x
      sta screenmem_bank1_1 + 40 * (6-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (6-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (16-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (16-1) + 21-1,x
      lda short_frame_4 + (16*6),x
      sta screenmem_bank1_1 + 40 * (7-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (7-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (17-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (17-1) + 21-1,x
      dex 
      bpl -      
      ldx #16-1
-     lda short_frame_4 + (16*7),x
      sta screenmem_bank1_1 + 40 * (8-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (8-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (18-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (18-1) + 21-1,x
      lda short_frame_4 + (16*8),x
      sta screenmem_bank1_1 + 40 * (9-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (9-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (19-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (19-1) + 21-1,x
      lda short_frame_4 + (16*9),x
      sta screenmem_bank1_1 + 40 * (10-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (10-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (20-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (20-1) + 21-1,x
      dex 
      bpl -
      rts

copy_frame_5:
      ldx #16-1
-     lda short_frame_5,x
      sta screenmem_bank1_2 + 40 * (1-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (1-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (11-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (11-1) + 21-1,x
      lda short_frame_5 + (16*1),x
      sta screenmem_bank1_2 + 40 * (2-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (2-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (12-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (12-1) + 21-1,x
      lda short_frame_5 + (16*2),x
      sta screenmem_bank1_2 + 40 * (3-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (3-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (13-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (13-1) + 21-1,x
      lda short_frame_5 + (16*3),x
      sta screenmem_bank1_2 + 40 * (4-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (4-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (14-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (14-1) + 21-1,x
      lda short_frame_5 + (16*4),x
      sta screenmem_bank1_2 + 40 * (5-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (5-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (15-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (15-1) + 21-1,x
      lda short_frame_5 + (16*5),x
      sta screenmem_bank1_2 + 40 * (6-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (6-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (16-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (16-1) + 21-1,x
      lda short_frame_5 + (16*6),x
      sta screenmem_bank1_2 + 40 * (7-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (7-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (17-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (17-1) + 21-1,x
      dex 
      bpl -      
      ldx #16-1
-     lda short_frame_5 + (16*7),x
      sta screenmem_bank1_2 + 40 * (8-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (8-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (18-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (18-1) + 21-1,x
      lda short_frame_5 + (16*8),x
      sta screenmem_bank1_2 + 40 * (9-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (9-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (19-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (19-1) + 21-1,x
      lda short_frame_5 + (16*9),x
      sta screenmem_bank1_2 + 40 * (10-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (10-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (20-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (20-1) + 21-1,x
      dex 
      bpl -
      rts      
      
copy_frame_6:
      ldx #16-1
-     lda short_frame_6,x
      sta screenmem_bank1_1 + 40 * (1-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (1-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (11-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (11-1) + 21-1,x
      lda short_frame_6 + (16*1),x
      sta screenmem_bank1_1 + 40 * (2-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (2-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (12-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (12-1) + 21-1,x
      lda short_frame_6 + (16*2),x
      sta screenmem_bank1_1 + 40 * (3-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (3-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (13-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (13-1) + 21-1,x
      lda short_frame_6 + (16*3),x
      sta screenmem_bank1_1 + 40 * (4-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (4-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (14-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (14-1) + 21-1,x
      lda short_frame_6 + (16*4),x
      sta screenmem_bank1_1 + 40 * (5-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (5-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (15-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (15-1) + 21-1,x
      lda short_frame_6 + (16*5),x
      sta screenmem_bank1_1 + 40 * (6-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (6-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (16-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (16-1) + 21-1,x
      lda short_frame_6 + (16*6),x
      sta screenmem_bank1_1 + 40 * (7-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (7-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (17-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (17-1) + 21-1,x
      dex 
      bpl -      
      ldx #16-1
-     lda short_frame_6 + (16*7),x
      sta screenmem_bank1_1 + 40 * (8-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (8-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (18-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (18-1) + 21-1,x
      lda short_frame_6 + (16*8),x
      sta screenmem_bank1_1 + 40 * (9-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (9-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (19-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (19-1) + 21-1,x
      lda short_frame_6 + (16*9),x
      sta screenmem_bank1_1 + 40 * (10-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (10-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (20-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (20-1) + 21-1,x
      dex 
      bpl -
      rts

copy_frame_7:
      ldx #16-1
-     lda short_frame_7,x
      sta screenmem_bank1_2 + 40 * (1-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (1-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (11-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (11-1) + 21-1,x
      lda short_frame_7 + (16*1),x
      sta screenmem_bank1_2 + 40 * (2-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (2-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (12-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (12-1) + 21-1,x
      lda short_frame_7 + (16*2),x
      sta screenmem_bank1_2 + 40 * (3-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (3-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (13-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (13-1) + 21-1,x
      lda short_frame_7 + (16*3),x
      sta screenmem_bank1_2 + 40 * (4-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (4-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (14-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (14-1) + 21-1,x
      lda short_frame_7 + (16*4),x
      sta screenmem_bank1_2 + 40 * (5-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (5-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (15-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (15-1) + 21-1,x
      lda short_frame_7 + (16*5),x
      sta screenmem_bank1_2 + 40 * (6-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (6-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (16-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (16-1) + 21-1,x
      lda short_frame_7 + (16*6),x
      sta screenmem_bank1_2 + 40 * (7-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (7-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (17-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (17-1) + 21-1,x
      dex 
      bpl -      
      ldx #16-1
-     lda short_frame_7 + (16*7),x
      sta screenmem_bank1_2 + 40 * (8-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (8-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (18-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (18-1) + 21-1,x
      lda short_frame_7 + (16*8),x
      sta screenmem_bank1_2 + 40 * (9-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (9-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (19-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (19-1) + 21-1,x
      lda short_frame_7 + (16*9),x
      sta screenmem_bank1_2 + 40 * (10-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (10-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (20-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (20-1) + 21-1,x
      dex 
      bpl -
      rts      
      
copy_frame_8:
      ldx #16-1
-     lda short_frame_8,x
      sta screenmem_bank1_1 + 40 * (1-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (1-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (11-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (11-1) + 21-1,x
      lda short_frame_8 + (16*1),x
      sta screenmem_bank1_1 + 40 * (2-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (2-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (12-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (12-1) + 21-1,x
      lda short_frame_8 + (16*2),x
      sta screenmem_bank1_1 + 40 * (3-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (3-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (13-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (13-1) + 21-1,x
      lda short_frame_8 + (16*3),x
      sta screenmem_bank1_1 + 40 * (4-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (4-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (14-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (14-1) + 21-1,x
      lda short_frame_8 + (16*4),x
      sta screenmem_bank1_1 + 40 * (5-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (5-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (15-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (15-1) + 21-1,x
      lda short_frame_8 + (16*5),x
      sta screenmem_bank1_1 + 40 * (6-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (6-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (16-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (16-1) + 21-1,x
      lda short_frame_8 + (16*6),x
      sta screenmem_bank1_1 + 40 * (7-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (7-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (17-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (17-1) + 21-1,x
      dex 
      bpl -      
      ldx #16-1
-     lda short_frame_8 + (16*7),x
      sta screenmem_bank1_1 + 40 * (8-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (8-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (18-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (18-1) + 21-1,x
      lda short_frame_8 + (16*8),x
      sta screenmem_bank1_1 + 40 * (9-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (9-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (19-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (19-1) + 21-1,x
      lda short_frame_8 + (16*9),x
      sta screenmem_bank1_1 + 40 * (10-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (10-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (20-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (20-1) + 21-1,x
      dex 
      bpl -
      rts

copy_frame_9:
      ldx #16-1
-     lda short_frame_9,x
      sta screenmem_bank1_2 + 40 * (1-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (1-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (11-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (11-1) + 21-1,x
      lda short_frame_9 + (16*1),x
      sta screenmem_bank1_2 + 40 * (2-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (2-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (12-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (12-1) + 21-1,x
      lda short_frame_9 + (16*2),x
      sta screenmem_bank1_2 + 40 * (3-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (3-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (13-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (13-1) + 21-1,x
      lda short_frame_9 + (16*3),x
      sta screenmem_bank1_2 + 40 * (4-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (4-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (14-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (14-1) + 21-1,x
      lda short_frame_9 + (16*4),x
      sta screenmem_bank1_2 + 40 * (5-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (5-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (15-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (15-1) + 21-1,x
      lda short_frame_9 + (16*5),x
      sta screenmem_bank1_2 + 40 * (6-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (6-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (16-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (16-1) + 21-1,x
      lda short_frame_9 + (16*6),x
      sta screenmem_bank1_2 + 40 * (7-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (7-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (17-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (17-1) + 21-1,x
      dex 
      bpl -      
      ldx #16-1
-     lda short_frame_9 + (16*7),x
      sta screenmem_bank1_2 + 40 * (8-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (8-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (18-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (18-1) + 21-1,x
      lda short_frame_9 + (16*8),x
      sta screenmem_bank1_2 + 40 * (9-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (9-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (19-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (19-1) + 21-1,x
      lda short_frame_9 + (16*9),x
      sta screenmem_bank1_2 + 40 * (10-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (10-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (20-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (20-1) + 21-1,x
      dex 
      bpl -
      rts      

      
copy_frame_10:
      ldx #16-1
-     lda short_frame_10,x
      sta screenmem_bank1_1 + 40 * (1-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (1-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (11-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (11-1) + 21-1,x
      lda short_frame_10 + (16*1),x
      sta screenmem_bank1_1 + 40 * (2-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (2-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (12-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (12-1) + 21-1,x
      lda short_frame_10 + (16*2),x
      sta screenmem_bank1_1 + 40 * (3-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (3-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (13-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (13-1) + 21-1,x
      lda short_frame_10 + (16*3),x
      sta screenmem_bank1_1 + 40 * (4-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (4-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (14-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (14-1) + 21-1,x
      lda short_frame_10 + (16*4),x
      sta screenmem_bank1_1 + 40 * (5-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (5-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (15-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (15-1) + 21-1,x
      lda short_frame_10 + (16*5),x
      sta screenmem_bank1_1 + 40 * (6-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (6-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (16-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (16-1) + 21-1,x
      lda short_frame_10 + (16*6),x
      sta screenmem_bank1_1 + 40 * (7-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (7-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (17-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (17-1) + 21-1,x
      dex 
      bpl -      
      ldx #16-1
-     lda short_frame_10 + (16*7),x
      sta screenmem_bank1_1 + 40 * (8-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (8-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (18-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (18-1) + 21-1,x
      lda short_frame_10 + (16*8),x
      sta screenmem_bank1_1 + 40 * (9-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (9-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (19-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (19-1) + 21-1,x
      lda short_frame_10 + (16*9),x
      sta screenmem_bank1_1 + 40 * (10-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (10-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (20-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (20-1) + 21-1,x
      dex 
      bpl -
      rts

copy_frame_11:
      ldx #16-1
-     lda short_frame_11,x
      sta screenmem_bank1_2 + 40 * (1-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (1-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (11-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (11-1) + 21-1,x
      lda short_frame_11 + (16*1),x
      sta screenmem_bank1_2 + 40 * (2-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (2-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (12-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (12-1) + 21-1,x
      lda short_frame_11 + (16*2),x
      sta screenmem_bank1_2 + 40 * (3-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (3-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (13-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (13-1) + 21-1,x
      lda short_frame_11 + (16*3),x
      sta screenmem_bank1_2 + 40 * (4-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (4-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (14-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (14-1) + 21-1,x
      lda short_frame_11 + (16*4),x
      sta screenmem_bank1_2 + 40 * (5-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (5-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (15-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (15-1) + 21-1,x
      lda short_frame_11 + (16*5),x
      sta screenmem_bank1_2 + 40 * (6-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (6-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (16-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (16-1) + 21-1,x
      lda short_frame_11 + (16*6),x
      sta screenmem_bank1_2 + 40 * (7-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (7-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (17-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (17-1) + 21-1,x
      dex 
      bpl -      
      ldx #16-1
-     lda short_frame_11 + (16*7),x
      sta screenmem_bank1_2 + 40 * (8-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (8-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (18-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (18-1) + 21-1,x
      lda short_frame_11 + (16*8),x
      sta screenmem_bank1_2 + 40 * (9-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (9-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (19-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (19-1) + 21-1,x
      lda short_frame_11 + (16*9),x
      sta screenmem_bank1_2 + 40 * (10-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (10-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (20-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (20-1) + 21-1,x
      dex 
      bpl -
      rts      

      
copy_frame_12:
      ldx #16-1
-     lda short_frame_12,x
      sta screenmem_bank1_1 + 40 * (1-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (1-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (11-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (11-1) + 21-1,x
      lda short_frame_12 + (16*1),x
      sta screenmem_bank1_1 + 40 * (2-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (2-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (12-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (12-1) + 21-1,x
      lda short_frame_12 + (16*2),x
      sta screenmem_bank1_1 + 40 * (3-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (3-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (13-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (13-1) + 21-1,x
      lda short_frame_12 + (16*3),x
      sta screenmem_bank1_1 + 40 * (4-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (4-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (14-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (14-1) + 21-1,x
      lda short_frame_12 + (16*4),x
      sta screenmem_bank1_1 + 40 * (5-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (5-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (15-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (15-1) + 21-1,x
      lda short_frame_12 + (16*5),x
      sta screenmem_bank1_1 + 40 * (6-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (6-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (16-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (16-1) + 21-1,x
      lda short_frame_12 + (16*6),x
      sta screenmem_bank1_1 + 40 * (7-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (7-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (17-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (17-1) + 21-1,x
      dex 
      bpl -      
      ldx #16-1
-     lda short_frame_12 + (16*7),x
      sta screenmem_bank1_1 + 40 * (8-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (8-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (18-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (18-1) + 21-1,x
      lda short_frame_12 + (16*8),x
      sta screenmem_bank1_1 + 40 * (9-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (9-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (19-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (19-1) + 21-1,x
      lda short_frame_12 + (16*9),x
      sta screenmem_bank1_1 + 40 * (10-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (10-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (20-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (20-1) + 21-1,x
      dex 
      bpl -
      rts

copy_frame_13:
      ldx #16-1
-     lda short_frame_13,x
      sta screenmem_bank1_2 + 40 * (1-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (1-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (11-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (11-1) + 21-1,x
      lda short_frame_13 + (16*1),x
      sta screenmem_bank1_2 + 40 * (2-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (2-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (12-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (12-1) + 21-1,x
      lda short_frame_13 + (16*2),x
      sta screenmem_bank1_2 + 40 * (3-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (3-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (13-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (13-1) + 21-1,x
      lda short_frame_13 + (16*3),x
      sta screenmem_bank1_2 + 40 * (4-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (4-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (14-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (14-1) + 21-1,x
      lda short_frame_13 + (16*4),x
      sta screenmem_bank1_2 + 40 * (5-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (5-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (15-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (15-1) + 21-1,x
      lda short_frame_13 + (16*5),x
      sta screenmem_bank1_2 + 40 * (6-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (6-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (16-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (16-1) + 21-1,x
      lda short_frame_13 + (16*6),x
      sta screenmem_bank1_2 + 40 * (7-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (7-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (17-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (17-1) + 21-1,x
      dex 
      bpl -      
      ldx #16-1
-     lda short_frame_13 + (16*7),x
      sta screenmem_bank1_2 + 40 * (8-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (8-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (18-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (18-1) + 21-1,x
      lda short_frame_13 + (16*8),x
      sta screenmem_bank1_2 + 40 * (9-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (9-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (19-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (19-1) + 21-1,x
      lda short_frame_13 + (16*9),x
      sta screenmem_bank1_2 + 40 * (10-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (10-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (20-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (20-1) + 21-1,x
      dex 
      bpl -
      rts      

      
copy_frame_14:
      ldx #16-1
-     lda short_frame_14,x
      sta screenmem_bank1_1 + 40 * (1-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (1-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (11-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (11-1) + 21-1,x
      lda short_frame_14 + (16*1),x
      sta screenmem_bank1_1 + 40 * (2-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (2-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (12-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (12-1) + 21-1,x
      lda short_frame_14 + (16*2),x
      sta screenmem_bank1_1 + 40 * (3-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (3-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (13-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (13-1) + 21-1,x
      lda short_frame_14 + (16*3),x
      sta screenmem_bank1_1 + 40 * (4-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (4-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (14-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (14-1) + 21-1,x
      lda short_frame_14 + (16*4),x
      sta screenmem_bank1_1 + 40 * (5-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (5-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (15-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (15-1) + 21-1,x
      lda short_frame_14 + (16*5),x
      sta screenmem_bank1_1 + 40 * (6-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (6-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (16-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (16-1) + 21-1,x
      lda short_frame_14 + (16*6),x
      sta screenmem_bank1_1 + 40 * (7-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (7-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (17-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (17-1) + 21-1,x
      dex 
      bpl -      
      ldx #16-1
-     lda short_frame_14 + (16*7),x
      sta screenmem_bank1_1 + 40 * (8-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (8-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (18-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (18-1) + 21-1,x
      lda short_frame_14 + (16*8),x
      sta screenmem_bank1_1 + 40 * (9-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (9-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (19-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (19-1) + 21-1,x
      lda short_frame_14 + (16*9),x
      sta screenmem_bank1_1 + 40 * (10-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (10-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (20-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (20-1) + 21-1,x
      dex 
      bpl -
      rts

copy_frame_15:
      ldx #16-1
-     lda short_frame_15,x
      sta screenmem_bank1_2 + 40 * (1-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (1-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (11-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (11-1) + 21-1,x
      lda short_frame_15 + (16*1),x
      sta screenmem_bank1_2 + 40 * (2-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (2-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (12-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (12-1) + 21-1,x
      lda short_frame_15 + (16*2),x
      sta screenmem_bank1_2 + 40 * (3-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (3-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (13-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (13-1) + 21-1,x
      lda short_frame_15 + (16*3),x
      sta screenmem_bank1_2 + 40 * (4-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (4-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (14-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (14-1) + 21-1,x
      lda short_frame_15 + (16*4),x
      sta screenmem_bank1_2 + 40 * (5-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (5-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (15-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (15-1) + 21-1,x
      lda short_frame_15 + (16*5),x
      sta screenmem_bank1_2 + 40 * (6-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (6-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (16-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (16-1) + 21-1,x
      lda short_frame_15 + (16*6),x
      sta screenmem_bank1_2 + 40 * (7-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (7-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (17-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (17-1) + 21-1,x
      dex 
      bpl -      
      ldx #16-1
-     lda short_frame_15 + (16*7),x
      sta screenmem_bank1_2 + 40 * (8-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (8-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (18-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (18-1) + 21-1,x
      lda short_frame_15 + (16*8),x
      sta screenmem_bank1_2 + 40 * (9-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (9-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (19-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (19-1) + 21-1,x
      lda short_frame_15 + (16*9),x
      sta screenmem_bank1_2 + 40 * (10-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (10-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (20-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (20-1) + 21-1,x
      dex 
      bpl -
      rts      
      
copy_frame_16:
      ldx #16-1
-     lda short_frame_16,x
      sta screenmem_bank1_1 + 40 * (1-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (1-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (11-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (11-1) + 21-1,x
      lda short_frame_16 + (16*1),x
      sta screenmem_bank1_1 + 40 * (2-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (2-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (12-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (12-1) + 21-1,x
      lda short_frame_16 + (16*2),x
      sta screenmem_bank1_1 + 40 * (3-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (3-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (13-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (13-1) + 21-1,x
      lda short_frame_16 + (16*3),x
      sta screenmem_bank1_1 + 40 * (4-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (4-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (14-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (14-1) + 21-1,x
      lda short_frame_16 + (16*4),x
      sta screenmem_bank1_1 + 40 * (5-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (5-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (15-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (15-1) + 21-1,x
      lda short_frame_16 + (16*5),x
      sta screenmem_bank1_1 + 40 * (6-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (6-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (16-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (16-1) + 21-1,x
      lda short_frame_16 + (16*6),x
      sta screenmem_bank1_1 + 40 * (7-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (7-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (17-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (17-1) + 21-1,x
      dex 
      bpl -      
      ldx #16-1
-     lda short_frame_16 + (16*7),x
      sta screenmem_bank1_1 + 40 * (8-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (8-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (18-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (18-1) + 21-1,x
      lda short_frame_16 + (16*8),x
      sta screenmem_bank1_1 + 40 * (9-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (9-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (19-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (19-1) + 21-1,x
      lda short_frame_16 + (16*9),x
      sta screenmem_bank1_1 + 40 * (10-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (10-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (20-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (20-1) + 21-1,x
      dex 
      bpl -
      rts

copy_frame_17:
      ldx #16-1
-     lda short_frame_17,x
      sta screenmem_bank1_2 + 40 * (1-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (1-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (11-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (11-1) + 21-1,x
      lda short_frame_17 + (16*1),x
      sta screenmem_bank1_2 + 40 * (2-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (2-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (12-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (12-1) + 21-1,x
      lda short_frame_17 + (16*2),x
      sta screenmem_bank1_2 + 40 * (3-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (3-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (13-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (13-1) + 21-1,x
      lda short_frame_17 + (16*3),x
      sta screenmem_bank1_2 + 40 * (4-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (4-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (14-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (14-1) + 21-1,x
      lda short_frame_17 + (16*4),x
      sta screenmem_bank1_2 + 40 * (5-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (5-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (15-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (15-1) + 21-1,x
      lda short_frame_17 + (16*5),x
      sta screenmem_bank1_2 + 40 * (6-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (6-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (16-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (16-1) + 21-1,x
      lda short_frame_17 + (16*6),x
      sta screenmem_bank1_2 + 40 * (7-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (7-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (17-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (17-1) + 21-1,x
      dex 
      bpl -      
      ldx #16-1
-     lda short_frame_17 + (16*7),x
      sta screenmem_bank1_2 + 40 * (8-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (8-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (18-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (18-1) + 21-1,x
      lda short_frame_17 + (16*8),x
      sta screenmem_bank1_2 + 40 * (9-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (9-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (19-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (19-1) + 21-1,x
      lda short_frame_17 + (16*9),x
      sta screenmem_bank1_2 + 40 * (10-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (10-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (20-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (20-1) + 21-1,x
      dex 
      bpl -
      rts      
      
copy_frame_18:
      ldx #16-1
-     lda short_frame_18,x
      sta screenmem_bank1_1 + 40 * (1-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (1-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (11-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (11-1) + 21-1,x
      lda short_frame_18 + (16*1),x
      sta screenmem_bank1_1 + 40 * (2-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (2-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (12-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (12-1) + 21-1,x
      lda short_frame_18 + (16*2),x
      sta screenmem_bank1_1 + 40 * (3-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (3-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (13-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (13-1) + 21-1,x
      lda short_frame_18 + (16*3),x
      sta screenmem_bank1_1 + 40 * (4-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (4-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (14-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (14-1) + 21-1,x
      lda short_frame_18 + (16*4),x
      sta screenmem_bank1_1 + 40 * (5-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (5-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (15-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (15-1) + 21-1,x
      lda short_frame_18 + (16*5),x
      sta screenmem_bank1_1 + 40 * (6-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (6-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (16-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (16-1) + 21-1,x
      lda short_frame_18 + (16*6),x
      sta screenmem_bank1_1 + 40 * (7-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (7-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (17-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (17-1) + 21-1,x
      dex 
      bpl -      
      ldx #16-1
-     lda short_frame_18 + (16*7),x
      sta screenmem_bank1_1 + 40 * (8-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (8-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (18-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (18-1) + 21-1,x
      lda short_frame_18 + (16*8),x
      sta screenmem_bank1_1 + 40 * (9-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (9-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (19-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (19-1) + 21-1,x
      lda short_frame_18 + (16*9),x
      sta screenmem_bank1_1 + 40 * (10-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (10-1) + 21-1,x
      sta screenmem_bank1_1 + 40 * (20-1) + 4-1,x
      sta screenmem_bank1_1 + 40 * (20-1) + 21-1,x
      dex 
      bpl -
      rts

copy_frame_19:
      ldx #16-1
-     lda short_frame_19,x
      sta screenmem_bank1_2 + 40 * (1-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (1-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (11-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (11-1) + 21-1,x
      lda short_frame_19 + (16*1),x
      sta screenmem_bank1_2 + 40 * (2-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (2-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (12-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (12-1) + 21-1,x
      lda short_frame_19 + (16*2),x
      sta screenmem_bank1_2 + 40 * (3-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (3-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (13-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (13-1) + 21-1,x
      lda short_frame_19 + (16*3),x
      sta screenmem_bank1_2 + 40 * (4-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (4-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (14-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (14-1) + 21-1,x
      lda short_frame_19 + (16*4),x
      sta screenmem_bank1_2 + 40 * (5-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (5-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (15-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (15-1) + 21-1,x
      lda short_frame_19 + (16*5),x
      sta screenmem_bank1_2 + 40 * (6-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (6-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (16-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (16-1) + 21-1,x
      lda short_frame_19 + (16*6),x
      sta screenmem_bank1_2 + 40 * (7-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (7-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (17-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (17-1) + 21-1,x
      dex 
      bpl -      
      ldx #16-1
-     lda short_frame_19 + (16*7),x
      sta screenmem_bank1_2 + 40 * (8-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (8-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (18-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (18-1) + 21-1,x
      lda short_frame_19 + (16*8),x
      sta screenmem_bank1_2 + 40 * (9-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (9-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (19-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (19-1) + 21-1,x
      lda short_frame_19 + (16*9),x
      sta screenmem_bank1_2 + 40 * (10-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (10-1) + 21-1,x
      sta screenmem_bank1_2 + 40 * (20-1) + 4-1,x
      sta screenmem_bank1_2 + 40 * (20-1) + 21-1,x
      dex 
      bpl -
      rts 
      
      