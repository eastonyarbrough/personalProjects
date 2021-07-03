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
	instance_create_depth(obj_sus_one_bedroom.x+507,obj_sus_one_bedroom.y+184,3,obj_vanity_col)
	instance_create_depth(obj_sus_one_bedroom.x+416,obj_sus_one_bedroom.y+190,3,obj_e_table_col)
	instance_create_depth(obj_sus_one_bedroom.x+212,obj_sus_one_bedroom.y+190,3,obj_e_table_col)
}
//Create Action Sensors
if sprite_index = spr_manor_bedroom_layout_one
{
	instance_create_depth(obj_sus_one_bedroom.x+340,obj_sus_one_bedroom.y+135,0,obj_susone_bed)
	instance_create_depth(obj_sus_one_bedroom.x+124,obj_sus_one_bedroom.y+135,0,obj_susone_dresser)
	instance_create_depth(obj_sus_one_bedroom.x+542,obj_sus_one_bedroom.y+135,0,obj_susone_vanity)
	instance_create_depth(obj_sus_one_bedroom.x+660,obj_sus_one_bedroom.y+135,0,obj_susone_lounger)
	instance_create_depth(obj_sus_one_bedroom.x+230,obj_sus_one_bedroom.y+135,0,obj_susone_etableone)
	instance_create_depth(obj_sus_one_bedroom.x+435,obj_sus_one_bedroom.y+135,0,obj_susone_etabletwo)
}
if sprite_index = spr_manor_bedroom_layout_two
{
	instance_create_depth(obj_sus_one_bedroom.x+424,obj_sus_one_bedroom.y+135,0,obj_susone_bed)
	instance_create_depth(obj_sus_one_bedroom.x+102,obj_sus_one_bedroom.y+135,0,obj_susone_dresser)
	instance_create_depth(obj_sus_one_bedroom.x+242,obj_sus_one_bedroom.y+135,0,obj_susone_vanity)
	instance_create_depth(obj_sus_one_bedroom.x+630,obj_sus_one_bedroom.y+135,0,obj_susone_lounger)
	instance_create_depth(obj_sus_one_bedroom.x+316,obj_sus_one_bedroom.y+135,0,obj_susone_etableone)
	instance_create_depth(obj_sus_one_bedroom.x+520,obj_sus_one_bedroom.y+135,0,obj_susone_etabletwo)
}
if sprite_index = spr_manor_bedroom_layout_three
{
	instance_create_depth(obj_sus_one_bedroom.x+324,obj_sus_one_bedroom.y+135,0,obj_susone_bed)
	instance_create_depth(obj_sus_one_bedroom.x+116,obj_sus_one_bedroom.y+135,0,obj_susone_dresser)
	instance_create_depth(obj_sus_one_bedroom.x+647,obj_sus_one_bedroom.y+135,0,obj_susone_vanity)
	instance_create_depth(obj_sus_one_bedroom.x+520,obj_sus_one_bedroom.y+135,0,obj_susone_lounger)
	instance_create_depth(obj_sus_one_bedroom.x+221,obj_sus_one_bedroom.y+135,0,obj_susone_etableone)
	instance_create_depth(obj_sus_one_bedroom.x+425,obj_sus_one_bedroom.y+135,0,obj_susone_etabletwo)
}
if sprite_index = spr_manor_bedroom_layout_four
{
	instance_create_depth(obj_sus_one_bedroom.x+405,obj_sus_one_bedroom.y+135,0,obj_susone_bed)
	instance_create_depth(obj_sus_one_bedroom.x+632,obj_sus_one_bedroom.y+135,0,obj_susone_dresser)
	instance_create_depth(obj_sus_one_bedroom.x+88,obj_sus_one_bedroom.y+135,0,obj_susone_vanity)
	instance_create_depth(obj_sus_one_bedroom.x+208,obj_sus_one_bedroom.y+135,0,obj_susone_lounger)
	instance_create_depth(obj_sus_one_bedroom.x+293,obj_sus_one_bedroom.y+135,0,obj_susone_etableone)
	instance_create_depth(obj_sus_one_bedroom.x+498,obj_sus_one_bedroom.y+135,0,obj_susone_etabletwo)
}
//Create Bathroom
instance_create_depth(obj_sus_one_bedroom.x-424,obj_sus_one_bedroom.y,0,obj_sus_one_bathroom)