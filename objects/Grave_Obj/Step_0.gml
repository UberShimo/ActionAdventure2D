if(Player_Obj.vspeed > 7 && place_meeting(x, y-16, Player_Obj)){
    instance_create(x, y, Broken_Grave_Obj);
	instance_destroy();
    with(Grave_Hider_Obj) instance_destroy();
}