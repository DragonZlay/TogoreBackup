/// @description Insert description here
// You can write your code in this editor
image_xscale -= 0.01 * fadespeed;
fadespeed += 1;
if (image_xscale <= 0) {
	instance_destroy();	
}
if (image_index >= sprite_get_number(sprite_index)-1) {
	image_speed = 0;
}