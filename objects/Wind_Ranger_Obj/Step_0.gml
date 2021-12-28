// Melee
if (x > Player_Obj.x-meleeRange && x < Player_Obj.x+meleeRange && hasInvisibility){
	hasInvisibility = false;
	alphaFade = -0.02;
	alarm[2] = 300;
}

// Invisibility stuff
if(!hasInvisibility && image_alpha > 0){
	image_alpha += alphaFade;
}

// Gravity
if(place_free(x, y+1)){
    gravity = 0.25;
    gravity_direction = -90;
}
else{
    gravity = 0;
}

// Die
if(HP <= 0 && !hurt){
    instance_destroy();
}

