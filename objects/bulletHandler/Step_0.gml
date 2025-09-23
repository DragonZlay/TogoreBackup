if (wavesend == true) {
	while (instance_exists(o_bullet)) {
		instance_destroy(o_bullet);
	}
	while (instance_exists(o_platform)) {
		instance_destroy(o_platform);	
	}
	while (instance_exists(o_bulletvisuals)) {
		instance_destroy(o_bulletvisuals);
	}
	if currentwave < array_length(allwaves)-1 {
		currentwave += 1;
	}
	wave = allwaves[currentwave];
	oSoul.menuenter = true;
	wavesend = false;
}

if (blink == true) {
	instance_create_layer(0, 0, "Blackout", o_blackout);
	while (instance_exists(o_bullet)) {
		instance_destroy(o_bullet);
	}
	while (instance_exists(o_platform)) {
		instance_destroy(o_platform);	
	}
	while (instance_exists(o_bulletvisuals)) {
		instance_destroy(o_bulletvisuals);
	}
	if (!instance_exists(o_blackout)) {
		blink = false;
	}
}

if (next == true) {
	attacking = true;
	next = false;
}

if (talking == true) {	//Talking is initialized by oSoul and ended by oSoul
	instance_create_layer(x, y, "Bullets", o_speech);
	talking = false;
}

if (attacking == true) {
	instance_create_layer(x, y, "Bullets", wave);
	attacking = false;
}