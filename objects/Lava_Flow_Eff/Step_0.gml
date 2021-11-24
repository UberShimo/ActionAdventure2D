if(fadeIn && image_alpha < 0.3){
	image_alpha += 0.01;
}
else{
	fadeIn = false;
	image_alpha -= 0.001;
	
	if(image_alpha <= 0){
		instance_destroy();
	}
}