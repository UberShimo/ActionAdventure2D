if (action = "burrow"){
	sprite_index = Worm_Burrow_Spr;
	action = "dissapear";
	alarm[1] = 24;
}
else if(action = "dissapear"){	
	// Dissapear
	x = 0;
	y = 0;
	action = "spawn_rumble";
	alarm[1] = irandom_range(30, 240);
}
else if(action = "spawn_rumble"){
	rumble = instance_create_depth(Player_Obj.x, Player_Obj.y, 0, Worm_Rumble_Spawner_Obj);
	xTarget = rumble.x;
	yTarget = rumble.y-7;
	action = "ATK";
	alarm[1] = 30;
}
else if (action = "ATK"){
	x = xTarget;
	y = yTarget;
	if(Player_Obj.x > x){
		image_xscale = 1;
	}
	else{
		image_xscale = -1;
	}
	sprite_index = Worm_ATK_Spr;
	image_index = 0;
    instance_create(x, y, Worm_Hitbox_Obj);
	action = "recover";
	alarm[1] = 40;
}
else if(action = "recover"){
	action = "burrow";
	sprite_index = Worm_Spr;
	alarm[1] = 60;
}
