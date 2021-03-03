if(keyboard_check_pressed(ord("C")) || gamepad_button_check_pressed(0, gp_padu) &&
place_meeting(x, y, Player_Obj)){
    global.hasKatana = true;
    instance_destroy();
	
	audio_play_sound(PickUp_Sd, 0, false);
}

