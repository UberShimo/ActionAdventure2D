if(action == "none"){
	choice = irandom_range(1, 3);

	if(choice == 1){
		action = "atk";
		
	    sprite_index = Wind_Ranger_ATK_Spr;
		image_index = 0;
		image_alpha = 1;
		alarm[1] = 48;
		alarm[0] = image_number*4;
	}
	else{
		choice2 = irandom_range(1, 2);
		
	    if(choice2 = 1 && x > Player_Obj.x - 128){
			hspeed = -1;
			if(image_xscale > 0){
				sprite_index = Wind_Ranger_Backward_Spr;
			}
			else{
				sprite_index = Wind_Ranger_Forward_Spr;
			}
		}
		else if(x < Player_Obj.x + 128){
			hspeed = +1;
			if(image_xscale > 0){
				sprite_index = Wind_Ranger_Forward_Spr;
			}
			else{
				sprite_index = Wind_Ranger_Backward_Spr;
			}
		}
		alarm[0] = 30;
	}
}
else if(action == "atk"){
	image_alpha = 1;
	
	hitbox = instance_create(x, y-4, Wind_Ring_Obj);
	hitbox.hspeed = 2.5*image_xscale;
	hitbox.hSpeedChange = -0.025*image_xscale;
	
	audio_play_sound(Slash_Sd, 0, false);
}