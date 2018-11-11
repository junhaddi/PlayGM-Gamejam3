var cost = 10;
if (global.item >= cost) {
	global.upgrade = global.upgradeHigh;
	global.item -= cost;	
}

obj_warp.image_scale = 0.6;