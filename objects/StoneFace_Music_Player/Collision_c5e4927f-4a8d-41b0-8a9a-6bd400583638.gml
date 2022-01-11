if(global.currentMusic != StoneFace_Mu){
	audio_sound_gain(global.currentMusic, 0, 1000);
	global.currentMusic = StoneFace_Mu;
	
	if(!audio_is_playing(global.currentMusic)){
		audio_play_sound(global.currentMusic, 1, true);
	}
	ini_open("music.ini");
	vol = ini_read_real("volume", "value", 0);
	ini_close();
	
	audio_sound_gain(global.currentMusic, 0.1*vol, 1000);
}