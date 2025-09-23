// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_useItem(item){

	global.player_hp += item[2];
	if global.player_hp > 92 {
		global.player_hp = 92;	
	}
	
	
	var newList = [];
	
	for (var i = 0; i < array_length(oSoul.itemList); i++) {
		if (oSoul.itemList[i] != item) {
		array_push(newList, oSoul.itemList[i]);	
		}
	}
	
	oSoul.itemList = newList;
}