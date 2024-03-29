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
        if (x < Player_Obj.x - 16){
            if (place_free(x+1, y))
            {
                x += 0.25;
                
                sprite_index = Golem_R_Spr;
                image_index += 0.25;
            }
        }
        
        if (x < Player_Obj.x - 48)//Ranged
        {
            if (ATK_load = 60)
            {
                ATK = true;
                ATK_load = 0;
                
                if (random_range(0, 2) < 1)
                {
                    action = "ROCKnROLL_R";
                    
                    sprite_index = Golem_ROCKnROLL_R_Spr;
                    image_index = 0;
                    image_speed = 0.25;
                    
                    alarm[1] = 40;
                }
                else
                {
                    action = "Rock_Rise_R";
                    
                    sprite_index = Golem_ATK2_R_Spr;
                    image_index = 0;
                    image_speed = 0.05;
                    
                    alarm[1] = 96;
                }
            }
            else
            {
                ATK_load += 0.5;
            }
        }
        
        if (x >= Player_Obj.x - 48)//Close combat
        {
            if(ATK_load = 60){ 
                if (random_range(0, 2) < 1) //ATK
                {
                    ATK = true;
                    ATK_load = 0;
                    action = "Fist_R";
                    
                    sprite_index = Golem_ATK1_R_Spr;
                    image_index = 0;
                    image_speed = 1/16;
                    
                    alarm[1] = 48;
                }
                else{
                    ATK = true;
                    ATK_load = 0;
                    action = "Rock_Rise_R";
                    
                    sprite_index = Golem_ATK2_R_Spr;
                    image_index = 0;
                    image_speed = 0.05;
                    
                    alarm[1] = 96;
                }
            }
            else{
                ATK_load += 0.5;
            }
        }
    }
    else //Face left
    {
        if (x > Player_Obj.x + 16){
            if (place_free(x-1, y))
            {
                x -= 0.25;
                
                sprite_index = Golem_L_Spr;
                image_index += 0.25;
            }
        }
        
        if (x > Player_Obj.x + 48)//Ranged
        {
            if (ATK_load = 60)
            {
                ATK = true;
                ATK_load = 0;
                
                if (random_range(0, 2) < 1)
                {
                    action = "ROCKnROLL_L";
                    
                    sprite_index = Golem_ROCKnROLL_L_Spr;
                    image_index = 0;
                    image_speed = 0.25;
                    
                    alarm[1] = 40;
                }
                else
                {
                    action = "Rock_Rise_L";
                    
                    sprite_index = Golem_ATK2_L_Spr;
                    image_index = 0;
                    image_speed = 0.05;
                    
                    alarm[1] = 96;
                }
            }
            else
            {
                ATK_load += 0.5;
            }
        }
        
        if (x <= Player_Obj.x+48)//Close combat
        {
            if(ATK_load = 60){ 
                if (random_range(0, 2) < 1) //ATK
                {
                    ATK = true;
                    ATK_load = 0;
                    action = "Fist_L";
                    
                    sprite_index = Golem_ATK1_L_Spr;
                    image_index = 0;
                    image_speed = 1/16;
                    
                    alarm[1] = 48;
                }
                else{
                    ATK = true;
                    ATK_load = 0;
                    action = "Rock_Rise_L";
                    
                    sprite_index = Golem_ATK2_L_Spr;
                    image_index = 0;
                    image_speed = 0.05;
                    
                    alarm[1] = 96;
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
	global.golemSlain = true;
    instance_destroy();
}

