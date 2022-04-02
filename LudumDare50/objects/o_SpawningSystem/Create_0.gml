randomise();

spawners = [];

for (var i = 0; i < instance_number(o_Spawner); ++i;)
{
    spawners[i] = instance_find(o_Spawner,i);
}

spawnInterval = 5; // spawn every x seconds
spawnIntervalCount = spawnInterval-2;

