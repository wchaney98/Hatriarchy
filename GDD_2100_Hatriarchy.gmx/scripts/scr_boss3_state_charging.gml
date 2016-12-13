///scr_boss3_state_charging()
if (steps_elapsed == 0) 
{
    audio_play_sound_at(snd_boss3_charge, x, y, 0, 100, 100, 0, false, 1);
    sprite_index = spr_boss3_charge;
    image_speed = 0;
    if global.hardmode
        delay = choose(room_speed / 2, room_speed, room_speed * 1.2);
    else
        delay = choose(room_speed, room_speed * 1.5, room_speed * 2);
}

if steps_elapsed > 10 and steps_elapsed < delay
{
    var dir;
    if curr_side = "right" dir = -1 else dir = 1;
    x += (room_width - 448) / (delay - 10) * dir
}

if steps_elapsed >= delay
{
    if x > room_width/2 curr_side = "right" else curr_side = "left";
    if x > room_width/2 image_xscale = -1 else image_xscale = 1;
    state = choose(scr_boss3_state_idle);
    steps_elapsed = 0;
    exit;
}

steps_elapsed++;
