/// @func collideObjWithGroup(obj)
/// @param obj Object that could be colliding

var obj = argument[0];

with (oQuadTreeMgr) {
	var collidablesInQuad = ds_list_create();
	collidablesInQuad = retrieveQuad(quadStart, collidablesInQuad, obj);
	
	with (obj)
		for (var i = 0; i < ds_list_size(collidablesInQuad); i++)
			if (place_meeting(x + hsp, y + vsp, collidablesInQuad[| i]))
				collidablesInQuad[| i].image_blend = c_aqua;
}