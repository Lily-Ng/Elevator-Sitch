/// @description Insert description here
// You can write your code in this editor

if room == instructions{
	
}

// display player scores
if room == gameroom{
	/*
	draw_text(10, 10, "Next Step:" + global.p1next)
	draw_text(900, 10, "Next Step:" + global.p2next)
	*/
	
	draw_set_color(c_black)
	draw_text(10, 10, "Player 1 Score: " + string(global.p1score))
	draw_text(830, 10, "Player 2 Score: " + string(global.p2score))
}