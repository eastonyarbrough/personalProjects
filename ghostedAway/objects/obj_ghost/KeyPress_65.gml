/// @description Move Left
if hspeed = 0 and global.possession = 0
{
	sprite_index = spr_ghost_move_left
	hspeed = -14
}
if hspeed = 0 and global.possession = 1
{
	sprite_index = spr_possession_left
	hspeed = -14
}