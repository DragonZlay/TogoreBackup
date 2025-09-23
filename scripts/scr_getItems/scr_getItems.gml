// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_getItems(itemPage){
	var itemString = "";
	
	if (itemPage == 0) {
		for (var i = 0; i < min(array_length(oSoul.itemList), 4); i++) {
			if (i == 2) {
				itemString += "\n";
			}
			itemString += "   * " + oSoul.itemList[i][0];
		}
	} else if (itemPage == 1) {
		for (var i = 4; i < min(array_length(oSoul.itemList), 8); i++) {
			if (i == 6) {
				itemString += "\n";
			}
			itemString += "   * " + oSoul.itemList[i][0];
		}
	}
	return itemString;
}