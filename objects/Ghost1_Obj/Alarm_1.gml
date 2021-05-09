//Charge ATK
if(random_range(0, 6) < 1){
    speed = 0;
    charge = true;
    
    sprite_index = Ghost_ChargeScream_Spr;
    
    alarm[2] = 120;
	
	audio_play_sound(Ghost_Scream_Sd, 0, false);
}
else{
    alarm[1] = 60;
}

