if(place_meeting(x,y,oPlayer))
{
	for(a=-64;a<65;a+=64)
	{
		if(place_meeting(x+a,y,oPlayer) and !place_meeting(x-a,y,oWall))
			x+=-a;
		if(a<0){sprite_index = sPushBlockLeft;alarm_set(0,9);}
	}
	for(b=-64;b<65;b+=64)
	{
		if(place_meeting(x,y+b,oPlayer) and !place_meeting(x,y-b,oWall))
			y+=-b;
	}
}
