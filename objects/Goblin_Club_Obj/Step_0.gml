if(place_free(x, y+1)){
    gravity = 0.25;
    gravity_direction = -90;
}
else{
    gravity = 0;
}

if(!ATK && !hurt){
    if (x > Player_Obj.x){
        if (place_free(x-1, y))
        {
            x -= 0.5;
        }
        sprite_index = Goblin_Club_Walk_L_Spr;
    }
    
    if (x < Player_Obj.x){
        if (place_free(x+1, y))
        {
            x += 0.5;
        }
        sprite_index = Goblin_Club_Walk_R_Spr;
    }
    
	// Attack
    if (place_meeting(x-8, y, Player_Obj)){
        sprite_index = Goblin_Club_ATK_L_Spr;
        image_index = 0;
        
        ATK = true;
        
        alarm[1] = 32;
    }
    
    if (place_meeting(x+8, y, Player_Obj)){
        sprite_index = Goblin_Club_ATK_R_Spr;
        image_index = 0;
        
        ATK = true;
        
        alarm[2] = 32;
    }
    
    //Jump mechanic
    if (place_meeting(x, y+1, Collision_Obj))
    && ((place_meeting(x+4, y, Collision_Obj) && place_free(x+8, y-16))
    || (place_meeting(x-4, y, Collision_Obj)&& place_free(x-8, y-16)))
    {
        vspeed = -3;
    }
}

if(HP <= 0 && !hurt){
    instance_destroy();
}

