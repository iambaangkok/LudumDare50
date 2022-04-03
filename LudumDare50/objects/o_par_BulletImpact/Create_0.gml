

directionDegree = 0;
directionSpreadDegree = 22.5;
grav = 0.1;
gravDirectionDegree = 270;

lightYellow = $83eeff;
red = $3945e6;
color1 = lightYellow;
color2 = red;

sizeMin = 0.05;
sizeMax = 0.10;
sizeIncr = -.0015;

moveSpeedMin = 2;
moveSpeedMax = 3;

lifeTimeMin = 15;
lifeTimeMax = 30;

particleCount = 5;

isBurst = true;

function playParticle(){
	pSystem = part_system_create();

	particle = part_type_create();
	part_type_shape(particle,pt_shape_square);
	part_type_scale(particle,1,1);
	part_type_size(particle,sizeMin,sizeMax,sizeIncr,0);
	part_type_color2(particle,color1,color2);
	part_type_alpha2(particle,1,0.75);
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
