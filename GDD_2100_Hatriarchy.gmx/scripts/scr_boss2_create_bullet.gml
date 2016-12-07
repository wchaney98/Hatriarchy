///scr_boss2_create_bullet(x, y, dir, size)
var size;
var obj;
var dmg;
var sound;
if argument3 == "big" {
    obj = obj_boss2_bullet_big;
    dmg = 1; 
    sound = snd_boss2_gatling;
} else { 
    obj = obj_boss2_bullet_small;
    dmg = 5;
    sound = snd_boss2_pistol;
}

if (argument2 == "left")
{
    audio_play_sound_at(sound, x, y, 0, 100, 100, 0, false, 1);
    return scr_boss_create_projectile(obj, argument0, argument1, dmg, -10, 0);
}
else if (argument2 == "right")
{
    audio_play_sound_at(sound, x, y, 0, 100, 100, 0, false, 1);
    return scr_boss_create_projectile(obj, argument0, argument1, dmg, 10, 0);
}
