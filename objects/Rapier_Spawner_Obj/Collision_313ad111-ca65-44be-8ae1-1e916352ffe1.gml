if(Player_Obj.Duck){
	duckTimer -= 1;
	if(duckTimer <= 0){
		instance_create_depth(x+16, y-128, -1, Rapier_Obj);
		instance_destroy();
	}
}
else{
	duckTimer = 240;
}