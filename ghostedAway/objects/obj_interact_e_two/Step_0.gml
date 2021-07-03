/// @description Stay With Suspect
if instance_exists(obj_suspect_two)
{
	x = obj_suspect_two.x
	y = obj_suspect_two.y
}
else
{
	instance_destroy(obj_interact_e_two)
}