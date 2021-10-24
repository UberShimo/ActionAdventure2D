event_inherited();

// Store vspeed because it changes when it bounces for some reason
storedVspeed = random_range(-1.5, -2);
vspeed = storedVspeed;

projectile = true;
gravity_direction = -90;
gravity = 0.05;

alarm[0] = 480;