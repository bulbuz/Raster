/// @description Insert description here
// You can write your code in this editor

maxDist = 16 + 32 * 2;
playerInRange = (abs(oPlayer.x - x) <= maxDist and abs(oPlayer.y - y) <= maxDist ? true : false);

if(keyboard_check(ord("E")) and playerInRange)  {
	for(var i = 0; i < array_length(items); ++i) {
		if(array_length(oPlayer.inventory) < MAX_ITEMS) {
			array_push(oPlayer.inventory, items[i]);
		}
	}
	instance_destroy();
}
