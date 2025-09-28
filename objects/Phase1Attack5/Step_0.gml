switch (timer)
{
	case 0:
		instance_create_layer(x, y, "Bullets", o_redshift, {});
		instance_create_layer(x, y, "Bullets", o_boxresize, {height: 160, width: 160});
	break;
	
	case 20:
		bullet1 = instance_create_layer(-100, 294, "Bullets", obj_bowapspawner);
		bullet2 = instance_create_layer(740, 294, "Bullets", obj_bowapspawner);
	break;

	case maxtimer:
		bulletHandler.wavesend = true;
		instance_destroy(bullet1);
		instance_destroy(bullet2);
		instance_destroy();
	break;
}

if (timer >= 40) {
		if (slashtimer >= maxslashspeed) {
			slashtimer = 0;
			if (maxslashspeed >= 20) {
				maxslashspeed -= 1;
				if (maxslashspeed == 20) {
					audio_play_sound(snd_fullpower, 1, false);
				}
			}
			instance_create_layer(320, 294, "BulletTrails", obj_slashwarning, {image_angle: slashangle, image_xscale: 0.5});
			slashangle += 20;
		} else {
			slashtimer += 1;	
		}
}


timer++;