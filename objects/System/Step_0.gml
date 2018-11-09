global.ex += 100 / room_speed;

//	 LEVEL UP
if (global.ex >= global.exMax) {
	global.level += 1;
	global.ex = 0;
	global.exMax += 30;
}