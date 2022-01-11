if(global.currentMusic != ThunderMan_Mu){
	audio_sound_gain(global.currentMusic, 0, 100);
	global.currentMusic = ThunderMan_Mu;
	
	if(!audio_is_playing(global.currentMusic)){
		audio_play_sound(global.currentMusic, 1, true);
	}
	ini_open("music.ini");
	vol = ini_read_real("volume", "value", 0);
	ini_close();
	
	audio_sound_gain(global.currentMusic, 0.15*vol, 100);
}