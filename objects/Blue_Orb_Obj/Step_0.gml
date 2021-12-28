// Spawn eff
instance_create_depth(x, y, 10, Blue_Orb_Eff_Obj);

if(rotation > 0){
	direction += rotation-(speed/2);
}
else{
	direction += rotation+(speed/2);
}

if(speed < 4){
	speed += 0.01;
}
