eff = instance_create_depth(x, y, -5, Flame_Eff_Obj);
eff.x += irandom_range(-2, 2);
eff.y += irandom_range(-2, 2);

if(alarm[0] < 60){
	sprite_index = Lava_ReactBall_Spr;
}