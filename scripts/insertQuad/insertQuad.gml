/// @func insertQuad(quadtree, obj_rect)
/// @desc Inserts an object into the QuadTree accordingly.
/// @param quadtree QuadTree to use
/// @param object to insert

var quad = argument[0];
var obj = argument[1];
//	show_debug_message("OBJECTS :" + string(ds_list_size(quad.objects)));
with (quad) {
	if (nodes[0] != noone) {
	    var index = getIndex(self, obj);
 
	    if (index != -1) {
			insertQuad(nodes[index], obj);
			return;
	    }
	}
	
	ds_list_add(objects, obj);
	var objLen = ds_list_size(objects);
	
	if (objLen > global.MAX_OBJECTS && level < global.MAX_LEVELS) {
		if (nodes[0] == noone)
			splitQuad(self);
			
		var i = 0;
		while (i < objLen) {
			var index = getIndex(self, ds_list_find_value(objects, i))
			if (index != -1) {
				insertQuad(nodes[index], obj);
				ds_list_delete(objects, obj);
			} else {
				i++;
			}
		}
	}
}