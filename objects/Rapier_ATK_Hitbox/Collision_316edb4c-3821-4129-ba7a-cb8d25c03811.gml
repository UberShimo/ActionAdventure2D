if(global.dash < 8){
	global.dash = 8;

	audio_play_sound(Dash_Cooldown_Sd, 0, false);
	instance_create(Player_Obj.x, Player_Obj.y, Dash_Cooldown_Obj);
}

instance_destroy();