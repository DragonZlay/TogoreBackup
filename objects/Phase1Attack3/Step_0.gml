switch (timer)
{
	case 0:
		instance_create_layer(x, y, "Bullets", o_redshift, {});
		instance_create_layer(x, y, "Bullets", o_boxresize, {height: 160, width: 160});
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
			if (maxslashspeed >= 8) {
				maxslashspeed -= 1;
				if (maxslashspeed == 16) {
					audio_play_sound(snd_fullpower, 1, false);
				}
			}
			instance_create_layer(320+irandom_range(-64,64), 294+irandom_range(-64,64), "BulletTrails", obj_slashwarning, {image_angle: irandom_range(0, 359), image_xscale: 0.5});
		} else {
			slashtimer += 1;	
		}
}


timer++;