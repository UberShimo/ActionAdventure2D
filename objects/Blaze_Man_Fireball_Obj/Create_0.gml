event_inherited();

projectile = true;
alarm[0] = irandom_range(120, 480);

if(y > Left_Lava_Edge_Obj.y){
	instance_destroy();
}