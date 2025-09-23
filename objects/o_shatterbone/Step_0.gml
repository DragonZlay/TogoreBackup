/// @description Insert description here
// You can write your code in this editor
/*if (abs(finalx-x) <= 5) && (abs(finalx-x) <= 5) {
	//Shatter
	shard = instance_create_layer(x, y, "Bullets", o_boneshard, {});
	shard.image_angle = image_angle+90;
	shard.direction = shard.image_angle+90;
	instance_destroy();
}*/

if (y > 360) {
	for (var i = 0; i < 8; i++) {
		shard = instance_create_layer(x, y, "Bullets", o_boneshard, {});
		shard.image_angle = image_angle+45*i;
	}
	instance_destroy();
}


direction = image_angle + 90;