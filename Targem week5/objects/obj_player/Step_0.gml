if (global.pause) exit;
//Update Input
move_dir = keyboard_check(vk_right)-keyboard_check(vk_left);
//Reset move variables
move_x = 0;
//Update speed
move_x = move_dir*spd;
move_y +=grv;

//Check Collisions
//with room
if (x+move_x-sprite_width/2 <= 0){
	if (room_previous(room) != -1)
		room_goto_previous();
	else
		move_x = 0;
}
if (x+move_x+sprite_width/2 >= room_width ){
	if (room_next(room) != -1)
		room_goto_next();
	else
		move_x = 0;
}
//Horizontal
if (place_meeting(x+move_x,y,obj_ground)){
	repeat (abs(move_x)) {
			if(!place_meeting(x+sign(move_x),y,obj_ground )){ x+=sign(move_x); }
			else { break; }
	}
	move_x = 0;
}
//Vetrical
if (place_meeting(x,y+move_y,obj_ground)){
	repeat(abs(move_y)){
		if (!place_meeting(x,y+sign(move_y),obj_ground)){ y+=sign(move_y); }
		else { break; }
	}
	isGround = true;
	move_y = 0;
}
else {	isGround = false;	}
//Jump
if (isGround and keyboard_check(vk_up)){
	move_y -=15;
}
//Check HP
if (HP <= 0 ) {
	instance_destroy();
}
show_debug_message(MP);
//Update x,y
x+=move_x;
y+=move_y;