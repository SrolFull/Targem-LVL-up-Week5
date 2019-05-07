if (HP / one_hp - 1 < 0)
	draw_sprite(spr_hp_bar, 0, 0, 0);
else
	draw_sprite(spr_hp_bar, (HP / one_hp) - 1, 0, 0);

if (MP / one_mp - 1 < 0)
	draw_sprite(spr_mp_bar, 0, 200, 0);
else
	draw_sprite(spr_mp_bar, (MP / one_mp) - 1, 200, 0);