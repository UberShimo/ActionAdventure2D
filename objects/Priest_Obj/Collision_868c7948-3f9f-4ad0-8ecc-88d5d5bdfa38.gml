if(!hurt){
	tempImageAlpha = image_alpha;
    image_blend = c_red;
    HP -= other.dmg;
    hurt = true;
    
    alarm[5] = 8;
	
	audio_play_sound(Hit_Sd, 0, false);
}
