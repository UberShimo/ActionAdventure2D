image_alpha -= fadeout;

if(image_alpha <= 0){
	instance_destroy();
}