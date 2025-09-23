right_key = keyboard_check(vk_right);
up_key = keyboard_check(vk_up);
left_key = keyboard_check(vk_left);
down_key = keyboard_check(vk_down);
left_pressed = keyboard_check_pressed(vk_left);
right_pressed = keyboard_check_pressed(vk_right);
down_pressed = keyboard_check_pressed(vk_down);
up_pressed = keyboard_check_pressed(vk_up);
w = keyboard_check(ord("W"));
a = keyboard_check(ord("A"));
s = keyboard_check(ord("S"));
d = keyboard_check(ord("D"));
b = keyboard_check(ord("B"));
z = keyboard_check_pressed(ord("Z"));
xkey = keyboard_check_pressed(ord("X"));
xheld = keyboard_check(ord("X"));
j = keyboard_check_pressed(ord("J"));
k = keyboard_check_pressed(ord("K"));
if (setdirspd != 0) {
gravitytimer = 0;
dirspd = setdirspd;
setdirspd = 0;
}

if (global.textDone == true && oneskip == false) {
	if (z) {
		global.textDone = false;
		oneskip = true;
		o_speechBubble.nextdialogue = true;
	}

}

if (global.textDone == false && xkey && fightmenu == false && buttonacting == false) {
	o_speechBubble.shutup = true;
}



if(keyboard_check_pressed(ord("L"))) {
	layer_set_visible("Effect_2", true);
}

if (menuenter == true) {
	global.border_width = 520;
	global.border_height = 120;
	bluemode = false;
	sprite_index = SoulHeart;
	menu = true;
	global.selectedbutton = "fight";
	global.limitedtobox = false;
	global.drawBoxText = true;
	if boxTextIndex < array_length(o_textstorage.boxTextArray) - 1 {
		boxTextIndex++;
	}
	global.boxText = o_textstorage.boxTextArray[boxTextIndex];
	oBulletBoard.currentBoxText = "";
	if sansDialogueIndex < array_length(o_textstorage.sansDialogueArray) - 1 {
		sansDialogueIndex++;
	}
	global.sansText = o_textstorage.sansDialogueArray[sansDialogueIndex];
	o_speechBubble.currentdialogue = 0;
	global.resetSansText = true;
	menuenter = false;
} else if (k) {
	x = 320;
	y = 320;
	global.limitedtobox = true;
	menu = false;
}

