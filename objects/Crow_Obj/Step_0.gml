//Bleed
if(bleed > 0){
    bleed_timer -= bleed;

    if(bleed_timer < 1){
        image_blend = c_red;
        HP -= 1;
        hurt = true;
        
        alarm[5] = 4;
        bleed_timer = 120;
    }
    bloodEff -= bleed;
    
    if(bloodEff < 1){
        bloodEff = 24;
        instance_create(x + random_range(-1, +1), y + random_range(-1, +1), BloodDrop_Obj);
    }
}

if(!ATK){
    if (x > Player_Obj.x){
        sprite_index = Crow_L_Spr;
        image_index += 0.5;
    }
    
    if (x < Player_Obj.x){
        sprite_index = Crow_R_Spr;
        image_index += 0.5;
    }
    
    if (Fly_up = true){
        if (place_meeting(x, y+8, Collision_Obj)){
            y -= 0.25;
        }
		else{
			y -= 1;
		}
    }
}

if(HP <= 0 && !hurt){
    instance_destroy();
}

