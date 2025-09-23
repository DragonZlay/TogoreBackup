xangle += xspdamp;	//Modifies how fast it goes
xangle = xangle mod 360;
yangle += yspdamp;
yangle = yangle mod 360;
//zangle += 0.02;
//zangle = zangle mod 360;

x = xstartingpos + xdistamp*(sin(xangle)); //Constant modifies how far it goes
y = ystartingpos + ydistamp*(cos(yangle));
//image_xscale = zstartingxsize + abs(4*(sin(zangle)));
//image_yscale = zstartingysize + abs(4*(sin(zangle)));