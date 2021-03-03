if(vspeed > 0){
    move_contact_solid(-90, vspeed);
}

vspeed = 0;
hspeed = 0;
canWallClimb = false;
dashing = false;

if !(sprite_index == Player_BoomHammer_Recover_Spr){
	SPD = 2;
}

//Sprite fix
if(!ATK){
	if(keyboard_check(vk_down)){
	    sprite_index = Player_Duck_Spr;
	}
	else{
	    sprite_index = Player_Spr;
	    Duck = false;
	}

	if (facingRight){
		image_xscale = 1;
	}
	else {
		image_xscale = -1;
	}
}


// Y fix
y = round(y);
