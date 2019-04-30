//Update Input
move_dir = keyboard_check(vk_right)-keyboard_check(vk_left);
//Reset move variables
move_x = 0;
move_y = 0;

//Check Collisions
if (place_meeting(x+move_x,y,obj_ground)){
	repeat (abs(move_x)) {
			if(!place_meeting(x+sign(move_x),y,obj_ground)){
				x+=sign(move_x);
			}
			else
			{
				break;	
			}
		}
	move_x = 0;
}
if (place_meeting(x+move_y,y,obj_ground)){
	repeat(abs(move_y)){
		if (!place_meeting(x,y+sign(move_y),obj_ground)){
			y+=sign(move_x);
		}
		{
			break;
		}
	}
	isGround = true;
	move_y = 0;
}
//Jump
if (keyboard_check(vk_up) and isGround){
move_y +=12;
}
//Gravitation


//Update x,y
x+=move_dir*spd;
y+=move_y;