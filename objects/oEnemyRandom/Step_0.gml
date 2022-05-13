if(!place_meeting(x+VELX*SPEED,y,oWall))
	x+=VELX*SPEED;
else
	VELX *= -1;
	
if(!place_meeting(x,y+VELY*SPEED,oWall))
	y+=VELY*SPEED;
else
	VELY *= -1;


