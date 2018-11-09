//	DRAW SELF
draw_sprite_ext(spr_snack, global.upgrade, x, y, 1, 1, 0, c_white, 1);

//	DRAW TEXT
draw_set_color(c_white);
draw_text_transformed(x, y + 140, "+" + string(global.upgrade) + " " + global.snackName[global.upgrade], 4, 4, 0);
draw_text_transformed(x, y + 220, string(global.snackRand[global.upgrade]) + "% 성공 확률", 3, 3, 0);