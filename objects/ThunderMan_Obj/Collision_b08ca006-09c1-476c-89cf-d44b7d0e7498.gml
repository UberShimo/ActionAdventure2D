if(y = 72 && x = 224){
    sprite_index = ThunderMan_L_Spr;
    
    if(stamina > 0){
        hspeed = -1;
        vspeed = 0;
        stamina -= 1;
    }
    else{
        hspeed = 0;
        vspeed = 0.5;
        stamina -= 1;
    }
}

