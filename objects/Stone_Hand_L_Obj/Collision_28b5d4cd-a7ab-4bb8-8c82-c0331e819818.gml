if(action == "punch"){
	action = "none";
	sprite_index = Rock_Hand_Spr;
	hspeed = 3;
	vspeed = -3;
	gravity = 0.1;
	
	audio_play_sound(Thonk_Sd, 0, false);
}
else if(action == "charge"){
	hspeed = 0;
	vspeed = 0;
	y = Pyramid_Left_Side.y-4;
}
else{
	hspeed = 0;
	vspeed = 0;
	gravity = 0;

	move_contact_solid(-90, -1);

	action = "none";
	alarm[1] = irandom_range(120, 180);

	instance_create_depth(x, y, -5, Hand_Land_Eff);
	shock1 = instance_create_depth(x+4, y+8, -5, Shockwave_Obj);
	shock2 = instance_create_depth(x-4, y+8, -5, Shockwave_Obj);
	shock2.image_xscale = -1;
	
	audio_play_sound(Thonk_Sd, 0, false);
}