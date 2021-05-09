if (!global.hurt && !dead){
    global.HP -= 1;
    global.hurt = true;
    SPD = 0;

    if(facingRight){
        hspeed = -1.5;
        vspeed = -0.5;
    }
    else{
        hspeed = 1.5;
        vspeed = -0.5;
    }
    
    alarm[2] = 8;
}

