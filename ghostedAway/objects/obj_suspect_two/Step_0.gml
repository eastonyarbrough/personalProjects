/// @description Constant Checks
//Check For Killer Object
if instance_exists(obj_sustwokiller)
{
	killer = 1
}
//Ensure Reset After Puke Animation
if hspeed = 0 and sprite_index = spr_suspect_puke
{
	if alarm[0] == -1
	{
		alarm[0] = 45
	}
}
//Ensure Reset After Frightened
if hspeed = 0 and sprite_index = spr_suspect_stand
{
	if alarm[0] == -1
	{
		alarm[0] = 45
	}
}
//Go Visible After Time Runs Out For Possession and Set Puke Animation
if global.spiritbar <= 0 and possessed = 1
{
	visible = true
	possessed = 0
	hspeed = 0
	vspeed = 0
	image_index = 0
	sprite_index = spr_suspect_puke
	if alarm[3] == -1
	{
		alarm[3] = 45
	}
}
//Follow Player If Possessed
if possessed = 1 and global.playerfloormanor = 1
{
	x = obj_ghost.x
	y = 3502
	suspectfloormanor = 1
	suspectevent = 0
}
if possessed = 1 and global.playerfloormanor = 2
{
	x = obj_ghost.x
	y = 3138
	suspectfloormanor = 2
	suspectevent = 0
}
if possessed = 1 and global.playerfloormanor = 3
{
	x = obj_ghost.x
	y = 2773
	suspectfloormanor = 3
	suspectevent = 0
}
if possessed = 1 and global.playerfloormanor = 4
{
	x = obj_ghost.x
	y = 2408
	suspectfloormanor = 4
	suspectevent = 0
}
if possessed = 1 and global.playerfloormanor = 5
{
	x = obj_ghost.x
	y = 2044
	suspectfloormanor = 5
	suspectevent = 0
}
if possessed = 1 and global.playerfloormanor = 0
{
	x = obj_ghost.x
	y = 3917
	suspectfloormanor = 0
	suspectevent = 0
}
//Become Frightened
if collision_ellipse(x-650,y-100,x+650,y+200,obj_scotch_bottle,true,false) and obj_scotch_bottle.animate = 1
{
	if collision_ellipse(x-35,y-100,x+650,y+200,obj_scotch_bottle,true,false) and hspeed > 0
	{
		hspeed = 0
		vspeed = 0
		sprite_index = spr_suspect_stand
		if alarm[1] == -1
		{
		alarm[1] = 100
		}
	}
	if collision_ellipse(x-650,y-100,x+35,y+200,obj_scotch_bottle,true,false) and hspeed < 0
	{
		hspeed = 0
		vspeed = 0
		sprite_index = spr_suspect_stand
		if alarm[1] == -1
		{
		alarm[1] = 100
		}
	}
}
//Check Location of Bedroom
if obj_sus_two_bedroom.x = 1499 and obj_sus_two_bedroom.y = 1909
{
	sustworoomfloor = 5
}
if obj_sus_two_bedroom.x = 3189 and obj_sus_two_bedroom.y = 1909
{
	sustworoomfloor = 5
}
if obj_sus_two_bedroom.x = 1499 and obj_sus_two_bedroom.y = 2273
{
	sustworoomfloor = 4
}
if obj_sus_two_bedroom.x = 3189 and obj_sus_two_bedroom.y = 2273
{
	sustworoomfloor = 4
}
if obj_sus_two_bedroom.x = 3189 and obj_sus_two_bedroom.y = 2638
{
	sustworoomfloor = 3
}
if obj_sus_two_bedroom.x = 1499 and obj_sus_two_bedroom.y = 3003
{
	sustworoomfloor = 2
}
if obj_sus_two_bedroom.x = 3189 and obj_sus_two_bedroom.y = 3003
{
	sustworoomfloor = 2
}
//Check Location of Other NPCs
if instance_exists(obj_suspect_one) and obj_suspect_one.y = 2044
{
	susonefloor = 5
}
if instance_exists(obj_suspect_one) and obj_suspect_one.y = 2408
{
	susonefloor = 4
}
if instance_exists(obj_suspect_one) and obj_suspect_one.y = 2773
{
	susonefloor = 3
}
if instance_exists(obj_suspect_one) and obj_suspect_one.y = 3138
{
	susonefloor = 2
}
if instance_exists(obj_suspect_one) and obj_suspect_one.y = 3502
{
	susonefloor = 1
}
//Sprite to Direction Check
if hspeed > 0
{
	sprite_index = spr_suspect_move_right
}
if hspeed < 0
{
	sprite_index = spr_suspect_move_left
}
//Reroll If Selected Event Is Taken By Another NPC
//Suspect One Took Chosen Event
if suspectevent = 1 and instance_exists(obj_suspect_one) and place_meeting(obj_sustwo_bed.x,obj_sustwo_bed.y,obj_suspect_one)
{
	if alarm[0] == -1
	{
		alarm[0] = 1
	}
}
if suspectevent = 2 and instance_exists(obj_suspect_one) and place_meeting(obj_sustwo_dresser.x,obj_sustwo_dresser.y,obj_suspect_one)
{
	if alarm[0] == -1
	{
		alarm[0] = 1
	}
}
if suspectevent = 3 and instance_exists(obj_suspect_one) and place_meeting(obj_sustwo_vanity.x,obj_sustwo_vanity.y,obj_suspect_one)
{
	if alarm[0] == -1
	{
		alarm[0] = 1
	}
}
if suspectevent = 4 and instance_exists(obj_suspect_one) and place_meeting(obj_sustwo_lounger.x,obj_sustwo_lounger.y,obj_suspect_one)
{
	if alarm[0] == -1
	{
		alarm[0] = 1
	}
}
if suspectevent = 5 and instance_exists(obj_suspect_one) and place_meeting(obj_sustwo_etableone.x,obj_sustwo_etableone.y,obj_suspect_one)
{
	if alarm[0] == -1
	{
		alarm[0] = 1
	}
}
if suspectevent = 6 and instance_exists(obj_suspect_one) and place_meeting(obj_sustwo_etabletwo.x,obj_sustwo_etabletwo.y,obj_suspect_one)
{
	if alarm[0] == -1
	{
		alarm[0] = 1
	}
}
if suspectevent = 17 and instance_exists(obj_suspect_one) and place_meeting(obj_sustwo_kitcupboard.x,obj_sustwo_kitcupboard.y,obj_suspect_one)
{
	if alarm[0] == -1
	{
		alarm[0] = 1
	}
}
if suspectevent = 18 and instance_exists(obj_suspect_one) and place_meeting(obj_sustwo_fridge.x,obj_sustwo_fridge.y,obj_suspect_one)
{
	if alarm[0] == -1
	{
		alarm[0] = 1
	}
}
if suspectevent = 19 and instance_exists(obj_suspect_one) and place_meeting(obj_sustwo_dining_one.x,obj_sustwo_dining_one.y,obj_suspect_one)
{
	if alarm[0] == -1
	{
		alarm[0] = 1
	}
}
//Reroll if Detection Possible and Suspect Two is the Killer
if instance_exists(obj_sustwokiller) and suspectevent = 7
{
	if obj_suspect_one.y = 2044 and global.playerfloormanor = 5
	{
		if alarm[1] == -1
		{
			alarm[1] = 1
		}
	}
	if obj_suspect_one.y = 2408 and global.playerfloormanor = 4
	{
		if alarm[1] == -1
		{
			alarm[1] = 1
		}
	}
	if obj_suspect_one.y = 2773 and global.playerfloormanor = 3
	{
		if alarm[1] == -1
		{
			alarm[1] = 1
		}
	}
	if obj_suspect_one.y = 3138 and global.playerfloormanor = 2
	{
		if alarm[1] == -1
		{
			alarm[1] = 1
		}
	}
	if obj_suspect_one.y = 3502 and global.playerfloormanor = 1
	{
		if alarm[1] == -1
		{
			alarm[1] = 1
		}
	}
}
//Change to Specific Floor
//F1 to F2
with obj_suspect_two
if place_meeting(x,y,obj_f1_stairwell_sensor) and suspectfloormanor = 1 and eventfloor = 2
{
	x = 4596
	y = 3138
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 2
}
//F1 to F3
with obj_suspect_two
if place_meeting(x,y,obj_f1_stairwell_sensor) and suspectfloormanor = 1 and eventfloor = 3
{
	x = 4596
	y = 2773
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 3
}
//F1 to F4
with obj_suspect_two
if place_meeting(x,y,obj_f1_stairwell_sensor) and suspectfloormanor = 1 and eventfloor = 4
{
	x = 4596
	y = 2408
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 4
}
//F1 to F5
with obj_suspect_two
if place_meeting(x,y,obj_f1_stairwell_sensor) and suspectfloormanor = 1 and eventfloor = 5
{
	x = 4596
	y = 2044
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 5
}
//F1 to F0
with obj_suspect_two
if place_meeting(x,y,obj_f1_stairwell_sensor) and suspectfloormanor = 1 and eventfloor = 0
{
	x = 4596
	y = 3917
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 0
}
//F2 to F1
with obj_suspect_two
if place_meeting(x,y,obj_f2_stairwell_sensor) and suspectfloormanor = 2 and eventfloor = 1
{
	x = 4596
	y = 3502
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 1
}
//F2 to F3
with obj_suspect_two
if place_meeting(x,y,obj_f2_stairwell_sensor) and suspectfloormanor = 2 and eventfloor = 3
{
	x = 4596
	y = 2773
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 3
}
//F2 to F4
with obj_suspect_two
if place_meeting(x,y,obj_f2_stairwell_sensor) and suspectfloormanor = 2 and eventfloor = 4
{
	x = 4596
	y = 2408
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 4
}
//F2 to F5
with obj_suspect_two
if place_meeting(x,y,obj_f2_stairwell_sensor) and suspectfloormanor = 2 and eventfloor = 5
{
	x = 4596
	y = 2044
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 5
}
//F2 to F0
with obj_suspect_two
if place_meeting(x,y,obj_f2_stairwell_sensor) and suspectfloormanor = 2 and eventfloor = 0
{
	x = 4596
	y = 3917
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 0
}
//F3 to F1
with obj_suspect_two
if place_meeting(x,y,obj_f3_stairwell_sensor) and suspectfloormanor = 3 and eventfloor = 1
{
	x = 4596
	y = 3502
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 1
}
//F3 to F2
with obj_suspect_two
if place_meeting(x,y,obj_f3_stairwell_sensor) and suspectfloormanor = 3 and eventfloor = 2
{
	x = 4596
	y = 3138
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 2
}
//F3 to F4
with obj_suspect_two
if place_meeting(x,y,obj_f3_stairwell_sensor) and suspectfloormanor = 3 and eventfloor = 4
{
	x = 4596
	y = 2408
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 4
}
//F3 to F5
with obj_suspect_two
if place_meeting(x,y,obj_f3_stairwell_sensor) and suspectfloormanor = 3 and eventfloor = 5
{
	x = 4596
	y = 2044
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 5
}
//F3 to F0
with obj_suspect_two
if place_meeting(x,y,obj_f3_stairwell_sensor) and suspectfloormanor = 3 and eventfloor = 0
{
	x = 4596
	y = 3917
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 0
}
//F4 to F1
with obj_suspect_two
if place_meeting(x,y,obj_f4_stairwell_sensor) and suspectfloormanor = 4 and eventfloor = 1
{
	x = 4596
	y = 3502
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 1
}
//F4 to F2
with obj_suspect_two
if place_meeting(x,y,obj_f4_stairwell_sensor) and suspectfloormanor = 4 and eventfloor = 2
{
	x = 4596
	y = 3138
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 2
}
//F4 to F3
with obj_suspect_two
if place_meeting(x,y,obj_f4_stairwell_sensor) and suspectfloormanor = 4 and eventfloor = 3
{
	x = 4596
	y = 2773
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 3
}
//F4 to F5
with obj_suspect_two
if place_meeting(x,y,obj_f4_stairwell_sensor) and suspectfloormanor = 4 and eventfloor = 5
{
	x = 4596
	y = 2044
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 5
}
//F4 to F0
with obj_suspect_two
if place_meeting(x,y,obj_f4_stairwell_sensor) and suspectfloormanor = 4 and eventfloor = 0
{
	x = 4596
	y = 3917
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 0
}
//F5 to F1
with obj_suspect_two
if place_meeting(x,y,obj_f5_stairwell_sensor) and suspectfloormanor = 5 and eventfloor = 1
{
	x = 4596
	y = 3502
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 1
}
//F5 to F2
with obj_suspect_two
if place_meeting(x,y,obj_f5_stairwell_sensor) and suspectfloormanor = 5 and eventfloor = 2
{
	x = 4596
	y = 3138
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 2
}
//F5 to F3
with obj_suspect_two
if place_meeting(x,y,obj_f5_stairwell_sensor) and suspectfloormanor = 5 and eventfloor = 3
{
	x = 4596
	y = 2773
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 3
}
//F5 to F4
with obj_suspect_two
if place_meeting(x,y,obj_f5_stairwell_sensor) and suspectfloormanor = 5 and eventfloor = 4
{
	x = 4596
	y = 2408
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 4
}
//F5 to F0
with obj_suspect_two
if place_meeting(x,y,obj_f5_stairwell_sensor) and suspectfloormanor = 5 and eventfloor = 0
{
	x = 4596
	y = 3917
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 0
}
//F0 to F1
with obj_suspect_two
if place_meeting(x,y,obj_basement_sensor) and suspectfloormanor = 0 and eventfloor = 1
{
	x = 4596
	y = 3502
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 1
}
//F0 to F2
with obj_suspect_two
if place_meeting(x,y,obj_basement_sensor) and suspectfloormanor = 0 and eventfloor = 2
{
	x = 4596
	y = 3138
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 2
}
//F0 to F3
with obj_suspect_two
if place_meeting(x,y,obj_basement_sensor) and suspectfloormanor = 0 and eventfloor = 3
{
	x = 4596
	y = 2773
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 3
}
//F0 to F4
with obj_suspect_two
if place_meeting(x,y,obj_basement_sensor) and suspectfloormanor = 0 and eventfloor = 4
{
	x = 4596
	y = 2408
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 4
}
//F0 to F5
with obj_suspect_two
if place_meeting(x,y,obj_basement_sensor) and suspectfloormanor = 0 and eventfloor = 5
{
	x = 4596
	y = 2044
	hspeed = 0
	vspeed = 0
	suspectfloormanor = 5
}