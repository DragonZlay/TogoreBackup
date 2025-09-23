/// @description Insert description here
// You can write your code in this editor
if (bulletCooldown >= maxBulletCooldown) {
	for (var i = 0; i < 10; i += 1) {
		var bullet = instance_create_layer(x, y, "Bullets", obj_star);
		bullet.xspd = 1.5*sin(angleT);
		bullet.yspd = 1.5*cos(angleT);
		bullet.imageanglepersecond = 5;
		angleT += 360/10;
	}
	angleT += sin(objCount) * 6;
	objCount++;
	bulletCooldown = 0
	if (maxBulletCooldown >= 2) {
		maxBulletCooldown -= 0.10;
	}
	audio_play_sound(snd_bulletspawn1, 1, false);
} else {
	bulletCooldown += 1;
}