
var _dt = delta_time/1000000;

if(reloadTimeCounter > reloadTime){
	readyToFire = true;	
	reloadTimeCounter = 0;
}else{
	reloadTimeCounter += _dt;
}


function shoot(shootDirection){
	if(!readyToFire){
		return;	
	}
	readyToFire = false;
	reloadTimeCounter = 0;
	cameraShaker.shake();
	
	if(shootDirection > 0){// shoot right
		bulletFired = instance_create_depth(x+muzzleOffsetX,y+muzzleOffsetY,200,bullet);
		bulletFired.hSpeed = bulletSpeed;
	}else if(shootDirection < 0){// shoot left
		bulletFired = instance_create_depth(x-muzzleOffsetX,y+muzzleOffsetY,200,bullet);
		bulletFired.hSpeed = -bulletSpeed;
	}
}