if(!global.blazeManSlain){
	action_set_relative(1);
	action_create_object(Blaze_Man_Obj, 0, 0);
	action_kill_object();
	action_set_relative(0);
}