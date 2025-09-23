// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_bullethandler(_offset, _bulletpattern, _struct){
	for (var i = 0; i < array_length(_bulletpattern); i++) {	//For all bullets in template
		if (timer == _bulletpattern[i][0] + _offset) {	//At the time given in template for each bullet
			newstruct = scr_mergestruct(_struct, _bulletpattern[i][4]);
			if (_bulletpattern[i][3] == o_platform) {
				instance_create_layer(_bulletpattern[i][1], _bulletpattern[i][2], "Platforms", _bulletpattern[i][3], newstruct);	//Summon bullet: X, Y, Layer, Object, Struct
			} else {
				instance_create_layer(_bulletpattern[i][1], _bulletpattern[i][2], "Bullets", _bulletpattern[i][3], newstruct);	//Summon bullet: X, Y, Layer, Object, Struct
			}
		}
	}
}

/*function scr_bullethandler(_offset, _bulletpattern, _xoffset, _yoffset, _angleoffset, _speedoffset){
	for (var i = 0; i < array_length(_bulletpattern); i++) {
		if (timer == _bulletpattern[i][0] + _offset) {
			//bullet = instance_create_layer(_bulletpattern[i][1] + _xoffset, _bulletpattern[i][2] + _yoffset, "Bullets", _bulletpattern[i][5], _bulletpattern[i][6])
			//bullet.image_angle = _bulletpattern[i][3]+_angleoffset;
			//bullet.spd = _bulletpattern[i][4]+_speedoffset;
		}
	}
	scr_structmerge(_struct, _bulletpattern[i][4], true)
}*/