/// @description HUD Constant Checks
//W and S Key Manor Stairwell Indication
//W Indicator
if global.playerfloormanor = 0
{
	with obj_ghost
	if place_meeting(x,y,obj_basement_sensor)
	with obj_ghost if !instance_exists(obj_stairwell_w)
	{
		instance_create_depth(4601,3924,0,obj_stairwell_w)
	}
	with obj_ghost
	if !place_meeting(x,y,obj_basement_sensor)
	{
		instance_destroy(obj_stairwell_w)
	}
}
if global.playerfloormanor = 1
{
	with obj_ghost
	if place_meeting(x,y,obj_f1_stairwell_sensor)
	with obj_ghost if !instance_exists(obj_stairwell_w)
	{
		instance_create_depth(4602,3509,0,obj_stairwell_w)
	}
	with obj_ghost
	if !place_meeting(x,y,obj_f1_stairwell_sensor)
	{
		instance_destroy(obj_stairwell_w)
	}
}
if global.playerfloormanor = 2
{
	with obj_ghost
	if place_meeting(x,y,obj_f2_stairwell_sensor)
	with obj_ghost if !instance_exists(obj_stairwell_w)
	{
		instance_create_depth(4602,3145,0,obj_stairwell_w)
	}
	with obj_ghost
	if !place_meeting(x,y,obj_f2_stairwell_sensor)
	{
		instance_destroy(obj_stairwell_w)
	}
}
if global.playerfloormanor = 3
{
	with obj_ghost
	if place_meeting(x,y,obj_f3_stairwell_sensor)
	with obj_ghost if !instance_exists(obj_stairwell_w)
	{
		instance_create_depth(4602,2781,0,obj_stairwell_w)
	}
	with obj_ghost
	if !place_meeting(x,y,obj_f3_stairwell_sensor)
	{
		instance_destroy(obj_stairwell_w)
	}
}
if global.playerfloormanor = 4
{
	with obj_ghost
	if place_meeting(x,y,obj_f4_stairwell_sensor)
	with obj_ghost if !instance_exists(obj_stairwell_w)
	{
		instance_create_depth(4602,2417,0,obj_stairwell_w)
	}
	with obj_ghost
	if !place_meeting(x,y,obj_f4_stairwell_sensor)
	{
		instance_destroy(obj_stairwell_w)
	}
}
//S Indicator
if global.playerfloormanor = 1
{
	with obj_ghost
	if place_meeting(x,y,obj_f1_stairwell_sensor)
	with obj_ghost if !instance_exists(obj_stairwell_s)
	{
		instance_create_depth(4602,3648,0,obj_stairwell_s)
	}
	with obj_ghost
	if !place_meeting(x,y,obj_f1_stairwell_sensor)
	{
		instance_destroy(obj_stairwell_s)
	}
}
if global.playerfloormanor = 2
{
	with obj_ghost
	if place_meeting(x,y,obj_f2_stairwell_sensor)
	with obj_ghost if !instance_exists(obj_stairwell_s)
	{
		instance_create_depth(4602,3284,0,obj_stairwell_s)
	}
	with obj_ghost
	if !place_meeting(x,y,obj_f2_stairwell_sensor)
	{
		instance_destroy(obj_stairwell_s)
	}
}
if global.playerfloormanor = 3
{
	with obj_ghost
	if place_meeting(x,y,obj_f3_stairwell_sensor)
	with obj_ghost if !instance_exists(obj_stairwell_s)
	{
		instance_create_depth(4602,2920,0,obj_stairwell_s)
	}
	with obj_ghost
	if !place_meeting(x,y,obj_f3_stairwell_sensor)
	{
		instance_destroy(obj_stairwell_s)
	}
}
if global.playerfloormanor = 4
{
	with obj_ghost
	if place_meeting(x,y,obj_f4_stairwell_sensor)
	with obj_ghost if !instance_exists(obj_stairwell_s)
	{
		instance_create_depth(4602,2556,0,obj_stairwell_s)
	}
	with obj_ghost
	if !place_meeting(x,y,obj_f4_stairwell_sensor)
	{
		instance_destroy(obj_stairwell_s)
	}
}
if global.playerfloormanor = 5
{
	with obj_ghost
	if place_meeting(x,y,obj_f5_stairwell_sensor)
	with obj_ghost if !instance_exists(obj_stairwell_s)
	{
		instance_create_depth(4602,2192,0,obj_stairwell_s)
	}
	with obj_ghost
	if !place_meeting(x,y,obj_f5_stairwell_sensor)
	{
		instance_destroy(obj_stairwell_s)
	}
}
// E Indicator
//Suspect One
with obj_ghost
if instance_exists(obj_suspect_one) and distance_to_point(obj_suspect_one.x,obj_suspect_one.y) < 80 and !instance_exists(obj_interact_e_one) and global.possession = 0
{
	instance_create_depth(obj_suspect_one.x,obj_suspect_one.y,-3,obj_interact_e_one)
}
else if instance_exists(obj_suspect_one) and distance_to_point(obj_suspect_one.x,obj_suspect_one.y) > 80
{
	instance_destroy(obj_interact_e_one)
}
with obj_suspect_one
if visible = false
{
	instance_destroy(obj_interact_e_one)
}
//Suspect Two
with obj_ghost
if instance_exists(obj_suspect_two) and distance_to_point(obj_suspect_two.x,obj_suspect_two.y) < 80 and !instance_exists(obj_interact_e_two) and global.possession = 0
{
	instance_create_depth(obj_suspect_two.x,obj_suspect_two.y,-3,obj_interact_e_two)
}
else if instance_exists(obj_suspect_two) and distance_to_point(obj_suspect_two.x,obj_suspect_two.y) > 80
{
	instance_destroy(obj_interact_e_two)
}
with obj_suspect_two
if visible = false
{
	instance_destroy(obj_interact_e_two)
}