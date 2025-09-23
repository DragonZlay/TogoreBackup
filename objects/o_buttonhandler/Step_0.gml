/// @description Insert description here
// You can write your code in this editor
fight.image_index = 0;
act.image_index = 0;
item.image_index = 0;
mercy.image_index = 0;

if (global.selectedbutton == "fight" || oSoul.fightmenu == true) {
	fight.image_index = 1;
	if oSoul.fightmenu == false {
	oSoul.x = fight.x - 46;
	oSoul.y = fight.y;
	}
} else if (global.selectedbutton == "act" || oSoul.actmenu == true) {
	act.image_index = 1;
	if oSoul.actmenu == false {
	oSoul.x = act.x - 46;
	oSoul.y = act.y;
	}
} else if (global.selectedbutton == "item" || oSoul.itemmenu == true) {
	item.image_index = 1;
	if oSoul.itemmenu == false {
	oSoul.x = item.x - 46;
	oSoul.y = item.y;
	}
} else if (global.selectedbutton == "mercy" || oSoul.mercymenu == true) {
	mercy.image_index = 1;
	if oSoul.mercymenu == false {
	oSoul.x = mercy.x - 46;
	oSoul.y = mercy.y;
	}
}