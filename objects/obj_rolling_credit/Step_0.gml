/// @description Insert description here
// You can write your code in this editor
y -= 0.5;
if (max(keyboard_check_pressed(vk_escape),0,gamepad_button_check_pressed(0,gp_start))==1) {
	room_goto(rm_main_menu)

}

if (y == 0-height+1100) y =room_height+500;
