/// @description Spawn ring
ring = instance_create_depth(x, y, 0, PriestRing_Obj);
ring.hspeed = random_range(0.5, 1) * image_xscale;

alarm[0] = 16;