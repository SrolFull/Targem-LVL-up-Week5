if (global.pause) exit;
//Check HP status
if (HP <=0) {
	Died = true;
	instance_destroy();
	repeat(random_range(1,5)){
		posx = x +random_range(-5,5);
		posy = y +random_range(-5,5);
		instance_create_layer(posx,posy,"Something",obj_mp_sphere);

		}
		obj_player.Exp +=ExpCount;
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


//Attack
if (distance_to_object(obj_player) <= max_attack_range ){
	aim_vector = point_direction(x,y,obj_player.x, obj_player.y);
	move_dir = 0;
	//status
	sprite_index = spr_enemy_attack;
	if (aim_vector >=90 and aim_vector <= 270) image_xscale = -1;
	else image_xscale =1;
	isAttack = true;
}
else {
	isAttack = false;
	sprite_index = spr_enemy_walk;
	image_xscale = move_dir;
	if (move_dir == 0) move_dir = 1;
}
//outside
if (!place_meeting(x+move_x - sprite_width,y+10 ,obj_ground) or
	!place_meeting(x+move_x + sprite_width,y+10,obj_ground))
	move_dir*=-1;
	
//sprite updat
//Update x,y
x+=move_x;
y+=move_y;