var snackX = room_width / 2;
var snackY = room_height / 2;

var isFail , color, text;
if (global.upgrade == 0) {
	color = c_red;
	isFail = true;
	text = "강화에 실패했습니다";
}
else {
	color = c_lime;
	isFail = false;
	text = "강화에 성공했습니다";
}

if (isFail) {
	draw_sprite_ext(spr_upgrade_fail, global.upgrade, snackX, snackY, 1, 1, 0, c_white, 1);
	draw_set_halign(fa_left);
	scr_draw_text(c_white, 1, 64, room_height - 128, "보유금액: " + string(global.money) + "원", 2, 2, 0, c_dkgray, 1, 15, 10);
	scr_draw_text(c_white, 1, 64, room_height - 64, "부활비용: " + string(floor(global.snackPrice[global._upgrade] / 10)) + "원", 2, 2, 0, c_dkgray, 1, 15, 10);
	draw_set_halign(fa_center);
}
else {
	var snackX = room_width / 2;
	var snackY = room_height / 2;
	draw_sprite_ext(spr_snack, global.upgrade, snackX, snackY, 1, 1, 0, c_white, 1);
	draw_set_color(c_white);
	draw_text_transformed(snackX, snackY + 140, "+" + string(global.upgrade) + " " + global.snackName[global.upgrade], 4, 4, 0);
	draw_text_transformed(snackX, snackY + 220, string(global.snackText[global.upgrade]), 3, 3, 0);
}
scr_draw_text(color, 1, room_width / 2, room_height / 5, text, 3, 3, 0, c_dkgray, 1, 15, 10);

//	REVIVE
if (instance_exists(obj_revive)) {
	draw_set_color(c_white);
	draw_text_transformed(obj_revive.x, obj_revive.y, "부활", 1 + obj_revive.image_scale, 1 + obj_revive.image_scale, 0);
}

//	RESTART
draw_set_color(c_white);
draw_text_transformed(obj_restart.x, obj_restart.y, "돌아가기", 1 + obj_restart.image_scale, 1 + obj_restart.image_scale, 0);

//	HIGH UPGRADE
if (surface_exists(suf_upgradeHigh)) {
	var size = 50;
	surface_set_target(suf_upgradeHigh);
	gpu_set_blendmode(bm_subtract);
	draw_circle(mouse_x, mouse_y, size / 2, 0);
	draw_line_width(mouse_x, mouse_y, mouse_xprevious, mouse_yprevious, size);
	mouse_xprevious = mouse_x;
	mouse_yprevious = mouse_y;
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	
	draw_surface(suf_upgradeHigh, 0, 0);
}
else {
	suf_upgradeHigh = surface_create(room_width, room_height);
	surface_set_target(suf_upgradeHigh);
	draw_clear_alpha(c_white, 1);
	surface_reset_target();
}