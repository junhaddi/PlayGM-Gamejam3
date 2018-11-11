//	SWAP
var isHigh = false;
if (global.upgrade == global.upgradeHigh) {
	global._ex = global.ex;
	global._price = global.snackPrice[global.upgrade];
	global._item = irandom(global.upgrade);
	global._upgrade = global.upgrade;
	isHigh = true;
}

with (obj_item) {
	instance_destroy();
}

if (irandom_range(0, 100) <= (global.snackRand[global.upgrade] + global.level)) {
	//	SUCCESS
	global.upgrade++;
	if (global.upgrade > global.upgradeHigh) {
		global.upgradeHigh = global.upgrade;
	}
	inGame.snackAlpha = 0;
	inGame.snackOffsetY = inGame.snackOffsetYMax;
	inGame.screenColor = c_green;
	inGame.screenAlpha = 0.4;
}
else {
	//	FAIL
	repeat (irandom(global.upgrade)) {
		instance_create_layer(room_width / 2, room_height / 2, "layer_item", obj_item);
	}
	global.upgrade = 0;
	inGame.snackOffsetY = inGame.snackOffsetYMax;
	inGame.screenColor = c_red;
	inGame.screenAlpha = 0.4;
}

obj_upgrade.image_scale = 0.6;

if (isHigh) {
	room_goto(rm_upgradeHigh);
}