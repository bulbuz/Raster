<<<<<<< HEAD
y-=4; //moves up
sprite_index = sPlayerBack;
=======
y-=VEL; //moves up
>>>>>>> 48795740b1b36e663ca35fed97195d7fc69c7cff
if(place_meeting(x,y,oWall)) //if inside wall:
{
	while(place_meeting(x,y,oWall))
	{
		y+=1; //slowly back away...
	}
}
