// Die
if(HP <= 0 && !hurt){
	global.isControllable = false;
    global.stoneFaceSlain = true;
	global.blackScreen2 = Lets_Head_Home_Dialogue_Spr;
	
	if(global.thunderManSlain && global.blazeManSlain){
		global.blackScreen = All_Bastards_Dead_Dialogue_Spr;
		global.blackScreen2 = Finally_Rest_Dialogue_Spr;
	}
	else if(global.thunderManSlain || global.blazeManSlain){
		global.blackScreen = One_Bastard_Left_Dialogue_Spr;
	}
	else{
		global.blackScreen = Two_Bastards_Left_Dialogue_Spr;
	}
	Hud_Fix_Obj.alarm[1] = 120;
	Hud_Fix_Obj.alarm[2] = 420;
	Player_Obj.alarm[7] = 420;
	
	audio_stop_all();
	audio_play_sound(Victory_Sd, 1, false);
	
	instance_destroy(Stone_Hand_L_Obj);
	instance_destroy(Stone_Hand_R_Obj);
	instance_destroy(Rock_Spawner_Obj);
	instance_destroy(Shockwave_Obj);
	instance_destroy(Falling_Rock_Obj);
    instance_destroy();
}

