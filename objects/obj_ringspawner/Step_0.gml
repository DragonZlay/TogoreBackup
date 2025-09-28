/// @description Insert description here
// You can write your code in this editor
if (bulletCooldown >= maxBulletCooldown) {
	for (var i = 0; i < 10; i += 1) {
		var bullet = instance_create_layer(x, y, "Bullets", obj_star);
		bullet.xspd = 1.5*sin((angleT*(2*pi/360)));
		bullet.yspd = 1.5*cos((angleT*(2*pi/360)));
		bullet.imageanglepersecond = 5;
		angleT += 360/10;
	}
	bulletCooldown = 0
	audio_play_sound(snd_bulletspawn1, 1, false);
} else {
	bulletCooldown += 1;
}