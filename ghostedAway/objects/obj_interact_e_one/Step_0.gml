/// @description Stay With Suspect
if instance_exists(obj_suspect_one)
{
	x = obj_suspect_one.x
	y = obj_suspect_one.y
}
else
{
	instance_destroy(obj_interact_e_one)
}