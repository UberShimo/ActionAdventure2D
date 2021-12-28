x += random_range(-0.1, 0.1);
y += random_range(-0.1, 0.12);

image_alpha -= 0.002;

if(image_alpha <= 0){
	instance_destroy();
}