/// @func getIndex(quadtree, obj)
/// @desc Determine which node the object belongs to.
/// @param quadtree QuadTree to use
/// @param object to get position and index from

var quad = argument[0];
var obj = argument[1];
var index = -1;

with (obj) {
	var qtRectP0 = quad.bounds[0];
	var qtRectP1 = quad.bounds[1];
	var oWidth = bbox_right - bbox_left;
	var oHeight = bbox_bottom - bbox_top;
	var qtMidX = x + oWidth / 2;
	var qtMidY = y + oHeight / 2;
	
	// Object can completely fit within the top quadrants
	var topQuad = (y < qtMidY) && ((y + oWidth) < qtMidY);
	// Object can completely fit within the bottom quadrants
	var botQuad = obj.y > qtMidY;
	
	// Object can completely fit within the left quadrants
	if ((x < qtMidX) && ((x + oWidth) < qtMidX)) 
		if (topQuad)
			index = 1;
		else if (botQuad)
			index = 2;
	// Object can completely fit within the right quadrants
	else if (x > qtMidX)
		if (topQuad)
			index = 0;
		else if (botQuad)
			index = 3;
}

return index;