event_inherited();
alarm[0] = 120;
projectile = true;

action_sprite_set(Troll_Spit_Spr, 0, 0);
hspeed = random_range(2, 4);
vspeed = -2;

action_set_gravity(-90, 0.25);
