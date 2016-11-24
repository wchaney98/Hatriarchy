///scr_state_player_vats()
scr_get_input();
sprite_index = avatar_think;

if (player_one_vats_prs && !vats_selection_finalized) 
{
    scr_reset_vats();
    sprite_index = avatar_idle;
    state = scr_state_player_moving;
    exit;
}

// Selection pt 1 (which enemy)
if (!vats_selection_queried)
{
    var far_d = room_width;
    for (i = 0; i < array_length_1d(vats_possible_select); i++)
    {
        var curr_d = point_distance(x, y, vats_possible_select[i].x, vats_possible_select[i].y);
        if (curr_d < far_d)
        {
            vats_selected = vats_possible_select[i];
            far_d = curr_d;
        }
    }
    vats_selection_queried = true;
}

if (player_one_vats_shift_prs && !vats_selection_finalized)
{
    for (i = 0; i < array_length_1d(vats_possible_select); i++)
    {
        if (vats_selected != vats_possible_select[i])
        {
            vats_selected = vats_possible_select[i];
            break;
        }
    }
}

// Confirm attack (if loc selected)
if (player_one_confirm_action && vats_selection_finalized)
{
    sprite_index = avatar_think_angry;
    state = scr_state_player_vats_doing_attacks;
    obj_achievement_tracker.track_total_vats_use += 1;
}

// Confirm selection
if (player_one_confirm_action && !vats_selection_finalized)
{
    vats_selection_finalized = true;
    vats_selection_final = vats_selected;
    vats_selected_loc = LOC_HIGH;
}

if (player_one_vats_prs && vats_selection_finalized)
{
    vats_selection_finalized = false; // go back one step in vats
}

// Selection pt 2 (which part -> high mid low)
if (player_one_vats_shift_prs && vats_selection_finalized)
{
    switch(vats_selected_loc)
    {
        case LOC_HIGH:
            vats_selected_loc = LOC_MID;
            break;
        case LOC_LOW:
            vats_selected_loc = LOC_HIGH;
            break;
        case LOC_MID:
            vats_selected_loc = LOC_LOW;
            break;
    }
}
