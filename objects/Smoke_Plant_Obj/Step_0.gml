// Die
if(HP <= 0 && !hurt){
    repeat(64){
		instance_create_depth(x, y, -20, Smoke_Obj);
	}
	instance_create_depth(x, y, 5, Smoke_Plant_Rest_Obj)
	instance_destroy();
}

