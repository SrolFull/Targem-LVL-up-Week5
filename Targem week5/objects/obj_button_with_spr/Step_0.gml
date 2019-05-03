image_yscale = height / sprite_height * image_yscale;
if (!height_scaling)
{
	image_xscale = width / sprite_width * image_xscale;
}
else
{
	image_xscale = image_yscale;
}