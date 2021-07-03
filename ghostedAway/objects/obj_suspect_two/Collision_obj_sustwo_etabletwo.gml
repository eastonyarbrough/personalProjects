/// @description Run Animation or Sprite for Event
//Stop and Run Animation or Switch Sprite
if suspectevent = 6
{
	if depth != 2
	{
		depth = 2
	}
	x = obj_sustwo_etabletwo.x
	y = obj_sustwo_etabletwo.y
	sprite_index = spr_suspect_gen_interact
	//Reset Decision Alarm
	if alarm[0] == -1
	{
		alarm[0] = 60
	}
}