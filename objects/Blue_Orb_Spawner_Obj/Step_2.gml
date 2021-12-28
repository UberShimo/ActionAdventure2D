x = Blue_Simon_Obj.x;
y = Blue_Simon_Obj.y;

if(image_alpha < 1){
	image_alpha += 0.01;
}
image_xscale -= 0.05;
image_yscale -= 0.05;

//Spawn orbs
if(image_xscale <= 0){
	orb1 = instance_create_depth(x, y, 5, Blue_Orb_Obj);
	orb2 = instance_create_depth(x, y, 5, Blue_Orb_Obj);
	orb3 = instance_create_depth(x, y, 5, Blue_Orb_Obj);

	orb2.direction = 120;
	orb3.direction = 240;

	orb1.rotation = Blue_Simon_Obj.orbRotaion;
	orb2.rotation = Blue_Simon_Obj.orbRotaion;
	orb3.rotation = Blue_Simon_Obj.orbRotaion;

	instance_destroy();
}