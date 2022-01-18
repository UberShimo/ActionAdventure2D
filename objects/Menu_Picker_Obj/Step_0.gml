if(down_pressed){
	if(place_free(x, y+20)){
		y += 20;
	}
	else{
		y += -20*4;
	}
}
else if(up_pressed){
	if(place_free(x, y-20)){
		y -= 20;
	}
	else{
		y -= -20*4;
	}
}

// Choose
if(choose_input){
	// Start
	if(place_meeting(x, y, Menu_Start_Obj)){
		global.singleWeaponMode = false;
		global.hardMode = false;

		global.HP = 8;
		global.dash = 8;
		global.hurt = false;
		global.warp = 0;
		global.warpFacingRight = true;
		global.weapon = "sword";
		global.inventoryIsOpen = false;
		global.isControllable = false;
		global.blackScreen = BLACK_SCREEN_Spr;
		global.blackScreenAlpha = 1;
		global.blackScreenAlphaChange = -1/180;
		global.blackScreen2 = noone;
		global.blackScreen2Alpha = 0;
		global.blackScreen2AlphaChange = 0;

		global.hasSword = true;
		global.hasKnife = false;
		global.hasSpear = false;
		global.hasAxe = false;
		global.hasKatana = false;
		global.hasRapier = false;
		global.hasScythe = false;
		global.hasBoomHammer = false;

		global.forestShortcutFound = false;

		global.ghostSlain = false;
		global.trollSlain = false;
		global.golemSlain = false;
		global.priestSlain = false;
		global.lavaSnakeSlain = false;
		global.windLeaderSlain = false;
		global.thunderManSlain = false;
		global.blazeManSlain = false;
		global.stoneFaceSlain = false;
		
		room_goto(Tutorial);
	}
	// Continue
	else if(place_meeting(x, y, Menu_Continue_Obj) && file_exists("save.dat")){
		ini_open("music.ini");
		song = ini_read_real("song", "value", Wind_Mu);
		ini_close();

		if(global.currentMusic != song){
			Play_Song(song);
		}
		game_load("save.dat");
	}
	// Fullscreen
	else if(place_meeting(x, y, Menu_FullScreen_Obj)){
		if(window_get_fullscreen()){
			window_set_fullscreen(false);
		}
		else{
			window_set_fullscreen(true);
		}
	}
	// Exit
	else if(place_meeting(x, y, Menu_Exit_Obj)){
		game_end();
	}
}

// Continue by pressing menu button
if((keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0, gp_start)) && file_exists("save.dat")){
	ini_open("music.ini");
	song = ini_read_real("song", "value", Wind_Mu);
	ini_close();

	if(global.currentMusic != song){
		Play_Song(song);
	}
	game_load("save.dat");
}
	
// Change music volume
if(place_meeting(x, y, Menu_Music_Obj)){
	ini_open("music.ini");
	
	if(right_pressed){
		value = ini_read_real("volume", "value", 0);
		if(value < 1){
			value += 0.1;
			ini_write_real("volume", "value", value);
		}
		properVolume = value * Get_Song_Volume(global.currentMusic);
		audio_sound_gain(global.currentMusic, properVolume, 10);
	}
	else if(left_pressed){
		value = ini_read_real("volume", "value", 0);
		if(value > 0){
			value -= 0.1;
			ini_write_real("volume", "value", value);
		}
		properVolume = value * Get_Song_Volume(global.currentMusic);
		audio_sound_gain(global.currentMusic, properVolume, 10);
	}
	ini_close();
}