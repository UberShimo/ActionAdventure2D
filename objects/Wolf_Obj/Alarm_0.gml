//Recover
ATK = false;
charge = false;
recover = true;

if (hspeed > 0)
{
    image_speed = 0;
    image_index = 0;
    sprite_index = Wolf_Recover_R_Spr;
}

if (hspeed < 0)
{
    image_speed = 0;
    image_index = 0;
    sprite_index = Wolf_Recover_L_Spr;
}

hspeed = 0;
alarm[9] = 45;

