if(right_pressed){
	if(!place_meeting(x+24, y, Inventory_Frame_Obj)){
		extraX += 24;
	}
}
else if(left_pressed){
	if(!place_meeting(x-24, y, Inventory_Frame_Obj)){
		extraX -= 24;
	}
}
else if(down_pressed){
	if(!place_meeting(x, y+24, Inventory_Frame_Obj)){
		extraY += 24;
	}
}
else if(up_pressed){
	if(!place_meeting(x, y-24, Inventory_Frame_Obj)){
		extraY -= 24;
	}
}

// Choose weapon
if(inventory_input){
	if(place_meeting(x, y, Sword_UI_Obj)){
		global.weapon = "sword";
	}
	else if(place_meeting(x, y, Knife_UI_Obj)){
		global.weapon = "knife";
	}
	else if(place_meeting(x, y, Spear_UI_Obj)){
		global.weapon = "spear";
	}
	else if(place_meeting(x, y, Axe_UI_Obj)){
		global.weapon = "axe";
	}
	else if(place_meeting(x, y, Katana_UI_Obj)){
		global.weapon = "katana";
	}
	else if(place_meeting(x, y, Rapier_UI_Obj)){
		global.weapon = "rapier";
	}
	else if(place_meeting(x, y, Scythe_UI_Obj)){
		global.weapon = "scythe";
	}
	else if(place_meeting(x, y, BoomHammer_UI_Obj)){
		global.weapon = "boomhammer";
	}
}