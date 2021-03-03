alarm[1] = 30;

if action = "spit_R"
{
    web = instance_create(x, y, Spider_Web_Obj);
    web.hspeed = 8;
    alarm[0] = 4;
}

if action = "spit_L"
{
    web = instance_create(x, y, Spider_Web_Obj);
    web.hspeed = -8;
    alarm[0] = 4;
}

if action = "bite_R"
{
    instance_create(x, y, Spider_Hitbox_R_Obj);
    
    sprite_index = Spider_ATK_R_Spr
    image_index = 1;
    image_speed = 0.5;
    
    alarm[0] = 14;
	
	audio_play_sound(Swoosh_Sd, 0, false);
}

if action = "bite_L"
{
    instance_create(x, y, Spider_Hitbox_L_Obj);
    
    sprite_index = Spider_ATK_L_Spr
    image_index = 1;
    image_speed = 0.5;
    
    alarm[0] = 14;
	
	audio_play_sound(Swoosh_Sd, 0, false);
}

