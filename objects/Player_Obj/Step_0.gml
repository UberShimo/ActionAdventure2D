// ------ INPUT ------ //


// ACTIONS

#region Movement
// Right
if(right_input){
	//Standing
	if(!left_input && place_free(x+SPD, y) && !Duck && !dead){
	    x += SPD;
    
	    if (!ATK && !climbing){
			facingRight = true;
		
			if(dashing){
	            sprite_index = Player_Dash_Spr;
			}
	        else{
	            sprite_index = Player_Move_Spr;
	        }
			image_xscale = 1;
	    }
	}

	//Ducking
	if(Duck && !ATK){
	    facingRight = true;
    
	    sprite_index = Player_Duck_Spr;
		image_xscale = 1;
	}
}

// Left
if(left_input){
	//Standing
	if(!right_input && place_free(x-SPD, y) && !Duck && !dead){
	    x -= SPD;
    
	    if (!ATK && !climbing){
			facingRight = false;
		
			if(dashing){
	            sprite_index = Player_Dash_Spr;
			}
	        else{
	            sprite_index = Player_Move_Spr;
	        }
			image_xscale = -1;
	    }
	}

	//Ducking
	if(Duck && !ATK){
	    facingRight = false;
    
	    sprite_index = Player_Duck_Spr;
		image_xscale = -1;
	}
}

// Duck
if(down_input && !ATK && !Duck && !place_free(x, y+1)){
    Duck = true;
	dashing = false;
	SPD = 1;
	sprite_index = Player_Duck_Spr;
	
    if (facingRight){
        image_xscale = 1;
    }
    else{
        image_xscale = -1;
    }
}
else if(!down_input){
	Duck = false;
}

//Jump
if(jump_pressed && !Duck && !ATK && !climbing && !place_free(x, y+1) && !place_meeting(x, y, Web_Hit_Obj)){
    vspeed = -2.8;
}
// Wall climb
if(jump_pressed && place_free(x, y+1) && canWallClimb){
    if (right_input && place_meeting(x+4, y, Collision_Obj) && place_free(x+4, y-18)){
		while(!place_free(x+4, y-12)){
			y -= 1;
		}
        vspeed = -2.8;
        canWallClimb = false;
        
        sprite_index = Player_WallClimb_Spr;
        image_index = 0;
		image_xscale = 1;
        
        alarm[0] = 8;
        climbing = true;
    }
    
    if (left_input && place_meeting(x-4, y, Collision_Obj) && place_free(x-4, y-18)){
		while(!place_free(x-4, y-12)){
			y -= 1;
		}
        vspeed = -2.8;
        canWallClimb = false;
        
        sprite_index = Player_WallClimb_Spr;
        image_index = 0;
		image_xscale = -1;
        
        alarm[0] = 16;
        climbing = true;
    }
}
#endregion

#region Big ass ATTACK code  0==[]::::::::::::::::::>
if(attack_input && !ATK){
    ATK = true;
	SPD = 0.5;
	image_index = 0;
    
    if(global.weapon = "sword"){
		if(Duck){
			sprite_index = Player_Sword_ATK_Duck_Spr;
		}
		else{
			sprite_index = Player_Sword_ATK_Spr;
		}
			
        if (facingRight){
			image_xscale = 1;
        }
        else{
			image_xscale = -1;
        }
            
        alarm[0] = image_number * 4;
        alarm[1] = 8;
    }
    else if(global.weapon = "knife"){
        if(Duck){
			sprite_index = Player_Knife_ATK_Duck_Spr;
		}
		else{
			if(knifeVariationBolean){
				sprite_index = Player_Knife_ATK_Spr;
			}
			else{
				sprite_index = Player_Knife_ATK2_Spr;
			}
			knifeVariationBolean =  !knifeVariationBolean;
		}
			
        if (facingRight){
			image_xscale = 1;
        }
        else{
			image_xscale = -1;
        }
            
        alarm[0] = image_number * 4;
        alarm[1] = 4;
    }
    else if(global.weapon = "spear"){
        if(Duck){
			sprite_index = Player_Spear_ATK_Duck_Spr;
		}
		else{
			sprite_index = Player_Spear_ATK_Spr;
		}
			
        if (facingRight){
			image_xscale = 1;
        }
        else{
			image_xscale = -1;
        }
            
        alarm[0] = image_number * 4;
        alarm[1] = 8;
    }
    else if(global.weapon = "axe"){
        if(Duck){
			sprite_index = Player_Axe_ATK_Duck_Spr;
		}
		else{
			sprite_index = Player_Axe_ATK_Spr;
		}
			
        if (facingRight){
			image_xscale = 1;
        }
        else{
			image_xscale = -1;
        }
            
        alarm[0] = image_number * 4;
        alarm[1] = 24;
    }
    else if(global.weapon = "katana"){
        if(Duck){
			sprite_index = Player_Katana_ATK_Duck_Spr;
		}
		else{
			sprite_index = Player_Katana_ATK_Spr;
		}
			
        if (facingRight){
			image_xscale = 1;
        }
        else{
			image_xscale = -1;
        }
            
        alarm[0] = image_number * 4;
        alarm[1] = 4;
    }
    else if(global.weapon = "rapier"){
        if(Duck){
			sprite_index = Player_Rapier_ATK_Duck_Spr;
		}
		else{
			sprite_index = Player_Rapier_ATK_Spr;
		}
			
        if (facingRight){
			image_xscale = 1;
        }
        else{
			image_xscale = -1;
        }
            
        alarm[0] = image_number * 4;
        alarm[1] = 9;
    }
    else if(global.weapon = "scythe"){
        if(Duck){
			sprite_index = Player_Scythe_ATK_Duck_Spr;
		}
		else{
			sprite_index = Player_Scythe_ATK_Spr;
		}
			
        if (facingRight){
			image_xscale = 1;
        }
        else{
			image_xscale = -1;
        }
            
        alarm[0] = image_number * 4;
        alarm[1] = 16;
    }
    else if(global.weapon = "boomhammer"){
		sprite_index = Player_BoomHammer_ATK_Spr;
			
        if (facingRight){
			image_xscale = 1;
        }
        else{
			image_xscale = -1;
        }
        
		// Dont use image_number
        alarm[0] = 112;
        alarm[1] = 48;
		SPD = 0.2; // Real slow during boomhammering
    }
}
#endregion

