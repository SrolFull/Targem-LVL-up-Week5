/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("E"))){
	if (pressed_button)
		pressed_button = false;
	else
		pressed_button = true;
}
if (pressed_button and !instance_exists(obj_store_window))
	scr_open_store();
	
if (!obj_guildmaster.pressed_button or (abs(x-obj_player.x)>100)){
	instance_destroy(obj_store_window);
	instance_destroy(obj_button_shop);
	instance_destroy(obj_button_spells);
	instance_destroy(obJ_button_quests);
	pressed_button = false
}