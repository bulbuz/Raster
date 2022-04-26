x+=sped;
if(place_meeting(x,y,oWall))
{
	while(place_meeting(x,y,oWall))
	{
		x--;	
	}
}

