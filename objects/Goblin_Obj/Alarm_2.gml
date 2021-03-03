if (x > Player_Obj.x)
{
    sprite_index = Goblin_Throw_L_Spr;
    image_index = 1;
    image_speed = 0.5;
    
    instance_create(x, y, Stone_L_Obj)
}

if (x < Player_Obj.x)
{
    sprite_index = Goblin_Throw_R_Spr;
    image_index = 1;
    image_speed = 0.5;
    
    instance_create(x, y, Stone_R_Obj)
}

alarm[1] = 40;
alarm[0] = 6;

audio_play_sound(Swoosh_Sd, 0, false);