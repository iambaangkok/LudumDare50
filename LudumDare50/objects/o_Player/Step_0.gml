// Get Player Input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check(ord("W")) || keyboard_check(vk_space);


// Player states
isGrounded = place_meeting(x,y+1,o_Wall);

// Calculate Movement
var hMovement = key_right - key_left;

hSpeed = hMovement * walkSpeed;

vSpeed = vSpeed + grv;


if(isGrounded){
	vSpeed = 0;
	
	if(key_jump){
		vSpeed = -jumpSpeed;
	}
}

// Horizontal Collision
if (place_meeting(x+hSpeed, y, o_Wall)){
	
	while(!place_meeting(x+sign(hSpeed), y, o_Wall)){
		x = x+sign(hSpeed);
	}	
	hSpeed = 0;
}
x = x+hSpeed;

if(x > room_width){
	x = 1;
}else if(x < 0){
	x = room_width - 1;
}

// Vertical Collision
if (place_meeting(x, y+vSpeed, o_Wall)){
	
	while(!place_meeting(x, y+vSpeed, o_Wall)){
		y = y+sign(vSpeed);
	}	
	vSpeed = 0;
}
y = y+vSpeed;

if(y > room_height + 20){
	y = 1;
}

// Animation
if(!isGrounded){
	sprite_index = s_PlayerJump;
}else if(hSpeed != 0){
	sprite_index = s_PlayerRun;
}else{
	sprite_index = s_PlayerIdle;
}

if(hSpeed > 0){
	image_xscale = 1;
}else{
	image_xscale = -1;
}


