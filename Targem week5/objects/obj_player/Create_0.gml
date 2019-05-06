move_x = 0;
move_y = 0;
grv = 1;
spd = 10;
isGround = false;
HP = 100;
MP = 90;
aim_vector = point_direction(0, 0, 0, 0);
Exp = 0;

instance_create_layer(100, 100, "Bars", obj_hp_bar);
instance_create_layer(300, 100, "Bars", obj_mp_bar);
current_sphere = 0;
current_colour = 0;
colours[0] = 0;
colours[1] = 0;
colours[2] = 0;
colours[3] = 0;