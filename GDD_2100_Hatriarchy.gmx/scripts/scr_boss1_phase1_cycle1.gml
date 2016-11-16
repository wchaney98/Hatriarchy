///scr_boss1_cycle1()
for (i = room_speed * 3; i >= 0; i -= room_speed / 2)
{
    if (irandom(9) > 4)
    {
        timeline_moment_add_script(timeline, i, scr_boss1_create_small_proj);
        if i > timeline_max timeline_max = i;
        //show_debug_message(i);
    }
}
curr_cycle_setup = true;
