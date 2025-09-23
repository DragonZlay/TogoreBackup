/// @description Insert description here
// You can write your code in this editor
if (instance_exists(parent)) {
	x = parent.x;
	y = parent.y;
	if (delay >= maxdelay) {
		var image = parent.image_index;
		instance_create_layer(x, y, "BulletTrails", obj_trailImage, {image_xscale: parent.image_xscale, image_yscale: parent.image_yscale, image_angle: parent.image_angle, image_alpha: 0.5, sprite_index: parent.sprite_index, image_index: parent.image_index, deathTimer: 16});
		delay = 0;
	} else {
		delay += 1;
	}
}

