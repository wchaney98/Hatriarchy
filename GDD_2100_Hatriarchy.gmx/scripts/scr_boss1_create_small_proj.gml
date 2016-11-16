///scr_boss1_create_small_proj(y, dir)
if (argument1 == "left")
    return scr_boss_create_projectile(obj_boss1_small_proj, x - 8 * PIXEL_CONST, argument0, 10, -6, 0);
else if (argument1 == "right")
    return scr_boss_create_projectile(obj_boss1_small_proj, x + 8 * PIXEL_CONST, argument0, 10, 6, 0);
