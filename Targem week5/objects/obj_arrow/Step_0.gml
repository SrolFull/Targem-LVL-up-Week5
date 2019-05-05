if (global.pause) exit;

x+=cos(vector)*spd;
y-=sin(vector)*spd;

//collision with ground
if (place_meeting(x,y,obj_ground)){
	if (alarm[0]  <= 0){
		alarm[0] = room_speed*4;
	}
	spd = 0;
}

//collision with player
if (place_meeting(x,y,obj_player)){
	instance_destroy();
	obj_player.HP -=damage;
}