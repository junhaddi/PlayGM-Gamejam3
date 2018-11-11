//	VAR
global.money = 0;
global.item = 0;

global.upgrade = 0;
global.upgradeHigh = 0;

global.level = 0;
global.ex = 0;
global.exMax = 10;

#region SNACK
global.snackName[0] =	"달달한 빼빼롱";
global.snackName[1] =	"사과 빼빼롱";
global.snackName[2] =	"방사능 빼빼롱";
global.snackName[3] =	"별사탕 빼빼롱";
global.snackName[4] =	"과대포장 빼빼롱";
global.snackName[5] =	"차세대 빼빼롱";
global.snackName[6] =	"마약 빼빼롱";
global.snackName[7] =	"지구 빼빼롱";
global.snackName[8] =	"웰빙 빼빼롱";
global.snackName[9] =	"누드 빼빼롱";
global.snackName[10] =	"왕큰 빼빼롱";
global.snackName[11] =	"사랑의 빼빼롱";
global.snackName[12] =	"자린고비 빼빼롱";

global.snackText[0] =	"빼빼롱 먹고싶다";
global.snackText[1] =	"스티븐 잡스가 가장 좋아하는 빼빼롱 입니다";
global.snackText[2] =	"근처에만 접근해도 피폭되기 쉽습니다";
global.snackText[3] =	"추억의 별사탕이 들어갔습니다";
global.snackText[4] =	"다량의 질소로 만들었습니다";
global.snackText[5] =	"프금의 폭풍 기술력을 바탕으로 만들었습니다";
global.snackText[6] =	"불법의 힘으로 만들어졌습니다";
global.snackText[7] =	"지구를 갈아서 만들었습니다";
global.snackText[8] =	"매우 맛없습니다";
global.snackText[9] =	"미성년자 판매 금지 물품입니다";
global.snackText[10] =	"슈퍼울트라킹갓엠페러제네럴충무공마제스티지니어스 짱 큽니다";
global.snackText[11] =	"순수한 사랑으로 만들어졌습니다";
global.snackText[12] =	"고수는 토핑없이 쌩으로도 충분하죠";

global.snackPrice[0] =	0;
global.snackPrice[1] =	1333;
global.snackPrice[2] =	13333;
global.snackPrice[3] =	133333;
global.snackPrice[4] =	1333333;
global.snackPrice[5] =	13333333;
global.snackPrice[6] =	133333333;
global.snackPrice[7] =	1333333333;
global.snackPrice[8] =	13333333333;
global.snackPrice[9] =	133333333333;
global.snackPrice[9] =	1333333333333;
global.snackPrice[10] = 13333333333333;
global.snackPrice[11] = 133333333333333;
global.snackPrice[12] = 1333333333333333;

global.snackRand[0] =	90;
global.snackRand[1] =	80;
global.snackRand[2] =	70;
global.snackRand[3] =	60;
global.snackRand[4] =	50;
global.snackRand[5] =	40;
global.snackRand[6] =	30;
global.snackRand[7] =	25;
global.snackRand[8] =	20;
global.snackRand[9] =	15;
global.snackRand[10] =	10;
global.snackRand[11] =	5;
global.snackRand[12] =	1;
#endregion

//	SYS
randomize();
cursor_sprite = spr_cur;

//	SWAP
global._price = 0;
global._ex = 0;
global._item = 0;
global._upgrade = 0;
global.isFalse = false;

//	FONT DEFAULT
draw_set_font(font_main);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//	SOUND
audio_play_sound(bgm_game, 0, 1);