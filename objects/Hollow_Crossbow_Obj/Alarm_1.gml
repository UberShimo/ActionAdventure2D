if (!ATK)
{
    ATK = true;

    if (x > Player_Obj.x)
    {
        sprite_index = Hollow_Crossbow_Load_L_Spr;
        image_index = 0;
        image_speed = 0.1;
    }
    
    if (x < Player_Obj.x)
    {
        sprite_index = Hollow_Crossbow_Load_R_Spr;
        image_index = 0;
        image_speed = 0.1;
    }
    
    alarm[1] = 50;
}
else
{
    if (x > Player_Obj.x)
    {
        sprite_index = Hollow_Crossbow_Aim_L_Spr;
        image_index = 0;
        image_speed = 0;
    }
    
    if (x < Player_Obj.x)
    {
        sprite_index = Hollow_Crossbow_Aim_R_Spr;
        image_index = 0;
        image_speed = 0;
    }
    
    alarm[2] = 32;
}


