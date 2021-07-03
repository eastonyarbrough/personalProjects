/// @description If Correct / Kill
if suspectevent = 7
{
	hspeed = 0
	vspeed = 0
	instance_destroy(obj_suspect_one)
	//Reset Decision Alarm
	if alarm[1] == -1
	{
		alarm[1] = 1
	}
}