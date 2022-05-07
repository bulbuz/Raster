
//resets all arrays
//h = distance to target
//g = distance from start
//f = h + g
//checked = true after checking surounding h values.
//Checked is used to make sure every tile is only checked once.
for(a=0;a<room_width/64;a++;)
{
	for(b=0;b<room_height/64;b++;)
	{
		checked[a][b] = false;
		f[a][b] = 999999;
		g[a][b] = 999999;
		h[a][b] = power(floor(oPlayer.x/64)-a,2)+power(floor(oPlayer.y/64)-b,2);
	}
}

TARGET = 999999;
//checks starting square
g[floor(x/64)][floor(y/64)] = 0;
checked[floor(x/64)][floor(y/64)] = true;

draw_self();
//calls pathfinding algorithm
DIR = pathFind(floor(x/64),floor(y/64));
//translates to movement
if(DIR == 10)
	{VELX = -1; VELY = 0;}
else if(DIR == -10)
	{VELX = 1; VELY = 0;}
else if(DIR == 1)
	{VELX = 0; VELY = -1;}
else if(DIR == -1)
	{VELX = 0; VELY = 1;}
else if(DIR == 11)
	{VELX = -1; VELY = -1;}
else if(DIR == -11)
	{VELX = 1; VELY = 1;}
else if(DIR == 9)
	{VELX = -1; VELY = 1;}
else if(DIR == -9)
	{VELX = 1; VELY = -1;}
else
	{VELX = 0; VELY = 0;}

