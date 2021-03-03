if (!global.hurt && !dead){
    global.HP -= 1;
    global.hurt = true;
    SPD = 0;

    if(facingRight){
        hspeed = -3;
        vspeed = -1;
    }
    else{
        hspeed = 3;
        vspeed = -1;
    }
    
    alarm[2] = 4;
}

