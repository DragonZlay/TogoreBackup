if (togoreDodge == true) {
	if (breaktimer >= 0) {
		breaktimer -= 1;	
	} else if (dodgetimer >= 0) {
		dodgetimer -= 1;
		togore.xstartingpos = togore.xstartingpos - 10*sin(timer);
		timer += 0.05*pi;
		if dodgetimer == 19 {
			breaktimer = 40;	
		}
	} else {
	togoreDodge = false;
	dodgetimer = 39;
	if instance_exists(o_battlebar) {
	instance_destroy(o_battlebar);
	}
	}
}