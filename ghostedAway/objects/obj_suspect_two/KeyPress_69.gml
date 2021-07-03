/// @description Become Possessed
//Set Possessed State
if instance_exists(obj_interact_e_two) and global.spiritbar >= 50 and global.possession = 1
{
	possessed = 1
}
//Make Suspect Invisible
if instance_exists(obj_interact_e_two) and possessed = 1 and global.spiritbar >= 50
{
	visible = false
}