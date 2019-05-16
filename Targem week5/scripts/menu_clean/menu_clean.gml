if (argument0.buttons != noone)
{
	for (i = 0; i < array_length_1d(argument0.buttons); i += 1)
	{
		instance_destroy(argument0.buttons[i]);
	}
	argument0.buttons = noone;
}