if(Player_Obj.check_pressed && place_meeting(x, y, Player_Obj) && !Player_Obj.ATK){
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

