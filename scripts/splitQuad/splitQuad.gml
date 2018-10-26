/// @func splitQuad(quadtree)
/// @desc Splits the node into 4 subnodes
/// @param quadtree QuadTree to split

var quad = argument[0];
var X = 0;
var Y = 1;

with (quad) {
	var qtRectP0 = bounds[0];
	var qtRectP1 = bounds[1];
	var qx = qtRectP0[X];
	var qy = qtRectP0[Y];
	var subWidth = round((qx - qtRectP0[X]) / 2);
	var subHeight = round((qy - qtRectP0[Y]) / 2);
 
	nodes[0] = createQuad(level+1, [[qx+subWidth, qy], [qx+2*subWidth, qy+subHeight]]);
	nodes[1] = createQuad(level+1, [[qx, qy], [qx+subWidth, qy+subHeight]]);
	nodes[2] = createQuad(level+1, [[qx, qy+subHeight], [qx+subWidth, qy+2*subHeight]]);
	nodes[3] = createQuad(level+1, [[qx+subWidth, qy+subHeight], [qx+2*subWidth, qy+2*subHeight]]);
}