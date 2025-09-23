/// @description Insert description here
// You can write your code in this editor
sanshead = instance_create_layer(310, 78, "Instances", oSansHead);
sansbody = instance_create_layer(314, 122, "Instances", oSansBody);
sanslegs = instance_create_layer(314, 176, "Instances", oSansPants);
sansintro = instance_create_layer(314, 122, "Instances", osans_intro);
sansbox = instance_create_layer(490, 110, "Instances", o_speechBubble);
sansintro.image_xscale = 2.10*0.75
sansintro.image_yscale = 2.10*0.75

batsilhouette = instance_create_layer(449,132, "Silhouettes", o_bat);
batsilhouette.image_xscale = 2.10*0.75
batsilhouette.image_yscale = 2.10*0.75
batsilhouette.image_alpha = 0;

sanssilhouette = instance_create_layer(314, 122, "Silhouettes", osans_shilouette);
sanssilhouette.image_xscale = 2.10*0.75
sanssilhouette.image_yscale = 2.10*0.75
sanssilhouette.image_alpha = 0;



sanshead.image_xscale = 2.14*0.75
sanshead.image_yscale = 2.14*0.75
sansbody.image_xscale = 2.14*0.75
sansbody.image_yscale = 2.25*0.75
sanslegs.image_xscale = 2.73*0.75
sanslegs.image_yscale = 2.22*0.75

//sanshead.image_alpha = 0;
//sansbody.image_alpha = 0;
//sanslegs.image_alpha = 0;
sansintro.image_alpha = 0;


intro = false;
introtimer = 240;

sansdodge = false;
timer = 2*pi;
dodgetimer = 39;
breaktimer = 0;
slamdir = -1;
slamtime = 10;
currentslam = slamdir;