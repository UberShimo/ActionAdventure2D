event_inherited();
alarm[0] = 240;
projectile = true;

action_sprite_set(Troll_Spit_Spr, 0, 0);
hspeed = random_range(1, 3);
vspeed = -1;

action_set_gravity(-90, 0.1);
