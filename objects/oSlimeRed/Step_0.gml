//movement with A*
aStar();

dirX = sign(nextNodeX*64+32-x);
dirY = sign(nextNodeY*64+32-y);

velX = dirX * (abs(dirX)+abs(dirY) == 2 ? DIASPEED : SPEED)
velY = dirY * (abs(dirX)+abs(dirY) == 2 ? DIASPEED : SPEED)

//standard enemy stuff
move();
standardShot();
enemyCheckForDmg();

if(hearts <= 0)
		instance_destroy(self);
		
dmgCooldown--;
