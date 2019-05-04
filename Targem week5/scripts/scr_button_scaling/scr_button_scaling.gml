button = argument0;

button.width_text = string_width(button.text);
button.height_text = string_height(button.text);
button.image_xscale = (button.width_text + button.indent * 2) / button.sprite_width * button.image_xscale;
button.image_yscale = (button.height_text + button.indent * 2)  / button.sprite_height * button.image_yscale;