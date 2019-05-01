xx = argument0;
yy = argument1;
text = argument2;
guidance = argument3;
push = argument4;
indent = argument5;
ID = argument6;
sprite = argument7;

button = instance_create_layer(xx, yy, "layer_buttons", obj_button);

button.sprite_index = sprite
button.text = text
button.ID = ID;
button.guidance = guidance;
button.push = push;
button.indent = indent;

//Масштабирование спрайта с учётом отступа(indent) и длинны текста(text)
button.width_text = string_width(text);
button.height_text = string_height(text);
button.image_xscale = (button.width_text + indent * 2) / button.sprite_width;
button.image_yscale = (button.height_text + indent * 2)  / button.sprite_height;

return button;