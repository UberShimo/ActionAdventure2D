if (sprite_index = Hollow_Crossbow_Aim_L_Spr)
{
    instance_create(x, y-4, Hollow_Arrow_L_Obj)
}

if (sprite_index = Hollow_Crossbow_Aim_R_Spr)
{
    instance_create(x, y-4, Hollow_Arrow_R_Obj)
}

alarm[0] = 4;
alarm[1] = 40;

audio_play_sound(Swoosh_Sd, 0, false);