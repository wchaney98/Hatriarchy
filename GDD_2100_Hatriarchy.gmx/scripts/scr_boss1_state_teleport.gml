///scr_boss1_state_teleport()
if (steps_elapsed == 0)
{
    sprite_index = spr_boss1_teleport;
    image_speed = 0.1;
} else {
    image_yscale = (0.5 + sin(current_time)) * PIXEL_CONST;
}
if (steps_elapsed >= room_speed * 2)
{
    x = room_width - x;
    image_xscale *= -1;
    image_yscale = PIXEL_CONST;
    state = scr_boss1_state_idle;
    steps_elapsed = 0;
    exit;
}

steps_elapsed++;
