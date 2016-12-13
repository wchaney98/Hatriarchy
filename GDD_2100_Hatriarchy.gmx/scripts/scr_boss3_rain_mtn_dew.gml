///scr_boss3_rain_mtn_dew()
if (steps_elapsed == 0)
{
    sprite_index = spr_boss3_rain_mtn_dew;
    image_speed = 0;
    delay = choose(room_speed, room_speed * 2, room_speed * 3);
}

if global.hardmode
{
    if (steps_elapsed % (room_speed / 5) == 0)
        scr_boss1_create_falling_proj();
} else
{
    if (steps_elapsed % (room_speed / 2) == 0)
        scr_boss1_create_falling_proj();
}
    
if (steps_elapsed >= delay)
{
    state = scr_boss3_state_idle;
    steps_elapsed = 0;
    exit;
}

steps_elapsed++;
