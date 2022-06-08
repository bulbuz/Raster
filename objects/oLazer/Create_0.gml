switch(image_angle-floor(image_angle/360)*360)
{
	case 0:
		dirX = 0;
		dirY = -1;
	break;
	
	case 90:
		dirX = 1;
		dirY = 0;
	break;
	
	case 180:
		dirX = 0;
		dirY = 1;
	break;
	
	case 270:
		dirX = -1;
		dirY = 0;
	break;
}

function lazerOn()
{
	check = 0;
	repeat
	{
		check++;
		if(!colission(x+dirX*check,y+dirY*check))
		{
			instance_create_layer(x+dirX*check,y+dirY*check,"Instances",oLazerBeam);
		}
		else break;
	}
}
