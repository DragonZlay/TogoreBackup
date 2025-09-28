/// @description Insert description here
// You can write your code in this editor
if !variable_instance_exists(self, "timer") {
	timer = 30;
}
if !variable_instance_exists(self, "spinspeed") {
	spinspeed = 0;
}

maxtimer = timer;
slash_Delayed = false;
spinStop_Timer = 0;
spinDecay = 0;