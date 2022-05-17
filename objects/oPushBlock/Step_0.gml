if(place_meeting(x+6,y,oPlayer) or place_meeting(x-6,y,oPlayer))
{
	for(a=-64;a<65;a+=128)
	{
		if(place_meeting(x+a,y,oPlayer) and !place_meeting(x-a,y,oWall))
		{
			x+=-a;
			if(a>0){sprite_index = sPushBlockLeft;alarm_set(0,9);}
			else{sprite_index = sPushBlockRight;alarm_set(0,9);}
			break;
		}
	}
}
if(place_meeting(x,y+6,oPlayer) or place_meeting(x,y-6,oPlayer))
{
	for(b=-64;b<65;b+=128)
	{
		if(place_meeting(x,y+b,oPlayer) and !place_meeting(x,y-b,oWall))
		{
			y+=-b;
			if(b>0){sprite_index = sPushBlockUp;alarm_set(0,9);}
			else{sprite_index = sPushBlockDown;alarm_set(0,9);}
			break;
		}
	}
}
