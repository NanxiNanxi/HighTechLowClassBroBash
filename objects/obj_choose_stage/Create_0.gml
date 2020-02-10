/// @description Insert description here
// You can write your code in this editor
if(!audio_is_playing(bgm_openning)){
	audio_stop_all()
audio_play_sound(bgm_openning,1000,true)
}

menu = ["Stage 1: Mechanical World","Stage 2: Lake View","Main Menu","Exit"]
current_index = 0;

isMovingPlayed = false
isConfirmPlayed = false
