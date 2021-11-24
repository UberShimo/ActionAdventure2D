if(place_free(x, y+1)){
    gravity = 0.25;
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
            x += 0.5;
            
            sprite_index = Hollow_Sword_R_Spr;
			image_xscale = 1;
            image_index += 0.25;
        }
        
        if (x > Player_Obj.x-18)
        {
            ATK = true;
            
            if (irandom_range(0, 1) = 1)
            {
                action = "ATK1_R";
                
                sprite_index = Hollow_ATK1_R_Spr;
				image_xscale = 1;
                image_index = 0;
                image_speed = 0;
                
                alarm[1] = 32;
            }
            else
            {
                action = "ATK2_R"
                
                sprite_index = Hollow_ATK2_R_Spr;
				image_xscale = 1;
                image_index = 0;
                image_speed = 0;
                
                alarm[1] = 40;
            }
        }
    }
    
    if (x > Player_Obj.x)
    {
        if (place_free(x-1, y))
        {
            x -= 0.5;
            
            sprite_index = Hollow_Sword_R_Spr;
            image_index += 0.25;
			image_xscale = -1;
        }
        
        if (x < Player_Obj.x+18)
        {
            ATK = true;
            
            if (irandom_range(0, 1) = 1)
            {
                action = "ATK1_L";
                
                sprite_index = Hollow_ATK1_R_Spr;
				image_xscale = -1;
                image_index = 0;
                image_speed = 0;
                
                alarm[1] = 32;
            }
            else
            {
                action = "ATK2_L"
                
                sprite_index = Hollow_ATK2_R_Spr;
				image_xscale = -1;
                image_index = 0;
                image_speed = 0;
                
                alarm[1] = 40;
            }
        }
    }
    
    //Jump mechanic
    if (place_meeting(x, y+1, Collision_Obj))
    && ((place_meeting(x+4, y, Collision_Obj) && place_free(x+8, y-16))
    || (place_meeting(x-4, y, Collision_Obj)&& place_free(x-8, y-16)))
    {
        vspeed = -3;
    }
}

// Special jump ability
if (place_meeting(x+8, y-20, Player_Obj) || place_meeting(x-8, y-20, Player_Obj)){
    vspeed = -3;
}

if(HP <= 0 && !hurt){
    instance_destroy();
}

