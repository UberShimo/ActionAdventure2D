if(activated){
	direction -= 1.2*speed;

	if(speed < 1){
		speed += 0.01;
	}

	if(hspeed > 0){
		image_xscale = 1;
	}
	else{
		image_xscale = -1;
	}
	
	if(image_alpha < 1){
		image_alpha += 0.01;
	}
}

if(HP <= 0 && !hurt){
    instance_destroy();
}
