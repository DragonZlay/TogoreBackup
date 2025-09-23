/// @description Insert description here
// You can write your code in this editor
fight = instance_create_layer(95, 450, "Instances", o_fight);
act = instance_create_layer(245, 450, "Instances", o_act);
item = instance_create_layer(395, 450, "Instances", o_item);
mercy = instance_create_layer(545, 450, "Instances", o_mercy);

fight.image_xscale = 1.80;
fight.image_yscale = 1.80;
act.image_xscale = 1.80;
act.image_yscale = 1.80;
item.image_xscale = 1.80;
item.image_yscale = 1.80;
mercy.image_xscale = 1.80;
mercy.image_yscale = 1.80;

global.selectedbutton = "none";