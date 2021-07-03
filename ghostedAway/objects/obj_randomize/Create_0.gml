/// @description Randomize Game
randomize()
//Create Manor Bedroom Layouts
var roll = irandom(6)
if (roll = 0)
{
	instance_create_depth(1499,1909,1,obj_sus_one_bedroom)
	instance_create_depth(3189,1909,1,obj_sus_two_bedroom)
	instance_create_depth(1499,2273,1,obj_sus_three_bedroom)
	instance_create_depth(3189,2273,1,obj_sus_four_bedroom)
	instance_create_depth(3189,2638,1,obj_sus_five_bedroom)
	instance_create_depth(1499,3003,1,obj_sus_six_bedroom)
	instance_create_depth(3189,3003,1,obj_sus_seven_bedroom)
}
if (roll = 1)
{
	instance_create_depth(1499,1909,1,obj_sus_two_bedroom)
	instance_create_depth(3189,1909,1,obj_sus_one_bedroom)
	instance_create_depth(1499,2273,1,obj_sus_three_bedroom)
	instance_create_depth(3189,2273,1,obj_sus_four_bedroom)
	instance_create_depth(3189,2638,1,obj_sus_five_bedroom)
	instance_create_depth(1499,3003,1,obj_sus_six_bedroom)
	instance_create_depth(3189,3003,1,obj_sus_seven_bedroom)
}
if (roll = 2)
{
	instance_create_depth(1499,1909,1,obj_sus_three_bedroom)
	instance_create_depth(3189,1909,1,obj_sus_two_bedroom)
	instance_create_depth(1499,2273,1,obj_sus_one_bedroom)
	instance_create_depth(3189,2273,1,obj_sus_four_bedroom)
	instance_create_depth(3189,2638,1,obj_sus_five_bedroom)
	instance_create_depth(1499,3003,1,obj_sus_six_bedroom)
	instance_create_depth(3189,3003,1,obj_sus_seven_bedroom)
}
if (roll = 3)
{
	instance_create_depth(1499,1909,1,obj_sus_four_bedroom)
	instance_create_depth(3189,1909,1,obj_sus_three_bedroom)
	instance_create_depth(1499,2273,1,obj_sus_two_bedroom)
	instance_create_depth(3189,2273,1,obj_sus_one_bedroom)
	instance_create_depth(3189,2638,1,obj_sus_five_bedroom)
	instance_create_depth(1499,3003,1,obj_sus_six_bedroom)
	instance_create_depth(3189,3003,1,obj_sus_seven_bedroom)
}
if (roll = 4)
{
	instance_create_depth(1499,1909,1,obj_sus_five_bedroom)
	instance_create_depth(3189,1909,1,obj_sus_four_bedroom)
	instance_create_depth(1499,2273,1,obj_sus_three_bedroom)
	instance_create_depth(3189,2273,1,obj_sus_two_bedroom)
	instance_create_depth(3189,2638,1,obj_sus_one_bedroom)
	instance_create_depth(1499,3003,1,obj_sus_six_bedroom)
	instance_create_depth(3189,3003,1,obj_sus_seven_bedroom)
}
if (roll = 5)
{
	instance_create_depth(1499,1909,1,obj_sus_six_bedroom)
	instance_create_depth(3189,1909,1,obj_sus_five_bedroom)
	instance_create_depth(1499,2273,1,obj_sus_four_bedroom)
	instance_create_depth(3189,2273,1,obj_sus_three_bedroom)
	instance_create_depth(3189,2638,1,obj_sus_two_bedroom)
	instance_create_depth(1499,3003,1,obj_sus_one_bedroom)
	instance_create_depth(3189,3003,1,obj_sus_seven_bedroom)
}
if (roll = 6)
{
	instance_create_depth(1499,1909,1,obj_sus_seven_bedroom)
	instance_create_depth(3189,1909,1,obj_sus_six_bedroom)
	instance_create_depth(1499,2273,1,obj_sus_five_bedroom)
	instance_create_depth(3189,2273,1,obj_sus_four_bedroom)
	instance_create_depth(3189,2638,1,obj_sus_three_bedroom)
	instance_create_depth(1499,3003,1,obj_sus_two_bedroom)
	instance_create_depth(3189,3003,1,obj_sus_one_bedroom)
	
}
//Create NPC Suspects
instance_create_depth(2800,3502,0,obj_suspect_one)
instance_create_depth(2187,3138,0,obj_suspect_two)