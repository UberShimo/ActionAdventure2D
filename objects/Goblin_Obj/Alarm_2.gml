if (x > Player_Obj.x)
{
    sprite_index = Goblin_Throw_L_Spr;
    
    instance_create(x, y, Stone_L_Obj)
}

if (x < Player_Obj.x)
{
    sprite_index = Goblin_Throw_R_Spr;
    
    instance_create(x, y, Stone_R_Obj)
}

alarm[1] = random_range(80, 120);
alarm[0] = 12;

audio_play_sound(Swoosh_Sd, 0, false);