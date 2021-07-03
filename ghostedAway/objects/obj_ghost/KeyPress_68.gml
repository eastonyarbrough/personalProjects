/// @description Move Right
if hspeed = 0 and global.possession = 0
{
	sprite_index = spr_ghost_move_right
	hspeed = 14
}
if hspeed = 0 and global.possession = 1
{
	sprite_index = spr_possession_right
	hspeed = 14
}