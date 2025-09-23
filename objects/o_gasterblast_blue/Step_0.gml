/// @description Insert description here
// You can write your code in this editor
blue = true;
timer -= 1;
if (timer <= 10) {
	image_alpha -= 0.1;	
}
if (image_alpha <= 0) {
	instance_destroy();	
}