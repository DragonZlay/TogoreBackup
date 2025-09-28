/// @description Insert description here
// You can write your code in this editor

image_xscale = timer/maxtimer + 0.1;

image_angle += spinspeed;
if (abs(spinspeed) > 0.1) {
	spinspeed -= spinspeed * spinDecay;
} else {
	spinspeed = 0;	
}
spinDecay += 0.002*30/timer;

if variable_instance_exists(self, "stopspin") && timer == 0 && spinspeed != 0 {
	spinspeed = 0;
	timer += stopspin;
}

if variable_instance_exists(self, "delay") && slash_Delayed == false && timer == 0 {
	timer += delay;
	slash_Delayed = true;
}


if (timer <= 0) {
	instance_create_layer(x, y, "Bullets", obj_slashinside, {image_angle: image_angle});
	instance_create_layer(x, y, "BelowBox", obj_slashoutside, {image_angle: image_angle-90});
	instance_destroy();
}

timer -= 1;