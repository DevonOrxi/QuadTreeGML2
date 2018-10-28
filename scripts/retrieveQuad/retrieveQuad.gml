/// @func retrieveQuad(quadtree, obj_rect)
/// @desc Return all objects that could collide with the given object.

var quad = argument[0]
var foundObjects = argument[1];
var obj = argument[2];
var index = getIndex(quad, obj);

if (index != -1 && nodes[0] != noone)
	foundObjects = retrieveQuad(nodes[index], foundObjects, obj);

with (quad)
	for (var i = 0; i < ds_list_size(objects); i++)
		ds_list_add(foundObjects, 0, objects[| i]);

return foundObjects;