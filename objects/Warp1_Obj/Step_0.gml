if(Player_Obj.check_pressed && place_meeting(x, y, Player_Obj) && !Player_Obj.ATK){
    global.warp = 1;
    if(Player_Obj.facingRight){
        global.warpFacingRight = true;
    }
    else{
        global.warpFacingRight = false;
    }
	
	audio_play_sound(PickUp_Sd, 0, false);
    
    if(room = World){
        room_goto(Home);
    }
    else if(room = Home){
        room_goto(World);
    }
	// This is a special case 
    else if(room = Mauntain){
        room_goto(MauntainTop);
		global.warp = 0;
    }
}

