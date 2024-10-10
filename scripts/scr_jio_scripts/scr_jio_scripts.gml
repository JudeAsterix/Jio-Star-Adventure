// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function jio_move(){
	speed_stp = 0;
	
	if(keyboard_check(ord("A")))
	{
		speed_stp -= 5;
	}
	if(keyboard_check(ord("D")))
	{	
		speed_stp += 5;
	}
	
	speed = speed_stp;
}

function jio_sprite_update(){
	if(speed == 0 && image_index >= 2)
	{
		image_index = 0;
	}
	else if(speed != 0 && image_index < 2)
	{
		image_index = 2;
	}
	
	if(speed > 0)
	{
		image_xscale = 1;
	}
	else if(speed < 0)
	{
		image_xscale = -1;
	}
}