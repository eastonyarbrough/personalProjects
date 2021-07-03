/// @description Initiate Floor Change(B)
instance_destroy(obj_basement_covercap)
instance_destroy(obj_seam_patch)
with obj_ghost
if !position_meeting(4607,4006,obj_ghost)
{
	x = 4607
	y = 4006
}
global.playerfloormanor = 0