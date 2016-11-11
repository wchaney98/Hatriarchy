///scr_state_player_blocking()

scr_get_input();

blocking = true;
switch (block_loc)
{
    case LOC_LOW:
        sprite_index = avatar_low_block;
        if (player_one_low_block_rls)
        {
            blocking = false;
            on_block_cd = true;
            alarm[3] = room_speed * 0.5;
            sprite_index = avatar_idle;
            state = scr_state_player_moving;
        }
        break;
    case LOC_MID:
        sprite_index = avatar_mid_block;
        if (player_one_mid_block_rls)
        {
            blocking = false;
            on_block_cd = true;
            alarm[3] = room_speed * 0.5;
            sprite_index = avatar_idle;
            state = scr_state_player_moving;
        }
        break;
    case LOC_HIGH:
        sprite_index = avatar_high_block;
        if (player_one_high_block_rls)
        {
            blocking = false;
            on_block_cd = true;
            alarm[3] = room_speed * 0.5;
            sprite_index = avatar_idle;
            state = scr_state_player_moving;
        }
        break;
}
