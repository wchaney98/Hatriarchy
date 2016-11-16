///scr_boss1_phase1()
if (!curr_cycle_setup)
{
    var run = choose(scr_boss1_phase1_cycle1, scr_boss1_phase1_cycle2);
    script_execute(run);
}
else
{
    timeline_running = true;
    timeline_speed = 1;
    if (timeline_position > timeline_max_moment(timeline))
    {
        curr_cycle_setup = false;
        timeline_position = 0;
        timeline_running = false;
        timeline_clear(timeline_index);
    }
    show_debug_message(string(timeline_position) + ", " + string(timeline_max_moment(timeline)));
}
