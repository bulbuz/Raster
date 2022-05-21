function standardMove()
{
	if(colission(x+velX,y))
		velX *= -1;
	if(colission(x,y+velY))
		velY *= -1;
	move();
}

function standardShot()
{
	if(shotDelay < 0)
	{
		if(8>abs(x-oPlayer.x))
		{
			SHOT_ID = instance_create_layer(x,y,"Instances",oSlimeShot);
			SHOT_ID.velY = sign(oPlayer.y-y)*4;
			shotDelay = 60;
		}
		else if(8>abs(y-oPlayer.y))
		{
			SHOT_ID = instance_create_layer(x,y,"Instances",oSlimeShot);
			SHOT_ID.velX = sign(oPlayer.x-x)*4;
			shotDelay = 60;
		}	
	}
	shotDelay--;
}
