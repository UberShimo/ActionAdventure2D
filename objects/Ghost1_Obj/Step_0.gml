//Bleed
if(bleed > 0){
    bleed_timer -= bleed;

    if(bleed_timer < 1){
        image_blend = c_red;
        HP -= 1;
        hurt = true;
        
        alarm[5] = 4;
        bleed_timer = 120;
    }
    bloodEff -= bleed;
    
    if(bloodEff < 1){
        bloodEff = 24;
        instance_create(x + random_range(-2, +2), y + random_range(-4, +4), BloodDrop_Obj);
    }
}

//Move
if(!ATK && !charge && !hurt){
    move_towards_point(Player_Obj.x, Player_Obj.y, 1);
    
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
	audio_stop_sound(Ghost_Scream_Sd);
    instance_destroy();
}

