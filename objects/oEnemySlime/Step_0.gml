x+=VEL;

if(place_meeting(x,y,oWall))
	VEL *= -1;

if(hearts <= 0)
	instance_destroy(self)
