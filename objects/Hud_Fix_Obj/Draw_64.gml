if(room != End_Screen){ // End screen lock start
	
// HP bar
draw_sprite_ext(HP_bar_Spr,global.HP,0,0,4,4,0,c_white,1);

// Dashbar
draw_sprite_ext(Dash_frame_Spr,0,0,32,4,4,0,c_white,1);
dashbarXScale = global.dash / 2; // Dash is 8 in total but you want to have xScale related to 4 because 4 pixels are 1 pixel in game.
draw_sprite_ext(Dash_bar_Spr,0,8,32,dashbarXScale,4,0,c_white,1);

// Red screen effect when hurt
if (global.hurt = true)
{
    draw_sprite_ext(RED_SCREEN,0,0,0,1,1,0,c_white,0.3);
}

// Draw equipped weapon
if(!global.inventoryIsOpen){
	draw_sprite_ext(Weapon_Slot_Spr, 0, 928, 0, 4, 4, 0, c_white, 1);

	if(global.weapon == "sword"){
	    draw_sprite_ext(Sword_UI_Spr, 0, 928, 0, 4, 4, 0, c_white, 1);
	}
	else if(global.weapon == "knife"){
		draw_sprite_ext(Knife_UI_Spr, 0, 928, 0, 4, 4, 0, c_white, 1);
	}
	else if(global.weapon == "spear"){
	    draw_sprite_ext(Spear_UI_Spr, 0, 928, 0, 4, 4, 0, c_white, 1);
	}
	else if(global.weapon == "axe"){
	    draw_sprite_ext(Axe_UI_Spr, 0, 928, 0, 4, 4, 0, c_white, 1);
	}
	else if(global.weapon == "katana"){
	    draw_sprite_ext(Katana_UI_Spr, 0, 928, 0, 4, 4, 0, c_white, 1);
	}
	else if(global.weapon == "rapier"){
	    draw_sprite_ext(Rapier_UI_Spr, 0, 928, 0, 4, 4, 0, c_white, 1);
	}
	else if(global.weapon == "scythe"){
	    draw_sprite_ext(Scythe_UI_Spr, 0, 928, 0, 4, 4, 0, c_white, 1);
	}
	else if(global.weapon == "boomhammer"){
	    draw_sprite_ext(BoomHammer_UI_Spr, 0, 928, 0, 4, 4, 0, c_white, 1);
	}
}

}// End screen end lock

// Black screens
if(global.blackScreen != noone){
	draw_sprite_ext(global.blackScreen, 0, 0, 0, 4, 4, 0, c_white, global.blackScreenAlpha);
	
	if(global.blackScreenAlpha < 1 && global.blackScreenAlphaChange > 0
	|| global.blackScreenAlpha > 0 && global.blackScreenAlphaChange < 0){
		global.blackScreenAlpha += global.blackScreenAlphaChange;
	}
	else if((global.blackScreen == BLACK_SCREEN_Spr || global.blackScreen == Worst_Nightmare_Dialogue_Spr)
	&& global.blackScreenAlpha >= 1 && global.blackScreen2 == noone && !alarm3isActive){
		alarm[3] = 120;
		alarm3isActive = true;
	}
	else if(global.blackScreenAlpha <= 0 && global.blackScreenAlphaChange < 0){
		global.blackScreen = noone;
		global.blackScreenAlphaChange = 0;
		if(global.blackScreen2 == noone){
			global.isControllable = true;
		}
	}
}
if(global.blackScreen2 != noone){
	draw_sprite_ext(global.blackScreen2, 0, 0, 0, 4, 4, 0, c_white, global.blackScreen2Alpha);
	
	if(global.blackScreen2Alpha < 1 && global.blackScreen2AlphaChange > 0
	|| global.blackScreen2Alpha > 0 && global.blackScreen2AlphaChange < 0){
		global.blackScreen2Alpha += global.blackScreen2AlphaChange;
	}
	else if(global.blackScreen2Alpha >= 1 && global.blackScreen != noone){
		global.blackScreen = noone;
		global.blackScreenAlpha = 0;
		global.blackScreenAlphaChange = 0;
		alarm[4] = 120;
	}
	else if(global.blackScreen2Alpha <= 0 && global.blackScreen2AlphaChange < 0){
		global.blackScreen2 = noone;
		global.blackScreen2AlphaChange = 0;
		global.isControllable = true;
	}
}