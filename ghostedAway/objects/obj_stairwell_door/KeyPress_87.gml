/// @description Run Open Animation
if place_meeting(x,y,obj_ghost) and instance_exists(obj_stairwell_w)
{
	image_index = 0
	sprite_index = spr_stairwell_door_opening
	image_speed = .9
	alarm[0] = 45
}