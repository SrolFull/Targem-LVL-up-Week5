button = argument0;
switch (button.ID)
{
	case "ng":
	{
		room_goto(room_guildhall);
		break;
	}
	case "e":
	{
		game_end();
		break;
	}
	case "o":
	{
		menu_clean();
		obj_menu.buttons = menu_options();
		break;
	}
	case "vp":
	{
		obj_menu.volume += obj_menu.volume_step * button.direction_plas;
		if (obj_menu.volume > 100)
		{
			obj_menu.volume = 100;
		}
		if (obj_menu.volume < 0)
		{
			obj_menu.volume = 0
		}
		break;
	}
	case "fs":
	{
		if (button.text == "OFF")
		{
			button.text = "ON";
			window_set_fullscreen(true);
		}
		else
		{
			button.text = "OFF";
			window_set_fullscreen(false);
		}
		break;
	}
	case "b":
	{
		menu_clean();
		obj_menu.buttons = menu_main();
		break;
	}
}
