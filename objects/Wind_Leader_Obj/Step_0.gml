if(!ATK && !hurt && action == "none"){
	// Melee
	if (x > Player_Obj.x-meleeRange && x < Player_Obj.x+meleeRange){
        ATK = true;		
        choice = irandom_range(1, 2);
		teleportChoice = irandom_range(1, 2);
		
		// Turn correct
		if(x < Player_Obj.x){
			image_xscale = 1;
		}
		else{
			image_xscale = -1;
		}
    }
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
	global.windLeaderSlain = true;
	instance_destroy(Wind_Leader_Teleport_Trigger);
    instance_destroy();
}

