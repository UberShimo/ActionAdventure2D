if(y = 72 && x = 32){
    sprite_index = ThunderMan_R_Spr;
    
    if(stamina > 0){
        hspeed = 2;
        vspeed = 0;
        stamina -= 1;
    }
    else{
        hspeed = 0;
        vspeed = 1;
        stamina -= 1;
    }
}

