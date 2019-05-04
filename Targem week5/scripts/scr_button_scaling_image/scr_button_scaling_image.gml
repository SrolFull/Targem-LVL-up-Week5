button = argument0;

button.image_yscale = button.height / button.sprite_height * button.image_yscale;
if (!button.height_scaling)
{
	button.image_xscale = button.width / button.sprite_width * button.image_xscale;
}
else
{
	button.image_xscale = button.image_yscale;
}