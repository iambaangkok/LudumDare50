var _dt = delta_time / 1000000;


heatIncreaseCounter += _dt;

if(heatIncreaseCounter > heatIncreaseInterval){
	heatIncreaseCounter -= heatIncreaseInterval;
	
	heatIncrease += heatAcceleration;
	
	currentHeat += heatIncrease;
	currentHeat = clamp(currentHeat,0,maxHeat);
}

heat.image_yscale = currentHeat/maxHeat;

if(!hasExploded && currentHeat == maxHeat){
	hasExploded = true;
	audio_play_sound(sfx_YouLost,10,false);
	shake();
}


// Shaking
if(isShaking){
	phy_position_x = originalX + random_range(-shakeAmount, shakeAmount);
	phy_position_y = originalY + random_range(-shakeAmount, shakeAmount);
}else{
	phy_position_x = originalX;
	phy_position_y = originalY;
}


function shake(){
	isShaking = true;
	alarm[0] = shakeTime;
	cameraShaker.shake(shakeTime);
}
