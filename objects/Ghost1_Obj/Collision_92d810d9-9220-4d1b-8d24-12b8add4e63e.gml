if(!hurt){
    image_blend = c_red;
    HP -= 16;
    hurt = true;
    
    alarm[5] = 4;
    
    if(random_range(0,2) < 1){
        x = Player_Obj.x + 32;
    }
    else{
        x = Player_Obj.x - 32;
    }
}

