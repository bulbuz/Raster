function move()
{
	if(!place_meeting(x+velX, y, oWall) and !place_meeting(x+velX, y, oPushBlock))
		x+=velX;
	if(!place_meeting(x, y+velY, oWall) and !place_meeting(x, y+velY, oPushBlock))
		y+=velY;
}

function drop() {

}
