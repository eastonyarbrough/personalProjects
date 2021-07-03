/// @description Set Depth, Layout, and Sensors
depth = 3
//Choose Layout
var roll = irandom(3)
if (roll = 0)
{
	sprite_index = spr_manor_bedroom_layout_one
}
if (roll = 1)
{
	sprite_index = spr_manor_bedroom_layout_two
}
if (roll = 2)
{
	sprite_index = spr_manor_bedroom_layout_three
}
if (roll = 3)
{
	sprite_index = spr_manor_bedroom_layout_four
}
//Create Physics Sensors
if sprite_index = spr_manor_bedroom_layout_one
{
	instance_create_depth(obj_sus_seven_bedroom.x+507,obj_sus_seven_bedroom.y+184,3,obj_vanity_col)
	instance_create_depth(obj_sus_seven_bedroom.x+416,obj_sus_seven_bedroom.y+190,3,obj_e_table_col)
	instance_create_depth(obj_sus_seven_bedroom.x+212,obj_sus_seven_bedroom.y+190,3,obj_e_table_col)
}
//Create Action Sensors
//*TO BE ADDED WHEN NPC IS ADDED*
//Create Bathroom
instance_create_depth(obj_sus_seven_bedroom.x-424,obj_sus_seven_bedroom.y,0,obj_sus_seven_bathroom)