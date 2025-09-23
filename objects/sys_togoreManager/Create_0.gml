/// @description Insert description here
// You can write your code in this editor
togore = instance_create_layer(310, 128, "Togore", obj_togore);
togore.image_xscale = 3;
togore.image_yscale = 3;


togorebox = instance_create_layer(490, 110, "Togore", o_speechBubble);

timer = 2*pi;
dodgetimer = 39;
breaktimer = 0;
togoreDodge = false;