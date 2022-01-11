// Spawn eff
instance_create_depth(x, y, 10, Green_Orb_Eff_Obj);

hspeed += 0.0005*(Player_Obj.x-x);
vspeed += 0.0005*(Player_Obj.y-y);

if(speed > 2){
	speed = 2;
}