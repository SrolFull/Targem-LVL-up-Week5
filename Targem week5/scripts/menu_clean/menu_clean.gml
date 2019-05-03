if (obj_menu.buttons != noone)
{
	for (i = 0; i < array_length_1d(obj_menu.buttons); i += 1)
	{
		instance_destroy(obj_menu.buttons[i]);
	}
	obj_menu.buttons = noone;
}