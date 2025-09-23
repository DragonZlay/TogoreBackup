//Setup
//newstruct = {};
//timer = 0;
talking = false;
attacking = false;
wavesend = false;
blink = false;
next = false;


allwaves = [Phase1Attack2, Phase1Attack1, Phase1Attack1];
wave = allwaves[0];
currentwave = 0;

/*
//Mechanic Templates
talk = [[0, x, y, o_speech, {}]];
attackend = [[0, x, y, o_attackend, {}]];
phase1attack1 = [[0, x, y, Phase1Attack1, {}]];
phase1attack2 = [[0, x, y, Phase1Attack1, {}]];
phase1attack3 = [[0, x, y, Phase1Attack1, {}]];


blink = [[0, x, y, o_blink, {}]];
next = [[0, x, y, o_next, {}]];
falseblink = [[0, x, y, o_falseblink, {}]];
semiblink = [[0, x, y, o_semiblink, {}]];
boxresize = [[0, x, y, o_boxresize, {}]];
slam = [[0, x, y, o_slam, {}]]; 
warn = [[0, 320, 254, o_warn, {timer: 40}]];
downwarn = [[0, 320, 354, o_warn, {timer: 40}]];
leftwarn = [[0, 270, 304, o_warn, {rotation: 90, timer: 40}]]; //240, 400 Left and Right Side X Coords
rightwarn = [[0, 370, 304, o_warn, {rotation: -90, timer: 40}]];
blueshift = [[0, x, y, o_blueshift, {}]];
redshift = [[0, x, y, o_redshift, {}]];
teleport = [[0, x, y, o_teleport, {}]];
shatterbone = [[0, 240, 200, o_shatterbone, {}]];
//platformtest = [[0, 325, 350, o_platform, {xspd: 0, yspd: 0, angle: 0}],[0, 270, 305, o_platform, {xspd: 0, yspd: 0, angle: -90}],[0, 325, 255, o_platform, {xspd: 0, yspd: 0, angle: -180}],[0, 380, 305, o_platform, {xspd: 0, yspd: 0, angle: -270}]];
platform = [[0, x, y, o_platform, {startx: x, starty: y, xspd: 0, yspd: 0, angle:0}]];
//Bullet Templates: Offset, X, Y, Object, Struct
//Gaster Blasters should be spaced 64 pixels apart
singlebonestruct = [[0, -200, 400, o_largespinningbone, {spd: 10, coolio: 10}]];
gasterblaster = [[0, 275, 0, o_gasterblaster, {timer: 100, blastspd: 50}]];
gasterblaster2 = [[0, 325, 0, o_gasterblaster, {timer: 100, blastspd: 50}]];
gasterblaster3 = [[0, 375, 0, o_gasterblaster, {timer: 100, blastspd: 50}]];
leftfastapproachblue = [[0, -100, 300, o_medbone_blue, {spd:10}],[5, -100, 300, o_medbone_blue, {spd:10}],[10, -100, 300, o_medbone_blue, {spd:10}],[15, -100, 300, o_medbone_blue, {spd:10}],[20, -100, 300, o_medbone_blue, {spd:10}]];
tripleblasterleftblue = [[0, 256, 0, o_gasterblaster, {makeblue: true, timer: 100, blastspd: 50}],[0, 320, 0, o_gasterblaster, {timer: 100, blastspd: 50}],[0, 384, 0, o_gasterblaster, {timer: 100, blastspd: 50}]];
tripleblasterleftbluehidden = [[0, 256, 0, o_gasterblaster, {hiddenblue: true, timer: 100, blastspd: 50}],[0, 320, 0, o_gasterblaster, {timer: 100, blastspd: 50}],[0, 384, 0, o_gasterblaster, {timer: 100, blastspd: 50}]];
tripleblastermiddleblue = [[0, 256, 0, o_gasterblaster, {timer: 100, blastspd: 50}],[0, 320, 0, o_gasterblaster, {makeblue: true, timer: 100, blastspd: 50}],[0, 384, 0, o_gasterblaster, {timer: 100, blastspd: 50}]];
tripleblastermiddlebluehidden = [[0, 256, 0, o_gasterblaster, {timer: 100, blastspd: 50}],[0, 320, 0, o_gasterblaster, {hiddenblue: true, timer: 100, blastspd: 50}],[0, 384, 0, o_gasterblaster, {timer: 100, blastspd: 50}]];
tripleblasterrightblue = [[0, 256, 0, o_gasterblaster, {timer: 100, blastspd: 50}],[0, 320, 0, o_gasterblaster, {timer: 100, blastspd: 50}],[0, 384, 0, o_gasterblaster, {makeblue: true, timer: 100, blastspd: 50}]];
tripleblasterrightbluehidden = [[0, 256, 0, o_gasterblaster, {timer: 100, blastspd: 50}],[0, 320, 0, o_gasterblaster, {timer: 100, blastspd: 50}],[0, 384, 0, o_gasterblaster, {hiddenblue: true, timer: 100, blastspd: 50}]];
manytopandbottombones = [[0, -100, 278, o_smallbone, {spd: 2}], [0, -100, 370, o_smallbone, {spd:2}]];

for (var i = 0; i < 99; i++) {
	array_push(manytopandbottombones, [0, -100-(i*10), 278, o_smallbone, {spd: 2}]);
	array_push(manytopandbottombones, [0, -100-(i*10), 370, o_smallbone, {spd: 2}]);
}

manybottombones = [];
for (var i = 0; i < 500; i++) {
	array_push(manybottombones, [i*5, 580, 370, o_smallbone, {spd: 2, dir: -1}]);
}

jumpingbones = [[0, -100, 382, o_smallbone, {spd: 4, dir: 1}],[0, 740, 382, o_smallbone, {spd: 4, dir: -1}]];

goingleftblasters = [];
for (var i = 1; i < 10; i++) {
	array_push(goingleftblasters, [100*i, 600-100*i, 100, o_gasterblaster, {timer:100, blastspd: 50, startx: 200, starty: 400}]);	
}
middleblaster = [[0, 320, 60, o_gasterblaster, {timer:100, blastspd:50}], [100, 320-50, 60, o_gasterblaster, {timer:100, blastspd:50}], [100, 320+50, 60, o_gasterblaster, {timer:100, blastspd:50}]];

topbones = [];
for(var i = -1; i < 16; i++) {
array_push(topbones, [0, 248+10*i, 160, o_movebone, {finaly:220}]);
}

bottombones = [];
for(var i = -1; i < 16; i++) {
array_push(bottombones, [0, 248+10*i, 500, o_movebone, {finaly:390}]);
}
leftbones = [];
for(var i = -2; i < 16; i++) {
array_push(leftbones, [0,170,248+10*i, o_movebone, {xalign: true, finaly:234}]);
}
rightbones = [];
for(var i = -2; i < 16; i++) {
array_push(rightbones, [0,430, 248+10*i, o_movebone, {xalign: true, finaly:406}]);
}

trackblaster = [[0, 320, 0, o_gasterblaster, {timer:120, blastspd: 60, track: true}]];

manyplatforms = [];

rightfastapproachblue = [[0, 580, 300, o_medbone, {spd: 4, dir: -1}]];


//Waves: Timer, Template, Struct


structtest = [[0, blueshift , {}],[0, singlebonestruct, {spd:5}], [200, next, {}]];
rememberblasters = [[0, teleport, {newx: 320, newy: 320}],[0, redshift , {}],[0, boxresize, {height: 160, width: 160}],[0, tripleblasterleftblue, {}],[10, semiblink, {}],[10, tripleblasterrightblue, {}],[30, semiblink, {}],[30, tripleblastermiddleblue, {}],[50, semiblink, {}],[50, tripleblasterleftbluehidden, {}], [150, tripleblasterrightbluehidden, {}], [250, tripleblastermiddlebluehidden, {}], [500, next, {}]];
bonerows = [[0, manytopandbottombones, {spd:2}], [300, blink, {}]];
jumptest = [[0, blueshift , {}],[0, boxresize, {height: 160, width: 160}], [700, slam, {slam: 2}], [700, warn, {}], [740, topbones, {}], [750, blink, {}]];
slamtest = [[0, blueshift, {}],[0, boxresize, {height: 160, width: 160}],[10, slam, {slam: 0}], [30, slam, {slam: 1}], [60, slam, {slam: 2}], [90, slam, {slam: 3}], [120, slam, {slam: 1}], [130, slam, {slam: 2}], [140, slam, {slam: 0}], [150, slam, {slam: 1}], [160, slam, {slam: 2}], [170, slam, {slam: 0}], [180, slam, {slam: 1}], [190, slam, {slam: 2}], [240, slam, {slam: 0}], [260, slam, {slam: 1}], [290, slam, {slam: 2}], [300, slam, {slam: 0}]];  
bonewalltest = [[0, blueshift, {}],[0, boxresize, {height:160, width: 160}],[1, slam, {slam: 0}],[60, slam, {slam: 1}],[120, slam, {slam: 3}],[180, slam, {slam: 0}],[240, slam, {slam: 3}],[300, slam, {slam: 2}],[360, slam, {slam: 0}]];
slamup = [[0, boxresize, {height: 160, width: 160}],[0, slam, {slam: 2}],[20, warn, {}],[60, topbones, {}],];
slamdown = [[0, boxresize, {height: 160, width: 160}],[0, slam, {slam: 0}],[20,downwarn,{}],[60, bottombones, {}]];
slamleft = [[0, boxresize, {height: 160, width: 160}],[0, slam, {slam: 1}],[20,leftwarn,{}],[60, leftbones, {}]];
slamright = [[0, boxresize, {height: 160, width: 160}],[0, slam, {slam: 3}],[20,rightwarn,{}],[60, rightbones, {}]];
slamtest = [[0, blueshift, {}],[0, boxresize, {height: 160, width: 160}],[0, slam, {slam: 2}],[20, warn, {}],[60, topbones, {}],[0+100, slam, {slam: 0}],[20+100,downwarn,{}],[60+100, bottombones, {}],[0+100+100, slam, {slam: 3}],[20+100+100,rightwarn,{}],[60+100+100, rightbones, {}],[0+100+100+100, slam, {slam: 1}],[20+100+100+100,leftwarn,{}],[60+100+100+100, leftbones, {}],[400, blink, {}]];
slamtestall = [[0, blueshift, {}],[0, boxresize, {height: 160, width: 160}],[0, slam, {slam: 0}],[20, warn, {}],[60, topbones, {}],[20,downwarn,{}],[60, bottombones, {}],[20,rightwarn,{}],[60, rightbones, {}],[20,leftwarn,{}],[60, leftbones, {}],[100, blink, {}]];
bothbones = [[0, blueshift, {}],[0, boxresize, {height: 160, width: 160}],[20, warn, {}],[60, topbones, {}],[20, downwarn, {}],[60, bottombones, {}], [120, next, {}]];

slambone = [[0, blueshift, {}],[0, boxresize, {height: 160, width: 160}],[0, slam, {slam: 2}],[20, warn, {}],[60, topbones, {}],[80, slam, {slam: 0}],[100,downwarn,{}],[140, bottombones, {}],[240, slam, {slam: 2}],[260, warn, {}],[300, topbones, {}],[320, slam, {slam: 2}],[340, warn, {}],[380, topbones, {}],[400, slam, {slam: 0}]];
shatterbonewave = [[0, boxresize, {height: 160, width: 520}],[0, shatterbone, {}],[30, shatterbone, {}],[60, shatterbone, {}],[90, shatterbone, {}], [150, next, {}]];
realplatformtest = [[0, boxresize, {height: 160, width: 520}],[0, slam, {slam: 0}], [0, manybottombones, {}],[0, blueshift , {}],[0, boxresize, {height: 160, width: 400}],[600, blink, {}]];
for (var i = 0; i < 20; i++) {
	array_push(jumptest, [30*i, jumpingbones, {spd:4}]);
}
for (var i = 0; i < 3; i++) {
	array_push(jumptest, [180*(i+1), middleblaster, {startx: 800, starty: 400}]);	
}
for (var i = 0; i < 10; i++) {
	array_push(realplatformtest, [120*i, platform, {startx: 580, starty: 347, xspd: -2, yspd: 0, angle: 0}]);	
	array_push(realplatformtest, [120+120*i, rightfastapproachblue, {}]);
}


talkwave = [[0, boxresize, {height: 120, width: 400}],[0, talk, {}]];
attackendwave = [[0, attackend, {}]];
phase1attack1wave = [[0, phase1attack1, {}]];
*/


//allwaves = [[talkwave, phase1attack1wave],[talkwave, rememberblasters, attackendwave],[talkwave, slamtestall, attackendwave],[talkwave, attackendwave],];

//handling = [];
