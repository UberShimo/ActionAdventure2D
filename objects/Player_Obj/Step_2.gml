/// @description Sprite fix / Camera

// ascending / falling
if(!ATK && !climbing && !dashing && place_free(x, y+1)){
	if(vspeed < 0){
		sprite_index = Player_Jump_Spr;
	}
	else{
		sprite_index = Player_Land_Spr;
	}
	
	if(facingRight){
		image_xscale = 1;
	}
	else{
		image_xscale = -1;
	}
}

// Camera follow player
halfViewWidth = camera_get_view_width(view_camera[0]) / 2;
halfViewHeight = camera_get_view_height(view_camera[0]) / 2;
cameraExtraHeight = 16;
camera_set_view_pos(view_camera[0], x-halfViewWidth, y-halfViewHeight-cameraExtraHeight);