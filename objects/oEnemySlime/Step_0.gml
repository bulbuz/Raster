if(place_meeting(x+velX,y,oWall) or place_meeting(x+velX,y,oPushBlock))
	velX *= -1;
move();

if(hearts <= 0)
	instance_destroy(self);
