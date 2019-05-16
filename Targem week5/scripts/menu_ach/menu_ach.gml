indent = 5;
gap = 10;

buttons[0] = instance_create_layer(obj_menu.x, obj_menu.y, "layer_buttons", obj_button_with_text);
buttons[0].ID = "b";
buttons[0].text = "Back";
buttons[0].indent = indent;
scr_button_scaling(buttons[0]);

achi = ["New game - start new game"]

for (i = 1; i < array_length_1d(achi) + 1; i++)
{
	buttons[i] = instance_create_layer(buttons[0].x, 0, "layer_buttons", obj_text_with_spr);
	buttons[i].text = achi[i - 1];
	scr_button_scaling(buttons[i]);

	buttons[i].y = buttons[i - 1].bbox_bottom + gap + buttons[i].sprite_height / 2;
	buttons[i].visible = false;
}

if (obj_main_menu.new_game)
{
	buttons[1].visible = true;
}


return buttons;