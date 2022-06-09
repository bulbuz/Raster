dirX = irandom_range(-1,1);
dirY = irandom_range(-1,1);

if(dirY != 0)
	velX = dirX * DIASPEED;
else
	velX = dirX * SPEED;
if(dirX != 0)
	velY = dirY * DIASPEED;
else
	velY = dirY * SPEED;

alarm_set(1,90);
