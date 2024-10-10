// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Star_Update(){
	if(place_meeting(x, y, Obj_Jio))
	{
		audio_play_sound(Star_Pickup,1,false)
		global.score++;
		instance_destroy(id);
	}
	else if(y > 1000)
	{
		instance_destroy(id);
	}
}