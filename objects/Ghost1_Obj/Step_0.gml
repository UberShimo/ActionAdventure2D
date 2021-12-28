//Move
if(!ATK && !charge && !hurt){
    move_towards_point(Player_Obj.x, Player_Obj.y, 0.5);
    
    if (x > Player_Obj.x){
        sprite_index = Ghost_L_Spr;
    }
    
    if (x < Player_Obj.x){
        sprite_index = Ghost_R_Spr;
    }
}

//Charge
if (charge || ATK){
    instance_create(x, y, Ghost_Charge_Eff_Obj);
    instance_create(x, y, Ghost_Charge_Eff_Obj);
    instance_create(x, y, Ghost_Charge_Eff_Obj);
}
else{
    instance_create(x, y, Ghost_Eff_Obj);
    instance_create(x, y, Ghost_Eff_Obj);
    instance_create(x, y, Ghost_Eff_Obj);
}

//Death
if(HP <= 0 && !hurt){
	global.ghostSlain = true;
	audio_stop_sound(Ghost_Scream_Sd);
    instance_destroy();
}

