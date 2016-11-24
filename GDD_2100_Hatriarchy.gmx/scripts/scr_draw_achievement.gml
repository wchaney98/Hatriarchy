///scr_draw_achievement(ach_spr, ach, x, y)
var ach_spr = argument0;
var ach = argument1;
var xx = argument2;
var yy = argument3;

if !ach 
    draw_sprite_ext(ach_spr, 0, xx, yy, 1, 1, 0, c_white, 0.5);
else 
    draw_sprite_ext(ach_spr, 0, xx, yy, 1, 1, 0, c_white, 1);

