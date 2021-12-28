if(!hurt){
    image_blend = c_red;
    HP -= other.dmg;
    hurt = true;
    
    alarm[5] = other.stun;
	
	audio_play_sound(Hit_Sd, 0, false);
	
	if(HP <= 0){
		eff = instance_create_depth(x, y, 1, Splat_Eff_Obj);
		eff.image_blend = splatColor;
	}
}

