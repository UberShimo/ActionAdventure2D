if (!global.hurt && !dead){
    global.HP -= 1;
    global.hurt = true;
    SPD = 0;

    if(facingRight){
        hspeed = -1;
        vspeed = -0.2;
    }
    else{
        hspeed = 1;
        vspeed = -0.2;
    }
    
    alarm[2] = 8;
}

