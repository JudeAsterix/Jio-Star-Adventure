/// @description Insert description here
// You can write your code in this editor
star_ticker = (star_ticker + 1) % 30;

if(star_ticker == 0)
{
	instance_create_layer(random(1366), -30, "Instances", obj_star);
}