if(y = other.y+8 && x = other.x+8){
    sprite_index = ThunderMan_R_Spr;
    
    if(stamina > 0){
        hspeed = 1;
        vspeed = 0;
        stamina -= 1;
    }
    else{
        hspeed = 0;
        vspeed = 0.5;
        stamina -= 1;
    }
}

