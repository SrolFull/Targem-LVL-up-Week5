gap_x = 20
gap_y = 20

buttons[0] = instance_create_layer(obj_menu.x, obj_menu.y, "layer_buttons", obj_text_with_spr);
buttons[0].text = "Volume";
scr_button_scaling(buttons[0]);

buttons[1] = instance_create_layer(0, buttons[0].y, "layer_buttons", obj_button_with_spr);
buttons[1].sprite_index = spr_button_arrow;
buttons[1].height = buttons[0].height_text;
buttons[1].height_scaling = true;
buttons[1].image_angle = 180;
buttons[1].ID = "vp";
buttons[1].direction_plas = -1;
scr_button_scaling_image(buttons[1]);

buttons[1].x = buttons[0].bbox_right + gap_x + buttons[1].sprite_width / 2;

buttons[2] = instance_create_layer(0, buttons[0].y, "layer_buttons", obj_volume);
buttons[2].text = string(obj_menu.volume);
scr_button_scaling(buttons[2]);

buttons[2].x = buttons[1].bbox_right + gap_x + buttons[2].sprite_width / 2;

buttons[3] = instance_create_layer(0, buttons[0].y, "layer_buttons", obj_button_with_spr);
buttons[3].sprite_index = spr_button_arrow;
buttons[3].height = buttons[0].height_text;
buttons[3].height_scaling = true;
buttons[3].ID = "vp";
buttons[3].direction_plas = 1;
scr_button_scaling_image(buttons[3]);

buttons[3].x = buttons[2].bbox_right + gap_x + buttons[3].sprite_width / 2;

buttons[4] = instance_create_layer(buttons[0].x, 0, "layer_buttons", obj_text_with_spr);
buttons[4].text = "Fullscreen";
scr_button_scaling(buttons[4]);

buttons[4].y = buttons[0].bbox_bottom + gap_y + buttons[4].sprite_height / 2;

buttons[5] = instance_create_layer(0, buttons[4].y, "layer_buttons", obj_button_with_text);
buttons[5].text = "OFF";
buttons[5].ID = "fs";
buttons[5].indent = 5;
scr_button_scaling(buttons[5]);

buttons[5].x = buttons[4].bbox_right + gap_x + buttons[5].sprite_width / 2;

buttons[6] = instance_create_layer(buttons[0].x, 0, "layer_buttons", obj_button_with_text);
buttons[6].text = "Back";
buttons[6].ID = "b";
buttons[6].indent = 5;
scr_button_scaling(buttons[6]);

buttons[6].y = buttons[4].bbox_bottom + gap_y + buttons[6].sprite_height / 2;

return buttons;