if(!place_free(x+hspeed, y)){
	hspeed = -hspeed;
}
if(!place_free(x, y+vspeed)){
	vspeed = storedVspeed;
}