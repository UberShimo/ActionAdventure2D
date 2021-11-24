if(action = "ATK1"){
    hitbox = instance_create(x, y, Enemy_Hitbox1_Obj);
	hitbox.image_xscale = image_xscale;
	
	audio_play_sound(Slash_Sd, 0, false);
}
else if(action = "ATK2"){
    hitbox = instance_create(x, y, Enemy_Hitbox2_Obj);
	hitbox.image_xscale = image_xscale;
	
	audio_play_sound(Slash_Sd, 0, false);
}