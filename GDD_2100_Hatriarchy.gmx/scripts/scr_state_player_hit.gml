///scr_state_player_hit()

scr_get_input();
scr_hit_reset_vars();

life_last_step = life;
sprite_index = avatar_hit;
if (!been_hit)
{
    alarm[4] = room_speed * 0.15;
    been_hit = true;
}

