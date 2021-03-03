//Initialize
if(!global.thunderManSlain){
    HP = 80;
    hurt = false;
    bleed = 0;
    bleed_timer = 120;
    bloodEff = 24;
    
    instance_create(x, y-56, Lightning_Ball_Obj);
    instance_create(x, y-56, Lightning_Ball_Obj);
    instance_create(x, y-56, Lightning_Ball_Obj);
    
    vspeed = -1;
    alarm[1] = 60;
    stamina = 3;
}
else{
    instance_destroy();
}

