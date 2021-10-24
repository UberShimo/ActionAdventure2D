image_alpha -= 0.01;
vspeed += random_range(-0.05, 0.05);
hspeed += random_range(-0.05, 0.05);

if(image_alpha <= 0){
	instance_destroy();
}