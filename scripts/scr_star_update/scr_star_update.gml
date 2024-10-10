// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_star_update(){
	if(place_meeting(x, y, obj_jio))
	{
		audio_play_sound(snd_star_pickup,1,false)
		global.score++;
		instance_destroy(id);
	}
	else if(y > 1000)
	{
		instance_destroy(id);
	}
}