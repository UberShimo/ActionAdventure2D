if(action == "none"){
    if(irandom_range(0, 1) == 1){
        action = "fireballs";
                    
        sprite_index = Lava_Snake_Shooting_Spr;
        image_index = 0;
                    
        alarm[1] = irandom_range(30,60);
		alarm[0] = irandom_range(120, 300);
    }
    else{
        action = "spitFrog";
                    
        sprite_index = Lava_Snake_Spit_Spr;
        image_index = 0;
                    
        alarm[1] = 60;
		alarm[0] = 120;
    }
}


// Shooting animation fix
if(sprite_index = Lava_Snake_Shooting_Spr){
	if(image_index = image_number-1){
		image_speed = -1;
	}
	else if(image_index = 0){
		image_speed = 1;
	}
}
else{
	image_speed = 1;
}

//Death
if(HP <= 0 && !hurt){
    instance_destroy();
}

