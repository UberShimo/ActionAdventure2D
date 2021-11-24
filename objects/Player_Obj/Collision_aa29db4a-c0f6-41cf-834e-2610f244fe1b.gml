if (!global.hurt && !dead){
    global.HP -= 1;
    global.hurt = true;
	alarm[2] = 8;
	
	if(other.vLaunch > 0){
	    SPD = 0;
		
		// Projectile
		if(other.projectile){
			if(other.hspeed > 0){
				hspeed = other.hLaunch;
			}
			else if(other.hspeed < 0){
				hspeed = -other.hLaunch;
			}
			else{
				if(facingRight){
					hspeed = -other.hLaunch;
				}
				else{
					hspeed = other.hLaunch;
				}
			}
		}
		// Normal hitbox
		else if(x > other.x){
			hspeed = other.hLaunch;
		}
		else{
			hspeed = -other.hLaunch;
		}
	    vspeed = -other.vLaunch;
	}
	
	audio_play_sound(Hurt_Sd, 0, false);
}

