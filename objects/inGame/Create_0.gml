//	EFFECT
snackAlpha = 1;
snackOffsetYMax = 50;
snackOffsetY = snackOffsetYMax;

offsetMoney = global.money / power(10000, scr_moneyLength(global.money));
offsetPrice = global._price / power(10000, scr_moneyLength(global._price));

offsetEx = global._ex;

screenColor = c_white;
screenAlpha = 0;

if (global.isFalse) { 
	repeat (global._item) {
		instance_create_layer(room_width / 2, room_height / 2, "layer_item", obj_item);
	}
	screenColor = c_red;
	screenAlpha = 0.4;
	global.isFalse = false;
}