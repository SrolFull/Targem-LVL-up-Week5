//End the spell
 
current_spell = chr(colours[0] + 96) + chr(colours[1] + 96) + chr(colours[2] + 96) + chr(colours[3] + 96);

if (alarm[0] <= 0 and MP > 0 and ds_map_exists(unlocked_spells, current_spell)){
	MP -= 10;
	aim_vector = point_direction(x, y, 10000 * image_xscale, y);
	alarm[0] = 1;
}
for (var j = 0; j < 4; j++) {
	colours[j] = 0;
}
current_sphere = 0;
current_colour = 0;
