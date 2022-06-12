// MOVEMENT STUFF
// ----------------------------------
velX = 0;
velY = 0;

left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
run = keyboard_check(vk_shift);

SPEED = (run ? MAX_SPEED : NORMAL_SPEED); //sets speed
DIASPEED = sqrt(2*SPEED*SPEED)/2;

dirX = ((left ? -1 : 0) + (right ? 1 : 0)); //movement in x-axis
dirY = ((up ? -1 : 0) + (down ? 1 : 0)); //movement in y-axis
if (abs(dirX) + abs(dirY) == 2) //if moving diagonal, use DIASPEED
{
	velX = dirX * DIASPEED;
	velY = dirY * DIASPEED;
}
else //else use standard SPEED
{
	velX = dirX * SPEED;
	velY = dirY * SPEED;
	if(dirX == 1){sprite_index = sPlayerRight;}
	else if(dirX == -1){sprite_index = sPlayerLeft;}
	else if(dirY == 1){sprite_index = sPlayerFront;}
	else if(dirY == -1){sprite_index = sPlayerBack;}
}
	 
move();

// ATTACK
// ----------------------------------

// LEFT = 1 RIGHT = 2 UP = 3 DOWN = 4

attackCooldown--;
attacking = mouse_check_button(mb_left);
if(attacking and attackCooldown < 0) {
	instance_create_layer(x,y,"PlayerLayer", oSwordHitbox);
	
	// Set attack to where the mouse is facing
	oSwordHitbox.image_angle = darctan((x-mouse_x)/(y-mouse_y))+90*(1+sign(y-mouse_y));

	
	attackCooldown = 30;
	attacking = false;
}

dmgCooldown--;
playerCheckForDmg();

// Collectables
// ----------------------------------

