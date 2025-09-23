// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_showsurface(){
	surface_set_target(oBulletBoard.surf);
	draw_clear_alpha(c_black, 0);
	draw_self();
	surface_reset_target();
	draw_surface_part(oBulletBoard.surf, 320 - (global.border_width/2), 384 - global.border_height, global.border_width, global.border_height, 320 - (global.border_width/2), 384 - global.border_height);
}