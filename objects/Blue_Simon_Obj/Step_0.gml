if(activated){
	direction -= 1.2*speed;

	if(speed < 1){
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
	instance_create_depth(x, y, 10, Blue_Orb_Spawner_Obj);
	orbRotaion = -orbRotaion;
	spawnOrbs = false;
}

if(HP <= 0 && !hurt){
	Nightmare_Controller_Obj.existingSimons--;
    instance_destroy(Blue_Orb_Spawner_Obj);
    instance_destroy();
}
