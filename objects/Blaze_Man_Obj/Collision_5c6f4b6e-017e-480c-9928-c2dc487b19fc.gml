if(action == "flipTime"){
	action = "flippin";
	vspeed = -3.5;
	image_index = 1;
	if(image_xscale > 0){
		hspeed = 1.5;
	}
	else{
		hspeed = -1.5;
	}
	alarm[0] = 0;
	alarm[2] = 18;
}
else{
	action = "landed";
	hspeed = 0;
	vspeed = 0;
	sprite_index = Blaze_Man_Spr;
	image_speed = 1;
	image_angle = 0;

	y -= 8;
	move_contact_solid(-90, -1);
	alarm[0] = 60;
	alarm[1] = 0;
	alarm[2] = 0;
}