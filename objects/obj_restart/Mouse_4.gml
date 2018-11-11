if (global.upgrade == (array_length_1d(global.snackName) - 1)) {
	room_goto(rm_gameOver);	
}
else {
	room_goto(rm_inGame);
}