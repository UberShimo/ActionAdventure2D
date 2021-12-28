if(!ATK && !hurt){
    image_speed = 0;
    if (x < Player_Obj.x){
        if (x < Player_Obj.x - 12){
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
        if (x > Player_Obj.x + 12){
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
}

if(HP <= 0 && !hurt){
    instance_destroy();
}

