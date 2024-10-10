/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_escape))
{
	paused = !paused;
	if(!paused)
	{
		instance_activate_all();
		surface_free(paused_surface);
		paused_surface = -1;
		part_system_automatic_update(global.p_system, true);
	}
}

if(paused){
	alarm[0] ++;
	alarm[1] ++;
}