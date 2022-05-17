if(place_meeting(x+velX,y,oWall))
	velX *= -1;
move();

if(hearts <= 0)
	instance_destroy(self)
