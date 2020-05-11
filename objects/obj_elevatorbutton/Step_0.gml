/// @description Insert description here
// You can write your code in this editor

oppositebutton = instance_nearest(x+130, y, obj_elevatorbutton)
if oppositebutton.on == true {
	active = false	// disable this button if it is already pressed on the opposite side
} else {
	active = true
}

oppositebutton = instance_nearest(x-130, y, obj_elevatorbutton)
if oppositebutton.on == true {
	active = false	// disable this button if it is already pressed on the opposite side
} else {
	active = true
}

if on{
	image_index = 1
} else {
	image_index = 0
}