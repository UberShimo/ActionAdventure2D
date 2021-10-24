if(Player_Obj.check_pressed && place_meeting(x, y, Player_Obj) && !Player_Obj.ATK){
	Player_Obj.x = Forest_Shortcut_Destination_Obj.x;
	Player_Obj.y = Forest_Shortcut_Destination_Obj.y;
	
	audio_play_sound(PickUp_Sd, 0, false);
}

instance_create_depth(x, y, -5, ShortcutEff_Obj);