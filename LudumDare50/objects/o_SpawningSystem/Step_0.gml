
var _dt = delta_time / 1000000;

spawnIntervalCount += _dt;
if(spawnIntervalCount > spawnInterval){
	spawnIntervalCount -= spawnInterval;
	randomlySpawn();
}


function randomlySpawn(){
	var len = array_length(spawners);
	var rand = random(len-1);
	
	audio_play_sound(sfx_Spawn,10,false);
	spawners[rand].spawn();
}

