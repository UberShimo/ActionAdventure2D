x = Red_Simon_Obj.x;
y = Red_Simon_Obj.y;

if(image_alpha < 1){
	image_alpha += 0.01;
}
image_xscale -= 0.05;
image_yscale -= 0.05;

//Spawn orbs
if(image_xscale <= 0){
	repeat(12){
		instance_create_depth(x, y, 5, Red_Orb_Obj);
	}

	instance_destroy();
}