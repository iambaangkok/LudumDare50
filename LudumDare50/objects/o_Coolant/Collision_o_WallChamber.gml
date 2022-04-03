
var rand = floor(random(array_length(coolantFueledSounds)));

audio_play_sound(coolantFueledSounds[rand],10,false);

instance_destroy();
