// Horizontal Collision
x = x+hSpeed;
y = y+vSpeed;

if(y > room_height + 20){
	y = 1;
}

// Check Collision & Destory
if(place_meeting(x, y, o_Wall)){
	instance_destroy();
}
if(x > room_width+40){
	instance_destroy();
}else if(x < 0-40){
	instance_destroy();
}

// Animation

if(hSpeed > 0){
	image_xscale = 1;
}else if(hSpeed < 0){
	image_xscale = -1;
}

