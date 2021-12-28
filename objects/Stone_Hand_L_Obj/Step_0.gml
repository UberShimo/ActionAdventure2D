// Wall collision fix
if(action == "none" && place_meeting(x+hspeed, y, Collision_Obj)){
	hspeed = 0;
}

// Punch eff
if(action == "punch"){
	instance_create_depth(x, y, 15, Punch_Eff_Obj);
}

// Die
if(HP <= 0 && !hurt){
    instance_destroy();
}

