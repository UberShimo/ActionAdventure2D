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
        image_index += 0.05;
    }
    
    //ATK left
    if(place_meeting(x-4, y, Player_Obj)){
        sprite_index = Zombie_ATK_L_Spr;
        image_speed = 0;
        image_index = 0;
        
        ATK = true;
        
        alarm[1] = 8;
    }
    //ATK right
    if(place_meeting(x+4, y, Player_Obj)){
        sprite_index = Zombie_ATK_R_Spr;
        image_speed = 0;
        image_index = 0;
        
        ATK = true;
        
        alarm[2] = 8;
    }
}

if(HP <= 0 && !hurt){
    instance_destroy();
}

