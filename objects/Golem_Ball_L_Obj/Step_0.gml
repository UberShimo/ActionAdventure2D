x -= 4;

if !(place_meeting(x, y+1, Collision_Obj))
{
    gravity_direction = -90;
    gravity = 1;
}
else
{
    gravity = 0;
}

