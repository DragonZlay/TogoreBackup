/// @description Insert description here
// You can write your code in this editor
image_xscale -= 1;
image_yscale -= 0.125;

if (image_xscale <= 0) {
	instance_destroy();
}