/// @description Insert description here
// You can write your code in this editor
text[0] = "Hi, nice to see you";
margin = 8;
font_height = 24;
text_x = x+string_width(text[0])/2;
text_y = y-sprite_height;
len = string_length(text[0]);
xx = text_x + string_width(text[0])/2+margin;
yy = text_y-margin*2-font_height;
timer = 0;
pressed_button = false;