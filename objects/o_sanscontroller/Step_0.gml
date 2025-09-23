/// @description Insert description here
// You can write your code in this editor
//sanshead.x -= 1;

if (intro == true) {
	if (introtimer >= 170 && introtimer <= 180) {
		//sansintro.x = sansintro.xstartingpos - 150*sin(timer);
		//timer += 0.05*pi;
	}
	
	if (introtimer == 140) {
		sansintro.image_index = 1;
	}
	
	if (introtimer == 40) {
		sansintro.image_index = 2;	
	}
	
	if(introtimer == 40) {
		instance_create_layer(0, 0, "Blackout", o_whiteout);	
	}
	
	if (introtimer == 38) {
		sansintro.image_index = 3;
	}
	
	if (introtimer == -80) {
		sansintro.image_alpha = 0;
		sanssilhouette.image_alpha = 1;
		batsilhouette.image_alpha = 1;
		_introwhiteout = instance_create_layer(0, 0, "Blackout", o_whiteoutintro);
	}
	
	if (introtimer <= -80 && introtimer > -100) {
		sanssilhouette.x += 6;
		batsilhouette.x += 5;
		batsilhouette.y -= 1.5;
		batsilhouette.image_angle -= 90/20;
	}
	
	if (introtimer <= -140 && introtimer > -170) {
		batsilhouette.y += 20;
	}
	
	
	
	if (introtimer == -240) {
		sansintro.image_index = 0;
		sanssilhouette.image_alpha = 0;
		sansintro.image_alpha = 0;
		instance_destroy(_introwhiteout);
		sansbody.image_alpha = 1;
		sanslegs.image_alpha = 1;
		sanshead.image_alpha = 1;
	}
	
	introtimer--;
}



if (sansdodge == true) {
	if (breaktimer >= 0) {
		breaktimer -= 1;	
	} else if (dodgetimer >= 0) {
		dodgetimer -= 1;
		sanshead.xstartingpos = sanshead.xstartingpos - 10*sin(timer);
		sansbody.xstartingpos = sansbody.xstartingpos - 10*sin(timer);
		sanslegs.xstartingpos = sanslegs.xstartingpos - 10*sin(timer);
		timer += 0.05*pi;
		if dodgetimer == 19 {
			breaktimer = 40;	
		}
	} else {
	sansdodge = false;
	dodgetimer = 39;
	if instance_exists(o_battlebar) {
	instance_destroy(o_battlebar);
	}
	}
}

if (slamdir != -1) {
	sansbody.image_index = slamdir;
	if (currentslam != slamdir) {
		slamtime = 30;	
	}
	currentslam = slamdir;
	slamtime -= 1;
	if slamtime <= 0 {
		slamdir = -1;
	}
} else {
	sansbody.image_index = 1;	
}