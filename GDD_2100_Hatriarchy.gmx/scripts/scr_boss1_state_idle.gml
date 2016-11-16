///scr_boss1_state_idle()
if (steps_elapsed == 0) 
{
    sprite_index = spr_boss1_idle;
    image_speed = 0.1;
    delay = choose(room_speed, room_speed * 1.5, room_speed * 2);
}

if steps_elapsed >= delay
{
    state = choose(scr_boss1_state_throwing, scr_boss1_state_teleport, scr_boss1_state_rain_mtn_dew);
    steps_elapsed = 0;
    exit;
}

steps_elapsed++;
