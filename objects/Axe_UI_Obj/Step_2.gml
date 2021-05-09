// divide camera view by 4 since game pixels are 4 times bigger than normal pixels
halfViewWidth = (camera_get_view_width(0) / 4) / 2;
halfViewHeight = (camera_get_view_height(0) / 4) / 2;

// stay relative to player
x = Player_Obj.x + halfViewWidth - (24*1);
y = Player_Obj.y - halfViewHeight;

if(!global.inventoryIsOpen){
	instance_destroy();
}