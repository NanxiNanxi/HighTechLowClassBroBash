/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_instruction,0,10,10);
if (max(keyboard_check_pressed(vk_escape),0,gamepad_button_check_pressed(0,gp_start))==1 ){
room_goto(rm_main_menu)
}
