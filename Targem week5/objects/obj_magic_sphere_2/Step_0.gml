i += 4;
image_index = obj_player.colours[1];
if (i == 360) {
	i = 0;
}
var radius = 15;
x = (obj_player.x - 5) + cos(degtorad(i)) * radius; 
y = (obj_player.y - 55) + sin(degtorad(i)) * radius;