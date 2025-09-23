// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function structmerge(primary, secondary, shared) {
	var _ReturnStruct = primary;
	
	if (shared)	{
		var _PropertyNames = variable_struct_get_names(primary);
		for (var i = 0; i < array_length(_PropertyNames); i ++)	{
			if (variable_struct_exists(secondary, _PropertyNames[i]))	{
				variable_struct_set(_ReturnStruct, _PropertyNames[i], variable_struct_get(secondary, _PropertyNames[i]));
			}
		}
	}	else	{
		var _PropertyNames = variable_struct_get_names(secondary);
		for (var i = 0; i < array_length(_PropertyNames); i ++)	{
			variable_struct_set(_ReturnStruct, _PropertyNames[i], variable_struct_get(secondary, _PropertyNames[i]));
		}
	}
	return _ReturnStruct;
}