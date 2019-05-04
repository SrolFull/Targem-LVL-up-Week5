indent = 5;
gap = 10;

buttons[0] = instance_create_layer(obj_menu.x, obj_menu.y, "layer_buttons", obj_button_with_text);
buttons[0].ID = "ng";
buttons[0].text = "New game";
buttons[0].indent = indent;
scr_button_scaling(buttons[0]);

buttons[1] = instance_create_layer(buttons[0].x, 0, "layer_buttons", obj_button_with_text);
buttons[1].ID = "";
buttons[1].text = "Continue";
buttons[1].indent = indent;
scr_button_scaling(buttons[1]);

buttons[1].y = buttons[0].bbox_bottom + buttons[1].sprite_height / 2 + gap;

buttons[2] = instance_create_layer(buttons[0].x, 0, "layer_buttons", obj_button_with_text);
buttons[2].ID = "";
buttons[2].text = "Achivments";
buttons[2].indent = indent;
scr_button_scaling(buttons[2]);

buttons[2].y = buttons[1].bbox_bottom + buttons[2].sprite_height / 2 + gap;

buttons[3] = instance_create_layer(buttons[0].x, 0, "layer_buttons", obj_button_with_text);
buttons[3].ID = "o";
buttons[3].text = "Options";
buttons[3].indent = indent;
scr_button_scaling(buttons[3]);

buttons[3].y = buttons[2].bbox_bottom + buttons[3].sprite_height / 2 + gap;

buttons[4] = instance_create_layer(buttons[0].x, 0, "layer_buttons", obj_button_with_text);
buttons[4].ID = "e";
buttons[4].text = "Exit";
buttons[4].indent = indent;
scr_button_scaling(buttons[4]);

buttons[4].y = buttons[3].bbox_bottom + buttons[4].sprite_height / 2 + gap;


return buttons;