/// @description Turn based spawning
if(turn == "blue"){
	if(instance_exists(Blue_Simon_Obj)){
		Blue_Simon_Obj.spawnOrbs = true;
	}
	
	if(instance_exists(Red_Simon_Obj)){
		turn = "red";
	}
	else if(instance_exists(Green_Simon_Obj)){
		turn = "green"
	}
}
else if(turn == "red"){
	if(instance_exists(Red_Simon_Obj)){
		Red_Simon_Obj.spawnOrbs = true;
	}
	
	if(instance_exists(Green_Simon_Obj)){
		turn = "green";
	}
	else if(instance_exists(Blue_Simon_Obj)){
		turn = "blue"
	}
}
else if(turn == "green"){
	if(instance_exists(Green_Simon_Obj)){
		Green_Simon_Obj.spawnOrbs = true;
	}
	
	if(instance_exists(Blue_Simon_Obj)){
		turn = "blue"
	}
	else if(instance_exists(Red_Simon_Obj)){
		turn = "red";
	}
}

alarm[0] = 120*(existingSimons/2);