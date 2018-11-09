//	DRAW SELF
draw_sprite_ext(spr_money, 0, x, y, 1, 1, 0, c_white, 1);

//	DRAW TEXT
draw_set_color(c_white);
draw_text_transformed(x, y + 140, string(global.money) + "$", 4, 4, 0);