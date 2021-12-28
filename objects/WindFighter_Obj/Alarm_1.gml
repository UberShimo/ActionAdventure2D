if(action == "ATK_H"){
	x += 4 * image_xscale;
	
    hitbox = instance_create(x, y, WindFighter_Hitbox_Obj);
	hitbox.image_xscale = image_xscale;
	
	audio_play_sound(Slash_Sd, 0, false);
}
else if(action == "ATK_L"){
	x += 4 * image_xscale;
	
    hitbox = instance_create(x, y+8, WindFighter_Hitbox_Obj);
	hitbox.image_xscale = image_xscale;
	
	audio_play_sound(Slash_Sd, 0, false);
}