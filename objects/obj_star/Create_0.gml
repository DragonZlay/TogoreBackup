/// @description Insert description here
// You can write your code in this editor
event_inherited();
xspd = 0;
yspd = 0;
imageanglepersecond = 0;

image_xscale = 1;
image_yscale = 1;

trailer = instance_create_layer(x, y, "Bullets", obj_trailer, {parent: self.id, parentImage: self.sprite_index});
