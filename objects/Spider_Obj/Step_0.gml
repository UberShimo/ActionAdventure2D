if(place_free(x, y+1)){
    gravity = 0.5;
    gravity_direction = -90;
}
else{
    gravity = 0;
}

if(!ATK && !hurt){
    image_speed = 0;
    if (x < Player_Obj.x){
        if (place_free(x+1, y) && x < Player_Obj.x - 12){
            x += 0.5;
            
            sprite_index = Spider_R_Spr;
            image_index += 0.25;
        }
        else if (x > Player_Obj.x-14){
            ATK = true;
            action = "bite_R";
            
            sprite_index = Spider_ATK_R_Spr;
            image_index = 0;
            image_speed = 0;
            
            alarm[2] = 12;
        }
    }
    
    if (x > Player_Obj.x){
        if (place_free(x-1, y) && x > Player_Obj.x + 12){
            x -= 0.5;
            
            sprite_index = Spider_L_Spr;
            image_index += 0.25;
        }
        else if (x < Player_Obj.x+14){
            ATK = true;
            action = "bite_L";
            
            sprite_index = Spider_ATK_L_Spr;
            image_index = 0;
            image_speed = 0;
            
            alarm[2] = 12;
        }
    }
    
    //Jump mechanic
    if (place_meeting(x, y+1, Collision_Obj))
    && ((place_meeting(x+4, y, Collision_Obj) && place_free(x+8, y-16))
    || (place_meeting(x-4, y, Collision_Obj)&& place_free(x-8, y-16)))
    {
        vspeed = -2.75;
    }
}

if(HP <= 0 && !hurt){
    instance_destroy();
}

