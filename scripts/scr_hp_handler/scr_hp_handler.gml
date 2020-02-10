
var x_offset = 40;
var y_offset =20;
var width = view_hport[0];
draw_set_font(fnt_bars)


var bar_width = sprite_get_width(spr_bar_frame);
var bar_height = sprite_get_height(spr_bar_frame);



//if player1 wins

if(p1.hp <=0 && p2.hp >0){
	p1.hp = 0;
	global.isGameOver = true;
	global.p1WinCount = 0;
	if(!global.isWinCounterAdded){
		global.p2WinCount += 1
		global.isWinCounterAdded = true;
	}
	
	
		draw_set_font(fnt_ending)
		draw_text_color(room_width/2-200,room_height/2-100,CHARACTERNAME2,c_red,c_red,c_red,c_red,1)
		draw_text_color(room_width/2,room_height/2-100," You Win!",c_red,c_red,c_red,c_red,1)
		draw_text_color(room_width/2-250,room_height/2+300,"Press start to continue",c_red,c_red,c_red,c_red,1)

	
	
	if(max(keyboard_check_pressed(vk_enter),0,gamepad_button_check_pressed(0,gp_start))==1 && global.isGameOver){
		room_persistent = false; 
		room_goto(rm_game_over)
	}


	exit
	
}
//if player 2 wins
if(p2.hp <=0 && p1.hp>0){
	p2.hp = 0;
	global.isGameOver = true;
	global.p2WinCount = 0;
	if(!global.isWinCounterAdded){
		global.p1WinCount +=1
		global.isWinCounterAdded = true;
	}
	

	draw_set_font(fnt_ending)
	draw_text_color(room_width/2-200,room_height/2-100,CHARACTERNAME1,c_red,c_red,c_red,c_red,1)
	draw_text_color(room_width/2,room_height/2-100," You Win!",c_red,c_red,c_red,c_red,1)
	draw_text_color(room_width/2-250,room_height/2+300,"Press start to continue",c_red,c_red,c_red,c_red,1)
	
	
	if(max(keyboard_check_pressed(vk_enter),0,gamepad_button_check_pressed(0,gp_start))==1 && global.isGameOver){
		room_persistent = false; 
		room_goto(rm_game_over)
	}

	
	
exit
	
}

//draw health bar and other elements
draw_text(x_offset+425,y_offset+100,"Round "+string(global.roundCounter));
draw_sprite_ext(spr_bar_frame, 0, x_offset-30,y_offset+120,2,2,0,c_red,1)
draw_sprite_part_ext(spr_bar_back, 1, 0,0,bar_width*(p1.hp/p1.hp_max),bar_height,x_offset-30, y_offset+120,2,2,c_white,1)

draw_text(x_offset+50,y_offset+130,CHARACTERNAME1);
draw_text(x_offset+90,y_offset+130," : "+string(p1.hp));
if(global.p1WinCount !=0){
	for(var i =0; i <global.p1WinCount;i++){
		draw_sprite(spr_win_counter,0,x_offset+50+20*i,y_offset+100)
	}
}


draw_sprite_ext(spr_bar_frame, 0, width-x_offset+400,y_offset+120,-2,2,0,c_red,1)
draw_sprite_part_ext(spr_bar_back, 1, 0,0,bar_width*(p2.hp/p2.hp_max),bar_height,width-x_offset+400, y_offset+120,-2,2,c_white,1)
draw_text(width-x_offset+250,y_offset+130,CHARACTERNAME2);
draw_text(width-x_offset+290,y_offset+130," : "+string(p2.hp));
if(global.p2WinCount !=0){
	for(var i =0; i <global.p2WinCount;i++){
		draw_sprite(spr_win_counter,0,width-x_offset+250+20*i,y_offset+100)
	}
}

// just in case can not go to main menu if the fight continue after any player dies
if(p1.hp <= 0 || p2.hp <=0){
	global.isGameOver = true
	if(max(keyboard_check_pressed(vk_enter),0,gamepad_button_check_pressed(0,gp_start))==1 && global.isGameOver){
		room_persistent = false; 
		room_goto(rm_game_over)
	}
}

//if the game over 3 minutes, both of the players lose
if(global.minute =2){
	global.isGameOver = true;
	global.p2WinCount = 0;
	global.p1WinCount = 0;
	p1.hp = 0;
	p2.hp = 0;
	audio_stop_sound(bgm_win)
	audio_stop_sound(bgm_laugh)
	if(global.isBooPlayed = false){
		audio_play_sound(bgm_booooo,1000,true)
		global.isBooPlayed = true
	}
	
	draw_set_font(fnt_ending)
	draw_text_color(room_width/2-200,room_height/2-100," Time is Up! You Lose!",c_red,c_red,c_red,c_red,1)
	draw_text_color(room_width/2-250,room_height/2+300,"Press start to continue",c_red,c_red,c_red,c_red,1)
	
	
	if(max(keyboard_check_pressed(vk_enter),0,gamepad_button_check_pressed(0,gp_start))==1 && global.isGameOver){
		room_persistent = false; 
		room_goto(rm_game_over)
	}

}


