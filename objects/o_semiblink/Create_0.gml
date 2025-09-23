/// @description Insert description here
// You can write your code in this editor
instance_create_layer(0, 0, "Blackout", o_blackout);
while (instance_exists(o_bullet)) {
	instance_destroy(o_bullet);
}
instance_destroy();