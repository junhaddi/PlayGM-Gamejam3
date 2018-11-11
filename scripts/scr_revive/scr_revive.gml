var cost = floor(global.snackPrice[global._upgrade] / 10);
if (global.money >= cost) {
	global.upgrade = global._upgrade;
	global.money -= cost;
	global.isFalse = false;
	room_goto(rm_inGame);
}

obj_revive.image_scale = 0.6;