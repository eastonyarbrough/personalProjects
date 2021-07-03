/// @description Interact If Possible
//Suspect One Possession Interact
if instance_exists(obj_interact_e_one) and global.possession = 0 and global.spiritbar >= 100
{
	if !instance_exists(obj_interact_e_two)
	{
		global.possession = 1
		sprite_index = spr_possession_right
	}
}
//Suspect Two Possession Interact
if instance_exists(obj_interact_e_two) and global.possession = 0 and global.spiritbar >= 100
{
	if !instance_exists(obj_interact_e_one)
	{
		global.possession = 1
		sprite_index = spr_possession_right
	}
}
//Run "No" Animation if Not Possible
if instance_exists(obj_interact_e_one) and global.possession = 0 and global.spiritbar < 100
{
	hspeed = 0
	vspeed = 0
	if alarm[0] == -1
	{
		alarm[0] = 45
	}
	if sprite_index = spr_ghost_move_right
	{
		image_index = 0
		sprite_index = spr_ghost_no_right
	}
	if sprite_index = spr_ghost_move_left
	{
		image_index = 0
		sprite_index = spr_ghost_no_left
	}
}
if instance_exists(obj_interact_e_two) and global.possession = 0 and global.spiritbar < 100
{
	hspeed = 0
	vspeed = 0
	if alarm[0] == -1
	{
		alarm[0] = 50
	}
	if sprite_index = spr_ghost_move_right
	{
		sprite_index = spr_ghost_no_right
	}
	if sprite_index = spr_ghost_move_left
	{
		sprite_index = spr_ghost_no_left
	}
}
if instance_exists(obj_interact_e_one) and instance_exists(obj_interact_e_two)
{
	hspeed = 0
	vspeed = 0
	if alarm[0] == -1
	{
		alarm[0] = 50
	}
	if sprite_index = spr_ghost_move_right
	{
		sprite_index = spr_ghost_no_right
	}
	if sprite_index = spr_ghost_move_left
	{
		sprite_index = spr_ghost_no_left
	}
}