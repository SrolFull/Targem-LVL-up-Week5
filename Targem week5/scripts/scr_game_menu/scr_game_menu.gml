indent = 5;
gap = 10;

buttons[0] = instance_create_layer(camera_get_view_width(view_camera[0]) / 2, 200,
"layer_buttons", obj_button_with_text);
buttons[0].ID = "mm";
buttons[0].text = "Main menu";
buttons[0].indent = indent;
scr_button_scaling(buttons[0]);

buttons[1] = instance_create_layer(buttons[0].x, 0, "layer_buttons", obj_button_with_text);
buttons[1].ID = "c";
buttons[1].text = "Continue";
buttons[1].indent = indent;
scr_button_scaling(buttons[1]);

buttons[1].y = buttons[0].bbox_bottom + buttons[1].sprite_height / 2 + gap;

return buttons;