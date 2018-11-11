var money = argument0;
var i;
for (i = 0; money >= 10000; i++) {
	money /= 10000;
}
return i;