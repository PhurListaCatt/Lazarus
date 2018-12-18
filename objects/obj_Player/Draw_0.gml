/// @description Insert description here
// You can write your code in this editor
draw_self();
//draw_text(x,y-20,"Health" + string(global.HealthPlayer));

draw_sprite_ext( sHealthBar, (HealthPlayer/HealthMaxPlayer) * 2, x, y + yOffset, (HealthMaxPlayer/HealthMaxPlayer), 1, 0, c_green, 1);