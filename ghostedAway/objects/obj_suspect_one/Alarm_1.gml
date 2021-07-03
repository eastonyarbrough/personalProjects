/// @description Select Normal Event (Variable "eventfloor" = Floor Event Is On) (Variable "suspectevent" = Which Event Is Taking Place)
//Choose Random Event via Random Roll
var roll = irandom(8)
if (roll = 0) //Personal Event / Going to Bed
{
	//Set Event Number
	suspectevent = 1
	//Check If Already In Use and Reroll If It Is
	if instance_exists(obj_suspect_two) and place_meeting(obj_susone_bed.x,obj_susone_bed.y,obj_suspect_two)
	{
		if alarm[0] == -1
		{
			alarm[0] = 1
		}
	}
	//Check For Floor Of Bedroom
	if susoneroomfloor = 5
	{
		eventfloor = 5
	}
	if susoneroomfloor = 4
	{
		eventfloor = 4
	}
	if susoneroomfloor = 3
	{
		eventfloor = 3
	}
	if susoneroomfloor = 2
	{
		eventfloor = 2
	}
	//Continue If On Correct Floor Already
	if suspectfloormanor = 5 and eventfloor = 5
	{
		if obj_suspect_one.x < obj_susone_bed.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_bed.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	if suspectfloormanor = 4 and eventfloor = 4
	{
		if obj_suspect_one.x < obj_susone_bed.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_bed.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	if suspectfloormanor = 3 and eventfloor = 3
	{
		if obj_suspect_one.x < obj_susone_bed.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_bed.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	if suspectfloormanor = 2 and eventfloor = 2
	{
		if obj_suspect_one.x < obj_susone_bed.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_bed.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	//Go Change Floors Otherwise
	else if obj_suspect_one.x < obj_f1_stairwell_sensor.x
	{
		hspeed = 8
		vspeed = 0
	}
	else if obj_suspect_one.x > obj_f1_stairwell_sensor.x
	{
		hspeed = -8
		vspeed = 0
	}
}
if (roll = 1) //Personal Event / Using Dresser
{
	//Set Event Number
	suspectevent = 2
	//Check If Already In Use and Reroll If It Is
	if instance_exists(obj_suspect_two) and place_meeting(obj_susone_dresser.x,obj_susone_dresser.y,obj_suspect_two)
	{
		if alarm[0] == -1
		{
			alarm[0] = 1
		}
	}
	//Check For Floor Of Bedroom
	if susoneroomfloor = 5
	{
		eventfloor = 5
	}
	if susoneroomfloor = 4
	{
		eventfloor = 4
	}
	if susoneroomfloor = 3
	{
		eventfloor = 3
	}
	if susoneroomfloor = 2
	{
		eventfloor = 2
	}
	//Continue If On Correct Floor Already
	if suspectfloormanor = 5 and eventfloor = 5
	{
		if obj_suspect_one.x < obj_susone_dresser.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_dresser.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	if suspectfloormanor = 4 and eventfloor = 4
	{
		if obj_suspect_one.x < obj_susone_dresser.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_dresser.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	if suspectfloormanor = 3 and eventfloor = 3
	{
		if obj_suspect_one.x < obj_susone_dresser.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_dresser.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	if suspectfloormanor = 2 and eventfloor = 2
	{
		if obj_suspect_one.x < obj_susone_dresser.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_dresser.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	//Go Change Floors Otherwise
	else if obj_suspect_one.x < obj_f1_stairwell_sensor.x
	{
		hspeed = 8
		vspeed = 0
	}
	else if obj_suspect_one.x > obj_f1_stairwell_sensor.x
	{
		hspeed = -8
		vspeed = 0
	}
	
}
if (roll = 2) //Personal Event / Using Vanity
{
	//Set Event Number
	suspectevent = 3
	//Check If Already In Use and Reroll If It Is
	if instance_exists(obj_suspect_two) and place_meeting(obj_susone_vanity.x,obj_susone_vanity.y,obj_suspect_two)
	{
		if alarm[0] == -1
		{
			alarm[0] = 1
		}
	}
	//Check For Floor Of Bedroom
	if susoneroomfloor = 5
	{
		eventfloor = 5
	}
	if susoneroomfloor = 4
	{
		eventfloor = 4
	}
	if susoneroomfloor = 3
	{
		eventfloor = 3
	}
	if susoneroomfloor = 2
	{
		eventfloor = 2
	}
	//Continue If On Correct Floor Already
	if suspectfloormanor = 5 and eventfloor = 5
	{
		if obj_suspect_one.x < obj_susone_vanity.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_vanity.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	if suspectfloormanor = 4 and eventfloor = 4
	{
		if obj_suspect_one.x < obj_susone_vanity.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_vanity.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	if suspectfloormanor = 3 and eventfloor = 3
	{
		if obj_suspect_one.x < obj_susone_vanity.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_vanity.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	if suspectfloormanor = 2 and eventfloor = 2
	{
		if obj_suspect_one.x < obj_susone_vanity.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_vanity.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	//Go Change Floors Otherwise
	else if obj_suspect_one.x < obj_f1_stairwell_sensor.x
	{
		hspeed = 8
		vspeed = 0
	}
	else if obj_suspect_one.x > obj_f1_stairwell_sensor.x
	{
		hspeed = -8
		vspeed = 0
	}
}
if (roll = 3) //Personal Event / Using Lounger
{
	//Set Event Number
	suspectevent = 4
	//Check If Already In Use and Reroll If It Is
	if instance_exists(obj_suspect_two) and place_meeting(obj_susone_lounger.x,obj_susone_lounger.y,obj_suspect_two)
	{
		if alarm[0] == -1
		{
			alarm[0] = 1
		}
	}
	//Check For Floor Of Bedroom
	if susoneroomfloor = 5
	{
		eventfloor = 5
	}
	if susoneroomfloor = 4
	{
		eventfloor = 4
	}
	if susoneroomfloor = 3
	{
		eventfloor = 3
	}
	if susoneroomfloor = 2
	{
		eventfloor = 2
	}
	//Continue If On Correct Floor Already
	if suspectfloormanor = 5 and eventfloor = 5
	{
		if obj_suspect_one.x < obj_susone_lounger.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_lounger.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	if suspectfloormanor = 4 and eventfloor = 4
	{
		if obj_suspect_one.x < obj_susone_lounger.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_lounger.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	if suspectfloormanor = 3 and eventfloor = 3
	{
		if obj_suspect_one.x < obj_susone_lounger.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_lounger.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	if suspectfloormanor = 2 and eventfloor = 2
	{
		if obj_suspect_one.x < obj_susone_lounger.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_lounger.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	//Go Change Floors Otherwise
	else if obj_suspect_one.x < obj_f1_stairwell_sensor.x
	{
		hspeed = 8
		vspeed = 0
	}
	else if obj_suspect_one.x > obj_f1_stairwell_sensor.x
	{
		hspeed = -8
		vspeed = 0
	}
}
if (roll = 4) //Personal Event / Using End Table One
{
	//Set Event Number
	suspectevent = 5
	//Check If Already In Use and Reroll If It Is
	if instance_exists(obj_suspect_two) and place_meeting(obj_susone_etableone.x,obj_susone_etableone.y,obj_suspect_two)
	{
		if alarm[0] == -1
		{
			alarm[0] = 1
		}
	}
	//Check For Floor Of Bedroom
	if susoneroomfloor = 5
	{
		eventfloor = 5
	}
	if susoneroomfloor = 4
	{
		eventfloor = 4
	}
	if susoneroomfloor = 3
	{
		eventfloor = 3
	}
	if susoneroomfloor = 2
	{
		eventfloor = 2
	}
	//Continue If On Correct Floor Already
	if suspectfloormanor = 5 and eventfloor = 5
	{
		if obj_suspect_one.x < obj_susone_etableone.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_etableone.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	if suspectfloormanor = 4 and eventfloor = 4
	{
		if obj_suspect_one.x < obj_susone_etableone.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_etableone.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	if suspectfloormanor = 3 and eventfloor = 3
	{
		if obj_suspect_one.x < obj_susone_etableone.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_etableone.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	if suspectfloormanor = 2 and eventfloor = 2
	{
		if obj_suspect_one.x < obj_susone_etableone.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_etableone.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	//Go Change Floors Otherwise
	else if obj_suspect_one.x < obj_f1_stairwell_sensor.x
	{
		hspeed = 8
		vspeed = 0
	}
	else if obj_suspect_one.x > obj_f1_stairwell_sensor.x
	{
		hspeed = -8
		vspeed = 0
	}
}
if (roll = 5) //Personal Event / Using End Table Two
{
	//Set Event Number
	suspectevent = 6
	//Check If Already In Use and Reroll If It Is
	if instance_exists(obj_suspect_two) and place_meeting(obj_susone_etabletwo.x,obj_susone_etabletwo.y,obj_suspect_two)
	{
		if alarm[0] == -1
		{
			alarm[0] = 1
		}
	}
	//Check For Floor Of Bedroom
	if susoneroomfloor = 5
	{
		eventfloor = 5
	}
	if susoneroomfloor = 4
	{
		eventfloor = 4
	}
	if susoneroomfloor = 3
	{
		eventfloor = 3
	}
	if susoneroomfloor = 2
	{
		eventfloor = 2
	}
	//Continue If On Correct Floor Already
	if suspectfloormanor = 5 and eventfloor = 5
	{
		if obj_suspect_one.x < obj_susone_etabletwo.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_etabletwo.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	if suspectfloormanor = 4 and eventfloor = 4
	{
		if obj_suspect_one.x < obj_susone_etabletwo.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_etabletwo.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	if suspectfloormanor = 3 and eventfloor = 3
	{
		if obj_suspect_one.x < obj_susone_etabletwo.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_etabletwo.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	if suspectfloormanor = 2 and eventfloor = 2
	{
		if obj_suspect_one.x < obj_susone_etabletwo.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_etabletwo.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	//Go Change Floors Otherwise
	else if obj_suspect_one.x < obj_f1_stairwell_sensor.x
	{
		hspeed = 8
		vspeed = 0
	}
	else if obj_suspect_one.x > obj_f1_stairwell_sensor.x
	{
		hspeed = -8
		vspeed = 0
	}
}
if (roll = 6) //Communal Event / Using Kitchen Cupboard
{
	//Set Event Number
	suspectevent = 17
	eventfloor = 1
	//Check If Already In Use and Reroll If It Is
	if instance_exists(obj_suspect_two) and place_meeting(obj_susone_kitcupboard.x,obj_susone_kitcupboard.y,obj_suspect_two)
	{
		if alarm[0] == -1
		{
			alarm[0] = 1
		}
	}
	//Continue If On Correct Floor Already
	if suspectfloormanor = 1 and eventfloor = 1
	{
		if obj_suspect_one.x < obj_susone_kitcupboard.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_kitcupboard.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	//Go Change Floors Otherwise
	else if obj_suspect_one.x < obj_f1_stairwell_sensor.x
	{
		hspeed = 8
		vspeed = 0
	}
	else if obj_suspect_one.x > obj_f1_stairwell_sensor.x
	{
		hspeed = -8
		vspeed = 0
	}
}
if (roll = 7) //Communal Event / Using Kitchen Fridge
{
	//Set Event Number
	suspectevent = 18
	eventfloor = 1
	//Check If Already In Use and Reroll If It Is
	if instance_exists(obj_suspect_two) and place_meeting(obj_susone_fridge.x,obj_susone_fridge.y,obj_suspect_two)
	{
		if alarm[0] == -1
		{
			alarm[0] = 1
		}
	}
	//Continue If On Correct Floor Already
	if suspectfloormanor = 1 and eventfloor = 1
	{
		if obj_suspect_one.x < obj_susone_fridge.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_fridge.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	//Go Change Floors Otherwise
	else if obj_suspect_one.x < obj_f1_stairwell_sensor.x
	{
		hspeed = 8
		vspeed = 0
	}
	else if obj_suspect_one.x > obj_f1_stairwell_sensor.x
	{
		hspeed = -8
		vspeed = 0
	}
}
if (roll = 8) //Communal Event / Sitting at Dining Chair One
{
	//Set Event Number
	suspectevent = 19
	eventfloor = 1
	//Check If Already In Use and Reroll If It Is
	if instance_exists(obj_suspect_two) and place_meeting(obj_susone_dining_one.x,obj_susone_dining_one.y,obj_suspect_two)
	{
		if alarm[0] == -1
		{
			alarm[0] = 1
		}
	}
	//Continue If On Correct Floor Already
	if suspectfloormanor = 1 and eventfloor = 1
	{
		if obj_suspect_one.x < obj_susone_dining_one.x
		{
			hspeed = 8
			vspeed = 0
		}
		if obj_suspect_one.x > obj_susone_dining_one.x
		{
			hspeed = -8
			vspeed = 0
		}
	}
	//Go Change Floors Otherwise
	else if obj_suspect_one.x < obj_f1_stairwell_sensor.x
	{
		hspeed = 8
		vspeed = 0
	}
	else if obj_suspect_one.x > obj_f1_stairwell_sensor.x
	{
		hspeed = -8
		vspeed = 0
	}
}