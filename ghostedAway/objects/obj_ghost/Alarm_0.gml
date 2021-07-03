/// @description Player Animation Control
//Reset Animation After Possession
global.possession = 0
if sprite_index = spr_possession_right
{
	sprite_index = spr_ghost_move_right
}
if sprite_index = spr_possession_left
{
	sprite_index = spr_ghost_move_left
}
if sprite_index = spr_possession_stand_right
{
	sprite_index = spr_ghost_move_right
}
if sprite_index = spr_possession_stand_left
{
	sprite_index = spr_ghost_move_left
}
//Reset Animation To Usual After "No" Animation
if sprite_index = spr_ghost_no_right
{
	sprite_index = spr_ghost_move_right
}
if sprite_index = spr_ghost_no_left
{
	sprite_index = spr_ghost_move_left
}