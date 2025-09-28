switch (timer)
{
	case 0:
		instance_create_layer(x, y, "Bullets", o_redshift, {});
		instance_create_layer(x, y, "Bullets", o_boxresize, {height: 160, width: 160});
		//bullet1 = instance_create_layer(100, 294, "Bullets", obj_bowapspawner);
	break;

	case maxtimer:
		bulletHandler.wavesend = true;
		//instance_destroy(bullet1);
		instance_destroy();
	break;
}

if (timer % 140 == 0) {
		var randomspin = irandom_range(0, 359);
		if (timer % 280 == 0) {
			var randomspinspeed = -5
		} else {
			var randomspinspeed = 5
		}
		instance_create_layer(320, 294, "BulletTrails", obj_slashwarning, {stopspin: 12, timer: 120, spinspeed: randomspinspeed, image_angle: randomspin, image_xscale: 0.5});
		instance_create_layer(320, 294, "BulletTrails", obj_slashwarning, {stopspin: 12, timer: 120, delay: 3, spinspeed: randomspinspeed, image_angle: randomspin+90, image_xscale: 0.5});
		instance_create_layer(320, 294, "BulletTrails", obj_slashwarning, {stopspin: 12, timer: 120, delay: 6, spinspeed: randomspinspeed, image_angle: randomspin+45, image_xscale: 0.5});
		instance_create_layer(320, 294, "BulletTrails", obj_slashwarning, {stopspin: 12, timer: 120, delay: 9, spinspeed: randomspinspeed, image_angle: randomspin-45, image_xscale: 0.5});
}

if (timer > 0 && timer % 140 == 0) {
	if (timer % 280 == 0) {
		for (var i = 0; i < 5; i++) {
			instance_create_layer(320, 230+(16*(i)), "BulletTrails", obj_slashwarning, {timer: 120, delay: 0 + (3*i), image_angle: 90, image_xscale: 0.5});
		}	
	} else {
		for (var i = 0; i < 5; i++) {
			instance_create_layer(320, 374-(16*(i)), "BulletTrails", obj_slashwarning, {timer: 120, delay: 0 + (3*i), image_angle: 90, image_xscale: 0.5});
		}
	}
}


timer++;