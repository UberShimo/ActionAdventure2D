event_inherited();

projectile = true;
gravity = 0.05;
gravity_direction = -90;

hspeed = random_range(0.25, 2);
vspeed = random_range(-2, -3);

if(x > Right_Lava_Edge_Obj.x){
	hspeed = -hspeed;
}