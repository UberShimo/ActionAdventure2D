if(image_alpha < 1){
    image_alpha += 0.05;
}

if(keyboard_check_pressed(ord("C")) || gamepad_button_check_pressed(0, gp_padu)){
	global.HP = 8;
	global.dash = 8;
	global.hurt = false;
	global.warp = 0;
	global.weapon = "sword";

	room_goto(Home);
}