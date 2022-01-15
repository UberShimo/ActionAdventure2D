event_inherited();

if(instance_number(Lightning_Ball_Obj) = 1){
    direction += 120;
}
else if(instance_number(Lightning_Ball_Obj) = 2){
    direction += 240;
}

stun = 24;
vLaunch = 1;
hLaunch = 0;
projectile = true;
rotation = 1.5;