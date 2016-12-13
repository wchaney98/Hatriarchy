///scr_boss3_state_idle()
if (steps_elapsed == 0) 
{
    if random(1) > 0.4 and not obj_game_manager_story_mode_boss3.vulnerable_state
    {
        obj_game_manager_story_mode_boss3.vulnerable_state = true;
        state = scr_boss3_state_vulnerable;
        exit;   
    }
    obj_game_manager_story_mode_boss3.vulnerable_state = false;
    
    sprite_index = spr_boss3_base;
    image_speed = 0;
    if global.hardmode
        delay = choose(room_speed / 2, room_speed, room_speed * 1.2);
    else
        delay = choose(room_speed, room_speed * 1.5, room_speed * 2);
}

if steps_elapsed >= delay
{
    if x > room_width/2 curr_side = "right" else curr_side = "left";
    state = choose(scr_boss3_state_charging, scr_boss3_state_burst);
    steps_elapsed = 0;
    exit;
}

steps_elapsed++;
