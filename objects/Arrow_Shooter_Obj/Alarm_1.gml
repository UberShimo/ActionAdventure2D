/// @description click

// Check that it is in view
if(x > camera_get_view_x(view_camera[0]) - 32 &&
x < camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) &&
y < camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])){
	audio_play_sound(Click_Sd, 0, false);
}
