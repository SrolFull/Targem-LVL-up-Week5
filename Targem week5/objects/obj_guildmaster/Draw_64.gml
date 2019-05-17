draw_set_color(c_white);
draw_set_font(fnt_menu);
draw_text(x,y-sprite_height,"Master");

if (place_meeting(x,y,obj_player) && timer div room_speed < 3){
	timer++;
	draw_rectangle(text_x-string_width(text[0])/2-margin,text_y,xx,yy,true);
	draw_text(text_x,yy+font_height/2,text[0]);
}
draw_set_font(font1);
with(obj_player)
	if (place_meeting(x,y,obj_guildmaster)){
		draw_text(x+sprite_width,y,"Press E to start dialog");
	}



