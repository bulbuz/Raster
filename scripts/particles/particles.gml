function grassParticles(xOne,xTwo,yOne,yTwo,percent)
{
	xLen = abs(xOne-xTwo);
	yLen = abs(yOne-yTwo);
	draw_set_color(#88C44D);
	for(a=0;a<xLen;a++)
	{
		for(b=0;b<yLen;b++)
		{
			ran = irandom_range(0,100);
			if(percent*sin(a*pi/xLen)*sin(b*pi/yLen)>ran)
			{
				draw_circle(xOne+a,yOne+b,1,false);
				if(ran < 60)
				{
					draw_circle_color(xOne+a,yOne+b+1,1,#3F9E59,#3F9E59,false);
				}
				else if(ran < 80)
				{
					draw_circle_color(xOne+a+1,yOne+b+1,1,#3F9E59,#3F9E59,false);
				}
				else
				{
					draw_circle_color(xOne+a-1,yOne+b+1,1,#3F9E59,#3F9E59,false);
				}
			}
		}
	}
}