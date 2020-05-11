/// @description Insert description here
// You can write your code in this editor

y += mvspd
left_elevatorbutton = instance_nearest(447, y, obj_elevatorbutton)
right_elevatorbutton = instance_nearest(577, y, obj_elevatorbutton)

if y <= 87{
	moving = false
	mvspd = 0
}

if (left_elevatorbutton.on || right_elevatorbutton.on) && left_elevatorbutton.y + 2 >= y && left_elevatorbutton.y - 2 <= y{
	moving = false
	left_elevatorbutton.on = false
	right_elevatorbutton.on = false
	mvspd = 0
	alarm[0] = room_speed * 2
}