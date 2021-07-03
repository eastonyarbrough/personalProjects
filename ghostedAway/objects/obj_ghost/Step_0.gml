/// @description Constant Checks
//Moving Left Stop Bumper
if place_meeting(obj_ghost.x-5,obj_ghost.y+0,obj_left_stop_bump) and hspeed < 0
{
	hspeed = 0
	vspeed = 0
}
//Moving Right Stop Bumper
if place_meeting(obj_ghost.x+5,obj_ghost.y+0,obj_right_stop_bump) and hspeed > 0
{
	hspeed = 0
	vspeed = 0
}
//Standing Sprite Animation When Possessing
if global.possession = 1 and hspeed = 0 and sprite_index = spr_possession_right
{
	sprite_index = spr_possession_stand_right
}
if global.possession = 1 and hspeed = 0 and sprite_index = spr_possession_left
{
	sprite_index = spr_possession_stand_left
}
//Control Spirit.bar Values (CLAMP)
if global.spiritbar > 100
{
	global.spiritbar = 100
}
if global.spiritbar < 0
{
	global.spiritbar = 0
}
//Drain Spirit.bar When Possessing
if global.possession = 1
{
	global.spiritbar -= 0.5
}
//End Possession When Spirit.bar Runs Out
if global.possession = 1
{
	if global.spiritbar <= 0
	{
		if alarm[0] == -1
		{
			alarm[0] = 1
		}
	}
}
//Refill Spirit.bar When Not in Use
if global.possession = 0
{
	global.spiritbar += 0.1
}
//Control Ani.bar Values (CLAMP)
if global.anibar > 100
{
	global.anibar = 100
}
if global.anibar < 0
{
	global.anibar = 0
}
//Drain Ani.bar When Animating
if global.animation = 1
{
	global.anibar -= 0.7
}
//End Animation When Ani.bar Runs Out
if global.animation = 1
{
	if global.anibar <= 0
	{
		global.animation = 0
	}
}
//Refill Ani.bar When Not in Use
if global.animation = 0
{
	global.anibar += 0.2
}