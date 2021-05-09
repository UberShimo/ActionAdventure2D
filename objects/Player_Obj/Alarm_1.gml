/// @description ATK
SPD = 0;

if(global.weapon = "sword"){
	hitbox = instance_create(x, y, Sword_ATK_Hitbox);
	
	if(!facingRight){
		hitbox.image_xscale = -1;
	}
	if(Duck){
		hitbox.y += 2;
	}
	audio_play_sound(Slash_Sd, 0, false);
}
else if(global.weapon = "knife"){
	hitbox = instance_create(x, y, Knife_ATK_Hitbox);
	
	if(!facingRight){
		hitbox.image_xscale = -1;
	}
	if(Duck){
		hitbox.y += 5;
	}
	audio_play_sound(Slash_Sd, 0, false);
	
	SPD = 0.5; // Knife aint stopping!
}
else if(global.weapon = "spear"){
	hitbox = instance_create(x, y, Spear_ATK_Hitbox);
	
	if(!facingRight){
		hitbox.image_xscale = -1;
	}
	if(Duck){
		hitbox.y += 5;
	}
	audio_play_sound(Slash_Sd, 0, false);
}
else if(global.weapon = "axe"){
	hitbox = instance_create(x, y, Axe_ATK_Hitbox);
	
	if(!facingRight){
		hitbox.image_xscale = -1;
	}
	audio_play_sound(Slash_Sd, 0, false);
}
else if(global.weapon = "katana"){
	hitbox = instance_create(x, y, Katana_ATK_Hitbox);
	
	if(!facingRight){
		hitbox.image_xscale = -1;
	}
	if(Duck){
		hitbox.y += 3;
	}
	audio_play_sound(Slash_Sd, 0, false);
}
else if(global.weapon = "rapier"){
	hitbox = instance_create(x, y, Rapier_ATK_Hitbox);
	
	if(!facingRight){
		hitbox.image_xscale = -1;
	}
	if(Duck){
		hitbox.y += 5;
	}
	audio_play_sound(Slash_Sd, 0, false);
}
else if(global.weapon = "scythe"){
	hitbox = instance_create(x, y, Scythe_ATK_Hitbox);
	ghost = instance_create(x, y, ScytheGhost_ATK_Obj);
	
	if(!facingRight){
		hitbox.image_xscale = -1;
		ghost.image_xscale = -1;
	}
	if(Duck){
		hitbox.y += 3;
		ghost.y += 3;
	}
	audio_play_sound(Slash_Sd, 0, false);
}
else if(global.weapon = "boomhammer"){
    if (facingRight){
        sprite_index = Player_BoomHammer_Recover_Spr;
        image_index = 0;
        
        vspeed = -3;
        hspeed = -1;
        
        instance_create(x+12, y+8, Explosion_Obj);
    }
    else{
        sprite_index = Player_BoomHammer_Recover_Spr;
        image_index = 0;
		image_xscale = -1;
        
        vspeed = -3;
        hspeed = +1;
        
        instance_create(x-12, y+8, Explosion_Obj);
    }
	audio_play_sound(Explosion_Sd, 0, false);
}

