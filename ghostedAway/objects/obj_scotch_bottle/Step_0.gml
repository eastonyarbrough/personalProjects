/// @description Check for Gravity and Animation
//Check if Animated and if True; Animate / if False; Use Gravity
if animate = 1 and mouse_check_button(mb_left)
{
	depth = -3
	x = lerp(x, mouse_x, 0.2)
	y = lerp(y, mouse_y, 0.2)
}
else
{
	if !place_meeting(x,y,obj_solid_surface_col) or !place_meeting(x,y,obj_through_surface_col)
	{
		if vspeed < maxspeed
		{
			vspeed = grav + vspeed
		}
		if vspeed > maxspeed
		{
			vspeed = maxspeed
		}
	}
	if place_meeting(x,y+vspeed,obj_solid_surface_col) or place_meeting(x,y+vspeed,obj_through_surface_col)
	{
		vspeed = 0
	}
}
//Check for Wall and if True; Stop Animate
if collision_circle(x,y,28,obj_solid_surface_col,true,false) or collision_line(x,y,mouse_x,mouse_y,obj_solid_surface_col,true,false)
{
	global.animation = 0
	animate = 0
}
//Prevent Drag Through Floor, Ceiling and Corners (of Doorways)
if place_meeting(x,y,obj_solid_surface_col) and collision_line(x,y,x,y+30,obj_solid_surface_col,true,false)
{
	y -= 1
	global.animation = 0
	animate = 0
}
if place_meeting(x,y,obj_solid_surface_col) and collision_line(x,y,x,y-30,obj_solid_surface_col,true,false)
{
	y += 1
	global.animation = 0
	animate = 0
}
if place_meeting(x,y,obj_solid_surface_col) and collision_line(x,y,x+30,y-30,obj_solid_surface_col,true,false)
{
	y += 1
	global.animation = 0
	animate = 0
}
if place_meeting(x,y,obj_solid_surface_col) and collision_line(x,y,x-30,y-30,obj_solid_surface_col,true,false)
{
	y += 1
	global.animation = 0
	animate = 0
}
//Prevent Vertical Drag Through Solid Surface
if place_meeting(x,y,obj_solid_surface_col) and collision_line(x,y,x+30,y,obj_solid_surface_col,true,false)
{
	x -= 1
	global.animation = 0
	animate = 0
}
if place_meeting(x,y,obj_solid_surface_col) and collision_line(x,y,x-30,y,obj_solid_surface_col,true,false)
{
	x += 1
	global.animation = 0
	animate = 0
}
//Prevent Hang on Corners (of Doorways)
if place_meeting(x,y,obj_solid_surface_col) and animate = 0 and speed = 0 and !collision_line(x,y,x,y+30,obj_solid_surface_col,true,false)
{
	y += 1
}
//Prevent Hang on Tables, Shelves, Etc.
if place_meeting(x,y,obj_through_surface_col) and animate = 0
{
	y += 1
}
//Ensure Depth Correct on Tables, Shelves, Etc.
if collision_circle(x,y,30,obj_through_surface_col,true,false) and animate = 0
{
	depth = 0
}
//Set Ani.bar Drain For Mechanic
if animate = 1
{
	global.animation = 1
}
//Stop Animating When Ani.bar Runs Out
if global.anibar <= 0
{
	animate = 0
}
//Ensure Ani.bar Drain
if animate = 1
{
	global.animation = 1
}
//Change floors with player
if obj_ghost.y != obj_ghost.yprevious and animate = 1
{
	instance_create_depth(obj_ghost.x-100,obj_ghost.y,2,obj_scotch_bottle)
	animate = 0
	global.animation = 0
	instance_destroy(self)
}
//Initiate Randomized Sensors
if place_meeting(x,y+vspeed,obj_vanity_col)
{
	vspeed = 0
}
if place_meeting(x,y+vspeed,obj_e_table_col)
{
	vspeed = 0
}
//Prevent Hang on Randomized Sensors
if place_meeting(x,y,obj_vanity_col) and animate = 0
{
	y += 1
}
if place_meeting(x,y,obj_e_table_col) and animate = 0
{
	y += 1
}
//Ensure Depth on Randomized Sensors (Vanity, End Tables, Dresser, etc.)
if collision_circle(x,y,30,obj_vanity_col,true,false) and animate = 0
{
	depth = 3
}
if collision_circle(x,y,30,obj_e_table_col,true,false) and animate = 0
{
	depth = 3
}