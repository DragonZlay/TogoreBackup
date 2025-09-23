/// @description Insert description here
// You can write your code in this editor
timer -=1;

if xaligned == true {
	if timer <= 0 {
		if (x != startingy) {
			x-= (finaly-startingy)/5;	
		}
	} else {
		if (x != finaly) {
		x -= (startingy-finaly)/3;
		}
	
		if (abs(finaly-x) < 5) {
			x = finaly;	
		}
	}	
} else {
	if timer <= 0 {
		if (y != startingy) {
			y-= (finaly-startingy)/5;	
		}
	} else {
		if (y != finaly) {
		y -= (startingy-finaly)/3;
		}
	
		if (abs(finaly-y) < 5) {
			y = finaly;	
		}
	}
}

if timer <= -5 {
instance_destroy();	
}