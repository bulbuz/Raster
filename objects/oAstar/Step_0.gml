//movement and colission
if(!place_meeting(x+VELX*SPEED,y,oWall))
		x+=VELX*SPEED;
	
if(!place_meeting(x,y+VELY*SPEED,oWall))
		y+=VELY*SPEED;



