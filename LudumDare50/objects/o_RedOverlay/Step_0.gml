for(var i = 0; i < array_length(heatLevels); ++i;){
	var heat = wallChamber.currentHeat;
	if(heat >= heatLevels[i]){
		image_alpha = opacityLevels[i];	
	}else{
		break;
	}
}
