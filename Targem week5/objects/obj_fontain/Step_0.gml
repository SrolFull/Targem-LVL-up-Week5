/// @description Insert description here
// You can write your code in this editor\
if (not_activated){
		if (place_meeting(x,y,obj_player) and keyboard_check_pressed(ord("E"))){
			todo = random_range(0,10);
			if (todo == 0) {
				obj_player.HP =0;
				not_activated = false;
			}	
			if (todo >0 and todo <= 5){
				repeat(10){
					instance_create_layer(x,y+50,"Main",obj_mp_sphere);
				}
				not_activated = false;
			}
			if (todo > 5 ) {
				obj_player.HP +=30;
				not_activated = false;
			}
		}	
	}