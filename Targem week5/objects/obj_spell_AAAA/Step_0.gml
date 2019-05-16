if (global.pause) exit;

x+=cos(vector)*spd;
y-=sin(vector)*spd;

//collision with ground
if (place_meeting(x,y,obj_ground)){
	instance_destroy();
}

//collision with enemy
if (place_meeting(x, y, obj_enemy)){
	instance_destroy();
	obj_enemy.HP -=damage;
}