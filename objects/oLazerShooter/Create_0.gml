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
	for(a=0;a<999;a++)
	{
		if(!colission(x+dirX*a*64,y+dirY*a*64))
		{
			beams[a] = instance_create_layer(x+dirX*a*64,y+dirY*a*64,"Instances",oLazerBeam);
			beams[a].creator = self;
			if(a==0)
				beams[a].image_alpha = 0;
		}
		else break;
	}
}

function lazerOff(restart)
{
	for(a=array_length(beams)-1;a>=0;a--)
	{
		instance_destroy(beams[a]);
	}
	if(restart==true)
		lazerOn();
}

lazerOn();
