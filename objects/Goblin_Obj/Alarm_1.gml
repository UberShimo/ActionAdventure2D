if (x > Player_Obj.x)
{
    sprite_index = Goblin_Throw_L_Spr;
    image_index = 0;
    image_speed = 0;
}

if (x < Player_Obj.x)
{
    sprite_index = Goblin_Throw_R_Spr;
    image_index = 0;
    image_speed = 0;
}

ATK = true;
alarm[2] = 20;

