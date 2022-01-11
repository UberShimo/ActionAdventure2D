if(canExit && keyboard_check_pressed(ord("Z")) || gamepad_button_check_pressed(0, gp_face1)){
	if(global.currentMusic != Wind_Mu){
		audio_sound_gain(global.currentMusic, 0, 2000);
		global.currentMusic = Wind_Mu;
	
		if(!audio_is_playing(global.currentMusic)){
			audio_play_sound(global.currentMusic, 1, true);
		}
		ini_open("music.ini");
		vol = ini_read_real("volume", "value", 0);
		ini_close();
	
		audio_sound_gain(global.currentMusic, 0.1*vol, 2000);
	}
	room_goto(Start_Menu);
}