/// @description Init CONTROLS

right_pressed = keyboard_check_pressed(vk_right) || gamepad_button_check_pressed(0, gp_padr);
left_pressed = keyboard_check_pressed(vk_left) || gamepad_button_check_pressed(0, gp_padl);
down_pressed = keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0, gp_padd);
up_pressed = keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_padu);

pickWeapon_input =	keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("X")) || keyboard_check_pressed(ord("Z")) ||
					gamepad_button_check_pressed(0, gp_face4) || gamepad_button_check_pressed(0, gp_face1) ||
					gamepad_button_check_pressed(0, gp_face3) || gamepad_button_check_pressed(0, gp_face2);