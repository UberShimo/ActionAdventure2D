//Initialize
if(global.thunderManSlain){
	instance_destroy();
}

HP = 80;
maxHP = HP;
hurt = false;
splatColor = c_red;
hpBarWidth = 32;
hpBarHeight = 16;
    
instance_create(x, y-56, Lightning_Ball_Obj);
instance_create(x, y-56, Lightning_Ball_Obj);
instance_create(x, y-56, Lightning_Ball_Obj);
    
vspeed = -0.5;
alarm[1] = 120;
stamina = 3;

