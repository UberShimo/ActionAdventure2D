event_inherited();

projectile = true;

direction = point_direction(x, y, Player_Obj.x, Player_Obj.y);
direction += random_range(-20, 20);
speed = 1;