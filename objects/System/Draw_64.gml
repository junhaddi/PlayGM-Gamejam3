//	CENTER
draw_text_transformed(room_width / 2, 70, "앙기무띠~!@", 5, 5, 0);

//	ITEM
draw_text_transformed(55, 50, "아이템", 2, 2, 0);
var j = 0, offsetX = 30, offsetY = 50, width = 55, height = 100;
for (var i = 0; i < global.snackLength; i++) {
	if (global.item[i] > 0) {
		draw_sprite_ext(spr_item, global.upgrade, offsetX, j * offsetY + height, 1, 1, 0, c_white, 1);
		draw_set_color(c_white);
		draw_text_transformed(offsetX + width, j * offsetY + height, ": " + string(global.item[i]), 2, 2, 0);
		j++;
	}
}

//	EXP
var h = 60;
draw_set_color(c_green);
draw_rectangle(0, room_height, room_width, room_height - h, 0);
if (global.ex > 0) {
	draw_set_color(c_lime);
	draw_rectangle(0, room_height, global.ex / global.exMax * room_width, room_height - h, 0);
	draw_set_color(c_white);
	draw_text_transformed(room_width / 2, room_height - h / 2, "LV " + string(global.level), 2, 2, 0);
}