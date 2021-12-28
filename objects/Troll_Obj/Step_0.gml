if(place_free(x, y+1)){
    gravity = 0.25;
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
                x += 0.2;
                
                sprite_index = Troll_R_Spr;
				image_xscale = 1;
                image_index += 0.1;
            }
        }
        
        if (x > Player_Obj.x - 112 &&
        x < Player_Obj.x - 48)//Ranged range
        {
            if (place_free(x+1, y) && x > Player_Obj.x - 112)
            {
                x += 0.2;
                
                sprite_index = Troll_R_Spr;
				image_xscale = 1;
                image_index -= 0.1;
            }
            
            if (ATK_load = 90) //Ranged ATK
            {
                ATK = true;
                ATK_load = 0;
                
                action = "Spit_R";
                
                sprite_index = Troll_Spit_R_Spr;
				image_xscale = 1;
                image_index = 0;
                image_speed = 0;
                
                alarm[1] = 40;
            }
            else
            {
                ATK_load += 0.5;
            }
        }
        
        if (x >= Player_Obj.x-48)//Close combat
        {
            if (place_free(x+1, y))
            {
                x += 0.2;
                
                sprite_index = Troll_R_Spr;
				image_xscale = 1;
                image_index += 0.1;
            }
            
            if(ATK_load = 60){ 
                if (random_range(0, 2) < 1) //ATK
                {
                    ATK = true;
                    ATK_load = 0;
                    action = "Hit_R";
                    
                    sprite_index = Troll_Hit_R_Spr;
					image_xscale = 1;
                    image_index = 0;
                    image_speed = 0;
                    
                    alarm[1] = 48;
                }
                else{
                    ATK = true;
                    ATK_load = 0;
                    action = "Smash_R";
                    
                    sprite_index = Troll_Charge_Smash_R_Spr;
					image_xscale = 1;
                    image_index = 0;
                    image_speed = 0.25;
                    
                    alarm[1] = 84;
					
					audio_play_sound(AUUU_Sd, 0, false);
                }
            }
            else{
                ATK_load += 0.5;
            }
        }
    }
    else //Face left
    {
        if (x >= Player_Obj.x + 112 )//Too far from player, so tries to walk closer
        {
            if (place_free(x-1, y))
            {
                x -= 0.2;
                
                sprite_index = Troll_L_Spr;
				image_xscale = 1;
                image_index += 0.1;
            }
        }
        
        if (x < Player_Obj.x + 112 &&
        x > Player_Obj.x + 48)//Ranged attacks
        {
            if (place_free(x-1, y) && x < Player_Obj.x + 112)
            {
                x -= 0.2;
                
                sprite_index = Troll_L_Spr;
                image_index -= 0.1;
            }
            
            if (ATK_load = 90) //Ranged ATK
            {
                ATK = true;
                ATK_load = 0;
                
                action = "Spit_L";
                
                sprite_index = Troll_Spit_L_Spr;
				image_xscale = 1;
                image_index = 0;
                image_speed = 0;
                
                alarm[1] = 40;
            }
            else
            {
                ATK_load += 0.5;
            }
        }
        
        if (x <= Player_Obj.x+48)//Close combat
        {
            if (place_free(x-1, y))
            {
                x -= 0.2;
                
                sprite_index = Troll_L_Spr;
				image_xscale = 1;
                image_index += 0.1;
            }
            
            if(ATK_load = 60){ 
                if (random_range(0, 2) < 1) //ATK
                {
                    ATK = true;
                    ATK_load = 0;
                    action = "Hit_L";
                    
                    sprite_index = Troll_Hit_R_Spr;
					image_xscale = -1;
                    image_index = 0;
                    image_speed = 0;
                    
                    alarm[1] = 48;
                }
                else{
                    ATK = true;
                    ATK_load = 0;
                    action = "Smash_L";
                    
                    sprite_index = Troll_Charge_Smash_L_Spr;
					image_xscale = 1;
                    image_index = 0;
                    image_speed = 0.25;
                    
                    alarm[1] = 84;
					
					audio_play_sound(AUUU_Sd, 0, false);
                }
            }
            else{
                ATK_load += 0.5;
            }
        }
    }
    
    //Jump mechanic
    if (place_meeting(x, y+1, Collision_Obj))
    && ((place_meeting(x+2, y, Collision_Obj) && place_free(x+8, y-16))
    || (place_meeting(x-2, y, Collision_Obj)&& place_free(x-8, y-16)))
    {
        vspeed = -3;
    }
}

//Death
if(HP <= 0 && !hurt){
	global.trollSlain = true;
	audio_stop_sound(AUUU_Sd);
    instance_destroy();
}

