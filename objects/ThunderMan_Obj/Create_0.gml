//Initialize
if(!global.thunderManSlain){
    HP = 80;
    hurt = false;
    
    instance_create(x, y-56, Lightning_Ball_Obj);
    instance_create(x, y-56, Lightning_Ball_Obj);
    instance_create(x, y-56, Lightning_Ball_Obj);
    
    vspeed = -0.5;
    alarm[1] = 120;
    stamina = 3;
}
else{
    instance_destroy();
}

