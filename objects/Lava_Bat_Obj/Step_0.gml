// Eff
eff = instance_create(x, y+2, Effect_Pixel_Obj);
eff.image_blend = c_orange;
eff.x += random_range(-4, 4);
eff.vspeed = -0.1;
eff.image_alpha = 0.5;
eff.alphaFade = -0.01;

if(hspeed < 1 && hspeed > -1){
	hspeed += hspeed_change;
}

// Die
if(HP <= 0 && !hurt){
    instance_destroy();
}