#region DASH ----====>
if (dash_input && global.dash == 8 && !dashing && !dead &&
!((global.weapon == "boomhammer") && ATK)){ // cant dash during boomhammer attack
	if(ATK){
		global.dash -= 5;
		ATK = false;
		Duck = false;
        alarm[0] = 0;
        alarm[1] = 0;
		
		// Crouch cancel attack
		if(down_input && !place_free(x, y+1)){
			Duck = true;
			sprite_index = Player_Duck_Spr;
	
		    if (facingRight){
		        image_xscale = 1;
		    }
		    else{
		        image_xscale = -1;
		    }
		}
		else{
			sprite_index = Player_Spr;
		}
	}
    SPD = 4;
    dashing = true;
}
// No more dashing
else if((!dash_input && dashing) || global.dash < 1){
	dashing = false;
	SPD = 1;
}
// Dash cooldown eff
if(spawnDashCooldownEff && global.dash == 8){
	audio_play_sound(Dash_Cooldown_Sd, 0, false);
	instance_create(Player_Obj.x, Player_Obj.y, Dash_Cooldown_Obj);
	spawnDashCooldownEff = false;
}
else if(dashing){
	if(irandom_range(1, 3) == 1){
		dashEffSpawnY = irandom_range(-2, 4);
	}
    global.dash -= 0.5;
    instance_create_depth(x, y+dashEffSpawnY, -5, Dash_Eff_Obj);
	spawnDashCooldownEff = true;
}
else if(global.dash < 8){
    global.dash += 0.1;
}
#endregion


// ----- OTHER ----- //

// Inventory
if(inventory_input){
	if(!global.inventoryIsOpen){
		sprite_index = Player_Spr;
		instance_create_depth(0, 0, -1010, Weapon_Picker_Obj);
	}
	global.inventoryIsOpen = !global.inventoryIsOpen;
}

// Reset sprite
if (!right_input && !left_input && !ATK && !Duck && !climbing){
	sprite_index = Player_Spr;
	if(facingRight){
		image_xscale = 1;
	}
	else{
		image_xscale = -1;
	}
}


// Gravity
if(place_free(x, y+1)){
	if(vspeed > -1 && vspeed < 1){
		gravity = 0.1;
	}
	else{
		gravity = 0.25;
	}
    
    gravity_direction = -90;
}
else{
    gravity = 0;
}

// Blood effect
if(global.HP < 4 && !dead){
    bloodEff++;
    
    if(bloodEff == 10){
        bloodEff = 0;
        if(Duck){
            instance_create(x + random_range(-2, +2), y + random_range(0, +4), BloodDrop_Obj);
        }
        else{
            instance_create(x + random_range(-2, +2), y + random_range(-6, +4), BloodDrop_Obj);
        }
    }
}

// C effect
if(place_meeting(x, y, C_parent) && !place_meeting(x, y, High_Grass_Obj)){
    The_C.visible = true;
}
else{
    The_C.visible = false;
}

// Dead
if(global.HP <= 0 && !dead){
    ATK = true;
    dead = true;
    
    if(facingRight){
        sprite_index = Player_Dead_Spr;
		image_xscale = 1;
    }
    else{
        sprite_index = Player_Dead_Spr;
		image_xscale = -1;
    }
    
    alarm[0] = 0;
    alarm[11] = 60;
}