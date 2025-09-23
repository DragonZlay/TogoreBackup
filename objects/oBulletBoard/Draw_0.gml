if (!surface_exists(surf))
{
    surf = surface_create(640, 480);
}

var border_1 = 320 - (current_width/2);
var border_r = 320 + (current_width/2);
var border_u = 384 - current_height;
var border_d = 384;

if (global.limitedtobox == true) {
oSoul.x = clamp(oSoul.x, border_1+8, border_r-8);
oSoul.y = clamp(oSoul.y, border_u+8, border_d-8);
}

draw_set_color(c_white);
draw_rectangle(border_1 - 4, border_u - 4, border_r + 4, border_d + 4, false);
draw_set_color(c_black);
draw_rectangle(border_1, border_u, border_r, border_d, false);

var hp_barwidth = (global.player_max_hp);
var hp_barwidth_fill = (global.player_hp);
draw_set_font(UIFont);
draw_set_color(c_white);
draw_text(40,400,global.name + "  LV " + string(global.player_lv));
draw_set_font(UIFont2);
draw_text(376, 402, "TG");
draw_set_font(UIFont);
draw_text(360 + hp_barwidth-50, 400, string(global.player_hp) + " / " + string(global.player_max_hp));
draw_set_font(UIFont2);
draw_text(240, 402, "HP");
draw_set_font(UIFont);


draw_set_color(c_red);
draw_rectangle(370-100, 400, 370 + hp_barwidth-100, 418, false);
draw_set_color(c_yellow);
draw_rectangle(370-100, 400, 370 + hp_barwidth_fill-100, 418, false);
draw_set_color(c_blue);
if global.player_kr >= global.player_hp {
	offset = 1;	
} else {
	offset = 0;	
}
if ((370 + hp_barwidth_fill - global.player_kr - offset-100) < 270) {
	x2	= 270-1;
} else {
	x2 = 370 + hp_barwidth_fill - global.player_kr - offset-100;
}
//draw_rectangle(371+hp_barwidth_fill-100, 400, x2, 418, false);
TG_xscale = (x2-(371+hp_barwidth_fill-100))/31; //CHANGE THE 31 TO SPRITE WIDTH IF YOU CHANGE THIS PLEASEE!!!!
if (global.player_kr == 0) {
	TG_xscale = 0;
}

draw_sprite_ext(spr_TG, 0, 371+hp_barwidth_fill-100, 400, TG_xscale, 1, 0, c_white, 1); //TG DISPLAY





var scribble_object = scribble(global.boxText)	//Draw all box text
	.starting_format("fBattleText", c_white)
	.wrap(480)

/*
if (global.resetBoxText == true) {
	currentBoxText = "";
	global.resetBoxText = false;
}*/

if (global.drawBoxText == true) {
	scribble_object.draw(74, 274, typist);
	
	if (typistskip == true) {
		self.typist.skip();
	}
	
	if (self.typist.get_state() < 1 && typistskip == false) {	
		textDelay = !textDelay;
		if (textDelay == true) {
			audio_play_sound(snd_boxText, 1, false);
		}
	} else {
		textDelay = false;	
	}
	
	typistskip = false;
	

	
	/*
	draw_set_color(c_white);
	draw_set_font(fBattleText);
	if (currentBoxText != global.boxText) {
		if (textDelay == false) {
			textDelay = true;
			currentBoxText = scr_progressivetext(currentBoxText, global.boxText);
			if (string_char_at(currentBoxText, string_length(currentBoxText)) != " ") {
				audio_play_sound(snd_boxText, 1, false);
			}
		} else if (textDelay == true) {
			textDelay = false;
		}
	}
	draw_text_ext(74, 274, currentBoxText, 30, 500);*/
}