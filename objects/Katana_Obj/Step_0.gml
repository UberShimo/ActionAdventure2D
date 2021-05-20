if(Player_Obj.check_pressed && place_meeting(x, y, Player_Obj) && !Player_Obj.ATK){
    global.hasKatana = true;
    instance_create_depth(Player_Obj.x, Player_Obj.y, 5, Weapon_Get_Obj);
	audio_play_sound(PickUp_Sd, 0, false);
    instance_destroy();
}

