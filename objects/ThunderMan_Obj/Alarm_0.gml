if(sprite_index = ThunderMan_Exhausted_R_Spr){
    sprite_index = ThunderMan_R_Spr;
}
else if(sprite_index = ThunderMan_Exhausted_L_Spr){
    sprite_index = ThunderMan_L_Spr;
}

instance_create(x, y-56, Lightning_Ball_Obj);
instance_create(x, y-56, Lightning_Ball_Obj);
instance_create(x, y-56, Lightning_Ball_Obj);

vspeed = -1;
alarm[1] = 60;
stamina = 3;

