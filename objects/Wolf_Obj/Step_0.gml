if(place_free(x, y+1)){
    gravity = 0.25;
    gravity_direction = -90;
}
else{
    gravity = 0;
}

if (hurt = false &&
    ATK = false &&
    charge = false &&
    recover = false){
    
    image_speed = 0;
    
    //MOVEMENT
    if (x > Player_Obj.x)
    {
        if (place_free(x-3, y))
        {
            x -= 1.5;
        }
        sprite_index = Wolf_L_Spr;
        image_index += 0.25;
    }
    
    if (x < Player_Obj.x)
    {
        if (place_free(x+3, y))
        {
            x += 1.5;
        }
        sprite_index = Wolf_R_Spr;
        image_index += 0.25;
    }
    
    if (place_meeting(x, y+1, Collision_Obj))
    && ((place_meeting(x+4, y, Collision_Obj) && place_free(x+8, y-16))
    || (place_meeting(x-4, y, Collision_Obj)&& place_free(x-8, y-16)))
    {
        vspeed = -2.75;
    }
    
    //COMBAT
    if (place_meeting(x, y+1, Collision_Obj) &&
    x > Player_Obj.x &&
    x < Player_Obj.x + 24)
    {
        sprite_index = Wolf_Charge_L_Spr;
        image_speed = 0;
        image_index = 0;
        
        charge = true;
        
        alarm[1] = 12;
    }
    
    if (place_meeting(x, y+1, Collision_Obj) &&
    x < Player_Obj.x &&
    x > Player_Obj.x - 24)
    {
        sprite_index = Wolf_Charge_R_Spr;
        image_speed = 0;
        image_index = 0;
        
        charge = true;
        
        alarm[2] = 12;
    }
	
	//Jump mechanic
    if (place_meeting(x, y+1, Collision_Obj))
    && ((place_meeting(x+2, y, Collision_Obj) && place_free(x+8, y-16))
    || (place_meeting(x-2, y, Collision_Obj)&& place_free(x-8, y-16)))
    {
        vspeed = -3;
    }
}

if(ATK){
    instance_create(x, y, Wolf_Dash_Eff);
}

if(HP <= 0 && !hurt){
    instance_destroy();
}

