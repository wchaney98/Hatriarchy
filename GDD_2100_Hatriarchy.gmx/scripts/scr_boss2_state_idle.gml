///scr_boss2_state_idle()
if (steps_elapsed == 0) 
{
    sprite_index = spr_boss2_hiding_idle;
    image_speed = 0;
    if global.hardmode
        delay = choose(room_speed / 2, room_speed, room_speed * 1.2);
    else
        delay = choose(room_speed, room_speed * 1.5, room_speed * 2);
}

if steps_elapsed >= delay
{
    state = choose(scr_boss2_state_shooting, scr_boss2_state_gatling, scr_boss2_state_sunburst);
    steps_elapsed = 0;
    exit;
}

steps_elapsed++;
