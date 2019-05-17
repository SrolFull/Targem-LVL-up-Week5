/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player) and not_activated){
	draw_text(x,y,"Press E to try chance");
}
if (!not_activated and place_meeting(x,y,obj_player))
	if (Die) draw_text(x,y,"You are DIED");
	else {
		draw_text(x,y,"You are WIN + 20 MP");
		obj_player.MP +=20;
		}