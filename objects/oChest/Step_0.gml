/// @description Insert description here
// You can write your code in this editor

maxDist = 16 + 32 * 2;
playerInRange = (abs(oPlayer.x - x) <= maxDist and abs(oPlayer.y - y) <= maxDist ? true : false);

if(keyboard_check(ord("E")) and playerInRange) {
	show_debug_message("open");
} else {
	show_debug_message("closed");	
}
