if(!hurt){
    image_blend = c_red;
    HP -= 2;
    hurt = true;
    
    if(bleed < 8){
        bleed += 1;
    }
    
    alarm[5] = 4;
    
    if(random_range(0,2) < 1){
        x = Player_Obj.x + 32;
    }
    else{
        x = Player_Obj.x - 32;
    }
}

