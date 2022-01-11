if(Player_Obj.x < x-2 || Player_Obj.x > x+18){
	instance_create_depth(x, y, 0, CloudWall_Obj);
	instance_create_depth(x, y-16, 0, CloudWall_Obj);
	instance_create_depth(x, y-32, 0, CloudWall_Obj);
	Switch_Obj.image_index = 0;
}
else{
	alarm[0] = 8;
}