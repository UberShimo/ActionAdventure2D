// ------ INPUT ------ //

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
	            image_speed = 0;
	            image_index += 0.25;
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
	            image_speed = 0;
	            image_index += 0.25;
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
	SPD = 2;
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
if(jump_input && !Duck && !ATK && !climbing && !place_free(x, y+1) && !place_meeting(x, y, Web_Hit_Obj)){
    vspeed = -5;
    canWallClimb = true;
}
// Wall climb
if(jump_pressed && place_free(x, y+1) && canWallClimb){
    if (right_input && place_meeting(x+4, y, Collision_Obj)){
        vspeed = -6;
        canWallClimb = false;
        
        sprite_index = Player_WallClimb_Spr;
        image_index = 0;
        image_speed = 0.5;
		image_xscale = 1;
        
        alarm[0] = 8;
        climbing = true;
    }
    
    if (left_input && place_meeting(x-4, y, Collision_Obj))
    {
        vspeed = -6;
        canWallClimb = false;
        
        sprite_index = Player_WallClimb_Spr;
        image_index = 0;
        image_speed = 0.5;
		image_xscale = -1;
        
        alarm[0] = 8;
        climbing = true;
    }
}

// Dash
if (dash_input && global.dash == 8 && !dashing && !dead &&
!(global.weapon == "boomhammer" && ATK)){
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
    SPD = 8;
    dashing = true;
}
// No more dashing
else if((!dash_input && dashing) || global.dash < 1){
	dashing = false;
	SPD = 2;
}

// Big ass ATTACK code
if(attack_input && !ATK){
    ATK = true;
	SPD = 1;
    
    if(global.weapon = "sword"){
		if(Duck){
			sprite_index = Player_Sword_ATK_Duck_Spr;
		}
		else{
			sprite_index = Player_Sword_ATK_Spr;
		}
        image_index = 0;
        image_speed = 0.5;
			
        if (facingRight){
			image_xscale = 1;
        }
        else{
			image_xscale = -1;
        }
            
        alarm[0] = image_number * 2;
        alarm[1] = 4;
    }
    else if(global.weapon = "knife"){
        if(Duck){
			sprite_index = Player_Knife_ATK_Duck_Spr;
		}
		else{
			sprite_index = Player_Knife_ATK_Spr;
		}
        image_index = 0;
        image_speed = 0.5;
			
        if (facingRight){
			image_xscale = 1;
        }
        else{
			image_xscale = -1;
        }
            
        alarm[0] = image_number * 2;
        alarm[1] = 2;
    }
    else if(global.weapon = "spear"){
        if(Duck){
			sprite_index = Player_Spear_ATK_Duck_Spr;
		}
		else{
			sprite_index = Player_Spear_ATK_Spr;
		}
        image_index = 0;
        image_speed = 0.5;
			
        if (facingRight){
			image_xscale = 1;
        }
        else{
			image_xscale = -1;
        }
            
        alarm[0] = image_number * 2;
        alarm[1] = 6;
    }
    else if(global.weapon = "axe"){
        if(Duck){
			sprite_index = Player_Axe_ATK_Duck_Spr;
		}
		else{
			sprite_index = Player_Axe_ATK_Spr;
		}
        image_index = 0;
        image_speed = 0.5;
			
        if (facingRight){
			image_xscale = 1;
        }
        else{
			image_xscale = -1;
        }
            
        alarm[0] = image_number * 2;
        alarm[1] = 12;
    }
    else if(global.weapon = "katana"){
        if(Duck){
			sprite_index = Player_Katana_ATK_Duck_Spr;
		}
		else{
			sprite_index = Player_Katana_ATK_Spr;
		}
        image_index = 0;
        image_speed = 0.5;
			
        if (facingRight){
			image_xscale = 1;
        }
        else{
			image_xscale = -1;
        }
            
        alarm[0] = image_number * 2;
        alarm[1] = 2;
    }
    else if(global.weapon = "rapier"){
        if(Duck){
			sprite_index = Player_Rapier_ATK_Duck_Spr;
		}
		else{
			sprite_index = Player_Rapier_ATK_Spr;
		}
        image_index = 0;
        image_speed = 0.5;
			
        if (facingRight){
			image_xscale = 1;
        }
        else{
			image_xscale = -1;
        }
            
        alarm[0] = image_number * 2;
        alarm[1] = 4;
    }
    else if(global.weapon = "scythe"){
        if(Duck){
			sprite_index = Player_Scythe_ATK_Duck_Spr;
		}
		else{
			sprite_index = Player_Scythe_ATK_Spr;
		}
        image_index = 0;
        image_speed = 0.5;
			
        if (facingRight){
			image_xscale = 1;
        }
        else{
			image_xscale = -1;
        }
            
        alarm[0] = image_number * 2;
        alarm[1] = 8;
    }
    else if(global.weapon = "boomhammer"){
        if(Duck){
			sprite_index = Player_BoomHammer_ATK_Duck_Spr;
		}
		else{
			sprite_index = Player_BoomHammer_ATK_Spr;
		}
        image_index = 0;
        image_speed = 0.5;
			
        if (facingRight){
			image_xscale = 1;
        }
        else{
			image_xscale = -1;
        }
        
		// Dont use image_number
        alarm[0] = 48;
        alarm[1] = 16;
    }
}


// ----- OTHER ----- //

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


// Dash stuff
if (dashing){
    global.dash -= 1;
    instance_create(x,y,Dash_Eff_Obj);
}
if (global.dash < 8 && !dashing){
    global.dash += 0.25;
}

// Gravity
if(place_free(x, y+1)){
	if(vspeed < -2){
		gravity = 1;
	}
	else{
		gravity = 0.40;
	}
    
    gravity_direction = -90;
}
else{
    gravity = 0;
}

// Blood effect
if(global.HP < 4 && !dead){
    bloodEff++;
    
    if(bloodEff == 5){
        bloodEff = 0;
        if(Duck){
            instance_create(x + random_range(-2, +2), y + random_range(0, +4), BloodDrop_Obj);
        }
        else{
            instance_create(x + random_range(-2, +2), y + random_range(-4, +4), BloodDrop_Obj);
        }
    }
}

// C effect
if(place_meeting(x, y, C_eff) && !place_meeting(x, y, High_Grass_Obj)){
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