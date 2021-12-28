hspeed += hSpeedChange;
vspeed += vSpeedChange;

if(vspeed < -1){
	vSpeedChange = 0.05;
}
if(vspeed > 1){
	vSpeedChange = -0.05;
}