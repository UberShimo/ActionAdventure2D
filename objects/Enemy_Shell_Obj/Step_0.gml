if(!ATK && !hurt && action == "none"){
	// Melee
	if (x > Player_Obj.x-meleeRange && x < Player_Obj.x+meleeRange){
        ATK = true;
            
        if (irandom_range(0, 1) = 1){
            action = "ATK1";
                
            sprite_index = "ATK1sprite";
                
            alarm[1] = 32;
			alarm[0] = image_number;
        }
		else{
            action = "ATK2"
                
            sprite_index = "ATK2sprite";
                
            alarm[1] = 40;
			alarm[0] = image_number;
        }
		// Turn correct
		if(x < Player_Obj.x){
			image_xscale = 1;
		}
		else{
			image_xscale = -1;
		}
    }
	// Right
    else if(x < Player_Obj.x){
        if (place_free(x+1, y)){
            x += 0.5;
            
            sprite_index = "moveSprite";
			image_xscale = 1;
        }
    }
    // Left
	else if(x > Player_Obj.x){
		if (place_free(x-1, y)){
            x -= 0.5;
            
            sprite_index = "moveSprite";
			image_xscale = -1;
        }
    }
    
    //Jump mechanic
    if (place_meeting(x, y+1, Collision_Obj))
    && ((place_meeting(x+4, y, Collision_Obj) && place_free(x+8, y-16))
    || (place_meeting(x-4, y, Collision_Obj)&& place_free(x-8, y-16)))
    {
        vspeed = -3;
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
    instance_destroy();
}

