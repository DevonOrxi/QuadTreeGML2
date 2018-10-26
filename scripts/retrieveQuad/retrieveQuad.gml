/// @func retrieveQuad(quadtree, obj_rect)
/// @desc Return all objects that could collide with the given object.

var quad = argument[0]
var objectsToCollide = argument[1];
var obj = argument[2];
var index = getIndex(self, obj);

if (index != -1 && nodes[0] != noone)
	objectsToCollide = retrieveQuad(nodes[index], objectsToCollide, obj);

for (var i = 0; i < ds_list_size(objects); i++)
	ds_list_add(objectsToCollide, 0, ds_list_find_value(objects, i));

return objectsToCollide;