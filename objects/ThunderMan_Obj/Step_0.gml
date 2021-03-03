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

//Death
if(!HP > 0 && !hurt){
    global.thunderManSlain = true;
    instance_create(Player_Obj.x, Player_Obj.y, Player_Dance_Obj);
    with(The_C) instance_destroy();
    with(Player_Obj) instance_destroy();
    with(Lightning_Ball_Obj) instance_destroy();
	
	audio_stop_sound(Mauntain_Battle_Mu);
    instance_destroy();
}

