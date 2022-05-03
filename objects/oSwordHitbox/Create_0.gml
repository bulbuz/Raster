left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);

if(left and down and not right and not up) { rotation = 315; }

else if(left and up and not right and not down) { rotation = 225; }

else if(right and up and not left and not down) { rotation = 135; }

else if(right and down and not left and not up) { rotation = 45; }

else if(left and not right) 
	rotation = 270;
	
else if(right and not left) 
	rotation = 90;
	
else if(up and not down) 
	rotation = 180;
	
else if(down and not up) 
	rotation = 0;
	
else
	rotation = 0;

image_angle = rotation;
