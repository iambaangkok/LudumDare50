var level = 0;

for(var i = 0; i < array_length(heatLevels); ++i;){
	var heat = wallChamber.currentHeat;
	if(heat >= heatLevels[i]){
		level = i;
	}else{
		break;
	}
}

image_alpha = opacityLevels[level];	

if(level >= 3 && wallChamber.currentHeat < wallChamber.maxHeat){
	if(!audio_is_playing(sfx_Alert)){
		audio_play_sound(sfx_Alert,10,true);
	}
}else{
	audio_stop_sound(sfx_Alert);
}

