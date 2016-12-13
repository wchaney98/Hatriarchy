///scr_boss3_state_burst()
if (steps_elapsed == 0)
{
    sprite_index = spr_boss3_burst;
    delay = choose(room_speed * 2, room_speed * 4);
    _freq = 0;
    if global.hardmode _freq = room_speed / 3 else _freq = room_speed / 2;
}

if steps_elapsed % _freq == 0
{
    scr_boss2_create_starburst();
}

if steps_elapsed >= delay
{
    state = choose(scr_boss3_state_idle, scr_boss3_state_charging);
    steps_elapsed = 0;
    exit;
}

steps_elapsed++;
