///scr_check_hitbox_and_damage(dmg, ap, loc);
// only works for collision events
if (other.id != creator.id)
{
    if (other.blocking)
    {
        var s = other;
        var bottom_left_x;
        var bottom_left_y;
        var top_right_x;
        var top_right_y;
        switch (argument2)
        {
            case LOC_HIGH:
                bottom_left_x = s.bbox_left;
                bottom_left_y = s.bbox_bottom + (3 * ((s.bbox_top - s.bbox_bottom) / 3));
                top_right_x = bottom_left_x + s.bbox_right - s.bbox_left;
                top_right_y = bottom_left_y - ((s.bbox_top - s.bbox_bottom) / 3);
                break;
            case LOC_LOW:
                bottom_left_x = s.bbox_left;
                bottom_left_y = s.bbox_bottom + ((s.bbox_top - s.bbox_bottom) / 3);
                top_right_x = bottom_left_x + s.bbox_right - s.bbox_left;
                top_right_y = bottom_left_y - ((s.bbox_top - s.bbox_bottom) / 3);
                break;
            case LOC_MID:
                bottom_left_x = s.bbox_left;
                bottom_left_y = s.bbox_bottom + (2 * ((s.bbox_top - s.bbox_bottom) / 3));
                top_right_x = bottom_left_x + s.bbox_right - s.bbox_left;
                top_right_y = bottom_left_y - ((s.bbox_top - s.bbox_bottom) / 3);
                break;
        }
        if collision_rectangle(bottom_left_x, bottom_left_y, top_right_x, top_right_y, s.object_index, false, true) == id
        {
            if (other.object_index = obj_player2_vs)
                other.x += sign(other.x - creator.x) * 8;
        } 
    } 
    else
    {
        other.life -= argument0;
        switch(object_index)
        {
            case obj_player1_vs:
                if (other.object_index == obj_player2_vs)
                    other.x += sign(other.x - creator.x) * 8;
                break;
            case obj_player2_vs:
                if (other.object_index == obj_player1_vs)
                    other.x += sign(other.x - creator.x) * 8;
                break;
        }
    }
    show_debug_message(object_get_name(other.object_index) +  " life: " + string(other.life));
    if (creator != noone)
    {
        if !(other.blocking && other.block_loc == argument2)
        {
            scr_combo_add_and_check(creator);
            scr_ap_add(creator, argument1);
        } else scr_reset_combo(creator);
        
    }
    instance_destroy();
}
