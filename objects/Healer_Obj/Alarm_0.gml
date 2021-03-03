if(global.HP < 8){
    global.HP += 1;
    alarm[0] = 30;
	
	for(i = 0; i < 12; i++){
		instance_create(Player_Obj.x, Player_Obj.y, Heal_Eff_Obj);
	}
}

