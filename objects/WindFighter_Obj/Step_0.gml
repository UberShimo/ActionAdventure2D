if(!ATK && !hurt && action == "none"){
	// Melee
	if (x > Player_Obj.x-meleeRange && x < Player_Obj.x+meleeRange){
        ATK = true;		
        choice = irandom_range(1, 2);
		teleportChoice = irandom_range(1, 2);
		
		if(teleportChoice == 1){
			eff = instance_create_depth(x, y, 1, WindFighter_Teleport_Eff);
			eff.image_xscale = image_xscale;
			
			if(x > Player_Obj.x){
				x = Player_Obj.x -meleeRange;
			}
			else{
				x = Player_Obj.x +meleeRange;
			}
			y = Player_Obj.y;
		}
		
        if (choice == 1){
	        action = "ATK_H";
                
	        sprite_index = Wind_Fighter_H_ATK_Spr;
			image_index = 0;
                
	        alarm[1] = 64;
			alarm[0] = image_number*4;
        }
		else{
			action = "ATK_L";
                
	        sprite_index = Wind_Fighter_L_ATK_Spr;
			image_index = 0;
            
	        alarm[1] = 64;
			alarm[0] = image_number*4;
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
            x += 1;
            
            sprite_index = Wind_Fighter_Run_Spr;
			image_xscale = 1;
        }
    }
    // Left
	else if(x > Player_Obj.x){
		if (place_free(x-1, y)){
            x -= 1;
            
            sprite_index = Wind_Fighter_Run_Spr;
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

