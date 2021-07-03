/// @description Run NPC Open Animation
if place_meeting(x,y,obj_suspect_one)
{
	image_index = 0
	sprite_index = spr_basement_door_opening
	image_speed = .9
	alarm[0] = 45
}
if place_meeting(x,y,obj_suspect_two)
{
	image_index = 0
	sprite_index = spr_basement_door_opening
	image_speed = .9
	alarm[0] = 45
}