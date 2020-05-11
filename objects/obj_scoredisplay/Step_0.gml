/// @description Insert description here
// You can write your code in this editor

if p1scoredisp{
	if keyboard_check_released(vk_anykey){
		p1s = global.p1score
	}
	if p1s != global.p1score{
		if p1s + 5000 > global.p1score{
			p1s = global.p1score
		} else {
			p1s += 5000
		}
		audio_play_sound(snd_diamondget, 1, false)
	} else {
		p1dispdone = true
	}
} 

if p2scoredisp{
	if keyboard_check_released(vk_anykey){
		p2s = global.p2score
		p2dispdone = true
	}
	if p2s != global.p2score{
		if p2s + 5000 > global.p2score{
			p2s = global.p2score
		} else {
			p2s += 5000
		}
		audio_play_sound(snd_diamondget, 1, false)
	} else {
		p2dispdone = true
	}
}

if p1scoredisp && p2scoredisp{
	if keyboard_check_released(vk_anykey) && p1dispdone && p2dispdone{
		audio_play_sound(snd_click, 1, false)
		instance_create_depth(x, y, 1, obj_screenfade)
	}
}