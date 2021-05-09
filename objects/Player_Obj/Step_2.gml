/// @description Sprite fix (ascending / falling)
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