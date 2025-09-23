/// @description Insert description here
// You can write your code in this editor
timer -= 1;
if image_xscale < 1 {
	image_xscale += 0.25
}

if image_xscale > 1 {
	image_xscale = 1;
}

if (timer <= 10) {
	image_alpha -= 0.1;	
}
if (image_alpha <= 0) {
	instance_destroy();	
}