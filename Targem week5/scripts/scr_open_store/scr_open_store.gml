//draw main window

draw_set_color(c_white);
store_window_x1 = room_width/4;
store_window_y1 = room_height*3/4;
store_window_x2 = room_width*7/8;
store_window_y2 = room_height/4;
//
instance_create_layer(store_window_x1,store_window_y2,"Store",obj_store_window);
//draw button
instance_create_layer(store_window_x1,store_window_y2,"Store",obj_button_shop);
instance_create_layer(store_window_x1,store_window_y2+70,"Store",obJ_button_quests);
instance_create_layer(store_window_x1,store_window_y2+140,"Store",obj_button_spells);
instance_create_layer(store_window_x1+150,store_window_y2,"Store",obj_info_window);