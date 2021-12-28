//Initialize
if(global.stoneFaceSlain){
	instance_destroy();
}

event_inherited();
HP = 120;
maxHP = HP;
action = "none";
meleeRange = 18;
splatColor = c_white;
hpBarWidth = 32;
hpBarHeight = 24;

depth = 20;