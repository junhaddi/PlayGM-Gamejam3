//	ITEM
var itemX = 190;
var itemY = 90;
draw_set_color(c_white);
scr_draw_text(c_white, 1, itemX, itemY, "빼빼롱 가루\nX" + string(global.item), 3, 3, sin(get_timer() / 500000) * 5, c_dkgray, 1, 15, 10);

//	WARP
if (instance_exists(obj_warp)) {
	draw_set_color(c_white);
	draw_text_transformed(obj_warp.x, obj_warp.y, "최대강화 점프\n빼빼롱 가루10개 필요", 1 + obj_warp.image_scale, 1 + obj_warp.image_scale, 0);
}

//	HIGH UPGRADE
draw_set_color(c_white);
draw_text_transformed(obj_upgrade.x, obj_upgrade.y, "빼빼롱 강화\n(" + string(global.upgradeHigh) + "/" + string(array_length_1d(global.snackName) - 1) + ")", 1 + obj_upgrade.image_scale, 1 + obj_upgrade.image_scale, 0);

//	SELL
if (instance_exists(obj_sell)) {
	draw_set_color(c_white);
	draw_text_transformed(obj_sell.x, obj_sell.y, "판매", 1 + obj_sell.image_scale, 1 + obj_sell.image_scale, 0);
}

//	EXP
var h = 60;
draw_set_alpha(0.5);
draw_set_color(c_dkgray);
draw_rectangle(0, room_height, room_width, room_height - h, 0);
draw_set_alpha(0.5);
draw_rectangle_color(0, room_height, offsetEx / global.exMax * room_width, room_height - h, c_ltgray, c_blue, c_blue, c_ltgray, 0);
draw_set_alpha(1);
draw_set_color(c_white);
draw_text_transformed(room_width / 2, room_height - h / 2, "LV " + string(global.level), 2, 2, 0);

//	SNACK
var snackX = room_width / 2 + (global.upgrade == global.upgradeHigh) * random_range(-50, 50);
var snackY = room_height / 2 + (global.upgrade == global.upgradeHigh) * random_range(-50, 50);
draw_sprite_ext(spr_snack, global.upgrade, snackX, snackY + snackOffsetY, 1, 1, 0, c_white, snackAlpha);
draw_set_color(c_white);
draw_set_alpha(snackAlpha);
draw_text_transformed(snackX, snackY + 140 + snackOffsetY, "+" + string(global.upgrade) + " " + global.snackName[global.upgrade], 4, 4, 0);
draw_text_transformed(snackX, snackY + 220 + snackOffsetY, string(global.snackRand[global.upgrade] + global.level) + "% 성공 확률", 3, 3, 0);
draw_set_alpha(1);

//	MONEY
var money = global.money / power(10000, scr_moneyLength(global.money));
var price = global.snackPrice[global.upgrade] / power(10000, scr_moneyLength(global.snackPrice[global.upgrade]));
scr_draw_text(c_white, 1, room_width / 2, 100, "보유금액: " + string_format(abs(offsetMoney), 0, 1) + scr_moneyUnit(global.money) + "\n판매 가격: " + string_format(abs(offsetPrice), 0, 1) + scr_moneyUnit(global.snackPrice[global.upgrade]), 4, 4, sin(get_timer() / 500000) * 5, c_dkgray, 1, 15, 10);

//	OFFSET
if (offsetMoney < money) {
	offsetMoney += 1 / 60 / 0.5 * money;
	if (offsetMoney > money) {
		offsetMoney = money;
	}
}
if (offsetMoney > money) {
	offsetMoney -= 1 / 60 * 10000;
	if (offsetMoney < money) {
		offsetMoney = money;
	}
}
if (offsetPrice < price) {
	offsetPrice += 1 / 60 / 0.5 * price;
	if (offsetPrice > price) {
		offsetPrice = price;
	}
}
if (offsetPrice > price) {
	offsetPrice -= 1 / 60 * 10000;
	if (offsetPrice < price) {
		offsetPrice = price;
	}
}
if (offsetEx < global.ex) {
	offsetEx += 1 / 60 * global.ex;
	if (offsetEx > global.ex) {
		offsetEx = global.ex;
	}
}
if (offsetEx > global.ex) {
	offsetEx -= 1 / 60 * (global.exMax - global.ex);
	if (offsetEx < global.ex) {
		offsetEx = global.ex;
	}
}

//	SCREEN COLOR
draw_set_color(screenColor);
draw_set_alpha(screenAlpha);
draw_rectangle(0, 0, room_width, room_height, 0);
draw_set_alpha(1);