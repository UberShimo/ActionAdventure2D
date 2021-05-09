x -= 2;

if !(place_meeting(x, y+1, Collision_Obj))
{
    gravity_direction = -90;
    gravity = 0.5;
}
else
{
    gravity = 0;
}

