if(existingSimons <= 0 && !dead){
	dead = true;
	global.isControllable = false;
	global.blackScreen = Worst_Nightmare_Dialogue_Spr;
	
	Hud_Fix_Obj.alarm[1] = 120;
	alarm[11] = 300;
	
	audio_stop_all();
	audio_play_sound(Victory_Sd, 1, false);
}

// Bad fix
if(startAction == "worstNightmare"){
	global.isControllable = false;
	Player_Obj.sprite_index = Player_Spr;
}