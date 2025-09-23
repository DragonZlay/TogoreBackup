/*if (global.drawSansText == true) {
	draw_self();
	image_alpha = 1;
	draw_set_color(c_black);
	draw_set_font(fComicSans);
	if (currentBoxText != global.sansText[currentdialogue]) {
		global.textDone = false;
		if (textDelay == 0) {
			textDelay = 2;
			currentBoxText = scr_progressivetext(currentBoxText, global.sansText[currentdialogue]);
			if (string_char_at(currentBoxText, string_length(currentBoxText)) != " ") {
				audio_play_sound(snd_txtsans, 1, false);
			}
		} else if (textDelay > 0) {
			textDelay--;
		}
	} else {
		global.textDone = true;
	}
	//draw_text_ext(408, 70, currentBoxText, 20, 190);
} else {
	//image_alpha = 0;	
}
*/
var scribble_object = scribble(global.sansText[currentdialogue])
	.starting_format("fComicSans", c_black)
	.wrap(200)

if (global.drawSansText == true) {
	draw_self();
	scribble_object.draw(408, 70, typist);
	image_alpha = 1;
	
	if (typist.get_state() >= 1) {
		global.textDone = true;
	} else {
		global.textDone = false;
	}

	if (shutup == true) {
		self.typist.skip();
		global.textDone = true;
		shutup = false;
		oSoul.oneskip = false;
	}
	
}



if (nextdialogue == true) {
	if (currentdialogue == array_length(global.sansText)-1) {
		global.drawSansText = false;
		bulletHandler.next = true;
		nextdialogue = false;
		oSoul.oneskip = true;
	} else {
		currentBoxText = "";
		currentdialogue++;
		nextdialogue = false;
		oSoul.oneskip = false;
	}
}