
heat = instance_find(o_Heat,0);
back = instance_find(o_WallChamberBack,0);

maxHeat = 100;
currentHeat = 0;

heatIncreaseInterval = 1; // 1 per x second
heatIncreaseCounter = 0;

heatIncrease = 1;
heatAcceleration = 0.1;

coolantHeatReduce = 10;
coolantHeatDeceleration = 0.8;

// Exploding
hasExploded = false;

player = instance_find(o_Player, 0);
restart = instance_find(o_DrawerRestart,0);
finalScore = instance_find(o_DrawerScore, 0);

// Shaking
isShaking = false;
shakeAmount = 7;
shakeTime = 300;

originalX = x;
originalY = y;

cameraShaker = instance_find(o_CameraShake,0);



