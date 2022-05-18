function colission(xCord,yCord)
{
	if(!place_meeting(xCord, yCord, oWall) and !place_meeting(xCord, yCord, oPushBlock))
		return false;
	else
		return true;
}

function move()
{
	if(!colission(x+velX,y))
		x+=velX;
	if(!colission(x,y+velY))
		y+=velY;
}

function knockBack(hard)
{
	if(!colission(32+64*(floor(other.x/64)+other.dirX),32+64*(floor(other.y/64)+other.dirY)))
		{x = 32+64*(floor(other.x/64)+other.dirX);
		y = 32+64*(floor(other.y/64)+other.dirY);}
	else if(hard=true)
		hearts = 0;
}

function drawHearts(oreginX,oreginY,center,scale)
{
	for(i=0;i<hearts;i++)
	{
		if(center==true)
		{
			draw_sprite_stretched(sHeart,0,oreginX+(i-hearts/2)*16*scale,oreginY,scale*16,scale*16);
		}
		else
		{
			draw_sprite_stretched(sHeart,0,oreginX+i*16*scale,oreginY,scale*16,scale*16);
		}
	}
}

function drop() {

}


