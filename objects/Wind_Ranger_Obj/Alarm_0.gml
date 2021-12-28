action = "none";
ATK = false;

sprite_index = Wind_Ranger_Spr;
hspeed = 0;

// Turn toward player
if(x < Player_Obj.x){
	image_xscale = 1;
}
else if(x > Player_Obj.x){
	image_xscale = -1;
}
	
alarm[1] = 30;