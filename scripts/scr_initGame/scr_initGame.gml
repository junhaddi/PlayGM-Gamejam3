//	VAR
global.money = 0;

global.upgrade = 0;
global.upgradeHigh = 0;

global.level = 0;
global.ex = 0;
global.exMax = 30;

#region SNACK
global.snackLength = 5;

global.snackName[0] = "빼빼롱";
global.snackName[1] = "이이롱";
global.snackName[2] = "마시쩡";
global.snackName[3] = "오마이";
global.snackName[4] = "호모나";

global.snackRand[0] = 90;
global.snackRand[1] = 80;
global.snackRand[2] = 70;
global.snackRand[3] = 60;
global.snackRand[4] = 50;

for (var i = 0; i < global.snackLength; i++) {
	global.item[i] = 0;
}
#endregion

//	DRAW DEFAULT
draw_set_font(font_main);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);