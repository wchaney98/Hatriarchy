///scr_set_vats_for_right_player(state)
switch (object_index)
{
    case obj_player:
        global.p1_vats = argument0;
        break;
    case obj_player2:
        global.p2_vats = argument0;
        break;
}
