//Initialize
if(global.stoneFaceSlain){
	instance_destroy();
}

event_inherited();
HP = 40;
maxHP = HP;
action = "none";
meleeRange = 18;
splatColor = c_white;
hpBarWidth = 32;
hpBarHeight = 24;

depth = 10;
gravity = 0;
gravity_direction = -90;
alarm[1] = irandom_range(120, 180);