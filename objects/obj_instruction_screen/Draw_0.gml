/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(0.75)
draw_set_color(c_white)
draw_rectangle(100,125,924,665,false)

draw_set_alpha(1)
draw_set_color(c_black)
draw_set_font(fnt_title)

draw_text_transformed(165,125,"Stop the diamond thief from escaping!",1,1,0)

draw_set_font(fnt_title1)
draw_text_transformed(125,275, "PLAYER 1",1,1,0)
draw_text_transformed(800,275, "PLAYER 2",1,1,0)

draw_set_font(fnt_title)
draw_text_transformed(375,350,"HOW TO PLAY",1,1,0)

draw_set_font(fnt_title1)
draw_text_transformed(135,400, "- Climb the stairs to get to the",1,1,0) 
draw_text_transformed(135,425, "  rooftop before the thief in the ",1,1,0)
draw_text_transformed(135,450, "  elevator does ",1,1,0)

draw_text_transformed(135,500, "- Click the R/U buttons to stop",1,1,0) 
draw_text_transformed(135,525, "  the elevator on that floor",1,1,0)

draw_text_transformed(135,575, "- Press the keys prompted",1,1,0) 
draw_text_transformed(135,600, "  on-screen to make your player",1,1,0)
draw_text_transformed(135,625, "  climb the stairs",1,1,0)

draw_text_transformed(550,500, "- Avoid the wet paint on your ",1,1,0) 
draw_text_transformed(550,525, "  way up the stairs ",1,1,0)

draw_text_transformed(550,400, "- When elevator stops, press F/H",1,1,0) 
draw_text_transformed(550,425, "  to struggle for diamond  ",1,1,0)
draw_text_transformed(550,450, "  (compete for diamond bonuses!) ",1,1,0)

draw_text_transformed(550,575, "- Press the wrong keys too many",1,1,0) 
draw_text_transformed(550,600, "  times and your player will ",1,1,0)
draw_text_transformed(550,625, "  stumble",1,1,0)

draw_set_color(c_white)
draw_set_font(-1)