if(VELY==0)
{
	if(!place_meeting(x+VELX*SPEED,y,oWall))
		x+=VELX*SPEED;
	else
		VELX *= -1;
}
else if(VELX==0)
{
	if(!place_meeting(x,y+VELY*SPEED,oWall))
		y+=VELY*SPEED;
	else
		VELY *= -1;
}
else
{
	if(!place_meeting(x+VELX*SPEED,y,oWall))
		x+=VELX*SPEED;
	else
		VELX *= -1;
	
	if(!place_meeting(x,y+VELY*SPEED,oWall))
		y+=VELY*SPEED;
	else
		VELY *= -1;
}

