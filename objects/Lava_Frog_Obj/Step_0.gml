// Gravity
if(place_free(x, y+1)){
    gravity = 0.1;
    gravity_direction = -90;
}
else{
    gravity = 0;
}

// Sprite fix
if(vspeed < 0){
	sprite_index = Lava_Frog_Jump_Spr;
}
else if(vspeed > 0){
	sprite_index = Lava_Frog_Land_Spr;
}
else{
	sprite_index = Lava_Frog_Spr;
}

// Wallfix
if(place_meeting(x+hspeed, y, Collision_Obj)){
	x += hspeed;
}

// Die
if(HP <= 0 && !hurt){
    instance_destroy();
}