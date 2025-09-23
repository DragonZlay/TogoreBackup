/// @description Insert description here
// You can write your code in this editor
menuenter = false;
invtimer = 0;
alreadyhit = false;
bluemode = true;
xspd = 0;
yspd = 0;
grounded = 0;
jumping = 0;
dirspd = 0;
jumped = false;
gravitytimer = 7;
jump_key = keyboard_check(vk_up);
setdirspd = 0;
menu = false;
buttons = ["fight", "act", "item", "mercy"];
buttonindex = 0;
global.selectedbutton = "none";
attackpressed = false;
buttonacting = false;
platxspd = 0;
platyspd = 0;
fightsans = false;
fightmenu = false;
itemmenu = false;
actmenu = false;
mercymenu = false;
checking = 0;
checkchange = false;
itemPage = 0;
itemate = false;
selecteditem = 0;
previoustext = "";
oneskip = false;
sansDialogueIndex = 0;
boxTextIndex = 0;
skipthatitemshit = false;
itemList = [["L.Caesars", "* You ate the Little Caesars.\n* You recovered 99 HP!", 99], ["CupWater ", "* You drank the Tap Water.\n* You recovered 40 HP!", 40], ["SpinPile ",  "* You ate the Spinach Pile.\n* You recovered 20 HP!", 20], ["FrySnow  ",  "* You ate the Fried Snow.\n* You recovered 40 HP!", 40], ["Dev      ",  "* You ate the Dev Team??\n* You lost 10 HP!", -10], ["ChillChil",  "* You ate the Chilled Chili.\n* You recovered 70 HP!", 70], ["TestingTX",  "* You ate the Testing Text.\n* You recovered 20 HP!", 20], ["Eightone",  "* You ate the won.\n* You recovered 81 HP!", 81]];
audio_play_sound(megalo, 1, true);

	bluemode = false;
	sprite_index = SoulHeart;
	menu = true;
	global.selectedbutton = "fight";
	global.limitedtobox = false;
	
	

