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
        instance_create(x + random_range(-2, +2), y + random_range(-4, +4), BloodDrop_Obj);
    }
}

if(place_free(x, y+1)){
    gravity = 1;
    gravity_direction = -90;
}
else{
    gravity = 0;
}

if(!ATK && !hurt){
    image_speed = 0;
    
    if (x < Player_Obj.x)
    {
        if (place_free(x+1, y))
        {
            x += 1;
            
            sprite_index = Hollow_Sword_R_Spr;
            image_index += 0.5;
        }
        
        if (x > Player_Obj.x-18)
        {
            ATK = true;
            
            if (irandom_range(0, 1) = 1)
            {
                action = "ATK1_R";
                
                sprite_index = Hollow_ATK1_R_Spr;
                image_index = 0;
                image_speed = 0;
                
                alarm[1] = 16;
            }
            else
            {
                action = "ATK2_R"
                
                sprite_index = Hollow_ATK2_R_Spr;
                image_index = 0;
                image_speed = 0;
                
                alarm[1] = 20;
            }
        }
    }
    
    if (x > Player_Obj.x)
    {
        if (place_free(x-1, y))
        {
            x -= 1;
            
            sprite_index = Hollow_Sword_L_Spr;
            image_index += 0.5;
        }
        
        if (x < Player_Obj.x+18)
        {
            ATK = true;
            
            if (irandom_range(0, 1) = 1)
            {
                action = "ATK1_L";
                
                sprite_index = Hollow_ATK1_L_Spr;
                image_index = 0;
                image_speed = 0;
                
                alarm[1] = 16;
            }
            else
            {
                action = "ATK2_L"
                
                sprite_index = Hollow_ATK2_L_Spr;
                image_index = 0;
                image_speed = 0;
                
                alarm[1] = 20;
            }
        }
    }
    
    //Jump mechanic
    if (place_meeting(x, y+1, Collision_Obj))
    && ((place_meeting(x+4, y, Collision_Obj) && place_free(x+8, y-16))
    || (place_meeting(x-4, y, Collision_Obj)&& place_free(x-8, y-16)))
    {
        vspeed = -5.5;
    }
}

// Special jump ability
if (place_meeting(x+8, y-20, Player_Obj) || place_meeting(x-8, y-20, Player_Obj)){
    vspeed = -5.5;
}

if(HP <= 0 && !hurt){
    instance_destroy();
}

