if(x < Left_Lava_Edge_Obj.x){
	action = "appearRight";
}
else{
	action = "appearLeft";
}
instance_create_depth(x, y, 0, Blaze_Man_LavaDrop_Obj);
instance_create_depth(x, y, 0, Blaze_Man_LavaDrop_Obj);
instance_create_depth(x, y, 0, Blaze_Man_LavaDrop_Obj);

x = 0;
y = 0;

alarm[0] = 0;
alarm[1] = 120;
alarm[2] = 0;