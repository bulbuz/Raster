x+=VELx; //moves horizontally
if(place_meeting(x,y,oWall))
{
	while(place_meeting(x,y,oWall))
	{
		x+=sign(-VELx); //if colliding, move back
	}
}
if(VELx > 0){VELx-=0.5;}
else if(VELx < 0){VELx+=0.5;} //slowes down movement
y+=VELy; //moves vertically
if(place_meeting(x,y,oWall))
{
	while(place_meeting(x,y,oWall))
	{
		y+=sign(-VELy); //if colliding, move back
	}
}
if(VELy > 0){VELy-=0.5;}
else if(VELy < 0){VELy+=0.5;} //slows down movement
