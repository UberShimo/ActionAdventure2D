if(!spawned && Player_Obj.x > x-32 && Player_Obj.y > y){
	spawned = true;
	visible = true;
	sprite_index = Deep_Eye_Open_Spr;
	alarm[0] = 10;
}

image_angle = point_direction(x, y, Player_Obj.x, Player_Obj.y);