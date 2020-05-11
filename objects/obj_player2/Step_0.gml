/// @description Insert description here
// You can write your code in this editor

// check whether wrong key was pressed
for (i= 0; i<=8; i++){
	if keyboard_check_released(ord(global.p2pool[i])) && global.p2pool[i] != global.p2next{
		wrongkeypressed = true	
	}
}

if current_step == 63{
	global.p2win = true
	global.p2score += 500 + (global.diamonds*100)
	instance_create_depth(x, y, 1, obj_screenfade)
}

if keyboard_check_released(vk_anykey){
	if collision_circle(x, y, 4, obj_paint, false, true){
		nearest_paint = instance_nearest(x, y, obj_paint)
		nearest_paint.paint_amt --
		nearest_paint.image_yscale = 0.20 * nearest_paint.paint_amt
		if nearest_paint.paint_amt == 0{
			instance_destroy(nearest_paint)
		}
	} else {
		if keyboard_check_released(ord(global.p2next)){
			if current_step != 1 && current_step % 9 == 0{
				xspd = -xspd
				if sprite_index == spr_pleft {
					sprite_index = spr_pright
				} else {
					sprite_index = spr_pleft
				}
				image_index = 1
				x -= xspd-5
				y += -1
				if current_step % 18 == 0{
					x -= xspd-6
					y += -1
				}
			}
			x += xspd
			y += yspd
			if image_index == 1 {
				image_index = 0
			} else {
				image_index = 1
			}
			global.p2score += 100
			global.p2next = global.p2pool[irandom(8)]
			current_step ++
			global.p2strikes = 0
		} else if wrongkeypressed {
			global.p2strikes ++
			wrongkeypressed = false
		}
	}
}

if current_step != 1 && current_step % 18 == 0 {
	if keyboard_check_released(ord(global.p2press)){
		nearest_button = instance_nearest(x, y, obj_elevatorbutton)
		if nearest_button.active{
			nearest_button.on = true
			nearest_button.image_index = 1
			if nearest_button.x - 2 <= obj_elevator.y && nearest_button.pointbonus{
				nearest_button.pointbonus = false
				global.p2score += 300
			}
		}
	} else if keyboard_check_released(ord(global.p2steal)) {
		if global.diamonds > 0 && !obj_elevator.moving{
			global.diamonds--
			global.p2score += 300
			audio_play_sound(snd_diamondget, 1, false)
		}
	}
}