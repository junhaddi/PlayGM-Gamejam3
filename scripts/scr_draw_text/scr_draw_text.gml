var textColor = argument0;
var textAlpha = argument1

var textX = argument2;
var textY = argument3;
var text = argument4;
var textScaleX = argument5;
var textScaleY = argument6;
var textAngle = argument7;

var shadowColor = argument8;
var shadowAlpha = argument9
var offsetX = argument10;
var offsetY = argument11;

//	DRAW TEXT SHADOW
draw_set_color(shadowColor);
draw_set_alpha(shadowAlpha);
draw_text_transformed(textX + offsetX, textY + offsetY, text, textScaleX, textScaleY, textAngle);
//	DRAW TEXT
draw_set_color(textColor);
draw_set_alpha(textAlpha);
draw_text_transformed(textX, textY, text, textScaleX, textScaleY, textAngle);

draw_set_alpha(1);