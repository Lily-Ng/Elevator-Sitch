/// @description Insert description here
// You can write your code in this editor

fading ++

if fading == room_speed {
	if room == gameroom{
		room_goto(endscreen)
	} else if room == endscreen{
		room_goto(titlescreen)
	} else if room == titlescreen{
		room_goto(instructions)
	} else if room == instructions{
		room_goto(gameroom)
	}
}