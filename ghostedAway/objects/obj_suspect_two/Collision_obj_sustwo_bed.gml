/// @description Run Animation or Sprite for Event
//Stop and Run Animation or Switch Sprite
if suspectevent = 1
{
	if depth != 2
	{
		depth = 2
	}
	x = obj_sustwo_bed.x
	y = obj_sustwo_bed.y
	sprite_index = spr_suspect_stand
	//Reset Decision Alarm
	if alarm[0] == -1
	{
		alarm[0] = 1600
	}
}