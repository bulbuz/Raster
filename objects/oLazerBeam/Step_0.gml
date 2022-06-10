if(colission(x,y))
	creator.lazerOff(true);	

if(colission(x+creator.dirX*64,y+creator.dirY*64))
	blockAbove = true;
	
if(blockAbove == true and !colission(x+creator.dirX*64,y+creator.dirY*64))
	creator.lazerOff(true);	
