///scr_boss1_create_falling_proj()
if not global.hardmode return scr_boss_create_projectile(obj_boss1_falling_proj, irandom_range(1, room_width), 0, 5, 0, 6);
var o = scr_boss_create_projectile(obj_boss1_falling_proj, irandom_range(1, room_width), 0, 5, 0, 6);
o.image_xscale = 5;
o.image_yscale = 5;
return o;
