if (global.pause) exit;
//Check HP status
if (HP <=0) instance_destroy();
//Update moveDir
if (distance_to_object(obj_player) == 10){
	//attack
}
else{
	//Patrol
}


//Reset move variables
move_x = 0;
aim_vector = 0;
//Update speed
move_x = move_dir*spd;
move_y +=grv;

//Check Collisions
//Horizontal
if (place_meeting(x+move_x,y,obj_ground)){
	repeat (abs(move_x)) {
			if(!place_meeting(x+sign(move_x),y,obj_ground)){ x+=sign(move_x); }
			else { break; }
	}
	move_x = 0;
	move_dir *= -1;
}
//Vertical
if (place_meeting(x,y+move_y,obj_ground)){
	repeat(abs(move_y)){
		if (!place_meeting(x,y+sign(move_y),obj_ground)){ y+=sign(move_y); }
		else { break; }
	}
	isGround = true;
	move_y = 0;
}
else {	isGround = false;	}
//Update direction
if (distance_to_object(obj_player) <= attack_range ){
	//Distance attack
	if (alarm[0] <= 0){
		alarm[0] = attack_cooldown*room_speed;
	}
	aim_vector = point_direction(x,y,obj_player.x, obj_player.y);
	//show_debug_message(aim_vector);
	move_dir = (obj_player.x < x)*(-1) + (obj_player.x > x);
	//take a distance
	if (distance_to_object(obj_player) < attack_range/2){
		move_dir = obj_player.move_dir;
	}
}
//Update x,y
x+=move_x;
y+=move_y;