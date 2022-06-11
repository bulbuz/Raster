//movement
SPEED = 2;
DIASPEED = sqrt(2*SPEED*SPEED)/2;
//other
hearts = 3;
shotDelay = 0;
dmgCooldown = 0;







//dont look, sussy code for A*

function aStar()
{
	for(a=floor(room_width/64);a>=0;a--)
	{
		for(b=floor(room_height/64);b>=0;b--)
		{
			open[a][b] = false;
			closed[a][b] = false;
			g[a][b] = 999999;
		}
	}
	nextNodeX = floor(x/64);
	nextNodeY = floor(y/64);
	open[nextNodeX][nextNodeY] = true;
	g[nextNodeX][nextNodeY] = 0;
	h[nextNodeX][nextNodeY] = sqrt(sqr(nextNodeX-floor(oPlayer.x/64))+sqr(nextNodeY-floor(oPlayer.y/64)))
	f[nextNodeX][nextNodeY] = g[nextNodeX][nextNodeY]+h[nextNodeX][nextNodeY];
	if(!h[nextNodeX][nextNodeY] == 0)
	{

	
		repeat(room_width*room_height/4096)
		{
			closed[nextNodeX][nextNodeY] = true;
	
			for(a=-1;a<2;a++)
			{
				for(b=-1;b<2;b++)
				{
					if(closed[nextNodeX+a][nextNodeY+b] == false and !colission((nextNodeX+a)*64+32,(nextNodeY+b)*64+32))
					{
						open[nextNodeX+a][nextNodeY+b] = true;
						h[nextNodeX+a][nextNodeY+b] = sqrt(sqr(nextNodeX+a-floor(oPlayer.x/64))+sqr(nextNodeY+b-floor(oPlayer.y/64)))
						if(abs(a)+abs(b) == 2)
						{
							if(g[nextNodeX+a][nextNodeY+b] > g[nextNodeX][nextNodeY] + 1.4)
							{
								g[nextNodeX+a][nextNodeY+b] = g[nextNodeX][nextNodeY] + 1.4;
								parentX[nextNodeX+a][nextNodeY+b] = nextNodeX;
								parentY[nextNodeX+a][nextNodeY+b] = nextNodeY;
							}
						}
						else
						{
							if(g[nextNodeX+a][nextNodeY+b] > g[nextNodeX][nextNodeY] + 1)
							{
								g[nextNodeX+a][nextNodeY+b] = g[nextNodeX][nextNodeY] + 1;
								parentX[nextNodeX+a][nextNodeY+b] = nextNodeX;
								parentY[nextNodeX+a][nextNodeY+b] = nextNodeY;
							}
						}
						f[nextNodeX+a][nextNodeY+b] = g[nextNodeX+a][nextNodeY+b] + h[nextNodeX+a][nextNodeY+b]
					}
				}
			}

			nextNodeF = 999999;
			for(a=floor(room_width/64);a>=0;a--)
			{
				for(b=floor(room_height/64);b>=0;b--)
				{
					if(open[a][b] == true and closed[a][b] == false and f[a][b] < nextNodeF)
					{
						nextNodeF = f[a][b];
						nextNodeX = a;
						nextNodeY = b;
					}
				}
			}
			if(h[nextNodeX][nextNodeY] == 0)
				break;
		}
		repeat(room_width*room_height/4096)
		{
			if(g[parentX[nextNodeX][nextNodeY]][parentY[nextNodeX][nextNodeY]] == 0)
				break;

			_nextNodeX = parentX[nextNodeX][nextNodeY];
			nextNodeY = parentY[nextNodeX][nextNodeY];
			nextNodeX = _nextNodeX;
		}
	}
}	


