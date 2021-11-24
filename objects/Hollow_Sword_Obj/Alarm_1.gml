if (action = "ATK1_R")
{
    if (ATK1 = 0)
    {
        sprite_index = Hollow_ATK1_R_Spr;
		image_xscale = 1;
        image_index = 1;
        image_speed = 0.25;
        
        alarm[1] = 20;
        instance_create(x, y, Hollow_Sword_ATK1_R_Hitbox);
        ATK1 = 4;
		
		audio_play_sound(Slash_Sd, 0, false);
    }
    else if (ATK1 = 1)
    {
        sprite_index = Hollow_Sword_Exhausted_R_Spr;
		image_xscale = 1;
        image_index = 0;
        image_speed = 1/8;
        
        alarm[0] = 20;
    }
    else
    {
        alarm[1] = 20;
        instance_create(x, y, Hollow_Sword_ATK1_R_Hitbox);
        ATK1 -= 1;
		
		audio_play_sound(Slash_Sd, 0, false);
    }
}

if (action = "ATK1_L")
{
    if (ATK1 = 0)
    {
        sprite_index = Hollow_ATK1_R_Spr;
		image_xscale = -1;
        image_index = 1;
        image_speed = 0.25;
        
        alarm[1] = 20;
        instance_create(x, y, Hollow_Sword_ATK1_L_Hitbox);
        ATK1 = 4;
		
		audio_play_sound(Slash_Sd, 0, false);
    }
    else if (ATK1 = 1)
    {
        sprite_index = Hollow_Sword_Exhausted_R_Spr;
		image_xscale = -1;
        image_index = 0;
        image_speed = 1/8;
        
        alarm[0] = 40;
    }
    else
    {
        alarm[1] = 20;
        instance_create(x, y, Hollow_Sword_ATK1_L_Hitbox);
        ATK1 -= 1;
		
		audio_play_sound(Slash_Sd, 0, false);
    }
}

if (action = "ATK2_R")
{
    sprite_index = Hollow_ATK2_R_Spr;
	image_xscale = 1;
    image_index = 1;
    image_speed = 0.25;
    
    instance_create(x, y, Hollow_Sword_ATK2_R_Hitbox);
    alarm[0] = 20;
	
	audio_play_sound(Slash_Sd, 0, false);
}

if (action = "ATK2_L")
{
    sprite_index = Hollow_ATK2_R_Spr;
	image_xscale = -1;
    image_index = 1;
    image_speed = 0.25;
    
    instance_create(x, y, Hollow_Sword_ATK2_L_Hitbox);
    alarm[0] = 20;
	
	audio_play_sound(Slash_Sd, 0, false);
}

