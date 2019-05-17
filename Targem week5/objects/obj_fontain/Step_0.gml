/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("E")) and not_activated){
	show_debug_message("Push")
	Die = choose(true,false);
	if (Die) obj_player.HP = 0;
	not_activated = false;
}