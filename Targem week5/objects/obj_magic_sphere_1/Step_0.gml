i += 4;
image_index = obj_player.colours[0];
if (i == 360) {
	i = 0;
}
var radius = 30;
x = obj_player.x + cos(degtorad(i)) * radius; 
y = (obj_player.y - 20) + sin(degtorad(i)) * radius;