if(action = "none"){
    choice = irandom_range(1, 4);
	
	if(choice = 1){
		action = "charge";
		if(place_free(x-4, y)){
			x -= 4;
		}
		direction = point_direction(x, y, Pyramid_Right_Side.x-11, Pyramid_Right_Side.y-4);
		speed = 4;
		gravity = 0;
		
		sprite_index = Rock_Hand_Charge_Spr;
		
		alarm[1] = 120;
	}
	else{
		roomWidth = Pyramid_Right_Side.x - Pyramid_Left_Side.x;
		roomMiddle = Pyramid_Left_Side.x + roomWidth/2;
		handDistanceToLeft = x - Pyramid_Left_Side.x;
		handDistanceToRight = Pyramid_Right_Side.x - x;
		hspeed = random_range(-1.5 * (handDistanceToLeft / (roomWidth/2)),
								1.5 * (handDistanceToRight / (roomWidth/2)));
		vspeed = -3.5;
		gravity = 0.1;
	}
}
else if(action = "charge"){
    action = "punch";
	sprite_index = Rock_Hand_Punch_Spr;
	hspeed = 4*image_xscale;
	
	audio_play_sound(Slash_Sd, 0, false);
}