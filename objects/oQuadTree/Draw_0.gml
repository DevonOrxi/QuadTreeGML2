var p0 = bounds[0];
var p1 = bounds[1];
var X = 0;
var Y = 1;

//if (array_length_1d(nodes) <= 0) {
	draw_set_alpha(0.5);
	draw_rectangle_color(p0[X], p0[Y], p1[X], p1[Y], rectColor, rectColor, rectColor, rectColor, false);
	draw_set_alpha(1);
//}