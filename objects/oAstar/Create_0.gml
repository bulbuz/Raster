velX = 0;
velY = 0;
SPEED = 2;
DIASPEED = sqrt(SPEED*SPEED*2)/2
TARGETX = 0;
TARGETY = 0;

function pathFind(CORDX,CORDY)
{
	if(h[CORDX][CORDY] == 0) //if checked square is target, call other function
		return pathFinder(CORDX,CORDY);
	//checks the g-value and then f-value of surounding tiles.
	for(a=-1;a<2;a++)
	{
		for(b=-1;b<2;b++)
		{
			if(g[CORDX+a][CORDY+b] > g[CORDX][CORDY] + 1)
				g[CORDX+a][CORDY+b] = g[CORDX][CORDY] + 1;
			f[CORDX+a][CORDY+b] = g[CORDX+a][CORDY+b] + h[CORDX+a][CORDY+b]
		}
	}
	
	//searches for the smallest f-value in the grid.
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
	
	//draws circle at checked tile, good for bugtesting 
	draw_circle(TARGETX*64+32,TARGETY*64+32,10,false);
	//calls function again for the new smalest f-value tile
	//does this until at target
	return pathFind(TARGETX,TARGETY);
}

function pathFinder(CORDX,CORDY)
{
	//if already on target, return 0 aka stand still.
	if(g[CORDX][CORDY] == 0)
		return 0;
	TARGET = 999999;
	//checks for the smalest g-value in surounding tiles aka wich tile is closer to starting psoition.
	for(a=-1;a<2;a++)
	{
		for(b=-1;b<2;b++)
		{
			if(TARGET > g[CORDX+a][CORDY+b] and checked[CORDX+a][CORDY+b] == true)
			{
				//if g = 0 aka at starting position, return direction enemy chall walk
				if(g[CORDX+a][CORDY+b] == 0)
					return 10*a+b
				TARGET = g[CORDX+a][CORDY+b];
				TARGETX = CORDX+a;
				TARGETY = CORDY+b;	
			}
		}
	}
	//call function again with the tile that has the smallest g-value
	//does this until at starting position
	return pathFinder(TARGETX,TARGETY);
}	
