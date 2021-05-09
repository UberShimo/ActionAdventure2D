if (action = "Fist_R")
{
    sprite_index = Golem_ATK1_R_Spr;
    image_index = 4;
    image_speed = 0.25;
    
    instance_create(x, y, Golem_ATK1_R_Hitbox_Obj);
    alarm[0] = 32;
	
	audio_play_sound(Swoosh_Sd, 0, false);
}

if (action = "Fist_L")
{
    sprite_index = Golem_ATK1_L_Spr;
    image_index = 4;
    image_speed = 0.25;
    
    instance_create(x, y, Golem_ATK1_L_Hitbox_Obj);
    alarm[0] = 32;
	
	audio_play_sound(Swoosh_Sd, 0, false);
}

if (action = "Rock_Rise_R")
{
    sprite_index = Golem_ATK2_R_Spr;
    image_index = 5;
    image_speed = 0.25;
    
    instance_create(x, y, Golem_ATK2_R_Hitbox_Obj);
    instance_create(Player_Obj.x, Player_Obj.y, Rumble_Obj);
    alarm[0] = 20;
	
	audio_play_sound(Thonk_Sd, 0, false);
}

if (action = "Rock_Rise_L")
{
    sprite_index = Golem_ATK2_L_Spr;
    image_index = 5;
    image_speed = 0.25;
    
    instance_create(x, y, Golem_ATK2_L_Hitbox_Obj);
    instance_create(Player_Obj.x, Player_Obj.y, Rumble_Obj);
    alarm[0] = 20;
	
	audio_play_sound(Thonk_Sd, 0, false);
}

if (action = "ROCKnROLL_R")
{
    instance_create(x, y, Golem_Ball_R_Obj);
    
    alarm[0] = 8;
	
	audio_stop_sound(Rumble_Sd);
	audio_play_sound(Swoosh_Sd, 0, false);
}

if (action = "ROCKnROLL_L")
{
    instance_create(x, y, Golem_Ball_L_Obj);
    
    alarm[0] = 8;
	
	audio_stop_sound(Rumble_Sd);
	audio_play_sound(Swoosh_Sd, 0, false);
}

