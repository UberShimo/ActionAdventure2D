if(!ATK && !hurt){
	if(x < Player_Obj.x){
        if (place_free(x+1, y)){
            x += 0.25;
            
            sprite_index = Blaze_Man_Walk_Spr;
			image_xscale = 1;
        }
    }
    // Left
	else if(x > Player_Obj.x){
		if (place_free(x-1, y)){
            x -= 0.25;
            
            sprite_index = Blaze_Man_Walk_Spr;
			image_xscale = -1;
        }
    }
	
	if(action == "none"){
		action = "walk";
		alarm[1] = irandom_range(60, 120);
	}
    
    //Jump mechanic
    if (place_meeting(x, y+1, Collision_Obj))
    && ((place_meeting(x+4, y, Collision_Obj) && place_free(x+8, y-16))
    || (place_meeting(x-4, y, Collision_Obj)&& place_free(x-8, y-16)))
    {
        vspeed = -3;
    }
}

// Spin
if(action == "flippin"){
	if(image_xscale > 0){
		image_angle -= 20;
	}
	else{
		image_angle += 20;
	}
}

// CANONBALL!
// Right
if(action == "run" && x > Right_Lava_Edge_Obj.x - 8){
	action = "appearLeft"
	sprite_index = Blaze_Man_FlippinTime_Spr;
	image_speed = 0;
	image_index = 1;
	
	hspeed = 0.5;
	vspeed = -2;
}
// Left
else if(action == "run" && x < Left_Lava_Edge_Obj.x + 8){
	action = "appearRight"
	sprite_index = Blaze_Man_FlippinTime_Spr;
	image_speed = 0;
	image_index = 1;
	
	hspeed = -0.5;
	vspeed = -2;
}

// Dash eff
if(action == "run"){
	eff = instance_create_depth(x, y, 5, Dash_Eff_Obj);
	eff.y += random_range(-3, 3);
}

// Gravity
if(place_free(x, y+1)){
    gravity = 0.1;
    gravity_direction = -90;
}
else{
    gravity = 0;
}

// Die
if(HP <= 0 && !hurt){
	global.isControllable = false;
    global.blazeManSlain = true;
	global.blackScreen2 = Lets_Head_Home_Dialogue_Spr;
	
	if(global.thunderManSlain && global.stoneFaceSlain){
		global.blackScreen = All_Bastards_Dead_Dialogue_Spr;
		global.blackScreen2 = Finally_Rest_Dialogue_Spr;
	}
	else if(global.thunderManSlain || global.stoneFaceSlain){
		global.blackScreen = One_Bastard_Left_Dialogue_Spr;
	}
	else{
		global.blackScreen = Two_Bastards_Left_Dialogue_Spr;
	}
	Hud_Fix_Obj.alarm[1] = 120;
	Hud_Fix_Obj.alarm[2] = 420;
	Player_Obj.alarm[7] = 420;
	
	audio_stop_all();
	audio_play_sound(Victory_Sd, 1, false);
	
	instance_destroy(Blaze_Man_Fireball_Obj);
	instance_destroy(Blaze_Man_LavaDrop_Obj);
	instance_destroy(Big_Blaze_Obj);
    instance_destroy();
}

