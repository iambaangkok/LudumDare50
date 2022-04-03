var bulletImpact = instance_create_depth(x,y,100,o_par_BulletImpact);

if(hSpeed > 0){
	bulletImpact.directionDegree = 180;
}else if(hSpeed < 0){
	bulletImpact.directionDegree = 0;
}	

bulletImpact.playParticle();
