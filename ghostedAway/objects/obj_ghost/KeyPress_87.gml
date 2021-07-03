/// @description Move Up Floor
//Change Manor Floor Ctrl
if global.playerfloormanor = 0 and instance_exists(obj_stairwell_w) and !instance_exists(obj_f1_ctrl)
{
	instance_create_depth(x,y,0,obj_f1_ctrl)
	instance_destroy(obj_basement_ctrl)
	instance_destroy(obj_stairwell_w)
	instance_destroy(obj_stairwell_s)
}
if global.playerfloormanor = 1 and instance_exists(obj_stairwell_w) and !instance_exists(obj_f2_ctrl)
{
	instance_create_depth(x,y,0,obj_f2_ctrl)
	instance_destroy(obj_f1_ctrl)
	instance_destroy(obj_stairwell_w)
	instance_destroy(obj_stairwell_s)
}
if global.playerfloormanor = 2 and instance_exists(obj_stairwell_w) and !instance_exists(obj_f3_ctrl)
{
	instance_create_depth(x,y,0,obj_f3_ctrl)
	instance_destroy(obj_f2_ctrl)
	instance_destroy(obj_stairwell_w)
	instance_destroy(obj_stairwell_s)
}
if global.playerfloormanor = 3 and instance_exists(obj_stairwell_w) and !instance_exists(obj_f4_ctrl)
{
	instance_create_depth(x,y,0,obj_f4_ctrl)
	instance_destroy(obj_f3_ctrl)
	instance_destroy(obj_stairwell_w)
	instance_destroy(obj_stairwell_s)
}
if global.playerfloormanor = 4 and instance_exists(obj_stairwell_w) and !instance_exists(obj_f5_ctrl)
{
	instance_create_depth(x,y,0,obj_f5_ctrl)
	instance_destroy(obj_f4_ctrl)
	instance_destroy(obj_stairwell_w)
	instance_destroy(obj_stairwell_s)
}