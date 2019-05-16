if (global.pause) exit;

if (obj_player.HP / one_hp - 1 < 0)
	image_index = 0;
else
	image_index = (obj_player.HP / one_hp) - 1;

//Не работает. Я просто не понимаю, как это сделать. :(
//x = camera_get_view_width(view_camera[0]) - 100;
//y = camera_get_view_height(view_camera[0]) - 100;