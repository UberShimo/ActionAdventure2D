if(Player_Obj.check_pressed && place_meeting(x, y, Player_Obj) && !Player_Obj.ATK){
    global.hasAxe = true;
    instance_destroy();
	
	audio_play_sound(PickUp_Sd, 0, false);
}

