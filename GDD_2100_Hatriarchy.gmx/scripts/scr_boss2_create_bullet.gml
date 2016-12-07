///scr_boss2_create_bullet(x, y, dir, size)
//audio_play_sound
var size;
var obj;
if argument3 == "big" {
    obj = obj_boss2_bullet_big 
} else { 
    obj = obj_boss2_bullet_small;
}

if (argument2 == "left")
    return scr_boss_create_projectile(obj, argument0, argument1, 5, -18, 0);
else if (argument2 == "right")
    return scr_boss_create_projectile(obj, argument0, argument1, 5, 18, 0);
