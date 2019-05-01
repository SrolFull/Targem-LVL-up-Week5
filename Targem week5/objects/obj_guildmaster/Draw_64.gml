/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player)){
	draw_set_color(c_white);
	draw_set_font(fnt_menu);
	draw_rectangle(text_x,text_y,xx,yy,true);
	draw_text(text_x+margin,yy+font_height/2,text[0]);
	if (keyboard_check("E"))
		scr_open_store();
}
else
{
	//if (instance_exists(obj_store))
		//instance_destroy(obj_store);
}