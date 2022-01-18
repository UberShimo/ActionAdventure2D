song = argument0; /// @param song

audio_sound_gain(global.currentMusic, 0, 2000);
global.currentMusic = song;
	
if(!audio_is_playing(song)){
	audio_play_sound(song, 1, true);
}
ini_open("music.ini");
vol = ini_read_real("volume", "value", 0);
ini_close();
	
properVolume = vol * Get_Song_Volume(song);
	
audio_sound_gain(global.currentMusic, properVolume, 2000);
