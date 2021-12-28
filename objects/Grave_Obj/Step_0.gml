if(Player_Obj.vspeed > 5 && place_meeting(x, y-16, Player_Obj)){
    instance_create(x, y, Broken_Grave_Obj);
	instance_create(x, y, Grave_Break_Eff_Obj);
    with(Grave_Hider_Obj) instance_destroy();
	instance_destroy();
}