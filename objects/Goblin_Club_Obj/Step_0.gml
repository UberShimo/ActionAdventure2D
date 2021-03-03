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
        instance_create(x + random_range(-2, +2), y + random_range(-3, +3), BloodDrop_Obj);
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
    
    if (x > Player_Obj.x){
        if (place_free(x-1, y))
        {
            x -= 1;
        }
        sprite_index = Goblin_Club_Walk_L_Spr;
        image_index += 0.5;
    }
    
    if (x < Player_Obj.x){
        if (place_free(x+1, y))
        {
            x += 1;
        }
        sprite_index = Goblin_Club_Walk_R_Spr;
        image_index += 0.5;
    }
    
    if (place_meeting(x-8, y, Player_Obj)){
        sprite_index = Goblin_Club_ATK_L_Spr;
        image_speed = 0;
        image_index = 0;
        
        ATK = true;
        
        alarm[1] = 18;
    }
    
    if (place_meeting(x+8, y, Player_Obj)){
        sprite_index = Goblin_Club_ATK_R_Spr;
        image_speed = 0;
        image_index = 0;
        
        ATK = true;
        
        alarm[2] = 18;
    }
    
    //Jump mechanic
    if (place_meeting(x, y+1, Collision_Obj))
    && ((place_meeting(x+4, y, Collision_Obj) && place_free(x+8, y-16))
    || (place_meeting(x-4, y, Collision_Obj)&& place_free(x-8, y-16)))
    {
        vspeed = -5.5;
    }
}

if(HP <= 0 && !hurt){
    instance_destroy();
}

