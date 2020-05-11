/// @description Insert description here
// You can write your code in this editor

if image_speed != 0 && image_index == 0{
	image_index = 1
}

if obj_elevator.moving{
	y = obj_elevator.y - 27
} else {
	if y <= 87{
		obj_player1.xspd = 0
		obj_player2.xspd = 0
		obj_player1.yspd = 0
		obj_player2.yspd = 0
		x += xspd
		image_speed = 1
	}
}

if obj_villain.x  >= obj_blimp.x - 45{
	image_speed = 0
	image_index = 1
	xspd = 0
	y += yspd
	obj_blimp.y += yspd
	screenShake(5, 5)
}

if y <= -23{
	instance_create_depth(0, 0, 100, obj_screenfade)
}