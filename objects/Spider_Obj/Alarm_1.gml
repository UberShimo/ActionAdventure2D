if(instance_number(Web_Hit_Obj) = 0 && random_range(0, 3) < 1){
    ATK = true;
    
    if (x < Player_Obj.x)
    {
        action = "spit_R";
        
        sprite_index = Spider_Web_R_Spr;
        image_speed = 0;
        
        alarm[2] = 16;
    }
    
    if (x > Player_Obj.x)
    {
        action = "spit_L";
        
        sprite_index = Spider_Web_L_Spr;
        image_speed = 0;
        
        alarm[2] = 16;
    }
}
else{
    alarm[1] = 30;
}

