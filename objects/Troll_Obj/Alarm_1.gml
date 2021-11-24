if (action = "Hit_R")
{
    sprite_index = Troll_Hit_R_Spr;
	image_xscale = 1;
    image_index = 1;
    image_speed = 0.25;
    
    instance_create(x, y, Troll_Hit_R_Hitbox_Obj);
    alarm[0] = 20;
	
	audio_play_sound(Swoosh_Sd, 0, false);
}

if (action = "Hit_L")
{
    sprite_index = Troll_Hit_R_Spr;
	image_xscale = -1;
    image_index = 1;
    image_speed = 0.25;
    
    instance_create(x, y, Troll_Hit_L_Hitbox_Obj);
    alarm[0] = 20;
	
	audio_play_sound(Swoosh_Sd, 0, false);
}

if (action = "Smash_R")
{
    sprite_index = Troll_Smash_R_Spr;
	image_xscale = 1;
    image_index = 0;
    image_speed = 0.25;
    
    instance_create(x, y, Troll_Smash_R_Hitbox_Obj);
    alarm[0] = 32;
	
	audio_play_sound(Thonk_Sd, 0, false);
}

if (action = "Smash_L")
{
    sprite_index = Troll_Smash_R_Spr;
	image_xscale = -1;
    image_index = 0;
    image_speed = 0.25;
    
    instance_create(x, y, Troll_Smash_L_Hitbox_Obj);
    alarm[0] = 32;
	
	audio_play_sound(Thonk_Sd, 0, false);
}

if (action = "Spit_R")
{
    sprite_index = Troll_Spit_R_Spr;
	image_xscale = 1;
    image_index = 1;
    image_speed = 0;

    instance_create(x+2, y-8, Spit_R_Obj);
    alarm[0] = 20;
	
	audio_play_sound(TrollSpitSound_Sd, 0, false);
}

if (action = "Spit_L")
{
    sprite_index = Troll_Spit_L_Spr;
	image_xscale = 1;
    image_index = 1;
    image_speed = 0;

    instance_create(x-2, y-8, Spit_L_Obj);
    alarm[0] = 20;
	
	audio_play_sound(TrollSpitSound_Sd, 0, false);
}

