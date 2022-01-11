/// @description Start actions
if(startAction == "OhNo"){
	startAction = "worstNightmare";
	
	instance_create_depth(Player_Obj.x, Player_Obj.y-8, 5, Oh_No_Obj);
	alarm[3] = 180;
}
else if(startAction == "worstNightmare"){
	startAction = "startFighting";
	
	instance_create_depth(Player_Obj.x, Player_Obj.y-8, 5, Worst_Nightmare_Obj);
	alarm[3] = 120;
}
else if(startAction == "startFighting"){
	global.isControllable = true;
	Blue_Simon_Obj.vspeed = 0;
	Red_Simon_Obj.vspeed = 0;
	Green_Simon_Obj.vspeed = 0;
	
	// Start boss music
	global.currentMusic = Nightmare_Mu;
	
	ini_open("music.ini");
	vol = ini_read_real("volume", "value", 0);
	ini_close();
	
	audio_play_sound(global.currentMusic, 1, true);
	audio_sound_gain(global.currentMusic, 0.2*vol, 10);
}