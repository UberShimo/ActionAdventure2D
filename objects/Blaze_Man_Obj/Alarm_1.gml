if(action == "walk"){
	choice = irandom_range(0, 2);
	ATK = true;
	
	if(choice == 0){
		action = "flipTime";
		sprite_index = Blaze_Man_FlippinTime_Spr;
		vspeed = -1;
		image_index = 0;
		image_speed = 0; 
		if(image_xscale > 0){
			hspeed = -1;
		}
		else{
			hspeed = 1;
		}
	}
	else if(choice == 1){
		action = "charge"
		sprite_index = Blaze_Man_Charge_Spr;
		alarm[1] = 60;
	}
	else if(choice == 2){
		action = "blazeSmash";
		sprite_index = Blaze_Man_BlazeSword_Spr;
		
		bigBlaze = instance_create_depth(x, y, 0, Big_Blaze_Obj);
		bigBlaze.image_xscale = image_xscale;
		
		alarm[1] = 90;
	}
}
else if(action = "charge"){
	action = "run";
	sprite_index = Blaze_Man_Run_Spr;
	
	if(image_xscale > 0){
		hspeed = 3;
	}
	else{
		hspeed = -3;
	}
}
else if(action = "appearLeft"){
	x = Left_Lava_Edge_Obj.x - 16;
	y = Left_Lava_Edge_Obj.y - 6;
	vspeed = -2;
	hspeed = 0.5;
	sprite_index = Blaze_Man_FlippinTime_Spr;
	image_index = 0;
	image_speed = 0;
	image_xscale = 1;
	
	instance_create_depth(x, y, 0, Blaze_Man_LavaDrop_Obj);
	instance_create_depth(x, y, 0, Blaze_Man_LavaDrop_Obj);
	instance_create_depth(x, y, 0, Blaze_Man_LavaDrop_Obj);
}
else if(action = "appearRight"){
	x = Right_Lava_Edge_Obj.x + 16;
	y = Right_Lava_Edge_Obj.y - 6;
	vspeed = -2;
	hspeed = -0.5;
	sprite_index = Blaze_Man_FlippinTime_Spr;
	image_index = 0;
	image_speed = 0;
	image_xscale = -1;
	
	instance_create_depth(x, y, 0, Blaze_Man_LavaDrop_Obj);
	instance_create_depth(x, y, 0, Blaze_Man_LavaDrop_Obj);
	instance_create_depth(x, y, 0, Blaze_Man_LavaDrop_Obj);
}
else if(action = "blazeSmash"){
    hitbox = instance_create(x, y, Blaze_Sword_Hitbox_Obj);
	hitbox.image_xscale = image_xscale;
	
	sprite_index = Blaze_Man_BlazeSword_ATK_Spr;
	image_index = 0;
	
	audio_play_sound(Slash_Sd, 0, false);
	alarm[0] = image_number*4;
}