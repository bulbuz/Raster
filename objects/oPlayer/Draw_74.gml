/// @description Insert description here
// You can write your code in this editor

WIDTH = 64;
HEIGHT = 64;

for(var i = 1; i <= hearts; ++i) {
	draw_sprite_stretched(sHeart, 0, i * WIDTH + 40, 20, WIDTH, HEIGHT);
}

// Debugging purpose
draw_set_font(-1);
draw_text(128, 100, "Coins: " + string(oPlayer.coins));
