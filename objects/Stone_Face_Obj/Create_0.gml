//Initialize
if(global.stoneFaceSlain){
	global.isControllable = false;
	global.blackScreen2 = Lets_Head_Home_Dialogue_Spr;
	
	global.blackScreen = What_Am_I_Doing_Here_Dialogue_Spr;

	Hud_Fix_Obj.alarm[1] = 120;
	Hud_Fix_Obj.alarm[2] = 420;
	Player_Obj.alarm[7] = 420;
	
	audio_stop_all();
	
	instance_destroy();
}

event_inherited();
HP = 120;
maxHP = HP;
action = "none";
meleeRange = 18;
splatColor = c_white;
hpBarWidth = 32;
hpBarHeight = 24;

depth = 20;

startAction = "dots";

global.isControllable = false;
audio_stop_all();

alarm[3] = 120;