switch (timer)
{
	case 0:
		instance_create_layer(x, y, "Bullets", o_blueshift, {});
		instance_create_layer(x, y, "Bullets", o_boxresize, {height: 160, width: 160});
	break;
	
	case 20:
		instance_create_layer(320, 254, "Bullets", o_warn, {timer: 40});
		instance_create_layer(320, 354, "Bullets", o_warn, {timer: 40});
	break;
	
	case 60:
		for (var i = -1; i < 16; i++) {
			instance_create_layer(248+10*i, 160, "Bullets", o_movebone, {finaly: 220});
			instance_create_layer(248+10*i, 500, "Bullets", o_movebone, {finaly: 390});
		}
	break;
	
	case maxtimer:
		bulletHandler.wavesend = true;
		instance_destroy();
	break;
	
}

timer++;