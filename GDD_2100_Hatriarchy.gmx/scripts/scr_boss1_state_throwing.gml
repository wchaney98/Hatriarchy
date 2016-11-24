///scr_boss1_state_throwing()
if (steps_elapsed == 0) 
{
    if global.hardmode anchor_y += 32 * PIXEL_CONST;
    sprite_index = spr_boss1_throwing;
    image_speed = 0.1;
    if global.hard_mode delay = choose(room_speed * 2, room_speed * 2.5, room_speed * 3.5);
    else delay = choose(room_speed * 1, room_speed * 2.5, room_speed * 1.5);
    if x < room_width / 2 this_dir = "right" else this_dir = "left";
}
if global.hardmode
{
    if steps_elapsed % (room_speed / 10) == 0 && choose(1, 2, 3) == 1
    {
        scr_boss1_create_small_proj(choose(y + 8 * PIXEL_CONST, y - 8 * PIXEL_CONST), this_dir);
    } 
} else
{
    if steps_elapsed % (room_speed / 2) == 0 && choose(1, 2, 3) == 1
    {
        scr_boss1_create_small_proj(choose(y + 8 * PIXEL_CONST, y - 8 * PIXEL_CONST), this_dir);
    } 
}

if steps_elapsed >= delay
{
    state = choose(scr_boss1_state_idle, scr_boss1_state_rain_mtn_dew);
    steps_elapsed = 0;
    if global.hardmode anchor_y -= 32 * PIXEL_CONST;
    exit;
}

steps_elapsed++;
