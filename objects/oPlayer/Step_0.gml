velX = 0;
velY = 0;

left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
run = keyboard_check(vk_shift);

SPEED = (run ? 4 : 3);

if(left and not right) 
	velX = -SPEED;
	
if(right and not left) 
	velX = SPEED;
	
if(up and not down) 
	velY = -SPEED;
	
if(down and not up) 
	velY = SPEED;
	
if(!place_meeting(x + velX, y, oWall))
	x += velX;

if(!place_meeting(x, y + velY, oWall))
	y += velY;
