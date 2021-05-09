/// @description Init CONTROLS

right_input = keyboard_check(vk_right) || gamepad_button_check(0, gp_padr);
left_input = keyboard_check(vk_left) || gamepad_button_check(0, gp_padl);
down_input = keyboard_check(vk_down) || gamepad_button_check(0, gp_padd);
jump_input = keyboard_check(vk_up) || gamepad_button_check(0, gp_face1);
jump_pressed = keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_face1);

attack_input = keyboard_check(ord("X")) || gamepad_button_check(0, gp_face3);
dash_input = keyboard_check(ord("Z")) || gamepad_button_check(0, gp_face2);
check_pressed = keyboard_check_pressed(ord("C")) || gamepad_button_check_pressed(0, gp_padu);

inventory_input = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face4);