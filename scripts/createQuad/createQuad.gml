/// @func createQuad(level, bounds)
/// @desc QuadTree constructor, I guess
/// @param level Depth level of new QT
/// @param bounds Coordinate bounds for new QT

var quad = instance_create_layer(0, 0, "Instances", oQuadTree);

with (quad) {
	level = argument[0];
	bounds = argument[1];	// bounds = [[x1, y1], [x2, y2]] ... [[0, 1], [6, 4]]
	nodes = [noone, noone, noone, noone];
	objects = ds_list_create();
}

return quad;