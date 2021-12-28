if(irandom_range(1, 60) == 1){
	xSpawn = random_range(8, roomWidth-8);
	instance_create_depth(x+xSpawn, y, -1, Falling_Rock_Obj);
}

if(global.stoneFaceSlain){
	instance_destroy();
}