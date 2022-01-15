if(!ATK && !hurt && action == "none" && other.HP > 0){
	ATK = true;	
	action = "ATK_H";
                
	sprite_index = Wind_Fighter_H_ATK_Spr;
	image_index = 0;
                
	alarm[1] = 64;
	alarm[0] = image_number*4;
}