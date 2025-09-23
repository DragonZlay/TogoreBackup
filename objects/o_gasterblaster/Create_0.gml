/// @description Insert description here
// You can write your code in this editor
startingtimer = timer;
blue = false;
variableset = false;
starting_angle = image_angle;
image_speed = 0;
audio_play_sound(snd_sfx_segapower, 1, false);
image_xscale = 2;
image_yscale = 2;
animtimer = 5;
anim = 0;
if variable_instance_exists(id, "track") {
x = oSoul.x;
}
starting_x = x;
starting_y = y;
if variable_instance_exists(id, "startx") {
x = starting_x - startx;
y = starting_y - starty;
image_angle = (image_angle-90) mod 360
}