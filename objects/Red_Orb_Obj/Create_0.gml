event_inherited();

projectile = true;

travelSpeed = random_range(0.5, 1)

if(irandom_range(1, 2) == 1){
	y = -64;
	vspeed = travelSpeed;
}
else{
	y = Nightmare_BotLeft_Obj.y+128;
	vspeed = -travelSpeed;
}

if(irandom_range(1, 2) == 1){
	hspeed = travelSpeed;
}
else{
	hspeed = -travelSpeed;
}

nightmareWidth = Nightmare_RightTop_Obj.x - Nightmare_BotLeft_Obj.x;
x = Nightmare_BotLeft_Obj.x-128;
x += random_range(0, nightmareWidth+256);

alarm[0] = 600;