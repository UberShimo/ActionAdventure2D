// Spawn inventory
instance_create_depth(0, 0, -900, Inventory_Obj);
instance_create_depth(0, 0, -900, Inventory_Frame_Obj);

// Camera size is 4 times bigger than the pixel view. Therefore always divide by 4 when getting width/height
extraX = -24*4;
extraY = 0;

// Spawn aviable weapons
if(global.hasSword){
	instance_create_depth(0, 0, -1000, Sword_UI_Obj);
}
if(global.hasKnife){
	instance_create_depth(0, 0, -1000, Knife_UI_Obj);
}
if(global.hasSpear){
	instance_create_depth(0, 0, -1000, Spear_UI_Obj);
}
if(global.hasAxe){
	instance_create_depth(0, 0, -1000, Axe_UI_Obj);
}
if(global.hasKatana){
	instance_create_depth(0, 0, -1000, Katana_UI_Obj);
}
if(global.hasRapier){
	instance_create_depth(0, 0, -1000, Rapier_UI_Obj);
}
if(global.hasScythe){
	instance_create_depth(0, 0, -1000, Scythe_UI_Obj);
}
if(global.hasBoomHammer){
	instance_create_depth(0, 0, -1000, BoomHammer_UI_Obj);
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