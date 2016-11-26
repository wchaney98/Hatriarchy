///scr_state_player_vats_doing_attacks()
var s = vats_selected;
var bottom_left_x;
var bottom_left_y;
var top_right_x;
var top_right_y;

// Get bounds to randomly place vats hits
switch(vats_selected_loc)
            {
                case LOC_HIGH:
                    var bottom_left_x = s.bbox_left;
                    var bottom_left_y = s.bbox_bottom + (3 * ((s.bbox_top - s.bbox_bottom) / 3));
                    var top_right_x = bottom_left_x + s.bbox_right - s.bbox_left;
                    var top_right_y = bottom_left_y - ((s.bbox_top - s.bbox_bottom) / 3);
                    break;
                case LOC_LOW:
                    var bottom_left_x = s.bbox_left;
                    var bottom_left_y = s.bbox_bottom + ((s.bbox_top - s.bbox_bottom) / 3);
                    var top_right_x = bottom_left_x + s.bbox_right - s.bbox_left;
                    var top_right_y = bottom_left_y - ((s.bbox_top - s.bbox_bottom) / 3);
                    break;
                case LOC_MID:
                    var bottom_left_x = s.bbox_left;
                    var bottom_left_y = s.bbox_bottom + (2 * ((s.bbox_top - s.bbox_bottom) / 3));
                    var top_right_x = bottom_left_x + s.bbox_right - s.bbox_left;
                    var top_right_y = bottom_left_y - ((s.bbox_top - s.bbox_bottom) / 3);
                    break;
            }
            
// Place vat hits for each "section" of ap and deal damage to that enemy
if (action_pts >= 20) 
{
    var xx = irandom_range(bottom_left_x, top_right_x);
    var yy = irandom_range(bottom_left_y, top_right_y);
    var o = instance_create(xx, yy, obj_vats_hit);
    o.image_xscale *= PIXEL_CONST;
    o.image_yscale *= PIXEL_CONST;
    o.target = s;
    o.creator = id;
    o.loc = vats_selected_loc;
    action_pts -= 20;
    audio_play_sound_at(snd_vats_hit, x, y, 0, 100, 100, 0, false, 1);
    scr_sleep(250);
} else 
{
    scr_sleep(250);
    scr_reset_vats();
    sprite_index = avatar_idle;
    state = scr_state_player_moving;
    exit;
}
