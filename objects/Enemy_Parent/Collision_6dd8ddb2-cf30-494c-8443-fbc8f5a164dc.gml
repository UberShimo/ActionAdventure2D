if(!hurt){
    image_blend = c_red;
    HP -= other.dmg;
    hurt = true;
    vspeed = -2;
    
    alarm[5] = 8;
    
    if(x > other.x){
        hspeed = +1;
    }
    else{
        hspeed = -1;
    }
	
	audio_play_sound(Hit_Sd, 0, false);
}

