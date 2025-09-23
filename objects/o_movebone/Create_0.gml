/// @description Insert description here
// You can write your code in this editor
startingy = y;
blue = false;
timer = 30;
xaligned = false;
if variable_instance_exists(id, "changetimer") {
timer = changetimer;
}


if variable_instance_exists(id, "xalign") {
	startingy = x;
	xaligned = true;
	image_angle = 90;
}