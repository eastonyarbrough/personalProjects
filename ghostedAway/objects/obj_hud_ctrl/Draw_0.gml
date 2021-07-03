/// @description Draw GUI and HUD Components
//Suspect Count Inside Spirit Box
if global.suspectcount = 10
{
	draw_sprite(spr_10,0,camera_get_view_x(view_camera[0])+85,camera_get_view_y(view_camera[0])+790)
}
//Spirit-Box
draw_sprite(spr_spirit_box,0,camera_get_view_x(view_camera[0])+53,camera_get_view_y(view_camera[0])+768)
//Spirit(Possession)-Bar and Ani(Animation)-Bar
draw_sprite_ext(spr_spirit_bar_ecto,0,camera_get_view_x(view_camera[0])+99,camera_get_view_y(view_camera[0])+780,1,global.spiritbar/100,0,c_white,1)
draw_sprite_ext(spr_ani_bar_ecto,0,camera_get_view_x(view_camera[0])+138,camera_get_view_y(view_camera[0])+780,1,global.anibar/100,0,c_white,1)
draw_sprite(spr_spirit_bar_vial,0,camera_get_view_x(view_camera[0])+99,camera_get_view_y(view_camera[0])+780)
draw_sprite(spr_ani_bar_vial,0,camera_get_view_x(view_camera[0])+138,camera_get_view_y(view_camera[0])+780)
