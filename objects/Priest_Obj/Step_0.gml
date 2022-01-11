// Spawn ring
if (doTheRingThing && !teleporting && image_alpha >= 1){
    sprite_index = Priest_Spawn_Ring_Spr;
    image_index = 0;
        
    ATK = true;
	doTheRingThing = false;
        
    alarm[2] = 32;
	alarm[3] = 240;
}
	
// Teleport
if(irandom_range(0, 180) == 0){
	ATK = true;
	teleporting = true;
}

// Teleport shit
if(teleporting){
	image_alpha -= 0.02;
	if(image_alpha <= 0){
		x = random_range(PriestStageController_Obj.x + 16, PriestStageController_Obj.x + 144);
		teleporting = false;
		if(x > Player_Obj.x){
			image_xscale = -1;
		}
		else{
			image_xscale = 1;
		}
	}
}
else if(image_alpha < 1){
	image_alpha += 0.02;
	if(image_alpha >= 1){
		ATK = false;
	}
}

if(HP <= 0 && !hurt){
	global.priestSlain = true;
	instance_destroy(PriestWall_Obj);
	instance_destroy(PriestRing_Obj);
	instance_destroy(PriestStarSpawn_Obj);
	instance_destroy(PriestStar_Obj);
    instance_destroy();
}

