x+=velX;
y+=velY;
if(colission(x,y))
	instance_destroy(self);
