if(place_free(x, y+1)){
    gravity = 0.25;
    gravity_direction = -90;
}
else{
    gravity = 0;
}

if(!ATK && !hurt){
    image_speed = 0;
    
    if (x > Player_Obj.x)
    {
        if (place_free(x+1, y) && (x < Player_Obj.x + 60))
        {
            x += 0.5;
        }
        else if (x > Player_Obj.x + 68)
        {
            x -= 0.5;
        }
        
        sprite_index = Hollow_Crossbow_L_Spr;
        image_index += 0.25;
    }
    
    if (x < Player_Obj.x)
    {
        if (place_free(x-1, y) && (x > Player_Obj.x - 60))
        {
            x -= 0.5;
        }
        else if (x < Player_Obj.x - 68)
        {
            x += 0.5;
        }
        
        sprite_index = Hollow_Crossbow_R_Spr;
        image_index += 0.25;
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

