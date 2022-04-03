
fireRate = 6; // shots per second
reloadTime = 1/fireRate; // 0.5
reloadTimeCounter = 0;

readyToFire = true;

bulletSpeed = 20;

bullet = o_Bullet;

muzzleOffsetX = sprite_xoffset;
muzzleOffsetY = -4;

cameraShaker = noone;
cameraShaker = instance_find(o_CameraShake,0);

shootSounds = [sfx_PlayerShoot1, sfx_PlayerShoot2];
