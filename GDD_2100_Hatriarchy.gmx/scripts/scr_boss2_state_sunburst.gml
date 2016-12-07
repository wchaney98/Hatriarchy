///scr_boss2_state_sunburst()
if (steps_elapsed == 0)
{
    sprite_index = spr_boss2_hiding_idle;
    delay = choose(room_speed * 2, room_speed * 4);
}

if steps_elapsed % room_speed == 0
{
    scr_boss2_create_starburst();
}

if steps_elapsed >= delay
{
    state = choose(scr_boss2_state_idle);
    steps_elapsed = 0;
    exit;
}

steps_elapsed++;
