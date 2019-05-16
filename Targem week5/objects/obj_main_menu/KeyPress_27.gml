if (room != room_menu)
{
	if (global.pause)
	{
		menu_clean(self);
		global.pause = false;
	}
	else
	{
		buttons = scr_game_menu();
		global.pause = true;
	}
}