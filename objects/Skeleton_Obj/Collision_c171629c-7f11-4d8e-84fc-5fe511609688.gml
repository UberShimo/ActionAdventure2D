if(other.dashing){
	action = "breaking"
	head = instance_create_depth(x, y-4, -1, Skeleton_Head_Obj);
	head.image_xscale = image_xscale;
	sprite_index = Skeleton_Break_Spr;
	image_index = 0;
	alarm[9] = 18;
}