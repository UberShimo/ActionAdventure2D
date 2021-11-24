if (action = "fireballs"){
	fireballSpawnHeight = 12-(image_index*2);
    fireball = instance_create(x+16, y+fireballSpawnHeight, Lava_Snake_Fireball_Obj);
	fireball.hspeed = -1;
    alarm[1] = irandom_range(30, 60);
	
	audio_play_sound(Swoosh_Sd, 0, false);
}
else if (action = "spitFrog"){
    sprite_index = Lava_Snake_Spit_Spr;
    
    frog = instance_create(x, y-8, Lava_Frog_Obj);
	frog.alarm[1] = 1;
	
	audio_play_sound(TrollSpitSound_Sd, 0, false);
}
else if(action == "waiting"){
	action = "none";
}