VELX = 0;
VELY = 0;
SPEED = 2;
TARGETX = 0;
TARGETY = 0;

for(a=0;a<room_width/64;a++;)
{
	for(b=0;b<room_height/64;b++;)
	{
		checked[a][b] = false;
		f[a][b] = 999999;
		g[a][b] = 999999;
		h[a][b] = sqrt(power(floor(oPlayer.x/64)-a,2)+power(floor(oPlayer.y/64)-b,2));
	}
}
TARGET = 999999;
g[floor(x/64)][floor(y/64)] = 0;
checked[floor(x/64)][floor(y/64)] = true;

function pathFind(CORDX,CORDY)
{
	if(h[CORDX][CORDY] == 0)
		return pathFinder(CORDX,CORDY);
	for(a=-1;a<2;a++)
	{
		for(b=-1;b<2;b++)
		{
			if(g[CORDX+a][CORDY+b] > g[CORDX][CORDY] + 1)
				g[CORDX+a][CORDY+b] = g[CORDX][CORDY] + 1;
			f[CORDX+a][CORDY+b] = g[CORDX+a][CORDY+b] + h[CORDX+a][CORDY+b]
		}
	}
	
	TARGET = 999999;
	for(a=0;a<room_width/64;a++;)
	{
		for(b=0;b<room_height/64;b++;)
		{
			if(f[a][b] < TARGET and checked[a][b] == false and tilemap_get(layer_tilemap_get_id("Tiles_1"),a,b) != 2)
			{
				TARGET = f[a][b];
				TARGETX = a;
				TARGETY = b;
				checked[a][b] = true;
			}
		}
	}
	
	draw_circle(TARGETX*64+32,TARGETY*64+32,10,false);
	return pathFind(TARGETX,TARGETY);
}

function pathFinder(CORDX,CORDY)
{
	if(g[CORDX][CORDY] == 0)
		return 0;
	TARGET = 999999;
	for(a=-1;a<2;a++)
	{
		for(b=-1;b<2;b++)
		{
			if(TARGET > g[CORDX+a][CORDY+b] and checked[CORDX+a][CORDY+b] == true)
			{
				if(g[CORDX+a][CORDY+b] == 0)
					return 10*a+b
				TARGET = g[CORDX+a][CORDY+b];
				TARGETX = CORDX+a;
				TARGETY = CORDY+b;	
			}
		}
	}
	return pathFinder(TARGETX,TARGETY);
}	
