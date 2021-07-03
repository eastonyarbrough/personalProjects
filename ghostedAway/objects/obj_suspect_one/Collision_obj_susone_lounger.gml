/// @description Run Animation or Sprite for Event
//Stop and Run Animation or Switch Sprite
if suspectevent = 4
{
	if depth != 2
	{
		depth = 2
	}
	x = obj_susone_lounger.x
	y = obj_susone_lounger.y
	sprite_index = spr_suspect_stand
	//Reset Decision Alarm
	if alarm[0] == -1
	{
		alarm[0] = 500
	}
}