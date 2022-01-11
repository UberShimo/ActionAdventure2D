//Initialize
if(global.thunderManSlain){
	global.isControllable = false;
	global.blackScreen2 = Lets_Head_Home_Dialogue_Spr;
	
	global.blackScreen = What_Am_I_Doing_Here_Dialogue_Spr;

	Hud_Fix_Obj.alarm[1] = 120;
	Hud_Fix_Obj.alarm[2] = 420;
	Player_Obj.alarm[7] = 420;
	
	audio_stop_all();
	
	instance_destroy();
}

HP = 80;
maxHP = HP;
hurt = false;
splatColor = c_red;
hpBarWidth = 32;
hpBarHeight = 16;
stamina = 3;
startAction = "AtLast";

global.isControllable = false;
audio_stop_all();

alarm[3] = 120;
