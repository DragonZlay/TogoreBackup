/// @description Insert description here
// You can write your code in this editor
x += xspd;
y -= yspd;

image_angle += imageanglepersecond;

if (x < -200 || x > 840 || y < -200 || y > 680) {	
	instance_destroy();
}