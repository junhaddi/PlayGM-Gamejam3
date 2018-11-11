with (obj_item) {
	instance_destroy();
}
	
if (global.upgrade > 0) {
	global.ex += global.upgrade;
	global.money += global.snackPrice[global.upgrade];
	global.upgrade = 0;

	inGame.snackOffsetY = inGame.snackOffsetYMax;
	inGame.screenColor = c_yellow;
	inGame.screenAlpha = 0.4;
}

obj_sell.image_scale = 0.6;