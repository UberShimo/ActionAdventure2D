if(!hurt){
    image_blend = c_red;
    HP -= other.dmg;
    hurt = true;
    
    alarm[5] = other.stun;
	
	audio_play_sound(Hit_Sd, 0, false);
}

