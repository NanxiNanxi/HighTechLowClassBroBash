/// @description Insert description here
// You can write your code in this editor
if(!global.isGameOver){
	second += 1/room_speed;
	if(second >=59.9){
		second = 0;
		global.minute +=1;
	}
}