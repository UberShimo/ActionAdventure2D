if(!CloudWall_Spawner.alarm[0] > 0){
	instance_destroy(CloudWall_Obj);
	CloudWall_Spawner.alarm[0] = 24;
	image_index = 1;
	audio_play_sound(Click_Sd, 1, false);
}