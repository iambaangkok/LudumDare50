hSpeed = 0;
vSpeed = 0;

walkSpeed = 4;

jumpSpeed = 12;
grv = 0.6;


isGrounded = true;
isFacingRight = 1;
isAlive = true;

gun = instance_create_depth(x,y,100,o_Gun);
redOverlay = instance_create_depth(0,0,0,o_RedOverlay);
wallChamber = instance_find(o_WallChamber,0);


walkSound = sfx_PlayerWalk;
jumpSound = sfx_PlayerJump;
