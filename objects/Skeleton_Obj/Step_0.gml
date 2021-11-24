if(!ATK && !hurt && action == "none"){
	// Right
	if(x < Player_Obj.x){
        if (place_free(x+1, y)){
            x += 0.25;
            
            sprite_index = Skeleton_Walk_Spr;
			image_xscale = 1;
        }
    }
    // Left
	else if(x > Player_Obj.x){
		if (place_free(x-1, y)){
            x -= 0.25;
            
            sprite_index = Skeleton_Walk_Spr;
			image_xscale = -1;
        }
    }
	
	if(irandom_range(0, 180) == 0 || x > Player_Obj.x-meleeRange && x < Player_Obj.x+meleeRange){
		ATK = true;
		action = "headoff";
		
		sprite_index = Skeleton_HeadKick_Spr;
		image_index = 0;
		alarm[1] = 24;
		alarm[9] = 48;
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
	head = instance_create_depth(x, y-4, -1, Skeleton_Head_Obj);
	head.image_xscale = image_xscale;
    instance_destroy();
}

