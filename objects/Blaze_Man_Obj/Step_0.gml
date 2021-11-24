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
	global.blazeManSlain = true;
    instance_destroy();
}

