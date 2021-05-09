//Death
if(!HP > 0 && !hurt){
    global.thunderManSlain = true;
    instance_create(Player_Obj.x, Player_Obj.y, Player_Dance_Obj);
    with(The_C) instance_destroy();
    with(Player_Obj) instance_destroy();
    with(Lightning_Ball_Obj) instance_destroy();
	
	audio_stop_sound(Mauntain_Battle_Mu);
    instance_destroy();
}

