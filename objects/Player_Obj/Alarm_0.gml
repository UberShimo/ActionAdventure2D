/// @description RESET
ATK = false;
climbing = false;
SPD = 1;

//Sprite fix
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
