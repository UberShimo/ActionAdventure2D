if(keyboard_check_pressed(ord("C")) || gamepad_button_check_pressed(0, gp_padu) &&
place_meeting(x, y, Player_Obj) && !Player_Obj.ATK){
    global.warp = 2;
    if(Player_Obj.facingRight){
        global.warpFacingRight = true;
    }
    else{
        global.warpFacingRight = false;
    }
	
	audio_play_sound(PickUp_Sd, 0, false);
    
    if(room = World){
        room_goto(GhostHouse);
    }
    else if(room = GhostHouse){
        room_goto(World);
    }
}

