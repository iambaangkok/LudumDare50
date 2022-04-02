// States
isGrounded = place_meeting(x,y+1,o_Wall);

hSpeed = isFacingRight * walkSpeed;

vSpeed = vSpeed + grv;

if(currentHp <= 0){
	instance_destroy();	
}

// Horizontal Collision
if (place_meeting(x+hSpeed, y, o_Wall)){
	
	while(!place_meeting(x+sign(hSpeed), y, o_Wall)){
		x = x+sign(hSpeed);
	}	
	hSpeed = -hSpeed;
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

//// Bullet Collision 
if(place_meeting(x,y, o_Bullet)){
	var bullet = instance_place(x,y,o_Bullet);
	
	if(bullet != noone){
		takeDamage(bullet.damage);	
	}
	
	instance_destroy(bullet);
}

function takeDamage(damage){
	currentHp = clamp(currentHp-damage, 0, maxHp);
}

// Animation
if(hSpeed > 0){
	image_xscale = 1;
	isFacingRight = 1;
}else if(hSpeed < 0){
	image_xscale = -1;
	isFacingRight = -1;
}


