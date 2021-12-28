if(other.object_index != Wind_Leader_Ring_Obj){
	image_blend = c_red;
	HP -= 2;
	hurt = true;
    
	alarm[5] = 8;
	
	audio_play_sound(Hit_Sd, 0, false);
}