if (menu == true) {
	if (buttonacting == false) {
		if (left_pressed) {
			buttonindex -= 1;
			if buttonindex < 0 {
				buttonindex = 3;	
			}
		} else if (right_pressed) {
			buttonindex += 1;
			buttonindex = buttonindex mod 4;
		}
		
		
		global.selectedbutton = buttons[buttonindex];
	}
	
	if buttonindex = 0 { //Fight
		if (fightsans == false) {
			if (z) {
			oSoul.x = 102;
			oSoul.y = 290;
			previoustext = global.boxText;
			global.boxText = "   * Togore";
			oBulletBoard.currentBoxText = global.boxText;
			oBulletBoard.typistskip = true;
			fightsans = true;
			fightmenu = true;
			buttonacting = true;
			}
		} else {
			if (xkey && attackpressed == false) {
				fightsans = false;
				fightmenu = false;
				buttonacting = false;
				global.boxText = previoustext;
				global.resetBoxText = true;
			} else {
				if (z && attackpressed == false) {
					
					global.drawBoxText = false;			
					instance_create_layer(320, 300, "Bullets", o_battlebar);
					global.selectedbutton = -1;
					attackpressed = true;
					z = false;
					fightmenu = false;
				} else if (attackpressed == true) {
					if (instance_exists(o_sliderbar)) {
						if (z && o_sliderbar.stop == false) {
							o_sliderbar.stop = true;
							instance_create_layer(obj_togore.x, obj_togore.y, "Blackout", o_slash);
							sys_togoreManager.togoreDodge = true;
						}
					}
					if (attackpressed && !instance_exists(o_battlebar)) {
						attackpressed = false;
						buttonacting = false;
						global.selectedbutton = "none";
						x = 320;
						y = 320;
						global.limitedtobox = true;
						menu = false;
						bulletHandler.talking = true;
						o_speechBubble.currentdialogue = 0;
						oneskip = false;
						fightsans = false;
					
					}
				}
			}
		}
		
	} else if (buttonindex == 1) { //Act
		if (z) {
			if actmenu == false && checking == 0 {
				checking = 1;
				buttonacting = true;
				actmenu = true;	
				oSoul.x = 102;
				oSoul.y = 290;
				previoustext = global.boxText;
				global.boxText = "   * Togore";
				oBulletBoard.currentBoxText = global.boxText;
				oBulletBoard.typistskip = true;
			} else if checking == 1 {
				checking = 2;
				global.boxText = "   * Check";
				oBulletBoard.currentBoxText = global.boxText;
				oBulletBoard.typistskip = true;
			} else if checking == 2 {
				checking = 3;
				global.boxText = "* Togore - 1 USD 1 CENT\n* Pathetically broke.";
				global.resetBoxText = true;
				actmenu = false;	
			} else if checking == 3 && global.boxText == oBulletBoard.currentBoxText {
				checking = 0;
				global.boxText = previoustext;
				global.resetBoxText = true;
				actmenu = false;
				buttonacting = false;
				global.selectedbutton = "none";
				x = 320;
				y = 320;
				global.limitedtobox = true;
				menu = false;
				bulletHandler.talking = true;
				o_speechBubble.currentdialogue = 0;
				oneskip = false;
				global.drawBoxText = false;		
			}
		}
		if xkey {
			if checking == 3 && global.boxText != oBulletBoard.currentBoxText {
				oBulletBoard.currentBoxText = global.boxText;
				oBulletBoard.typistskip = true;
			} else if checking == 2 {
				checking = 1;
				global.boxText = "   * Togore";
				oBulletBoard.currentBoxText = global.boxText;
				oBulletBoard.typistskip = true;
			} else if checking == 1 {
				checking--;
				actmenu = false;
				global.boxText = previoustext;
				global.resetBoxText = true;
				buttonacting = false;
			}
		}

	} else if (buttonindex == 2) { //Item
		if array_length(itemList) > 0 || itemate == true {
			if itemmenu == false {
				if (z && itemate == true && global.boxText == oBulletBoard.currentBoxText) {
					itemate = false;
					global.boxText = previoustext;
					global.resetBoxText = true;
					itemmenu = false;
					buttonacting = false;
					global.selectedbutton = "none";
					x = 320;
					y = 320;
					global.limitedtobox = true;
					menu = false;
					bulletHandler.attacking = true;
					o_speechBubble.currentdialogue = 0;
					oneskip = false;
					global.drawBoxText = false;	
				} else if (xkey && itemate == true && global.boxText != oBulletBoard.currentBoxText) {
					oBulletBoard.currentBoxText = global.boxText;	
				} else if (z && itemate == false) {
					buttonacting = true;
					itemmenu = true;
					oSoul.x = 102;
					oSoul.y = 290;
					previoustext = global.boxText;
					global.boxText = scr_getItems(itemPage);
					oBulletBoard.currentBoxText = global.boxText;
				}
			} else { //If menu is open
				if (xkey && itemate == false) {
					buttonacting = false;
					itemmenu = false;
					global.boxText = previoustext;
					global.resetBoxText = true;
				} else {
					if (z && itemate == false) {
						itemate = true;
						global.boxText = itemList[selecteditem][1];
						global.resetBoxText = true;
						scr_useItem(itemList[selecteditem]);
						itemmenu = false;		
					}
				}
			

			if itemate == false {
					if (right_pressed) {
						if selecteditem % 2 == 0 && selecteditem+1 < array_length(itemList) {
							selecteditem++;
						} else if selecteditem % 2 == 1 && itemPage == 0 && selecteditem+3 < array_length(itemList) {
							selecteditem += 3;	
						} else if selecteditem - 5 >= 0 && (selecteditem % 2 == 1) {
							selecteditem -= 5;
						} else if selecteditem - 4 >= 0 && (selecteditem % 2 == 0) {
							selecteditem -= 4;
						} else if selecteditem % 2 == 1 && selecteditem + 3 >= array_length(itemList) {
							selecteditem--;	
						}
					
					
					} else if (left_pressed) {
						if selecteditem % 2 == 0 && itemPage == 1 {
							selecteditem -= 3;	
						} else if selecteditem % 2 == 1 && selecteditem-1 >= 0 {
							selecteditem--;	
						} else if selecteditem + 5 < array_length(itemList) {
							selecteditem += 5;
						} else if selecteditem + 4 < array_length(itemList) {
							selecteditem += 4;	
						} else if selecteditem % 2 == 0 && selecteditem + 5 >= array_length(itemList){
							selecteditem++;	
						}
					
					
					} else if (down_pressed) {
						if selecteditem + 2 < array_length(itemList) && selecteditem % 4 <= 1 {
							selecteditem += 2;
						} else if selecteditem % 4 >= 2 {
							selecteditem -= 2;	
						}
					} else if (up_pressed) {
						if selecteditem - 2 >= 0 && selecteditem % 4 >= 2 {
							selecteditem -= 2;	
						} else if selecteditem % 4 <= 1 && selecteditem + 2 < array_length(itemList) {
							selecteditem += 2;
						}
					}
				}
		
				if selecteditem >= array_length(itemList) {
					selecteditem = array_length(itemList)-1;	
				}
		
				if (selecteditem >= 4 && itemate == false && itemmenu == true) {
					itemPage = 1;
					global.boxText = scr_getItems(itemPage);
					oBulletBoard.currentBoxText = global.boxText;
				} else if (itemate == false && itemmenu == true){
					itemPage = 0;
					global.boxText = scr_getItems(itemPage);
					oBulletBoard.currentBoxText = global.boxText;
				}
		
			
		
		
				if (selecteditem % 4 == 0) {
					oSoul.x = 102;
					oSoul.y = 290;
				} else if (selecteditem % 4 == 1) {
					oSoul.x = 327;
					oSoul.y = 290;
				} else if (selecteditem % 4 == 2) {
					oSoul.x = 102;
					oSoul.y = 320;
				} else if (selecteditem % 4 == 3) {
					oSoul.x = 327;
					oSoul.y = 320;
				}
			
			
			
			
			}
		}
	} else if (buttonindex == 3) { //Mercy
		if (z) {
			if mercymenu == false {
				buttonacting = true;
				mercymenu = true;	
				oSoul.x = 102;
				oSoul.y = 290;
				previoustext = global.boxText;
				global.boxText = "   * Spare";
				oBulletBoard.currentBoxText = global.boxText;
			} else {
				global.boxText = previoustext;
				global.resetBoxText = true;
				mercymenu = false;
				buttonacting = false;
				global.selectedbutton = "none";
				x = 320;
				y = 320;
				global.limitedtobox = true;
				menu = false;
				bulletHandler.attacking = true;
				o_speechBubble.currentdialogue = 0;
				oneskip = false;
				global.drawBoxText = false;	
			}
		}
		if (xkey && mercymenu == true) {
			mercymenu = false;
			global.boxText = previoustext;
			global.resetBoxText = true;
			buttonacting = false;
		}
	}
} else {
	global.selectedbutton = "none";
	if (w) {
		global.gravitydirection = 2;
		dirspd = 20;
	} else if (a) {
		global.gravitydirection = 1;	
		dirspd = 20;
	} else if (s) {
		global.gravitydirection = 0;
		dirspd = 20;
	} else if (d) {
		global.gravitydirection = 3;	
		dirspd = 20;
	} else if (b) {
		bluemode = !bluemode;	
	}

	if (global.gravitydirection == 0) {
		image_angle = 0;
	} else if (global.gravitydirection == 1) {
		image_angle = -90;
	} else if (global.gravitydirection == 2) {
		image_angle = -180;
	} else if (global.gravitydirection == 3) {
		image_angle = -270;
	}
	
	var inst = noone;
	if (inst == noone && global.gravitydirection == 0) {
		inst = instance_place(x, y+(max(1,2*dirspd)), o_platform); //0
		if (dirspd > 1) {
			for (var i = 1; i < 2*dirspd; i++) {
				if (inst == noone) {
					inst = instance_place(x, y+i, o_platform);	
				}
			}
			
			if (inst != noone) {
				if inst.image_angle != 0 {
					inst = noone;	
				}
			}

			if (inst != noone) {
				y = inst.y-6;	
			}
		}
		if (inst != noone) {
			if inst.image_angle != 0 {
				inst = noone;	
			}
		}

	}
	

	if (inst == noone && global.gravitydirection == 1) {
		inst = instance_place(x-(max(1,2*dirspd)), y, o_platform); //0
		if (dirspd > 1) {
			for (var i = 1; i < 2*dirspd; i++) {
				if (inst == noone) {
					inst = instance_place(x-i, y, o_platform);	
				}
			}
			
			if (inst != noone) {
				if inst.image_angle != -90 {
					inst = noone;	
				}
			}

			if (inst != noone) {
				x = inst.x+6;	
			}
		}
		if (inst != noone) {
			if inst.image_angle != -90 {
				inst = noone;	
			}
		}
	}
	if (inst == noone && global.gravitydirection == 2) {
		inst = instance_place(x, y-(max(1,2*dirspd)), o_platform); //0
		if (dirspd > 1) {
			for (var i = 1; i < 2*dirspd; i++) {
				if (inst == noone) {
					inst = instance_place(x, y-i, o_platform);	
				}
			}
			
			if (inst != noone) {
				if inst.image_angle != -180 {
					inst = noone;	
				}
			}

			if (inst != noone) {
				y = inst.y+6;	
			}
		}
		if (inst != noone) {
			if inst.image_angle != -180 {
				inst = noone;	
			}
		}

	}
	if (inst == noone && global.gravitydirection == 3) {
		inst = instance_place(x+(max(1,2*dirspd)), y, o_platform); //0
		if (dirspd > 1) {
			for (var i = 1; i < 2*dirspd; i++) {
				if (inst == noone) {
					inst = instance_place(x+i, y, o_platform);	
				}
			}
			
			if (inst != noone) {
				if inst.image_angle != -270 {
					inst = noone;	
				}
			}

			if (inst != noone) {
				x = inst.x-6;	
			}
		}
		if (inst != noone) {
			if inst.image_angle != -270 {
				inst = noone;	
			}
		}
	}

	if (y >= 376 && global.gravitydirection == 0) || (x <= 320-global.border_width/2+8 && global.gravitydirection == 1) || (y <= 376-global.border_height+17 && global.gravitydirection == 2) || (x >= 320+global.border_width/2-8 && global.gravitydirection == 3) {
		grounded = true;
		//image_alpha = 1;
		dirspd = 0;
		platspd = 0;
	} else if (inst != noone) {
		grounded = true;
		//image_alpha = 1;
		dirspd = 0;
		platxspd = inst.xspd;
		platyspd = inst.yspd;
	} else {
		grounded = false;
		//image_alpha = 0.5;
		platxspd = 0;
		platyspd = 0;
	}

	if (bluemode = false) {
	sprite_index = SoulHeart;
	xspd = (right_key - left_key) * global.soul_spd;
	yspd = (down_key - up_key) * global.soul_spd;


	} else {
		sprite_index = SoulHeartBlue;
	
		if global.gravitydirection == 0 {
			jump_key = up_key;
		} else if global.gravitydirection == 1 {
			jump_key = right_key;
		} else if global.gravitydirection == 2 {
			jump_key = down_key;
		} else if global.gravitydirection == 3 {
			jump_key = left_key;
		}
	
		if dirspd != global.gravity && grounded == false {
			dirspd += 0.02*global.gravity*gravitytimer;
			gravitytimer += 0.1;
		}
		if (abs(dirspd-global.gravity) < 0.11 && grounded == false) {
			dirspd = global.gravity;
			gravitytimer = 0;
		}
		if jump_key && grounded {
			dirspd = -3;
			jumping = 30;
			jumped = true;
			gravitytimer = 0;
		}
		if jump_key && jumping > 0 {
			dirspd = -3;
			jumping -= 1;
			jumped = true;
			gravitytimer = 0;
		} else if jumped == true {
			jumped = false;
			jumping = 0;
			dirspd = -0.5;
		}

		if (global.gravitydirection == 0) {
			xspd = (right_key - left_key) * global.soul_spd + platxspd;
			yspd = dirspd + platyspd;
		} else if (global.gravitydirection == 1) {
			xspd = -dirspd + platxspd;
			yspd = (down_key - up_key) * global.soul_spd + platyspd;
		} else if (global.gravitydirection == 2) {
			xspd = (right_key - left_key) * global.soul_spd + platxspd;
			yspd = -dirspd + platyspd;
		} else if (global.gravitydirection == 3) {
			xspd = dirspd + platxspd;
			yspd = (down_key - up_key) * global.soul_spd + platyspd;
		}
	}

	if (xheld) {
		x += xspd * 0.5;
		y += yspd * 0.5;
	} else {
		x += xspd
		y += yspd
	}
}

var inst;
inst = instance_place(x, y, o_bullet);
if (inst != noone) {
	if (inst.blue == false || (inst.blue == true && (right_key == true || left_key == true || down_key == true || up_key == true))) {
		if (invtimer <= 0) {
			if (alreadyhit == false) {
				if (inst.blue == true) {
					global.player_kr += 10;
				} else {
					global.player_kr += 5;	
				}
			} else {
				global.player_kr += 2;	
			}
				global.player_hp -= 1;
				audio_play_sound(snd_hurt1, 1, false);
				invtimer = 2;
				alreadyhit = true;
		}
	}
} else {
	alreadyhit = false;	
}

if (invtimer > 0) {
	invtimer -= 1;
}

if global.player_hp <= 0 {
	game_restart();	
}

