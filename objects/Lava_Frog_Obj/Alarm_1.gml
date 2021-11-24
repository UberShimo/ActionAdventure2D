vPower = random_range(2, 2.5);
hPower = random_range(0.5, 1);

vspeed = -vPower;

if(x > Player_Obj.x){
	hspeed = -hPower;
	image_xscale = -1;
}
else{
	hspeed = hPower;
	image_xscale = 1;
}
