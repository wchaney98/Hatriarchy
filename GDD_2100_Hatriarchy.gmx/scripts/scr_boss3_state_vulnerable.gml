///scr_boss3_state_vulnerable()
if (steps_elapsed == 0) 
{
    audio_play_sound_at(snd_boss3_vulnerable, x, y, 0, 100, 100, 0, false, 1);
    sprite_index = spr_boss3_vulnerable;
    image_speed = 0;
    if global.hardmode
        delay = choose(room_speed / 2, room_speed, room_speed * 1.2);
    else
        delay = choose(room_speed * 2, room_speed * 2.5, room_speed * 3);
}

if steps_elapsed >= delay
{
    state = choose(scr_boss3_rain_mtn_dew);
    steps_elapsed = 0;
    exit;
}

steps_elapsed++;
