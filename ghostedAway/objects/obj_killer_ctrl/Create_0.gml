/// @description Randomly Select Killer
var roll = irandom(1)
if (roll = 0)
{
	instance_create_depth(x,y,0,obj_susonekiller)
}
if (roll = 1)
{
	instance_create_depth(x,y,0,obj_sustwokiller)
}