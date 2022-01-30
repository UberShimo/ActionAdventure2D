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
	instance_create_depth(x, y, 2, Blue_Orb_Spawner_Obj);
	orbRotaion = -orbRotaion;
	spawnOrbs = false;
}

if(HP <= 0 && !hurt){
	if(instance_exists(Red_Simon_Obj)){
		with(Red_Simon_Obj){
			HP += 20;
			repeat(12){
				instance_create_depth(x, y, 10, Heal_Eff_Obj);
			}
			if(HP > maxHP){
				HP = maxHP;
			}
		}
	}
	if(instance_exists(Green_Simon_Obj)){
		with(Green_Simon_Obj){
			HP += 20;
			repeat(12){
				instance_create_depth(x, y, 10, Heal_Eff_Obj);
			}
			if(HP > maxHP){
				HP = maxHP;
			}
		}
	}
	
	Nightmare_Controller_Obj.existingSimons--;
    instance_destroy(Blue_Orb_Spawner_Obj);
	instance_destroy(Blue_Orb_Obj);
    instance_destroy();
}
