last_room_width = room_width;
last_room_height = room_height;
room_goto(target);
if(x<64)
{
	global.spawnX = room_width-96;
	global.spawnY = other.y+offsetY;
}
else if(last_room_width-64<x)
{
	global.spawnX = 96;
	global.spawnY = other.y+offsetY;
}
else if(y<64)
{
	global.spawnX = other.x+offsetX;
	global.spawnY = room_height-96;
}
else if(last_room_height-64<x)
{
	global.spawnX = other.x+offsetX;
	global.spawnY = 96;
}


