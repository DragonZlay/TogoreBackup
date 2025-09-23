/// @description Insert description here
// You can write your code in this editor
timer -= 1;
//Animation manager

if (timer = 10) {
	image_index = 1;	
}

if (timer = 3) {
	image_index = 2;	
}

if (timer <= 0) {
	if animtimer <= 0 {
		anim += 1;
		animtimer = 5;
	}
	image_index = 3+(anim mod 2);
	animtimer -= 1;
}

if (timer == 0) {
	layer_set_visible("Effect_1", true);	
} else if (timer == -16) {
	layer_set_visible("Effect_1", false);	
}


	
if (variable_instance_exists(id, "color")) {
	image_blend = make_color_rgb(200, 50, 50);
} else {
	image_blend = make_color_rgb(255,255,255);	
}

if (variable_instance_exists(id, "makeblue")) {
	image_blend = make_color_rgb(0, 255, 255);
	blue = true;
}

if (variable_instance_exists(id, "hiddenblue")) {
	blue = true;
}


if (timer == 0) {
	if (blue == true) {
		var _bullet = instance_create_layer(x, y, "Bullets", o_gasterblast_blue);
		audio_play_sound(snd_blaster, 1, false);
		_bullet.image_angle = image_angle;
		_bullet.spd = blastspd;
	} else {
		var _bullet = instance_create_layer(x, y, "Bullets", o_gasterblast);
		audio_play_sound(snd_blaster, 1, false);
		_bullet.image_angle = image_angle;
		_bullet.spd = blastspd;
	}
}
//Timer 100 seconds so in 10 seconds needs to rotate 180 degrees or 18 degrees a second. Timer 50 seconds so in 5 seconds it needs to rotate 180 degrees or 9 degrees a second.
//Thus it needs to rotate faster the lower the timer is.
if (variable_instance_exists(id, "startx")) {
if (timer >= 0.7*startingtimer) {
	image_angle += 90/(0.3*startingtimer);
	x += startx/(0.3*startingtimer)
	y += starty/(0.3*startingtimer)
} else if (timer > 0) {
	image_angle = starting_angle;	
	x = starting_x;
	y = starting_y;
}
}

if (timer <= -50) {
	speed = 10;
	direction = image_angle+90;
}

if (timer <= -100) {
	instance_destroy();	
}