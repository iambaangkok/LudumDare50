var _dt = delta_time / 1000000;

if(isSpawningSlime){
	if(spawnedSmallSlimeCount < spawnSmallSlimeCount){
		spawnIntervalCount += _dt;

		if(spawnIntervalCount > spawnInterval){
			spawnIntervalCount -= spawnInterval;
			spawnSlime(o_SlimeSmall);	
			spawnedSmallSlimeCount++;
		}		
	}else{
		isSpawningSlime = false;
		spawnIntervalCount = 0;
		spawnedSmallSlimeCount = 0;
		spawnSmallSlimeCount = 0;
	}
}

function spawn(){	
	var radius = random(spawnRadius)
	var spawnDirection = random(361);
	
	var xvec = lengthdir_x(radius, spawnDirection);
	var yvec = lengthdir_y(radius, spawnDirection);
	
	var coolant = instance_create_depth(x+xvec,y+yvec,200,o_Coolant);
	
	var spawnBig = random(2);
	if(spawnBig >= 0.5){
		spawnSlime(o_SlimeBig);
	}
	var spawnSmall = random(2);
	if(spawnSmall >= 0.5){
		isSpawningSlime = true;
		spawnSmallSlimeCount = floor(random(wallChamber.heatIncrease * 4)+2);
	}
	
	
	
}

function spawnSlime(slimeToSpawn){
	var radius = random(slimeSpawnRadius)
	var spawnDirection = random(361);
	
	var xvec = lengthdir_x(radius, spawnDirection);
	var yvec = lengthdir_y(radius, spawnDirection);
	var slime = instance_create_depth(slimeSpawner.x+xvec,slimeSpawner.y+yvec,200,slimeToSpawn);
	slime.isFacingRight = sign(random(2)-0.5);	
}
	
