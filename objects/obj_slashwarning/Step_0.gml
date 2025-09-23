/// @description Insert description here
// You can write your code in this editor

image_xscale = timer/30 + 0.1;

if (timer <= 0) {
	instance_create_layer(320, 294, "Bullets", obj_slashinside, {image_angle: image_angle});
	instance_create_layer(320, 294, "BelowBox", obj_slashoutside, {image_angle: image_angle-90});
	instance_destroy();
}

timer -= 1;