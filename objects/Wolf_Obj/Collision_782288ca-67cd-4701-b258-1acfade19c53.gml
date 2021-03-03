if(ATK){
	ATK = false;
	charge = false;
	recover = true;
	
    global.HP -= 1;
    global.hurt = true;
    Player_Obj.SPD = 0;
	
	Player_Obj.alarm[2] = 4;
	
	audio_play_sound(Hurt_Sd, 0, false);

	if (hspeed > 0)
	{
	    image_speed = 0; 
	    image_index = 0;
	    sprite_index = Wolf_Recover_R_Spr;
	}

	if (hspeed < 0)
	{
	    image_speed = 0;
	    image_index = 0;
	    sprite_index = Wolf_Recover_L_Spr;
	}

	hspeed = 0;
	alarm[0] = 0;
	alarm[9] = 45;
}
