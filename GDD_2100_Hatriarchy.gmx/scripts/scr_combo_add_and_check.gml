///scr_combo_add_and_check(hitter)
var hitter = argument0;

hitter.combo += 1;
hitter.alarm[1] = room_speed * 2;

if hitter.combo == 25 
{
    instance_create(0, 0, obj_wow);
    obj_achievement_tracker.all_hat_tokens = true;
}
