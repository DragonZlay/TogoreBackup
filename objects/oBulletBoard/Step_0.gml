if current_width < global.border_width {
	current_width += ((global.border_width - current_width) / 2);
}

if current_width > global.border_width {
	current_width -= ((current_width - global.border_width) / 2);
}

if current_height < global.border_height {
	current_height += ((global.border_height - current_height) / 2);
}

if current_height > global.border_height {
	current_height -= ((current_height - global.border_height) / 2);
}

if global.player_kr > 40 {
	global.player_hp -= global.player_kr - 40;
	global.player_kr = 40;
}

if global.player_kr > global.player_hp {
	global.player_kr = global.player_hp;	
}

if global.player_kr >= 40 {
	if krtimer >= 1 {
		global.player_kr -= 1;
		global.player_hp -= 1;
		krtimer = 0;
	}
} else if global.player_kr >= 30 {
	if krtimer >= 2 {
		global.player_kr -= 1;
		global.player_hp -= 1;
		krtimer = 0;
	}
} else if global.player_kr >= 20 {
	if krtimer >= 5 {
		global.player_kr -= 1;
		global.player_hp -= 1;
		krtimer = 0;
	}
} else if global.player_kr >= 10 {
	if krtimer >= 10 {
		global.player_kr -= 1;
		global.player_hp -= 1;
		krtimer = 0;
	}	
} else if global.player_kr >= 1 {
	if krtimer >= 20 {
		global.player_kr -= 1;
		if (global.player_hp > 1) {
		global.player_hp -= 1;
		}
		krtimer = 0;
	}
}


if global.player_kr > 0 {
krtimer += 1;
} else {
krtimer = 0;	
}