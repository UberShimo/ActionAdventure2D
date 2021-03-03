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
        instance_create(x + random_range(-6, +6), y + random_range(-8, +8), BloodDrop_Obj);
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
    
    if (x < Player_Obj.x) //Face right
    {
        if (x <= Player_Obj.x - 112 )//Too far from player, so tries to walk closer
        {
            if (place_free(x+1, y))
            {
                x += 0.25;
                
                sprite_index = Troll_R_Spr;
                image_index += 0.25;
            }
        }
        
        if (x > Player_Obj.x - 112 &&
        x < Player_Obj.x - 48)//Ranged range
        {
            if (place_free(x+1, y) && x > Player_Obj.x - 112)
            {
                x += 0.25;
                
                sprite_index = Troll_R_Spr;
                image_index -= 0.25;
            }
            
            if (ATK_load = 90) //Ranged ATK
            {
                ATK = true;
                ATK_load = 0;
                
                action = "Spit_R";
                
                sprite_index = Troll_Spit_R_Spr;
                image_index = 0;
                image_speed = 0;
                
                alarm[1] = 20;
            }
            else
            {
                ATK_load += 1;
            }
        }
        
        if (x >= Player_Obj.x-48)//Close combat
        {
            if (place_free(x+1, y))
            {
                x += 0.25;
                
                sprite_index = Troll_R_Spr;
                image_index += 0.25;
            }
            
            if(ATK_load = 60){ 
                if (random_range(0, 2) < 1) //ATK
                {
                    ATK = true;
                    ATK_load = 0;
                    action = "Hit_R";
                    
                    sprite_index = Troll_Hit_R_Spr;
                    image_index = 0;
                    image_speed = 0;
                    
                    alarm[1] = 24;
                }
                else{
                    ATK = true;
                    ATK_load = 0;
                    action = "Smash_R";
                    
                    sprite_index = Troll_Charge_Smash_R_Spr;
                    image_index = 0;
                    image_speed = 0.5;
                    
                    alarm[1] = 42;
					
					audio_play_sound(AUUU_Sd, 0, false);
                }
            }
            else{
                ATK_load += 1;
            }
        }
    }
    else //Face left
    {
        if (x >= Player_Obj.x + 112 )//Too far from player, so tries to walk closer
        {
            if (place_free(x-1, y))
            {
                x -= 0.25;
                
                sprite_index = Troll_L_Spr;
                image_index += 0.25;
            }
        }
        
        if (x < Player_Obj.x + 112 &&
        x > Player_Obj.x + 48)//Ranged attacks
        {
            if (place_free(x-1, y) && x < Player_Obj.x + 112)
            {
                x -= 0.25;
                
                sprite_index = Troll_L_Spr;
                image_index -= 0.25;
            }
            
            if (ATK_load = 90) //Ranged ATK
            {
                ATK = true;
                ATK_load = 0;
                
                action = "Spit_L";
                
                sprite_index = Troll_Spit_L_Spr;
                image_index = 0;
                image_speed = 0;
                
                alarm[1] = 20;
            }
            else
            {
                ATK_load += 1;
            }
        }
        
        if (x <= Player_Obj.x+48)//Close combat
        {
            if (place_free(x-1, y))
            {
                x -= 0.25;
                
                sprite_index = Troll_L_Spr;
                image_index += 0.25;
            }
            
            if(ATK_load = 60){ 
                if (random_range(0, 2) < 1) //ATK
                {
                    ATK = true;
                    ATK_load = 0;
                    action = "Hit_L";
                    
                    sprite_index = Troll_Hit_L_Spr;
                    image_index = 0;
                    image_speed = 0;
                    
                    alarm[1] = 24;
                }
                else{
                    ATK = true;
                    ATK_load = 0;
                    action = "Smash_L";
                    
                    sprite_index = Troll_Charge_Smash_L_Spr;
                    image_index = 0;
                    image_speed = 0.5;
                    
                    alarm[1] = 42;
					
					audio_play_sound(AUUU_Sd, 0, false);
                }
            }
            else{
                ATK_load += 1;
            }
        }
    }
    
    //Jump mechanic
    if (place_meeting(x, y+1, Collision_Obj))
    && ((place_meeting(x+2, y, Collision_Obj) && place_free(x+8, y-16))
    || (place_meeting(x-2, y, Collision_Obj)&& place_free(x-8, y-16)))
    {
        vspeed = -5.5;
    }
}

//Death
if(HP <= 0 && !hurt){
	audio_stop_sound(AUUU_Sd);
    instance_destroy();
}

