/// @description Insert description here
// You can write your code in this editor
event_inherited();
image_yscale = 20;
fadespeed = 0;
image_speed = 0.5;

if (irandom(1) == 0) {
	audio_play_sound(snd_slash1, 1, false);
} else {
	audio_play_sound(snd_slash2, 1, false);	
}