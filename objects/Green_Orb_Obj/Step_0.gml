// Spawn eff
instance_create_depth(x, y, 10, Green_Orb_Eff_Obj);

if(x < Player_Obj.x){
	hspeed += 0.02;
}
else{
	hspeed -= 0.02;
}

if(y < Player_Obj.y){
	vspeed += 0.02;
}
else{
	vspeed -= 0.02;
}