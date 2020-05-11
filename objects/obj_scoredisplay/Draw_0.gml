/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black)
if p1scoredisp{
	draw_text(450, 250, "Player 1 Score: " + string(p1s))
}
if p2scoredisp{
	draw_text(450, 350, "Player 2 Score: " + string(p2s))
}
if p1scoredisp && p2scoredisp{
	if !global.p1win && !global.p2win{
		draw_text(465, 450, "The thief escaped!")
	}else if global.p1score == global.p2score{
		draw_text(450, 450, "It's a tie! Good job catchinsg the thief!")
	}else if global.p1score > global.p2score{
		draw_text(480, 450, "Player 1 wins!")
	}else if global.p2score > global.p1score{
		draw_text(480, 450, "Player 2 wins!")
	}
	draw_text(430, 500, "Press Any Key to Restart")
}