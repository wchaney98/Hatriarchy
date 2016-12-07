///scr_boss2_state_gatling()
///scr_boss2_state_shooting()
if (steps_elapsed == 0)
{
    sprite_index = spr_boss2_hiding;
    delay = choose(room_speed * 3, room_speed * 4);
}

if steps_elapsed % (room_speed / 10) == 0
{
    scr_boss2_create_bullet(x - 16 * PIXEL_CONST, irandom_range(y + 4 * PIXEL_CONST, y + 8 * PIXEL_CONST), "left", "big");
}

if steps_elapsed >= delay
{
    state = choose(scr_boss2_state_idle, scr_boss2_state_shooting, scr_boss2_state_sunburst);
    steps_elapsed = 0;
    exit;
}

steps_elapsed++;
