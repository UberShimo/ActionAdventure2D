// Spawn eff
instance_create_depth(x, y, 10, Blue_Orb_Eff_Obj);

if(rotation > 0){
	direction += rotation-(speed/2)-antiRotation;
}
else{
	direction += rotation+(speed/2)+antiRotation;
}
antiRotation += 0.001;

if(speed < 3){
	speed += 0.01;
}
