if(global.thunderManSlain && global.blazeManSlain && global.stoneFaceSlain){
	instance_create_depth(x, y, -5, Sleep_Time_Obj);
}
else{
	instance_destroy();
}