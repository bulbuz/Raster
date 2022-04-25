y-=4; //moves up
sprite_index = sPlayerBack;
if(place_meeting(x,y,oWall)) //if inside wall:
{
	while(place_meeting(x,y,oWall))
	{
		y+=1; //slowly back away...
	}
}
