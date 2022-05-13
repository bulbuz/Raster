function move()
{
	if(!place_meeting(x+velX, y, oWall))
		x+=velX;
	if(!place_meeting(x, y+velY, oWall))
		y+=velY;
}

function drop() {
	
}
