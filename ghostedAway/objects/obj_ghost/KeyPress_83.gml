/// @description Move Down Floor

//Change Manor Floor Ctrl
if global.playerfloormanor = 1 and instance_exists(obj_stairwell_s) and !instance_exists(obj_basement_ctrl)
{
	instance_create_depth(x,y,0,obj_basement_ctrl)
	instance_destroy(obj_f1_ctrl)
	instance_destroy(obj_stairwell_s)
	instance_destroy(obj_stairwell_w)
}
if global.playerfloormanor = 2 and instance_exists(obj_stairwell_s) and !instance_exists(obj_f1_ctrl)
{
	instance_create_depth(x,y,0,obj_f1_ctrl)
	instance_destroy(obj_f2_ctrl)
	instance_destroy(obj_stairwell_s)
	instance_destroy(obj_stairwell_w)
}
if global.playerfloormanor = 3 and instance_exists(obj_stairwell_s) and !instance_exists(obj_f2_ctrl)
{
	instance_create_depth(x,y,0,obj_f2_ctrl)
	instance_destroy(obj_f3_ctrl)
	instance_destroy(obj_stairwell_s)
	instance_destroy(obj_stairwell_w)
}
if global.playerfloormanor = 4 and instance_exists(obj_stairwell_s) and !instance_exists(obj_f3_ctrl)
{
	instance_create_depth(x,y,0,obj_f3_ctrl)
	instance_destroy(obj_f4_ctrl)
	instance_destroy(obj_stairwell_s)
	instance_destroy(obj_stairwell_w)
}
if global.playerfloormanor = 5 and instance_exists(obj_stairwell_s) and !instance_exists(obj_f4_ctrl)
{
	instance_create_depth(x,y,0,obj_f4_ctrl)
	instance_destroy(obj_f5_ctrl)
	instance_destroy(obj_stairwell_s)
	instance_destroy(obj_stairwell_w)
}