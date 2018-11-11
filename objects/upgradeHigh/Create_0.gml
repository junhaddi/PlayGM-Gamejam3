suf_upgradeHigh = surface_create(room_width, room_height);
surface_set_target(suf_upgradeHigh);
draw_clear_alpha(c_white, 0);
draw_sprite(bg_upgradeHigh, 0, 0, 0);
surface_reset_target();

mouse_xprevious = mouse_x;
mouse_yprevious = mouse_y;

if (global.upgrade == 0) {
	global.isFalse = true;
	if (instance_number(obj_revive) == 0) {
		instance_create_layer(192, 384, "layer_ins", obj_revive);
	}
}
