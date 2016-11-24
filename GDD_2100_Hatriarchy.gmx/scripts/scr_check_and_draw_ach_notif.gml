///scr_check_and_draw_ach_notif(ach, notif_s, bool)
if argument0 and not achievement_triggered and not argument2
{
    achievement_triggered = true;
    notif_x_curr = notif_x_dest;
    notif_y_curr = 1000;
    alarm[0] = room_speed * 3;
    show_debug_message("here");
}

if argument0 and achievement_triggered and not argument2
{
    notif_y_curr = scr_tween(notif_y_curr, notif_y_dest, 0.1);  
    draw_text(notif_x_curr, notif_y_curr, "Achievement get: " + argument1);  
    if (alarm[0] == -1)
    {
        achievement_triggered = false;
        show_debug_message("byeah");
        return true;
    }
}
return false;
