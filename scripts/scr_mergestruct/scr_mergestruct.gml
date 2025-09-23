// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_mergestruct(_primary, _secondary){
	var _ReturnStruct = copyStruct(_secondary);
	var _PropertyNames = variable_struct_get_names(_secondary);
	var _extraPropertyNames = variable_struct_get_names(_primary);
	for (var i = 0; i < array_length(_PropertyNames); i++)	{
		if (variable_struct_exists(_primary, _PropertyNames[i]))	{
			variable_struct_set(_ReturnStruct, _PropertyNames[i], variable_struct_get(_primary, _PropertyNames[i]));
		}
	}
	for (var i = 0; i < array_length(_extraPropertyNames); i++) {
		var _alreadyAdded = false;
		for (var j = 0; j < array_length(_PropertyNames); j++) {
			if (_extraPropertyNames[i] == _PropertyNames[j]) {
				_alreadyAdded = true;
			}
		}
		if (_alreadyAdded == false) {
			variable_struct_set(_ReturnStruct, _extraPropertyNames[i], variable_struct_get(_primary, _extraPropertyNames[i]));
		}
	}
	return _ReturnStruct;
}