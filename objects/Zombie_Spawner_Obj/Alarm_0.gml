if(x +(8*image_xscale) > Player_Obj.x -128 && x +(8*image_xscale) < Player_Obj.x +128 && irandom_range(0, 60) == 0){
	instance_create_depth(x+random_range(0, 16*image_xscale), y, 0, Zombie_Obj);
}

alarm[0] = 10;