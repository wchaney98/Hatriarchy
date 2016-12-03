///scr_boss1_create_falling_proj()
var xx = irandom_range(1, room_width);
audio_play_sound_at(snd_boss_proj_fall, xx, 0, 0, 100, 100, 0, false, 1);
if not global.hardmode return scr_boss_create_projectile(obj_boss1_falling_proj, irandom_range(1, room_width), 0, 5, 0, 6);
var o = scr_boss_create_projectile(obj_boss1_falling_proj, xx, 0, 5, 0, 6);
o.image_xscale = 5;
o.image_yscale = 5;
return o;
