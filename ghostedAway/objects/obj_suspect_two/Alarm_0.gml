/// @description Check For Killer Variable and Reset Depth
if killer = 0
{
	if depth != -1
	{
		depth = -1
	}
	if alarm[1] == -1
	{
		alarm[1] = 1
	}
}
if killer = 1
{
	if depth != -1
	{
		depth = -1
	}
	var roll = irandom(99)
	if (roll < 10)
	{
		if alarm[2] == -1
		{
			alarm[2] = 1
		}
	}
	else if (roll < 100)
	{
		if alarm[1] == -1
		{
			alarm[1] = 1
		}
	}
}