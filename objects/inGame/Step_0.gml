//	LEVEL UP
if (global.ex >= global.exMax) {
	global.level++;
	global.ex = 0;
	global.exMax += 5;
}

//	EFFECT
if (snackOffsetY > 0) {
	snackOffsetY -= 2;
	if (snackOffsetY < 0) {
		snackOffsetY = 0;
	}
}
snackAlpha = (snackOffsetYMax - snackOffsetY) / snackOffsetYMax;

if (screenAlpha > 0) {
	screenAlpha -= 0.02;
	if (screenAlpha < 0) {
		screenAlpha = 0;
	}
}

//	WARP CREATE
if (global.upgrade == 0) {
	if (instance_number(obj_warp) == 0) {
		instance_create_layer(192, 384, "layer_ins", obj_warp);
	}
}
else {
	with (obj_warp) {
		instance_destroy();
	}
}