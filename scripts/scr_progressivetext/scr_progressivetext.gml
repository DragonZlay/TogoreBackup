// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_progressivetext(currentString, fullString){
	var length = string_length(currentString);
	var newString = currentString + string_char_at(fullString, length+1);
	return newString;
}