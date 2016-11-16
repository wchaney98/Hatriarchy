///scr_hit_reset_vars()
attacking = false;
hit_created = false;
attack_loc = undefined;
if (high_attack_obj_created)
{
    high_attack_obj.image_speed = 0.1;
    high_attack_obj.triggered = true;
    alarm[0] = room_speed * 0.15;
}
    
