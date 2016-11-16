///scr_boss1_state_rain_mtn_dew()
if (steps_elapsed == 0)
{
    sprite_index = spr_boss1_rain_mtn_dew;
    image_speed = 0.1;
    delay = choose(room_speed, room_speed * 2, room_speed * 3);
}

if (steps_elapsed % (room_speed / 2) == 0)
    scr_boss1_create_falling_proj();
    
if (steps_elapsed >= delay)
{
    state = choose(scr_boss1_state_idle, scr_boss1_state_teleport);
    steps_elapsed = 0;
    exit;
}

steps_elapsed++;
