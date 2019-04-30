draw_sprite(spr_enemy,0,x,y)
draw_set_color(c_red);
draw_circle(x,y,attack_range,true);
if (distance_to_object(obj_player) <= attack_range ){
	draw_set_color(c_white);
	draw_line(x,y,obj_player.x,obj_player.y);
}