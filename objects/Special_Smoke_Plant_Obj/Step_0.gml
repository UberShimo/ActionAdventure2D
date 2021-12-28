// Die
if(HP <= 0 && !hurt && !dead){
    repeat(64){
		instance_create_depth(x, y, -20, Smoke_Obj);
	}
	dead = true;
	alarm[0] = 60;
}

