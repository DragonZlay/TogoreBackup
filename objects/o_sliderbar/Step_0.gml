/// @description Insert description here
// You can write your code in this editor
if (x < 100) {
	image_alpha -= 0.2;	
	if image_alpha <= -10 {
		if instance_exists(o_battlebar) {
		instance_destroy(o_battlebar);
		}	
	}
}



if stop == false {
x -= 5;
} else {
image_alpha -= 0.1;	
	if image_alpha <= 0 {
		instance_destroy();
	}
}
