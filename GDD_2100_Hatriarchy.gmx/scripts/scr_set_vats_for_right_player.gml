///scr_set_vats_for_right_player(state)
switch (object_index)
{
    case obj_player || obj_player1_vs:
        global.p1_vats = argument0;
        break;
    case obj_player2_vs:
        global.p2_vats = argument0;
        break;
}
