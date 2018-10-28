/// @func clearQuad(quadtree)
/// @desc Clears a QuadTree
/// @param quadtree QuadTree to clear

var quad = argument[0];

with (quad) {
	for (var i = 0; i < ds_list_size(objects); ++i) {
	    var obj = objects[| i];
		ds_list_delete(objects, i);
	}

	for (var i = 0; i < array_length_1d(nodes); i++) {
	    if (nodes[i] != noone) {
		    clearQuad(nodes[i]);
		    nodes[i] = noone;
	    }
	}
}