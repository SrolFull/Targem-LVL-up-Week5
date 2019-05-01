/// @description Insert description here
// You can write your code in this editor
vector = point_direction(x,y,obj_player.x, obj_player.y);
vector = degtorad(vector);
if (place_meeting(x,y,obj_player)){
	instance_destroy();
	if (obj_player.MP < 100){
		obj_player.MP ++;
	}
}
x+=cos(vector)*spd;
y-=sin(vector)*spd;