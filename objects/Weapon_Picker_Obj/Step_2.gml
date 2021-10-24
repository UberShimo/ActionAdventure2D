// divide camera view by 4 since game pixels are 4 times bigger than normal pixels
viewWidth = (camera_get_view_width(0) / 4);
viewHeight = (camera_get_view_height(0) / 4);

// stay relative to camera
x = camera_get_view_x(view_camera[0]) + viewWidth + extraX;
y = camera_get_view_y(view_camera[0]) + extraY;

if(!global.inventoryIsOpen){
	instance_destroy();
}
