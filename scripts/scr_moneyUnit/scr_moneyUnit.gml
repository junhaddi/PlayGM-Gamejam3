var money = argument0;
var i;
for (i = 0; money >= 10000; i++) {
	money /= 10000;
}

var unit;
switch(i) {
	case 0:
		unit = "원";
		break;	
	case 1:
		unit = "만원";
		break;
	case 2:
		unit = "억";
		break;
	case 3:
		unit = "조";
		break;
}
return unit;