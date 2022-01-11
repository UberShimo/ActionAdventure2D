/// @description Start actions

if(startAction == "FaceBlaze"){
	startAction = "Sure";
	
	instance_create_depth(x, y-12, 5, Face_Blaze_Obj);
	alarm[3] = 120;
}
else if(startAction == "Sure"){
	startAction = "startFighting";
	
	instance_create_depth(Player_Obj.x, Player_Obj.y-8, 5, Sure_Obj);
	alarm[3] = 120;
}
else if(startAction == "startFighting"){
	global.isControllable = true;
	ATK = false;
	
	// Start boss music
	global.currentMusic = BlazeMan_Mu;
	
	ini_open("music.ini");
	vol = ini_read_real("volume", "value", 0);
	ini_close();
	
	audio_play_sound(global.currentMusic, 1, true);
	audio_sound_gain(global.currentMusic, 0.1*vol, 10);
}