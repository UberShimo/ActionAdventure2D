if(action == "1"){
	action = "2";
	eff = instance_create(x, y, Wind_Leader_Teleport_Eff);
	eff.image_xscale = image_xscale;
	x = 0; // Dissapear
	y = 0; // Dissapear
	
	image_speed = 1;
    alarm[1] = 60;
}
else if(action == "2"){
	action = "3";
	gravity = 0;
	sprite_index = Wind_Leader_Throw_Spr;
	image_index = 0;
	
	// Left
	if(irandom_range(1, 2) == 1){
		x = Player_Obj.x-96;
		y = Player_Obj.y-4;
		image_xscale = 1;
	}
	// Right
	else{
		x = Player_Obj.x+96;
		y = Player_Obj.y-4;
		image_xscale = -1;
	}
	eff = instance_create(x, y, Wind_Leader_Teleport_Eff);
	eff.image_xscale = image_xscale;
	eff.image_index = 2;
	eff.image_speed = -1;
	
	alarm[1] = 48;
	alarm[0] = image_number*4;
}
else if(action == "3"){
	action = "4";
	
	hitbox = instance_create(x, y-4, Wind_Leader_Ring_Obj);
	hitbox.image_xscale = image_xscale;
	hitbox.hspeed = 2.5*image_xscale;
	hitbox.hSpeedChange = -0.02*image_xscale;
	
	audio_play_sound(Slash_Sd, 0, false);
	
	alarm[1] = 104;
}
else if(action == "4"){
	action = "5";
	
	eff = instance_create(x, y, Wind_Leader_Teleport_Eff);
	eff.image_xscale = image_xscale;
	x = 0; // Dissapear
	y = 0; // Dissapear
	
    alarm[1] = 60;
}
else if(action == "5"){
	action = "6";
	gravity = 0;
	sprite_index = Wind_Leader_ATK_Spr;
	image_index = 0;
	image_speed = 0;
	
	// Left
	if(irandom_range(1, 2) == 1){
		x = Player_Obj.x-24;
		y = Player_Obj.y-4;
		image_xscale = 1;
	}
	// Right
	else{
		x = Player_Obj.x+24;
		y = Player_Obj.y-4;
		image_xscale = -1;
	}
	eff = instance_create(x, y, Wind_Leader_Teleport_Eff);
	eff.image_xscale = image_xscale;
	eff.image_index = 2;
	eff.image_speed = -1;
	
	alarm[1] = 48;
}
else if(action == "6"){
	action = "7";
	
	x += 16*image_xscale;
	sprite_index = Wind_Leader_ATK_Spr;
	image_index = 4;
	image_speed = 1;
	
	hitbox = instance_create(x, y, Wind_Leader_Hitbox_Obj);
	hitbox.image_xscale = image_xscale;
	
	audio_play_sound(Slash_Sd, 0, false);
	
	alarm[1] = image_number*4;
}
else if(action == "7"){
	action = "8";
	
	x += 16*image_xscale;
	
	hitbox = instance_create(x, y, Wind_Leader_Hitbox_Obj);
	hitbox.image_xscale = image_xscale;
	
	audio_play_sound(Slash_Sd, 0, false);
	
	alarm[1] = image_number*4;
}
else if(action == "8"){
	action = "9";
	
	x += 16*image_xscale;
	
	hitbox = instance_create(x, y, Wind_Leader_Hitbox_Obj);
	hitbox.image_xscale = image_xscale;
	
	audio_play_sound(Slash_Sd, 0, false);
	
	alarm[1] = 16;
}
else if(action == "9"){
	action = "1";
	
	image_speed = 0.25;
	
	alarm[1] = 64;
}
else if(action == "tornado"){
	action = "1";
	
	x = Player_Obj.x;
	y = Player_Obj.y-4;
	
	instance_create_depth(x, y, -5, Wind_Leader_Tornado_Eff);
	alarm[1] = 64;
}