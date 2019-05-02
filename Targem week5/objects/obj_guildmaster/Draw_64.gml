draw_set_color(c_white);
draw_set_font(fnt_menu);
draw_text(x-sprite_width/2+margin,y-sprite_height*3/4,"Master");

if (place_meeting(x,y,obj_player) && timer div room_speed < 3){
	timer++;
	draw_rectangle(text_x,text_y,xx,yy,true);
	draw_text(text_x+margin,yy+font_height/2,text[0]);
}

