// Spawn inventory
instance_create_depth(0, 0, -90, Inventory_Obj);
instance_create_depth(0, 0, -90, Inventory_Frame_Obj);

// extra X/Y required for keeping position relative to the player
halfViewWidth = (camera_get_view_width(0) / 4) / 2;
halfViewHeight = (camera_get_view_height(0) / 4) / 2;
extraX = halfViewWidth - (24*4);
extraY = -halfViewHeight;

// Spawn aviable weapons
if(global.hasSword){
	instance_create_depth(0, 0, -100, Sword_UI_Obj);
}
if(global.hasKnife){
	instance_create_depth(0, 0, -100, Knife_UI_Obj);
}
if(global.hasSpear){
	instance_create_depth(0, 0, -100, Spear_UI_Obj);
}
if(global.hasAxe){
	instance_create_depth(0, 0, -100, Axe_UI_Obj);
}
if(global.hasKatana){
	instance_create_depth(0, 0, -100, Katana_UI_Obj);
}
if(global.hasRapier){
	instance_create_depth(0, 0, -100, Rapier_UI_Obj);
}
if(global.hasScythe){
	instance_create_depth(0, 0, -100, Scythe_UI_Obj);
}
if(global.hasBoomHammer){
	instance_create_depth(0, 0, -100, BoomHammer_UI_Obj);
}

// Go to currently equipped weapon
if(global.weapon == "sword"){
	extraX += 0;
}
else if(global.weapon == "knife"){
	extraX += 24;
}
else if(global.weapon == "spear"){
	extraX += 48;
}
else if(global.weapon == "axe"){
	extraX += 72;
}
else if(global.weapon == "katana"){
	extraX += 0;
	extraY += 24;
}
else if(global.weapon == "rapier"){
	extraX += 24;
	extraY += 24;
}
else if(global.weapon == "scythe"){
	extraX += 48;
	extraY += 24;
}
else if(global.weapon == "boomhammer"){
	extraX += 72;
	extraY += 24;
}