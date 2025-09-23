/// @description Insert description here
// You can write your code in this editor

if (timer > 18) {
	image_alpha += 0.125;
} else if (timer > 0 && timer <= 4) {
	image_alpha -= 0.125;	
}

if (timer <= 0) {
	instance_destroy();	
} else {
	timer -= 1;	
}