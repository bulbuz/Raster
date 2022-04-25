x-=4; //moves left
if(place_meeting(x,y,oWall)) //if inside wall:
{
	while(place_meeting(x,y,oWall))
	{
		x+=1; //slowly back away...
	}
}
