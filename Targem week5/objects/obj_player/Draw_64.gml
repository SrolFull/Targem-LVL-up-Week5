if (obj_player.HP / one_hp - 1 < 0)
	draw_sprite(spr_hp_bar, 0, 0, 0);
else
	draw_sprite(spr_hp_bar, (obj_player.HP / one_hp) - 1, 0, 0);

draw_sprite(spr_mp_bar, (obj_player.MP / one_mp) - 1, 200, 0);