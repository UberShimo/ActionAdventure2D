//Bleed
if(bleed > 0){
    bleed_timer -= bleed;

    if(bleed_timer < 1){
        image_blend = c_red;
        HP -= 1;
        hurt = true;
        
        alarm[5] = 4;
        bleed_timer = 120;
    }
    bloodEff -= bleed;
    
    if(bloodEff < 1){
        bloodEff = 24;
        instance_create(x + random_range(-4, +4), y + random_range(0, +4), BloodDrop_Obj);
    }
}

if(place_free(x, y+1)){
    gravity = 1;
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
            x -= 3;
        }
        sprite_index = Wolf_L_Spr;
        image_index += 0.5;
    }
    
    if (x < Player_Obj.x)
    {
        if (place_free(x+3, y))
        {
            x += 3;
        }
        sprite_index = Wolf_R_Spr;
        image_index += 0.5;
    }
    
    if (place_meeting(x, y+1, Collision_Obj))
    && ((place_meeting(x+4, y, Collision_Obj) && place_free(x+8, y-16))
    || (place_meeting(x-4, y, Collision_Obj)&& place_free(x-8, y-16)))
    {
        vspeed = -5.5;
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
        
        alarm[1] = 6;
    }
    
    if (place_meeting(x, y+1, Collision_Obj) &&
    x < Player_Obj.x &&
    x > Player_Obj.x - 24)
    {
        sprite_index = Wolf_Charge_R_Spr;
        image_speed = 0;
        image_index = 0;
        
        charge = true;
        
        alarm[2] = 6;
    }
}

if(ATK){
    instance_create(x, y, Wolf_Dash_Eff);
}

if(HP <= 0 && !hurt){
    instance_destroy();
}

