/// @description Insert description here
// You can write your code in this editor
draw_text(30, 30, "Score: " + string(global.score));

if(paused == true)
{
	part_system_automatic_update(global.p_system, false);
	if(!surface_exists(paused_surface))
    {
		if(paused_surface == -1)
        {
			instance_deactivate_all(true);
        }
	    paused_surface = surface_create(room_width, room_height);
	    surface_set_target(paused_surface);
	    draw_surface(application_surface, 0, 0);
	    surface_reset_target();
    }
	else{
	    draw_surface(paused_surface, 0, 0);
	    draw_set_alpha(0.5);
	    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
	    draw_set_alpha(1);
	    draw_set_halign(fa_center);
	    draw_text_transformed_colour(room_width / 2, room_height / 2, "PAUSED", 2, 2, 0, c_white, c_white, c_white, c_white, 1);
	    draw_set_halign(fa_left);
    }
}