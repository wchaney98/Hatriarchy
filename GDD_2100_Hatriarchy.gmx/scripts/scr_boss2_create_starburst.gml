///scr_boss2_create_starburst()
audio_play_sound_at(snd_boss2_sunburst, x, y, 0, 100, 100, 0, false, 1);
var times;
var dir;

if global.hardmode times = 7 else times = 3;
repeat (times)
{
    dir = random_range(0, 360);
    scr_boss_create_projectile(obj_boss2_starburst, x, y, 10, lengthdir_x(3, dir), lengthdir_y(3, dir));   
}
