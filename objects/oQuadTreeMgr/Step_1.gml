clearQuad(quadStart);
var size = ds_list_size(global.collidables);
show_debug_message("TAMANYO: " + string(size));
for (var i = 0; i < size; i++)
	insertQuad(quadStart, ds_list_find_value(global.collidables, i));
	
