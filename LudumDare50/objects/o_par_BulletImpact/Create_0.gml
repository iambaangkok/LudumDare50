pSystem = part_system_create();

particle = part_type_create();
part_type_shape(particle,pt_shape_square);
part_type_scale(particle,1,1);
part_type_size(particle,0.10,0.15,-.001,0);
part_type_color2(particle,8454143,65280);
part_type_alpha2(particle,1,0.75);
part_type_speed(particle,0.1,0.5,0,0);
part_type_direction(particle,0,359,0,0);
part_type_gravity(particle,0.02,90);
part_type_orientation(particle,0,359,10,0,true);
part_type_life(particle,100,150);
part_type_blend(particle,true);



emitter = part_emitter_create(pSystem);
part_emitter_region(pSystem, emitter, x-20, x+20, y-20, y+20, ps_shape_ellipse, ps_distr_gaussian);
part_emitter_stream(pSystem,emitter,particle,1);
