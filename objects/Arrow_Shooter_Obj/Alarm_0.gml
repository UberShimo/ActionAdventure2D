arrow = instance_create_depth(x+8, y+5, 5, Hollow_Arrow_R_Obj);
arrow.hspeed = arrow.hspeed/2;
alarm[0] = 240;
alarm[1] = 210; // Click alarm

// Check that it is in view
if(x > camera_get_view_x(view_camera[0]) &&
x < camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) &&
y < camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])){
	audio_play_sound(Swoosh_Sd, 0, false);
}

