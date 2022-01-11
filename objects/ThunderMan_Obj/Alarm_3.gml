/// @description Start actions

if(startAction == "AtLast"){
	startAction = "YourTime";
	
	instance_create_depth(x, y-12, 5, At_Last_Obj);
	alarm[3] = 120;
}
else if(startAction == "YourTime"){
	startAction = "startFighting";
	
	instance_create_depth(Player_Obj.x, Player_Obj.y-8, 5, Your_Time_Obj);
	alarm[3] = 120;
}
else if(startAction == "startFighting"){
	global.isControllable = true;
	
	instance_create(x, y-56, Lightning_Ball_Obj);
	instance_create(x, y-56, Lightning_Ball_Obj);
	instance_create(x, y-56, Lightning_Ball_Obj);
	
	vspeed = -0.5;
	alarm[1] = 120;
	
	// Start boss music
	global.currentMusic = ThunderMan_Mu;
	
	ini_open("music.ini");
	vol = ini_read_real("volume", "value", 0);
	ini_close();
	
	audio_play_sound(global.currentMusic, 1, true);
	audio_sound_gain(global.currentMusic, 0.15*vol, 10);
}