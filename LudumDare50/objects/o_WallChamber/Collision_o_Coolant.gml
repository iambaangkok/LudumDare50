

currentHeat -= coolantHeatReduce;
currentHeat = clamp(currentHeat, 0, maxHeat);

heatIncrease -= coolantHeatDeceleration;
heatIncrease = clamp(heatIncrease, 1, maxHeat);
