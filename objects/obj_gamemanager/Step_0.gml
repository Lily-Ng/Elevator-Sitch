/// @description Insert description here
// You can write your code in this editor

if global.p1strikes >= 3{
		global.p1strikes = 0	// reset
		global.p1score -= 300
}

if global.p2strikes >= 3{
		global.p2strikes = 0	// reset
		global.p2score -= 300
}

// room navigations and actions
if room == instructions{
	if keyboard_check_pressed(vk_anykey){
		audio_stop_all()
		audio_play_sound(snd_click, 1, false)
		instance_create_depth(x, y, 1, obj_screenfade)
	}
} else if room == titlescreen{
	if keyboard_check_pressed(vk_enter){
		initializeGame()
		audio_play_sound(snd_click, 1, false)
		instance_create_depth(x, y, 1, obj_screenfade)
	}
}