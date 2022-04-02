var _dt = delta_time / 1000000;


heatIncreaseCounter += _dt;

if(heatIncreaseCounter > heatIncreaseInterval){
	heatIncreaseCounter -= heatIncreaseInterval;
	
	heatIncrease += heatAcceleration;
	
	currentHeat += heatIncrease;
	currentHeat = clamp(currentHeat,0,maxHeat);
}

heat.image_yscale = currentHeat/maxHeat;
