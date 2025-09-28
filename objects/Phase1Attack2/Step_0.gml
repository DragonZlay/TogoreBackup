switch (timer)
{
	case 0:
		instance_create_layer(x, y, "Bullets", o_redshift, {});
		instance_create_layer(x, y, "Bullets", o_boxresize, {height: 240, width: 240});
	break;
	
	case 20:
		bullet1 = instance_create_layer(393, 441, "Bullets", obj_ringspawner);
	break;	

	case maxtimer:
		bulletHandler.wavesend = true;
		instance_destroy(bullet1);
		instance_destroy();
	break;
}

if instance_exists(bullet1) {
	bullet1.x = 320 + 150*cos(rotateTimer);
	bullet1.y = 254 + 150*sin(rotateTimer);
}

rotateTimer -= (0.005*pi);

if (timer >= 40) {
		if (slashtimer >= maxslashspeed) {
			slashtimer = 0;
			instance_create_layer(320, 254, "BulletTrails", obj_slashwarning, {image_angle: slashangle, image_xscale: 0.5});
			instance_create_layer(320, 254, "BulletTrails", obj_slashwarning, {image_angle: slashangle+90, image_xscale: 0.5});
			slashangle += 20;
		} else {
			slashtimer += 1;	
		}
}


timer++;