// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function JioMove(){
	speedStp = 0;
	
	if(keyboard_check(ord("A")))
	{
		speedStp -= 5;
	}
	if(keyboard_check(ord("D")))
	{	
		speedStp += 5;
	}
	
	speed = speedStp;
}

function JioSpriteUpdate(){
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