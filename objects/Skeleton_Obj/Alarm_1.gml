if(action = "headoff"){
    hitbox = instance_create(x, y, Skeleton_Head_Obj);
	hitbox.image_xscale = image_xscale;
	hitbox.speed = random_range(2.6, 2.8) * image_xscale;
	
	audio_play_sound(Thonk_Sd, 0, false);
}