

directionDegree = 0;
directionSpreadDegree = 179;
grav = 0.1;
gravDirectionDegree = 270;

lightYellow = $83eeff;
red = $3945e6;
darkRed = $452fad;

color1 = darkRed;
color2 = darkRed;

alpha1 = 1;
alpha2 = 1;

sizeMin = 0.10;
sizeMax = 0.25;
sizeIncr = -.0015;

moveSpeedMin = 1.5;
moveSpeedMax = 3;

lifeTimeMin = 10;
lifeTimeMax = 20;

particleCount = 20;

isBurst = true;

function playParticle(){
	pSystem = part_system_create();

	particle = part_type_create();
	part_type_shape(particle,pt_shape_square);
	part_type_scale(particle,1,1);
	part_type_size(particle,sizeMin,sizeMax,sizeIncr,0);
	part_type_color2(particle,color1,color2);
	part_type_alpha2(particle,alpha1,alpha2);
	part_type_speed(particle,moveSpeedMin,moveSpeedMax,0,0);
	part_type_direction(particle,directionDegree-directionSpreadDegree,directionDegree+directionSpreadDegree,0,0);
	part_type_gravity(particle,grav,gravDirectionDegree);
	part_type_orientation(particle,0,359,10,0,true);
	part_type_life(particle,lifeTimeMin,lifeTimeMax);
	part_type_blend(particle,true);


	emitter = part_emitter_create(pSystem);
	part_emitter_region(pSystem, emitter, x-20, x+20, y-20, y+20, ps_shape_ellipse, ps_distr_gaussian);
	if(isBurst){
		part_emitter_burst(pSystem,emitter,particle,particleCount);
	}else{
		part_emitter_stream(pSystem,emitter,particle,1);
	}
	
}
