<<<<<<< HEAD
y+=4; //moves down
sprite_index = sPlayerFront;
=======
y+=VEL; //moves down
>>>>>>> 48795740b1b36e663ca35fed97195d7fc69c7cff
if(place_meeting(x,y,oWall)) //if inside wall:
{
	while(place_meeting(x,y,oWall))
	{
		y-=1; //slowly back away...
	}
}
