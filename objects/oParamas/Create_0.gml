
//Battle room variables
global.border_width = 520; //520, 140
global.border_height = 120;

//player details
global.soul_spd = 2;
global.player_hp = 99;
global.player_kr = 0;
global.player_max_hp = 99;
global.player_exp = 0;
global.player_lv = 20;
global.name = "CHESTR";
global.gravity = 7;
global.gravitydirection = 0;
global.limitedtobox = true;
global.boxText = sys_textstorage.BTP1A1;
global.sansText = sys_textstorage.SDP1A1;
global.drawSansText = false;
global.resetSansText = false;
//global.boxText = "* Smells like TEST \n  Smells like NEWLINE \n  Smells Like AAAAAAAA BBBBBB";
global.drawBoxText = true;
global.textDone = false;


global.player_attack = 20;
global.player_defense = 0;
global.inv_frames = 0;

global.BEAUTIFULMODE = true;

instance_create_layer(320,384,"instances",oBulletBoard);

layer_set_visible("Effect_1", false);