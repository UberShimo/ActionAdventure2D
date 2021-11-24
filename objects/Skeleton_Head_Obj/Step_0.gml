image_angle -= 16 * hspeed;

if(hspeed > 2 || hspeed < -2){
	eff = instance_create_depth(x, y, 10, Skeleton_Head_Eff_Obj);
	eff.image_angle = image_angle;
	eff.image_xscale = image_xscale;
}

// Gravity
if(place_free(x, y+1)){
	gravity = 0.5;
}
else{
	gravity = 0;
}