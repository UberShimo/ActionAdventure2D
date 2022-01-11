if(right_pressed){
	image_xscale = 1;
}
else if(left_pressed){
	image_xscale = -1;
}

// Choose weapon
if(choose_input){
	if(place_meeting(x, y, Controller_Controls_Picker)){
		global.controllerIsUsed = true;
	}
	room_goto(Start_Menu);
}
