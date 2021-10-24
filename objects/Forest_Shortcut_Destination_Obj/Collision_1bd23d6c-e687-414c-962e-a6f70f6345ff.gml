if(!global.forestShortcutFound){
	global.forestShortcutFound = true;
	instance_create_depth(Player_Obj.x, Player_Obj.y, 0, Shortcut_Found_Obj);
}