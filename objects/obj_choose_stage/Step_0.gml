/// @description Insert description here
// You can write your code in this editor

if max(keyboard_check_pressed(ord("W")), 0 ,keyboard_check_pressed(vk_up),gamepad_button_check_pressed(0, gp_padu))==1{
	current_index--;
	if current_index <0 current_index = array_length_1d(menu)-1
	if(!isMovingPlayed){
		audio_play_sound(bgm_cursor_moving,1000,false)
		isMovingPlayed = true;
	}
	isMovingPlayed = false
}


if  max(keyboard_check_pressed(ord("S")), 0 ,keyboard_check_pressed(vk_down),gamepad_button_check_pressed(0, gp_padd))==1{
	current_index++;
	if current_index > array_length_1d(menu)-1 current_index = 0;
	if(!isMovingPlayed){
		audio_play_sound(bgm_cursor_moving,1000,false)
		isMovingPlayed = true;
	}
	isMovingPlayed = false
}



if max(keyboard_check_pressed(vk_enter),gamepad_button_check_pressed(0, gp_start),0)==1{
	switch (current_index){
		case 0:
			global.isGame2 = false;
			global.isGame1 = true;
			if(!isConfirmPlayed){
			audio_play_sound(bgm_option_confirm,1000,false)
			isConfirmPlayed = true
		}
			room_goto(rm_character_select);
		break
		
		case 1:
			global.isGame1 = false;
			global.isGame2 = true;
			if(!isConfirmPlayed){
			audio_play_sound(bgm_option_confirm,1000,false)
			isConfirmPlayed = true
		}
			room_goto(rm_character_select);
		break;
		
		case 2:
		if(!isConfirmPlayed){
			audio_play_sound(bgm_option_confirm,1000,false)
			isConfirmPlayed = true
		}
			room_goto(rm_main_menu)
		break
		
		case 3:
		
		if(!isConfirmPlayed){
			audio_play_sound(bgm_option_confirm,1000,false)
			isConfirmPlayed = true
		}
			game_end();
		break
		
		
	}
}

