velX = 0;
velY = 0;

left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
run = keyboard_check(vk_shift);

SPEED = (run ? 4 : 3);
DIASPEED = sqrt(SPEED*2);

if(left and down and not right and not up)
{
	velX = -DIASPEED; velY = DIASPEED;
}	
else if(left and up and not right and not down)
{
	velX = -DIASPEED; velY = -DIASPEED;
}	
else if(right and up and not left and not down)
{
	velX = DIASPEED; velY = -DIASPEED;
}	
else if(right and down and not left and not up)
{
	velX = DIASPEED; velY = DIASPEED;
}
else if(left and not right) 
	velX = -SPEED;
	
else if(right and not left) 
	velX = SPEED;
	
else if(up and not down) 
	velY = -SPEED;
	
else if(down and not up) 
	velY = SPEED;
	
if(!place_meeting(x + velX, y, oWall))
	x += velX;

if(!place_meeting(x, y + velY, oWall))
	y += velY;
