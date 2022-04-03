audio_play_sound(sfx_SlimeSmallDie, 10, false);

var slimeSquish = instance_create_depth(x,y,100,o_par_SlimeSmallDie);

slimeSquish.playParticle();
