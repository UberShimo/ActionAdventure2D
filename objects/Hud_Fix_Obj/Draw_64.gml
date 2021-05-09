// HP bar
draw_sprite_ext(HP_bar_Spr,global.HP,0,0,4,4,0,c_white,1);

// Dashbar
draw_sprite_ext(Dash_frame_Spr,0,0,32,4,4,0,c_white,1);
dashbarXScale = global.dash / 2; // Dash is 8 in total but you want to have xScale related to 4 because 4 pixels are 1 pixel in game.
draw_sprite_ext(Dash_bar_Spr,0,8,32,dashbarXScale,4,0,c_white,1);

// Red screen effect when hurt
if (global.hurt = true)
{
    draw_sprite_ext(RED_SCREEN,0,0,0,1,1,0,c_white,0.2);
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