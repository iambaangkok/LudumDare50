if(isShaking){
	
	camera_set_view_pos(
		view_camera[0],
		view_x+random_range(-shakeAmount, shakeAmount),
		view_y+	random_range(-shakeAmount, shakeAmount)
	);
	
	
}else{
	camera_set_view_pos(view_camera[0], view_x, view_y);	
}



function shake(){
	isShaking = true;
	alarm[0] = shakeTime;
}
