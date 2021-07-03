/// @description Run Animation or Sprite for Event
//Stop and Run Animation or Switch Sprite
if suspectevent = 19
{
	if depth != 2
	{
		depth = 2
	}
	x = obj_susone_dining_one.x
	y = obj_susone_dining_one.y
	sprite_index = spr_suspect_stand
	//Reset Decision Alarm
	if alarm[0] == -1
	{
		alarm[0] = 300
	}
}