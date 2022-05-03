
// MOVEMENT STUFF
// ----------------------------------
velX = 0;
velY = 0;

left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
run = keyboard_check(vk_shift);

// LEFT = 1 RIGHT = 2 UP = 3 DOWN = 4

if(left)
	last_faced = 1;
else if(right)
	last_faced = 2;
else if(up)
	last_faced = 3;
else if(down)
	last_faced = 4;

SPEED = (run ? MAX_SPEED : NORMAL_SPEED);
DIASPEED = sqrt(2*SPEED*SPEED)/2;

if(left and down and not right and not up) { velX = -DIASPEED; velY = DIASPEED; }

else if(left and up and not right and not down) { velX = -DIASPEED; velY = -DIASPEED; }

else if(right and up and not left and not down) { velX = DIASPEED; velY = -DIASPEED; }

else if(right and down and not left and not up) { velX = DIASPEED; velY = DIASPEED; }

else if(left and not right) { velX = -SPEED; sprite_index = sPlayerLeft; }
	
else if(right and not left) { velX = SPEED; sprite_index = sPlayerRight; }
	
else if(up and not down) { velY = -SPEED; sprite_index = sPlayerBack; }
	
else if(down and not up) { velY = SPEED; sprite_index = sPlayerFront; }
	 
if(!place_meeting(x + velX, y, oWall))
	x += velX;

if(!place_meeting(x, y + velY, oWall))
	y += velY;
	

// ATTACK
// ----------------------------------

attacking = keyboard_check_pressed(vk_space);
if(attacking) {
	instance_create_layer(x,y,"Instances", oSwordHitbox);
	
	attacking = false;
}

// HEALTH
// ----------------------------------

