if(activated){
	direction -= 1.2*speed;

	if(speed < 0.5){
		speed += 0.01;
	}

	if(hspeed > 0){
		image_xscale = 1;
	}
	else{
		image_xscale = -1;
	}
	
	if(image_alpha < 0.6){
		image_alpha += 0.01;
	}
}

// Spawn orbs
if(spawnOrbs){
	instance_create_depth(x, y, 2, Green_Orb_Spawner_Obj);
	
	spawnOrbs = false;
}

if(HP <= 0 && !hurt){
	Nightmare_Controller_Obj.existingSimons--;
    instance_destroy(Green_Orb_Spawner_Obj);
    instance_destroy(Green_Orb_Obj);
    instance_destroy();
}