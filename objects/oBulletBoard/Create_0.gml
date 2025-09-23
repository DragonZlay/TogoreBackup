current_height = 0;
current_width = 0;
offset = 0;
krtimer = 0;
x2 = 0;
surf = -1;
TG_xscale = 0;
global.drawBoxText = true;
global.resetBoxText = false;
currentBoxText = "";
textDelay = false;
video_open("GayLoverScreen.mp4");
video_enable_loop(true);

typistskip = false;
typist = scribble_typist(false);
typist.in(0.5, 0);
typi = false;



/*
ltree1 = instance_create_layer(165, 50, "BackgroundArt", obj_tree);
ltree1.image_index = 0;
ltree1.image_xscale = 2.5;
ltree1.image_yscale = 2.5;
ltree2 = instance_create_layer(180, 30, "BackgroundArt", obj_tree);
ltree2.image_index = 1;
ltree2.image_xscale = 2.5;
ltree2.image_yscale = 2.5;
ltree3 = instance_create_layer(195, 10, "BackgroundArt", obj_tree);
ltree3.image_index = 2;
ltree3.image_xscale = 2.5;
ltree3.image_yscale = 2.5;
ltree4 = instance_create_layer(210, -10, "BackgroundArt", obj_tree);
ltree4.image_index = 3;
ltree4.image_xscale = 2.5;
ltree4.image_yscale = 2.5;


rtree1 = instance_create_layer(465, 50, "BackgroundArt", obj_tree);
rtree1.image_index = 0;
rtree1.image_xscale = 2.5;
rtree1.image_yscale = 2.5;
rtree2 = instance_create_layer(450, 30, "BackgroundArt", obj_tree);
rtree2.image_index = 1;
rtree2.image_xscale = 2.5;
rtree2.image_yscale = 2.5;
rtree3 = instance_create_layer(435, 10, "BackgroundArt", obj_tree);
rtree3.image_index = 2;
rtree3.image_xscale = 2.5;
rtree3.image_yscale = 2.5;
rtree4 = instance_create_layer(420, -10, "BackgroundArt", obj_tree);
rtree4.image_index = 3;
rtree4.image_xscale = 2.5;
rtree4.image_yscale = 2.5;


path = instance_create_layer(315, 185, "BackgroundArt", obj_path);
path.image_xscale = 1.75;
path.image_yscale = 1.75;
*/