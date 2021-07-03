/// @description Select Kill Event (Variable "eventfloor" = Floor Event Is On) (Variable "suspectevent" = Which Event Is Taking Place)
//Choose Random Event via Random Roll
var roll = irandom(0)
if (roll = 0) and instance_exists(obj_suspect_one)//Kill Event / Suspect One
{
	//Reroll If Detection Possible From Victim Perspective
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
	if obj_suspect_one.y = 3503 and global.playerfloormanor = 1
	{
		if alarm[1] == -1
		{
			alarm[1] = 1
		}
	}
	//Reroll If Detection Possible From Killer Perspective
	if suspectfloormanor = 5 and global.playerfloormanor = 5
	{
		if alarm[1] == -1
		{
			alarm[1] = 1
		}
	}
	if suspectfloormanor = 4 and global.playerfloormanor = 4
	{
		if alarm[1] == -1
		{
			alarm[1] = 1
		}
	}
	if suspectfloormanor = 3 and global.playerfloormanor = 3
	{
		if alarm[1] == -1
		{
			alarm[1] = 1
		}
	}
	if suspectfloormanor = 2 and global.playerfloormanor = 2
	{
		if alarm[1] == -1
		{
			alarm[1] = 1
		}
	}
	if suspectfloormanor = 1 and global.playerfloormanor = 1
	{
		if alarm[1] == -1
		{
			alarm[1] = 1
		}
	}
	//Set Event Number
	suspectevent = 7
	//Check For Floor Of NPC
	if susonefloor = 5
	{
		eventfloor = 5
	}
	if susonefloor = 4
	{
		eventfloor = 4
	}
	if susonefloor = 3
	{
		eventfloor = 3
	}
	if susonefloor = 2
	{
		eventfloor = 2
	}
	if susonefloor = 1
	{
		eventfloor = 1
	}
	//Continue If On Correct Floor Already
	if suspectfloormanor = 5 and eventfloor = 5
	{
		if obj_suspect_two.x < obj_suspect_one.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_two.x > obj_suspect_one.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	if suspectfloormanor = 4 and eventfloor = 4
	{
		if obj_suspect_two.x < obj_suspect_one.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_two.x > obj_suspect_one.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	if suspectfloormanor = 3 and eventfloor = 3
	{
		if obj_suspect_two.x < obj_suspect_one.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_two.x > obj_suspect_one.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	if suspectfloormanor = 2 and eventfloor = 2
	{
		if obj_suspect_two.x < obj_suspect_one.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_two.x > obj_suspect_one.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	if suspectfloormanor = 1 and eventfloor = 1
	{
		if obj_suspect_two.x < obj_suspect_one.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_two.x > obj_suspect_one.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	//Go Change Floors Otherwise
	else if obj_suspect_two.x < obj_f1_stairwell_sensor.x
	{
		hspeed = 8
		vspeed = 0
	}
	else if obj_suspect_two.x > obj_f1_stairwell_sensor.x
	{
		hspeed = -8
		vspeed = 0
	}
}
else if !instance_exists(obj_suspect_one)
{
	if alarm[1] == -1
	{
		alarm[1] = 1
	}
}