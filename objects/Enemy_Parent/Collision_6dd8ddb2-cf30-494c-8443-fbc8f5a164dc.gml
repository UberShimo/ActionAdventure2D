if(!hurt){
    image_blend = c_red;
    HP -= other.dmg;
    hurt = true;
    vspeed = -4;
    
    alarm[5] = 4;
    
    if(x > other.x){
        hspeed = +2;
    }
    else{
        hspeed = -2;
    }
	
	audio_play_sound(Hit_Sd, 0, false);
}

