if(!hurt || other.object_index == ScytheGhost_ATK_Hitbox){ // GhostScythe hitbox work a little different
    image_blend = c_red;
    HP -= other.dmg;
    hurt = true;
    
    alarm[5] = other.stun;
	
	audio_play_sound(Hit_Sd, 0, false);
	
	if(HP <= 0){
		eff = instance_create_depth(x, y, 1, Splat_Eff_Obj);
		eff.image_blend = splatColor;
		// Kill hitbox alarms
		alarm[1] = 0;
		alarm[2] = 0;
		alarm[3] = 0;
		alarm[4] = 0;
	}
}
