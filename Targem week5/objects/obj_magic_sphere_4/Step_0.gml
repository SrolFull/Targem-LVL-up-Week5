if (global.pause) exit;

i += 4;
image_index = obj_player.colours[3];
if (i == 360) {
	i = 0;
}
var radius = 10;
x = (obj_player.x - 5) + 3 * cos(degtorad(i)) * radius;
y = (obj_player.y - 30) + sin(degtorad(i)) * radius;