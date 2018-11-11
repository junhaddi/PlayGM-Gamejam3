//	BOUNCE
if (bbox_left < 0 || bbox_right > room_width) {
	hspeed *= -1;
}
if (bbox_top < 0 || bbox_bottom > room_height) {
	vspeed *= -1;
}

//	MAGNET
if (point_distance(x, y, mouse_x, mouse_y) < 200 && speed < 1) {
	isFind = true;
}

if (isFind) {
	if (point_distance(x, y, mouse_x, mouse_y) < 30) {
		global.item++;
		instance_destroy();
	}
	direction = point_direction(x, y, mouse_x, mouse_y);
	speed = 10 + acc;
	acc += 1 / 60 * 10;
}