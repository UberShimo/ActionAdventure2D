if(place_free(x+12*image_xscale, y)){
	shock = instance_create_depth(x+12*image_xscale, y, -5, Shockwave_Obj);
	shock.image_xscale = image_xscale;
}
instance_destroy();