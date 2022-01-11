event_inherited();

projectile = true;
hLaunch = 0.2;
vLaunch = 0.2;

direction = point_direction(x, y, Player_Obj.x, Player_Obj.y);
direction += random_range(-20, 20);
speed = 1;