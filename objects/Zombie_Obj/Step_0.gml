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

if(!spawn && !ATK && !hurt){
    image_speed = 0;
    
    //Walk
    if (x > Player_Obj.x){
        if (place_free(x-1, y))
        {
            x -= 0.5;
        }
        sprite_index = Zombie_L_Spr;
        image_index += 0.10;
    }
    else{
        if (place_free(x+1, y))
        {
            x += 0.5;
        }
        sprite_index = Zombie_R_Spr;
        image_index += 0.10;
    }
    
    //ATK left
    if(place_meeting(x-4, y, Player_Obj)){
        sprite_index = Zombie_ATK_L_Spr;
        image_speed = 0;
        image_index = 0;
        
        ATK = true;
        
        alarm[1] = 4;
    }
    //ATK right
    if(place_meeting(x+4, y, Player_Obj)){
        sprite_index = Zombie_ATK_R_Spr;
        image_speed = 0;
        image_index = 0;
        
        ATK = true;
        
        alarm[2] = 4;
    }
}

if(HP <= 0 && !hurt){
    instance_destroy();
}

