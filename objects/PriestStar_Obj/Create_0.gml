event_inherited();

projectile = true;

direction = point_direction(x, y, Player_Obj.x, Player_Obj.y);
direction += random_range(-45, 45);
speed = 1;