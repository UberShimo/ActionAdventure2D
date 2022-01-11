if(Player_Obj.check_pressed && place_meeting(x, y, Player_Obj) && !Player_Obj.ATK){
    global.warp = 0;
	global.isControllable = false;
	global.blackScreen = BLACK_SCREEN_Spr;
	
	Hud_Fix_Obj.alarm[1] = 120;
	Player_Obj.alarm[8] = 300;
	
	Player_Obj.sprite_index = Player_Sleep_Spr;
	Player_Obj.image_xscale = 1;
	
	audio_stop_all();
}

